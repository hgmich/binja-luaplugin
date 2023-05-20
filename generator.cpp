// Copyright (c) 2015-2023 Vector 35 Inc
// Copyright (c) 2023 Michael Holmes
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.

#include <stdio.h>
#include <inttypes.h>
#include "binaryninjaapi.h"

#include <iostream>
#include <unordered_set>

using namespace BinaryNinja;
using namespace std;


map<string, string> g_luaKeywordReplacements = {
	{"and", "and_"},
	{"break", "break_"},
	{"do", "do_"},
	{"else", "else_"},
	{"elseif", "elseif_"},
	{"end", "end_"},
	{"false", "false_"},
	{"for", "for_"},
	{"function", "function_"},
	{"if", "if_"},
	{"in", "in_"},
	{"local", "local_"},
	{"nil", "nil_"},
	{"not", "not_"},
	{"or", "or_"},
	{"repeat", "repeat_"},
	{"return", "return_"},
	{"then", "then_"},
	{"true", "true_"},
	{"until", "until_"},
	{"while", "while_"},
};

void WriteEnumDefinition(
	Ref<Type> typ, unordered_set<string>& enumSkipList, std::string& name, FILE* cdefs, FILE* enums)
{
	if (name.size() > 2 && name.substr(0, 2) == "BN")
		name = name.substr(2);

	if (enumSkipList.count(name) > 0)
		return;

	fprintf(cdefs, "\n\ttypedef ");
	//	fprintf(cdefs, "struct %s {\n", name.c_str());
	fprintf(cdefs, "enum %s {\n", name.c_str());

	fprintf(enums, "\nenums.%s = cdefs.metatype(cdefs.typeof('struct { BN%s; } '), {\n", name.c_str(), name.c_str());
	fprintf(enums, "\t__index = {\n");
	for (auto& i : typ->GetEnumeration()->GetMembers())
	{
		fprintf(cdefs, "\t\t%s = %" PRId32 ",\n", i.name.c_str(), (int32_t)i.value);
		fprintf(enums, "\t\t%s = %" PRId32 ",\n", i.name.c_str(), (int32_t)i.value);
	}

	//	fprintf(cdefs, "\t};\n");
	fprintf(cdefs, "} BN%s;\n\n", name.c_str());

	fprintf(enums, "\t}\n");
	fprintf(enums, "})\n");

	enumSkipList.insert(name);
}


void WriteStructDefinition(Ref<Type> typ, unordered_set<string>& enumSkipList, unordered_set<string>& structSkipList,
	map<QualifiedName, Ref<Type>>& types, std::string& name, FILE* cdefs, FILE* enums, FILE* out)
{
	if (structSkipList.count(name) > 0)
		return;

	// Search for undefined structs and enums as dependencies
	for (auto& arg : typ->GetStructure()->GetMembers())
	{
		//				if ((arg.type->GetClass() == PointerTypeClass) && (arg.type->GetChildType()->GetWidth()
		//== 1)
		//					&& (arg.type->GetChildType()->IsSigned()))
		//				{
		//					fprintf(cdefs, "\t@property\n\tdef %s(self):\n\t\treturn pyNativeStr(self._%s)\n",
		// arg.name.c_str(), 						arg.name.c_str()); 					fprintf(cdefs,
		// "\t@%s.setter\n\tdef %s(self, value):\n\t\tself._%s = cstr(value)\n",
		// arg.name.c_str(), arg.name.c_str(), arg.name.c_str()); 					stringField = true;
		//				}
		if (arg.type->IsEnumReference())
		{
			auto name = arg.type->GetNamedTypeReference()->GetName();
			auto sname = name.GetString();
			WriteEnumDefinition(types[name], enumSkipList, sname, cdefs, enums);
		}
		else if (arg.type->IsStructReference())
		{
			auto name = arg.type->GetNamedTypeReference()->GetName();
			auto sname = name.GetString();
			WriteStructDefinition(types[name], enumSkipList, structSkipList, types, sname, cdefs, enums, out);
		}
	}

	fprintf(cdefs, "struct %s {\n", name.c_str());
	fprintf(out, "core.%s = cdefs.typeof('struct %s')\n\n", name.c_str(), name.c_str());

	// python uses str's, C uses byte-arrays
	bool stringField = false;
	for (auto& arg : typ->GetStructure()->GetMembers())
	{
		//				if ((arg.type->GetClass() == PointerTypeClass) && (arg.type->GetChildType()->GetWidth()
		//== 1)
		//					&& (arg.type->GetChildType()->IsSigned()))
		//				{
		//					fprintf(cdefs, "\t@property\n\tdef %s(self):\n\t\treturn pyNativeStr(self._%s)\n",
		// arg.name.c_str(), 						arg.name.c_str()); 					fprintf(cdefs,
		// "\t@%s.setter\n\tdef %s(self, value):\n\t\tself._%s = cstr(value)\n",
		// arg.name.c_str(), arg.name.c_str(), arg.name.c_str()); 					stringField = true;
		//				}
		if (arg.type->IsEnumReference())
		{
			fprintf(cdefs, "\t%s %s;\n", arg.type->GetNamedTypeReference()->GetName().GetString().c_str(),
				arg.name.c_str());
		}
		else if (arg.type->GetClass() == ArrayTypeClass && arg.type->GetChildType()->IsEnumReference())
		{
			auto enumName = arg.type->GetChildType()->GetNamedTypeReference()->GetName().GetString();
			fprintf(cdefs, "\t%s %s%s;\n", enumName.c_str(), arg.name.c_str(), arg.type->GetStringAfterName().c_str());
		}
		else
		{
			fprintf(cdefs, "\t%s %s%s;\n", arg.type->GetStringBeforeName().c_str(), arg.name.c_str(),
				arg.type->GetStringAfterName().c_str());
		}
	}

	fprintf(cdefs, "};\n\n");

	structSkipList.insert(name);
}


int main(int argc, char* argv[])
{
	if (argc < 4)
	{
		fprintf(stderr, "Usage: generator <header> <output> <output_cdefs> <output_enum>\n");
		return 1;
	}

	// Parse API header to get type and function information
	map<QualifiedName, Ref<Type>> types, vars, funcs;
	unordered_set<string> enumSkipList, structSkipList;
	string errors;
	auto arch = new CoreArchitecture(BNGetNativeTypeParserArchitecture());

	// Enable ephemeral settings
	Settings::Instance()->LoadSettingsFile("");
	Settings::Instance()->Set("analysis.types.parserName", "ClangTypeParser");
	bool ok = arch->GetStandalonePlatform()->ParseTypesFromSourceFile(argv[1], types, vars, funcs, errors);

	if (!ok)
	{
		fprintf(stderr, "Errors: %s\n", errors.c_str());
		return 1;
	}

	FILE* out = fopen(argv[2], "w");
	FILE* cdefs = fopen(argv[3], "w");
	FILE* enums = fopen(argv[4], "w");

	fprintf(out, "local cdefs = require('binaryninja._cdefs')\n\n");

	fprintf(cdefs, "local ffi = require('ffi')\n");
	fprintf(cdefs, "\nffi.cdef [[");

	fprintf(enums, "local cdefs = require('binaryninja._cdefs')\n");
	fprintf(enums, "\nlocal enums = {}\n");

	fprintf(out, "local core = {}\n\n");

	//	fprintf(out, "# Load core module\n");
	//	fprintf(out, "import platform\n");
	//	fprintf(out, "core = None\n");
	//	fprintf(out, "_base_path = None\n");
	//	fprintf(out, "core_platform = platform.system()\n");
	//	fprintf(out, "if core_platform == 'Darwin':\n");
	//	fprintf(out, "\t_base_path = os.path.join(os.path.dirname(__file__), '..', '..', '..', 'MacOS')\n");
	//	fprintf(out, "\tcore = ctypes.CDLL(os.path.join(_base_path, 'libbinaryninjacore.dylib'))\n\n");
	//	fprintf(out, "elif core_platform == 'Linux':\n");
	//	fprintf(out, "\t_base_path = os.path.join(os.path.dirname(__file__), '..', '..')\n");
	//	fprintf(out, "\tcore = ctypes.CDLL(os.path.join(_base_path, 'libbinaryninjacore.so.1'))\n\n");
	//	fprintf(out, "elif (core_platform == 'Windows') or (core_platform.find('CYGWIN_NT') == 0):\n");
	//	fprintf(out, "\t_base_path = os.path.join(os.path.dirname(__file__), '..', '..')\n");
	//	fprintf(out, "\tcore = ctypes.CDLL(os.path.join(_base_path, 'binaryninjacore.dll'))\n");
	//	fprintf(out, "else:\n");
	//	fprintf(out, "\traise Exception('OS not supported')\n\n\n");
	//
	//	fprintf(out, "def cstr(var: Optional[AnyStr]) -> Optional[bytes]:\n");
	//	fprintf(out, "	if var is None:\n");
	//	fprintf(out, "		return None\n");
	//	fprintf(out, "	if isinstance(var, bytes):\n");
	//	fprintf(out, "		return var\n");
	//	fprintf(out, "	return var.encode('utf-8')\n\n\n");
	//
	//	fprintf(out, "def pyNativeStr(arg: AnyStr) -> str:\n");
	//	fprintf(out, "	if isinstance(arg, str):\n");
	//	fprintf(out, "		return arg\n");
	//	fprintf(out, "	else:\n");
	//	fprintf(out, "		return arg.decode('utf8')\n\n\n");
	//
	//	fprintf(out, "def free_string(value:ctypes.c_char_p) -> None:\n");
	//	fprintf(out, "	BNFreeString(ctypes.cast(value, ctypes.POINTER(ctypes.c_byte)))\n\n");

	// Create type objects
	fprintf(out, "-- Type definitions\n");
	//	fprintf(cdefs, "\t/* Type definitions */\n");
	for (auto& i : types)
	{
		string name;
		if (i.first.size() != 1)
			continue;
		name = i.first[0];
		if (i.second->GetClass() == StructureTypeClass
			|| i.second->GetClass() == ArrayTypeClass && i.second->GetChildType()->GetClass() == StructureTypeClass)
		{
			WriteStructDefinition(i.second, enumSkipList, structSkipList, types, name, cdefs, enums, out);
		}
		else if (i.second->GetClass() == EnumerationTypeClass
			|| i.second->GetClass() == ArrayTypeClass && i.second->GetChildType()->GetClass() == EnumerationTypeClass)
		{
			WriteEnumDefinition(i.second, enumSkipList, name, cdefs, enums);
		}
		//		else if ((i.second->GetClass() == BoolTypeClass) || (i.second->GetClass() == IntegerTypeClass)
		//			|| (i.second->GetClass() == FloatTypeClass) || (i.second->GetClass() == ArrayTypeClass))
		//		{
		//			fprintf(out, "%s = ", name.c_str());
		//			OutputType(out, i.second);
		//			fprintf(out, "\n");
		//		}
	}

	//	fprintf(out, "\n-- Structure definitions\n");
	//	fprintf(cdefs, "\t/* Structure definitions */\n");
	//	set<QualifiedName> structsToProcess;
	//	set<QualifiedName> finishedStructs;
	//	for (auto& i : types)
	//		structsToProcess.insert(i.first);
	//	while (structsToProcess.size() != 0)
	//	{
	//		set<QualifiedName> currentStructList = structsToProcess;
	//		structsToProcess.clear();
	//		bool processedSome = false;
	//		for (auto& i : currentStructList)
	//		{
	//			string name;
	//			if (i.size() != 1)
	//				continue;
	//			Ref<Type> type = types[i];
	//			name = i[0];
	//			if ((type->GetClass() == StructureTypeClass) && (type->GetStructure()->GetMembers().size() != 0))
	//			{
	//				bool requiresDependency = false;
	//				for (auto& j : type->GetStructure()->GetMembers())
	//				{
	//					if ((j.type->GetClass() == NamedTypeReferenceClass)
	//						&& (types[j.type->GetNamedTypeReference()->GetName()]->GetClass() == StructureTypeClass)
	//						&& (finishedStructs.count(j.type->GetNamedTypeReference()->GetName()) == 0))
	//					{
	//						// This structure needs another structure that isn't fully defined yet, need to wait
	//						// for the dependencies to be defined
	//						structsToProcess.insert(i);
	//						requiresDependency = true;
	//						break;
	//					}
	//				}
	//
	//				if (requiresDependency)
	//					continue;
	//				fprintf(out, "%s._fields_ = [\n", name.c_str());
	//				for (auto& j : type->GetStructure()->GetMembers())
	//				{
	//					// To help the python->C wrappers
	//					if ((j.type->GetClass() == PointerTypeClass) && (j.type->GetChildType()->GetWidth() == 1)
	//						&& (j.type->GetChildType()->IsSigned()))
	//					{
	//						fprintf(out, "\t\t('_%s', ", j.name.c_str());
	//					}
	//					else
	//						fprintf(out, "\t\t('%s', ", j.name.c_str());
	//					OutputType(out, j.type);
	//					fprintf(out, "),\n");
	//				}
	//				fprintf(out, "\t]\n");
	//				finishedStructs.insert(i);
	//				processedSome = true;
	//			}
	//			else if (type->GetClass() == NamedTypeReferenceClass)
	//			{
	//				fprintf(out, "%s = %s\n", name.c_str(),
	// type->GetNamedTypeReference()->GetName().GetString().c_str()); 				fprintf(out, "%sHandle =
	// %sHandle\n", name.c_str(), 					type->GetNamedTypeReference()->GetName().GetString().c_str());
	// finishedStructs.insert(i);
	//				processedSome = true;
	//			}
	//		}
	//
	//		if (!processedSome)
	//		{
	//			fprintf(stderr, "Detected dependency cycle in structures\n");
	//			for (auto& i : structsToProcess)
	//				fprintf(stderr, "%s\n", i.GetString().c_str());
	//			return 1;
	//		}
	//	}

	fprintf(out, "\n-- Function definitions\n");
	//	fprintf(cdefs, "\t/* Function definitions */\n");
	for (auto& i : funcs)
	{
		string name;
		if (i.first.size() != 1)
			continue;
		name = i.first[0];

		// Check for a string result, these will be automatically wrapped to free the string
		// memory and return a Python string
		bool stringResult = (i.second->GetChildType()->GetClass() == PointerTypeClass)
			&& (i.second->GetChildType()->GetChildType()->GetWidth() == 1)
			&& (i.second->GetChildType()->GetChildType()->IsSigned());
		// Pointer returns will be automatically wrapped to return None on null pointer
		bool pointerResult = (i.second->GetChildType()->GetClass() == PointerTypeClass);

		// From python -> C python3 requires str -> str.encode('charmap')
		bool swizzleArgs = true;
		if (name == "BNFreeString" || name == "BNRustFreeString")
			swizzleArgs = false;

		// Rust-allocated strings are deallocated differently
		bool rustFFI = name.rfind("BNRust", 0) == 0;

		bool callbackConvention = false;
		if (name == "BNAllocString")
		{
			// Don't perform automatic wrapping of string allocation, and return a void
			// pointer so that callback functions (which is the only valid use of BNAllocString)
			// can properly return the result
			stringResult = false;
			callbackConvention = true;
		}

		fprintf(out, "\n-- -------------------------------------------------------\n");
		fprintf(out, "-- %s\n", name.c_str());
		fprintf(out, "-- -------------------------------------------------------\n");
		//		fprintf(cdefs, "/* -------------------------------------------------------\n");
		//		fprintf(cdefs, " * %s\n", name.c_str());
		//		fprintf(cdefs, " * ------------------------------------------------------- */\n");
		fprintf(cdefs, "%s %s(\n", i.second->GetChildType()->GetString().c_str(), name.c_str());
		//		fprintf(out, "%s.restype = ", funcName.c_str());
		//		OutputType(cdefs, i.second->GetChildType(), true, callbackConvention);
		//		fprintf(out, "\n");
		if (!i.second->HasVariableArguments())
		{
			bool firstArg = true;
			for (auto& j : i.second->GetParameters())
			{
				if (!firstArg)
				{
					fprintf(cdefs, ",\n");
				}
				else
				{
					firstArg = false;
				}
				fprintf(cdefs, "\t");

				if (j.type->IsEnumReference())
				{
					fprintf(
						cdefs, "%s %s", j.type->GetNamedTypeReference()->GetName().GetString().c_str(), j.name.c_str());
				}
				else
				{
					fprintf(cdefs, "%s %s%s", j.type->GetStringBeforeName().c_str(), j.name.c_str(),
						j.type->GetStringAfterName().c_str());
				}
			}
		}
		else
		{
			// As of writing this, only BNLog's have variable instruction lengths, but in an attempt not to
			// break in the
			// future:
			if (name.compare(0, 5, "BNLog") == 0)
			{
				if (name != "BNLog")
				{
					fprintf(cdefs, "\t...\n);\n\n");
					fprintf(out, "function core.%s(...)\n", name.c_str());
					fprintf(out, "\treturn cdefs.C.%s(...)\n", name.c_str());
					fprintf(out, "end\n");
					continue;
				}
				else
				{
					fprintf(cdefs, "\tBNLogLevel level,\n\t...\n);\n\n");
					fprintf(out, "function core.%s(level, ...)\n", name.c_str());
					fprintf(out, "\treturn cdefs.C.%s(level, ...)\n", name.c_str());
					fprintf(out, "end\n");
					continue;
				}
			}
		}
		fprintf(cdefs, "\n);\n\n");
		fprintf(out, "\nfunction core.%s(", name.c_str());
		if (!i.second->HasVariableArguments())
		{
			size_t argN = 0;
			for (auto& arg : i.second->GetParameters())
			{
				string argName = arg.name;
				if (g_luaKeywordReplacements.find(argName) != g_luaKeywordReplacements.end())
					argName = g_luaKeywordReplacements[argName];

				if (argName.empty())
					argName = "arg" + to_string(argN);

				if (argN > 0)
					fprintf(out, ", ");
				fprintf(out, "\n\t\t");
				fprintf(out, "%s", argName.c_str());
				//				if (swizzleArgs)
				//					OutputSwizzledType(out, arg.type);
				//				else
				//					OutputType(out, arg.type);
				argN++;
			}
		}
		//		fprintf(out, "\n\t\t) -> ");
		//		if (stringResult || pointerResult)
		//			fprintf(out, "Optional[");
		//		OutputSwizzledType(out, i.second->GetChildType());
		//		if (stringResult || pointerResult)
		//			fprintf(out, "]");
		//		fprintf(out, ":\n");
		fprintf(out, "\n)\n");

		string stringArgFuncCall = "cdefs.C." + name + "(";
		size_t argN = 0;
		for (auto& arg : i.second->GetParameters())
		{
			string argName = arg.name;
			if (g_luaKeywordReplacements.find(argName) != g_luaKeywordReplacements.end())
				argName = g_luaKeywordReplacements[argName];

			if (argName.empty())
				argName = "arg" + to_string(argN);

			//			if (swizzleArgs && (arg.type->GetClass() == PointerTypeClass)
			//				&& (arg.type->GetChildType()->GetClass() == IntegerTypeClass)
			//				&& (arg.type->GetChildType()->GetWidth() == 1) && (arg.type->GetChildType()->IsSigned()))
			//			{
			//				stringArgFuncCall += string("cstr(") + argName + "), ";
			//			}
			//			else
			//			{
			//				stringArgFuncCall += argName + ", ";
			//			}
			stringArgFuncCall += argName + ", ";
			argN++;
		}
		if (argN > 0)
			stringArgFuncCall = stringArgFuncCall.substr(0, stringArgFuncCall.size() - 2);
		stringArgFuncCall += ")";

		if (stringResult)
		{
			// Emit wrapper to get Python string and free native memory
			fprintf(out, "\tlocal result = ");
			fprintf(out, "%s\n", stringArgFuncCall.c_str());
			fprintf(out, "\tlocal string = cdefs.string(result)\n");
			if (rustFFI)
				fprintf(out, "\tcore.BNRustFreeString(result)\n");
			else
				fprintf(out, "\tcore.BNFreeString(result)\n");
			fprintf(out, "\treturn string\n");
		}
		else if (pointerResult)
		{
			// Emit wrapper to return None on null pointer
			fprintf(out, "\tlocal result = ");
			fprintf(out, "%s\n", stringArgFuncCall.c_str());
			fprintf(out, "\tif not result then \n");
			fprintf(out, "\t\treturn nil\n");
			fprintf(out, "\tend\n");
			fprintf(out, "\n\treturn result\n");
		}
		else
		{
			fprintf(out, "\treturn ");
			fprintf(out, "%s\n", stringArgFuncCall.c_str());
		}
		fprintf(out, "end\n");
	}

	fprintf(out, "core.max_confidence = %d\n\n", BN_FULL_CONFIDENCE);

	fprintf(out, "\n-- Helper functions\n");
	//	fprintf(out, "def handle_of_type(value, handle_type):\n");
	//	fprintf(out, "\tif isinstance(value, ctypes.POINTER(handle_type)) or isinstance(value, ctypes.c_void_p):\n");
	//	fprintf(out, "\t\treturn ctypes.cast(value, ctypes.POINTER(handle_type))\n");
	//	fprintf(out, "\traise ValueError('expected pointer to %%s' %% str(handle_type))\n");

	fprintf(out, "\n-- Set path for core plugins\n");
	fprintf(out, "-- BNSetBundledPluginDirectory(os.path.join(_base_path, 'plugins'))\n");

	fprintf(out, "\nreturn core\n");

	fprintf(cdefs, "\n]]\n");
	fprintf(cdefs, "\nreturn ffi\n");

	fprintf(enums, "\nreturn enums\n");

	fclose(out);
	fclose(cdefs);
	fclose(enums);
	return 0;
}
