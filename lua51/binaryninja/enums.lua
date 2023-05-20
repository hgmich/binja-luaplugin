local cdefs = require('binaryninja._cdefs')

local enums = {}

enums.ActionType = cdefs.metatype(cdefs.typeof('struct { BNActionType; } '), {
	__index = {
		TemporaryAction = 0,
		DataModificationAction = 1,
		AnalysisAction = 2,
		DataModificationAndAnalysisAction = 3,
	}
})

enums.AnalysisState = cdefs.metatype(cdefs.typeof('struct { BNAnalysisState; } '), {
	__index = {
		InitialState = 0,
		HoldState = 1,
		IdleState = 2,
		DisassembleState = 3,
		AnalyzeState = 4,
		ExtendedAnalyzeState = 5,
	}
})

enums.AnalysisMode = cdefs.metatype(cdefs.typeof('struct { BNAnalysisMode; } '), {
	__index = {
		FullAnalysisMode = 0,
		IntermediateAnalysisMode = 1,
		BasicAnalysisMode = 2,
		ControlFlowAnalysisMode = 3,
	}
})

enums.AnalysisSkipReason = cdefs.metatype(cdefs.typeof('struct { BNAnalysisSkipReason; } '), {
	__index = {
		NoSkipReason = 0,
		AlwaysSkipReason = 1,
		ExceedFunctionSizeSkipReason = 2,
		ExceedFunctionAnalysisTimeSkipReason = 3,
		ExceedFunctionUpdateCountSkipReason = 4,
		NewAutoFunctionAnalysisSuppressedReason = 5,
		BasicAnalysisSkipReason = 6,
		IntermediateAnalysisSkipReason = 7,
	}
})

enums.AnalysisWarningActionType = cdefs.metatype(cdefs.typeof('struct { BNAnalysisWarningActionType; } '), {
	__index = {
		NoAnalysisWarningAction = 0,
		ForceAnalysisWarningAction = 1,
		ShowStackGraphWarningAction = 2,
	}
})

enums.BranchType = cdefs.metatype(cdefs.typeof('struct { BNBranchType; } '), {
	__index = {
		UnconditionalBranch = 0,
		FalseBranch = 1,
		TrueBranch = 2,
		CallDestination = 3,
		FunctionReturn = 4,
		SystemCall = 5,
		IndirectBranch = 6,
		ExceptionBranch = 7,
		UnresolvedBranch = 127,
		UserDefinedBranch = 128,
	}
})

enums.BinaryViewEventType = cdefs.metatype(cdefs.typeof('struct { BNBinaryViewEventType; } '), {
	__index = {
		BinaryViewFinalizationEvent = 0,
		BinaryViewInitialAnalysisCompletionEvent = 1,
	}
})

enums.CallingConventionName = cdefs.metatype(cdefs.typeof('struct { BNCallingConventionName; } '), {
	__index = {
		NoCallingConvention = 0,
		CdeclCallingConvention = 1,
		PascalCallingConvention = 2,
		ThisCallCallingConvention = 3,
		STDCallCallingConvention = 4,
		FastcallCallingConvention = 5,
		CLRCallCallingConvention = 6,
		EabiCallCallingConvention = 7,
		VectorCallCallingConvention = 8,
		SwiftCallingConvention = 9,
		SwiftAsyncCallingConvention = 10,
	}
})

enums.DataFlowQueryOption = cdefs.metatype(cdefs.typeof('struct { BNDataFlowQueryOption; } '), {
	__index = {
		FromAddressesInLookupTableQueryOption = 0,
	}
})

enums.DeadStoreElimination = cdefs.metatype(cdefs.typeof('struct { BNDeadStoreElimination; } '), {
	__index = {
		DefaultDeadStoreElimination = 0,
		PreventDeadStoreElimination = 1,
		AllowDeadStoreElimination = 2,
	}
})

enums.DisassemblyOption = cdefs.metatype(cdefs.typeof('struct { BNDisassemblyOption; } '), {
	__index = {
		ShowAddress = 0,
		ShowOpcode = 1,
		ExpandLongOpcode = 2,
		ShowVariablesAtTopOfGraph = 3,
		ShowVariableTypesWhenAssigned = 4,
		ShowCallParameterNames = 6,
		ShowRegisterHighlight = 7,
		ShowFunctionAddress = 8,
		ShowFunctionHeader = 9,
		ShowTypeCasts = 10,
		GroupLinearDisassemblyFunctions = 64,
		HighLevelILLinearDisassembly = 65,
		WaitForIL = 66,
		IndentHLILBody = 67,
		ShowFlagUsage = 128,
		ShowStackPointer = 129,
		ShowILTypes = 130,
		ShowILOpcodes = 131,
	}
})

enums.HighlightColorStyle = cdefs.metatype(cdefs.typeof('struct { BNHighlightColorStyle; } '), {
	__index = {
		StandardHighlightColor = 0,
		MixedHighlightColor = 1,
		CustomHighlightColor = 2,
	}
})

enums.HighlightStandardColor = cdefs.metatype(cdefs.typeof('struct { BNHighlightStandardColor; } '), {
	__index = {
		NoHighlightColor = 0,
		BlueHighlightColor = 1,
		GreenHighlightColor = 2,
		CyanHighlightColor = 3,
		RedHighlightColor = 4,
		MagentaHighlightColor = 5,
		YellowHighlightColor = 6,
		OrangeHighlightColor = 7,
		WhiteHighlightColor = 8,
		BlackHighlightColor = 9,
	}
})

enums.EdgePenStyle = cdefs.metatype(cdefs.typeof('struct { BNEdgePenStyle; } '), {
	__index = {
		NoPen = 0,
		SolidLine = 1,
		DashLine = 2,
		DotLine = 3,
		DashDotLine = 4,
		DashDotDotLine = 5,
	}
})

enums.ThemeColor = cdefs.metatype(cdefs.typeof('struct { BNThemeColor; } '), {
	__index = {
		AddressColor = 0,
		ModifiedColor = 1,
		InsertedColor = 2,
		NotPresentColor = 3,
		SelectionColor = 4,
		OutlineColor = 5,
		BackgroundHighlightDarkColor = 6,
		BackgroundHighlightLightColor = 7,
		BoldBackgroundHighlightDarkColor = 8,
		BoldBackgroundHighlightLightColor = 9,
		AlphanumericHighlightColor = 10,
		PrintableHighlightColor = 11,
		GraphBackgroundDarkColor = 12,
		GraphBackgroundLightColor = 13,
		GraphNodeDarkColor = 14,
		GraphNodeLightColor = 15,
		GraphNodeOutlineColor = 16,
		GraphNodeShadowColor = 17,
		TrueBranchColor = 18,
		FalseBranchColor = 19,
		UnconditionalBranchColor = 20,
		AltTrueBranchColor = 21,
		AltFalseBranchColor = 22,
		AltUnconditionalBranchColor = 23,
		RegisterColor = 24,
		NumberColor = 25,
		CodeSymbolColor = 26,
		DataSymbolColor = 27,
		StackVariableColor = 28,
		ImportColor = 29,
		InstructionHighlightColor = 30,
		RelatedInstructionHighlightColor = 31,
		TokenHighlightColor = 32,
		TokenSelectionColor = 33,
		AnnotationColor = 34,
		OpcodeColor = 35,
		LinearDisassemblyFunctionHeaderColor = 36,
		LinearDisassemblyBlockColor = 37,
		LinearDisassemblyNoteColor = 38,
		LinearDisassemblySeparatorColor = 39,
		StringColor = 40,
		TypeNameColor = 41,
		FieldNameColor = 42,
		KeywordColor = 43,
		UncertainColor = 44,
		NameSpaceColor = 45,
		NameSpaceSeparatorColor = 46,
		GotoLabelColor = 47,
		CommentColor = 48,
		OperationColor = 49,
		BaseStructureNameColor = 50,
		ScriptConsoleOutputColor = 51,
		ScriptConsoleWarningColor = 52,
		ScriptConsoleErrorColor = 53,
		ScriptConsoleEchoColor = 54,
		BlueStandardHighlightColor = 55,
		GreenStandardHighlightColor = 56,
		CyanStandardHighlightColor = 57,
		RedStandardHighlightColor = 58,
		MagentaStandardHighlightColor = 59,
		YellowStandardHighlightColor = 60,
		OrangeStandardHighlightColor = 61,
		WhiteStandardHighlightColor = 62,
		BlackStandardHighlightColor = 63,
		MiniGraphOverlayColor = 64,
		FeatureMapBaseColor = 65,
		FeatureMapNavLineColor = 66,
		FeatureMapNavHighlightColor = 67,
		FeatureMapDataVariableColor = 68,
		FeatureMapAsciiStringColor = 69,
		FeatureMapUnicodeStringColor = 70,
		FeatureMapFunctionColor = 71,
		FeatureMapImportColor = 72,
		FeatureMapExternColor = 73,
		FeatureMapLibraryColor = 74,
		SidebarBackgroundColor = 75,
		SidebarInactiveIconColor = 76,
		SidebarActiveIconColor = 77,
		SidebarHeaderBackgroundColor = 78,
		SidebarHeaderTextColor = 79,
		SidebarWidgetBackgroundColor = 80,
		ActivePaneBackgroundColor = 81,
		InactivePaneBackgroundColor = 82,
	}
})

enums.Endianness = cdefs.metatype(cdefs.typeof('struct { BNEndianness; } '), {
	__index = {
		LittleEndian = 0,
		BigEndian = 1,
	}
})

enums.FindFlag = cdefs.metatype(cdefs.typeof('struct { BNFindFlag; } '), {
	__index = {
		FindCaseSensitive = 0,
		FindCaseInsensitive = 1,
	}
})

enums.FindRangeType = cdefs.metatype(cdefs.typeof('struct { BNFindRangeType; } '), {
	__index = {
		AllRangeType = 0,
		CustomRangeType = 1,
		CurrentFunctionRangeType = 2,
	}
})

enums.FindType = cdefs.metatype(cdefs.typeof('struct { BNFindType; } '), {
	__index = {
		FindTypeRawString = 0,
		FindTypeEscapedString = 1,
		FindTypeText = 2,
		FindTypeConstant = 3,
		FindTypeBytes = 4,
	}
})

enums.LowLevelILFlagCondition = cdefs.metatype(cdefs.typeof('struct { BNLowLevelILFlagCondition; } '), {
	__index = {
		LLFC_E = 0,
		LLFC_NE = 1,
		LLFC_SLT = 2,
		LLFC_ULT = 3,
		LLFC_SLE = 4,
		LLFC_ULE = 5,
		LLFC_SGE = 6,
		LLFC_UGE = 7,
		LLFC_SGT = 8,
		LLFC_UGT = 9,
		LLFC_NEG = 10,
		LLFC_POS = 11,
		LLFC_O = 12,
		LLFC_NO = 13,
		LLFC_FE = 14,
		LLFC_FNE = 15,
		LLFC_FLT = 16,
		LLFC_FLE = 17,
		LLFC_FGE = 18,
		LLFC_FGT = 19,
		LLFC_FO = 20,
		LLFC_FUO = 21,
	}
})

enums.FlagRole = cdefs.metatype(cdefs.typeof('struct { BNFlagRole; } '), {
	__index = {
		SpecialFlagRole = 0,
		ZeroFlagRole = 1,
		PositiveSignFlagRole = 2,
		NegativeSignFlagRole = 3,
		CarryFlagRole = 4,
		OverflowFlagRole = 5,
		HalfCarryFlagRole = 6,
		EvenParityFlagRole = 7,
		OddParityFlagRole = 8,
		OrderedFlagRole = 9,
		UnorderedFlagRole = 10,
	}
})

enums.FlowGraphOption = cdefs.metatype(cdefs.typeof('struct { BNFlowGraphOption; } '), {
	__index = {
		FlowGraphUsesBlockHighlights = 0,
		FlowGraphUsesInstructionHighlights = 1,
		FlowGraphIncludesUserComments = 2,
		FlowGraphAllowsPatching = 3,
		FlowGraphAllowsInlineInstructionEditing = 4,
		FlowGraphShowsSecondaryRegisterHighlighting = 5,
	}
})

enums.FormInputFieldType = cdefs.metatype(cdefs.typeof('struct { BNFormInputFieldType; } '), {
	__index = {
		LabelFormField = 0,
		SeparatorFormField = 1,
		TextLineFormField = 2,
		MultilineTextFormField = 3,
		IntegerFormField = 4,
		AddressFormField = 5,
		ChoiceFormField = 6,
		OpenFileNameFormField = 7,
		SaveFileNameFormField = 8,
		DirectoryNameFormField = 9,
	}
})

enums.FunctionAnalysisSkipOverride = cdefs.metatype(cdefs.typeof('struct { BNFunctionAnalysisSkipOverride; } '), {
	__index = {
		DefaultFunctionAnalysisSkip = 0,
		NeverSkipFunctionAnalysis = 1,
		AlwaysSkipFunctionAnalysis = 2,
	}
})

enums.FunctionGraphType = cdefs.metatype(cdefs.typeof('struct { BNFunctionGraphType; } '), {
	__index = {
		InvalidILViewType = -1,
		NormalFunctionGraph = 0,
		LowLevelILFunctionGraph = 1,
		LiftedILFunctionGraph = 2,
		LowLevelILSSAFormFunctionGraph = 3,
		MediumLevelILFunctionGraph = 4,
		MediumLevelILSSAFormFunctionGraph = 5,
		MappedMediumLevelILFunctionGraph = 6,
		MappedMediumLevelILSSAFormFunctionGraph = 7,
		HighLevelILFunctionGraph = 8,
		HighLevelILSSAFormFunctionGraph = 9,
		HighLevelLanguageRepresentationFunctionGraph = 10,
	}
})

enums.VariableSourceType = cdefs.metatype(cdefs.typeof('struct { BNVariableSourceType; } '), {
	__index = {
		StackVariableSourceType = 0,
		RegisterVariableSourceType = 1,
		FlagVariableSourceType = 2,
	}
})

enums.FunctionUpdateType = cdefs.metatype(cdefs.typeof('struct { BNFunctionUpdateType; } '), {
	__index = {
		UserFunctionUpdate = 0,
		FullAutoFunctionUpdate = 1,
		IncrementalAutoFunctionUpdate = 2,
	}
})

enums.HighLevelILOperation = cdefs.metatype(cdefs.typeof('struct { BNHighLevelILOperation; } '), {
	__index = {
		HLIL_NOP = 0,
		HLIL_BLOCK = 1,
		HLIL_IF = 2,
		HLIL_WHILE = 3,
		HLIL_DO_WHILE = 4,
		HLIL_FOR = 5,
		HLIL_SWITCH = 6,
		HLIL_CASE = 7,
		HLIL_BREAK = 8,
		HLIL_CONTINUE = 9,
		HLIL_JUMP = 10,
		HLIL_RET = 11,
		HLIL_NORET = 12,
		HLIL_GOTO = 13,
		HLIL_LABEL = 14,
		HLIL_VAR_DECLARE = 15,
		HLIL_VAR_INIT = 16,
		HLIL_ASSIGN = 17,
		HLIL_ASSIGN_UNPACK = 18,
		HLIL_VAR = 19,
		HLIL_STRUCT_FIELD = 20,
		HLIL_ARRAY_INDEX = 21,
		HLIL_SPLIT = 22,
		HLIL_DEREF = 23,
		HLIL_DEREF_FIELD = 24,
		HLIL_ADDRESS_OF = 25,
		HLIL_CONST = 26,
		HLIL_CONST_DATA = 27,
		HLIL_CONST_PTR = 28,
		HLIL_EXTERN_PTR = 29,
		HLIL_FLOAT_CONST = 30,
		HLIL_IMPORT = 31,
		HLIL_ADD = 32,
		HLIL_ADC = 33,
		HLIL_SUB = 34,
		HLIL_SBB = 35,
		HLIL_AND = 36,
		HLIL_OR = 37,
		HLIL_XOR = 38,
		HLIL_LSL = 39,
		HLIL_LSR = 40,
		HLIL_ASR = 41,
		HLIL_ROL = 42,
		HLIL_RLC = 43,
		HLIL_ROR = 44,
		HLIL_RRC = 45,
		HLIL_MUL = 46,
		HLIL_MULU_DP = 47,
		HLIL_MULS_DP = 48,
		HLIL_DIVU = 49,
		HLIL_DIVU_DP = 50,
		HLIL_DIVS = 51,
		HLIL_DIVS_DP = 52,
		HLIL_MODU = 53,
		HLIL_MODU_DP = 54,
		HLIL_MODS = 55,
		HLIL_MODS_DP = 56,
		HLIL_NEG = 57,
		HLIL_NOT = 58,
		HLIL_SX = 59,
		HLIL_ZX = 60,
		HLIL_LOW_PART = 61,
		HLIL_CALL = 62,
		HLIL_CMP_E = 63,
		HLIL_CMP_NE = 64,
		HLIL_CMP_SLT = 65,
		HLIL_CMP_ULT = 66,
		HLIL_CMP_SLE = 67,
		HLIL_CMP_ULE = 68,
		HLIL_CMP_SGE = 69,
		HLIL_CMP_UGE = 70,
		HLIL_CMP_SGT = 71,
		HLIL_CMP_UGT = 72,
		HLIL_TEST_BIT = 73,
		HLIL_BOOL_TO_INT = 74,
		HLIL_ADD_OVERFLOW = 75,
		HLIL_SYSCALL = 76,
		HLIL_TAILCALL = 77,
		HLIL_INTRINSIC = 78,
		HLIL_BP = 79,
		HLIL_TRAP = 80,
		HLIL_UNDEF = 81,
		HLIL_UNIMPL = 82,
		HLIL_UNIMPL_MEM = 83,
		HLIL_FADD = 84,
		HLIL_FSUB = 85,
		HLIL_FMUL = 86,
		HLIL_FDIV = 87,
		HLIL_FSQRT = 88,
		HLIL_FNEG = 89,
		HLIL_FABS = 90,
		HLIL_FLOAT_TO_INT = 91,
		HLIL_INT_TO_FLOAT = 92,
		HLIL_FLOAT_CONV = 93,
		HLIL_ROUND_TO_INT = 94,
		HLIL_FLOOR = 95,
		HLIL_CEIL = 96,
		HLIL_FTRUNC = 97,
		HLIL_FCMP_E = 98,
		HLIL_FCMP_NE = 99,
		HLIL_FCMP_LT = 100,
		HLIL_FCMP_LE = 101,
		HLIL_FCMP_GE = 102,
		HLIL_FCMP_GT = 103,
		HLIL_FCMP_O = 104,
		HLIL_FCMP_UO = 105,
		HLIL_UNREACHABLE = 106,
		HLIL_WHILE_SSA = 107,
		HLIL_DO_WHILE_SSA = 108,
		HLIL_FOR_SSA = 109,
		HLIL_VAR_INIT_SSA = 110,
		HLIL_ASSIGN_MEM_SSA = 111,
		HLIL_ASSIGN_UNPACK_MEM_SSA = 112,
		HLIL_VAR_SSA = 113,
		HLIL_ARRAY_INDEX_SSA = 114,
		HLIL_DEREF_SSA = 115,
		HLIL_DEREF_FIELD_SSA = 116,
		HLIL_CALL_SSA = 117,
		HLIL_SYSCALL_SSA = 118,
		HLIL_INTRINSIC_SSA = 119,
		HLIL_VAR_PHI = 120,
		HLIL_MEM_PHI = 121,
	}
})

enums.ILBranchDependence = cdefs.metatype(cdefs.typeof('struct { BNILBranchDependence; } '), {
	__index = {
		NotBranchDependent = 0,
		TrueBranchDependent = 1,
		FalseBranchDependent = 2,
	}
})

enums.ILInstructionAttribute = cdefs.metatype(cdefs.typeof('struct { BNILInstructionAttribute; } '), {
	__index = {
		ILAllowDeadStoreElimination = 1,
		ILPreventDeadStoreElimination = 2,
		MLILAssumePossibleUse = 4,
	}
})

enums.ImplicitRegisterExtend = cdefs.metatype(cdefs.typeof('struct { BNImplicitRegisterExtend; } '), {
	__index = {
		NoExtend = 0,
		ZeroExtendToFullWidth = 1,
		SignExtendToFullWidth = 2,
	}
})

enums.MemberAccess = cdefs.metatype(cdefs.typeof('struct { BNMemberAccess; } '), {
	__index = {
		NoAccess = 0,
		PrivateAccess = 1,
		ProtectedAccess = 2,
		PublicAccess = 3,
	}
})

enums.MemberScope = cdefs.metatype(cdefs.typeof('struct { BNMemberScope; } '), {
	__index = {
		NoScope = 0,
		StaticScope = 1,
		VirtualScope = 2,
		ThunkScope = 3,
		FriendScope = 4,
	}
})

enums.InstructionTextTokenType = cdefs.metatype(cdefs.typeof('struct { BNInstructionTextTokenType; } '), {
	__index = {
		TextToken = 0,
		InstructionToken = 1,
		OperandSeparatorToken = 2,
		RegisterToken = 3,
		IntegerToken = 4,
		PossibleAddressToken = 5,
		BeginMemoryOperandToken = 6,
		EndMemoryOperandToken = 7,
		FloatingPointToken = 8,
		AnnotationToken = 9,
		CodeRelativeAddressToken = 10,
		ArgumentNameToken = 11,
		HexDumpByteValueToken = 12,
		HexDumpSkippedByteToken = 13,
		HexDumpInvalidByteToken = 14,
		HexDumpTextToken = 15,
		OpcodeToken = 16,
		StringToken = 17,
		CharacterConstantToken = 18,
		KeywordToken = 19,
		TypeNameToken = 20,
		FieldNameToken = 21,
		NameSpaceToken = 22,
		NameSpaceSeparatorToken = 23,
		TagToken = 24,
		StructOffsetToken = 25,
		StructOffsetByteValueToken = 26,
		StructureHexDumpTextToken = 27,
		GotoLabelToken = 28,
		CommentToken = 29,
		PossibleValueToken = 30,
		PossibleValueTypeToken = 31,
		ArrayIndexToken = 32,
		IndentationToken = 33,
		UnknownMemoryToken = 34,
		EnumerationMemberToken = 35,
		OperationToken = 36,
		BaseStructureNameToken = 37,
		BaseStructureSeparatorToken = 38,
		CodeSymbolToken = 64,
		DataSymbolToken = 65,
		LocalVariableToken = 66,
		ImportToken = 67,
		AddressDisplayToken = 68,
		IndirectImportToken = 69,
		ExternalSymbolToken = 70,
	}
})

enums.InstructionTextTokenContext = cdefs.metatype(cdefs.typeof('struct { BNInstructionTextTokenContext; } '), {
	__index = {
		NoTokenContext = 0,
		LocalVariableTokenContext = 1,
		DataVariableTokenContext = 2,
		FunctionReturnTokenContext = 3,
		InstructionAddressTokenContext = 4,
		ILInstructionIndexTokenContext = 5,
	}
})

enums.IntegerDisplayType = cdefs.metatype(cdefs.typeof('struct { BNIntegerDisplayType; } '), {
	__index = {
		DefaultIntegerDisplayType = 0,
		BinaryDisplayType = 1,
		SignedOctalDisplayType = 2,
		UnsignedOctalDisplayType = 3,
		SignedDecimalDisplayType = 4,
		UnsignedDecimalDisplayType = 5,
		SignedHexadecimalDisplayType = 6,
		UnsignedHexadecimalDisplayType = 7,
		CharacterConstantDisplayType = 8,
		PointerDisplayType = 9,
		FloatDisplayType = 10,
		DoubleDisplayType = 11,
		EnumerationDisplayType = 12,
	}
})

enums.LinearDisassemblyLineType = cdefs.metatype(cdefs.typeof('struct { BNLinearDisassemblyLineType; } '), {
	__index = {
		BlankLineType = 0,
		BasicLineType = 1,
		CodeDisassemblyLineType = 2,
		DataVariableLineType = 3,
		HexDumpLineType = 4,
		FunctionHeaderLineType = 5,
		FunctionHeaderStartLineType = 6,
		FunctionHeaderEndLineType = 7,
		FunctionContinuationLineType = 8,
		LocalVariableLineType = 9,
		LocalVariableListEndLineType = 10,
		FunctionEndLineType = 11,
		NoteStartLineType = 12,
		NoteLineType = 13,
		NoteEndLineType = 14,
		SectionStartLineType = 15,
		SectionEndLineType = 16,
		SectionSeparatorLineType = 17,
		NonContiguousSeparatorLineType = 18,
		AnalysisWarningLineType = 19,
	}
})

enums.LinearViewObjectIdentifierType = cdefs.metatype(cdefs.typeof('struct { BNLinearViewObjectIdentifierType; } '), {
	__index = {
		SingleLinearViewObject = 0,
		AddressLinearViewObject = 1,
		AddressRangeLinearViewObject = 2,
	}
})

enums.LogLevel = cdefs.metatype(cdefs.typeof('struct { BNLogLevel; } '), {
	__index = {
		DebugLog = 0,
		InfoLog = 1,
		WarningLog = 2,
		ErrorLog = 3,
		AlertLog = 4,
	}
})

enums.LowLevelILOperation = cdefs.metatype(cdefs.typeof('struct { BNLowLevelILOperation; } '), {
	__index = {
		LLIL_NOP = 0,
		LLIL_SET_REG = 1,
		LLIL_SET_REG_SPLIT = 2,
		LLIL_SET_FLAG = 3,
		LLIL_SET_REG_STACK_REL = 4,
		LLIL_REG_STACK_PUSH = 5,
		LLIL_LOAD = 6,
		LLIL_STORE = 7,
		LLIL_PUSH = 8,
		LLIL_POP = 9,
		LLIL_REG = 10,
		LLIL_REG_SPLIT = 11,
		LLIL_REG_STACK_REL = 12,
		LLIL_REG_STACK_POP = 13,
		LLIL_REG_STACK_FREE_REG = 14,
		LLIL_REG_STACK_FREE_REL = 15,
		LLIL_CONST = 16,
		LLIL_CONST_PTR = 17,
		LLIL_EXTERN_PTR = 18,
		LLIL_FLOAT_CONST = 19,
		LLIL_FLAG = 20,
		LLIL_FLAG_BIT = 21,
		LLIL_ADD = 22,
		LLIL_ADC = 23,
		LLIL_SUB = 24,
		LLIL_SBB = 25,
		LLIL_AND = 26,
		LLIL_OR = 27,
		LLIL_XOR = 28,
		LLIL_LSL = 29,
		LLIL_LSR = 30,
		LLIL_ASR = 31,
		LLIL_ROL = 32,
		LLIL_RLC = 33,
		LLIL_ROR = 34,
		LLIL_RRC = 35,
		LLIL_MUL = 36,
		LLIL_MULU_DP = 37,
		LLIL_MULS_DP = 38,
		LLIL_DIVU = 39,
		LLIL_DIVU_DP = 40,
		LLIL_DIVS = 41,
		LLIL_DIVS_DP = 42,
		LLIL_MODU = 43,
		LLIL_MODU_DP = 44,
		LLIL_MODS = 45,
		LLIL_MODS_DP = 46,
		LLIL_NEG = 47,
		LLIL_NOT = 48,
		LLIL_SX = 49,
		LLIL_ZX = 50,
		LLIL_LOW_PART = 51,
		LLIL_JUMP = 52,
		LLIL_JUMP_TO = 53,
		LLIL_CALL = 54,
		LLIL_CALL_STACK_ADJUST = 55,
		LLIL_TAILCALL = 56,
		LLIL_RET = 57,
		LLIL_NORET = 58,
		LLIL_IF = 59,
		LLIL_GOTO = 60,
		LLIL_FLAG_COND = 61,
		LLIL_FLAG_GROUP = 62,
		LLIL_CMP_E = 63,
		LLIL_CMP_NE = 64,
		LLIL_CMP_SLT = 65,
		LLIL_CMP_ULT = 66,
		LLIL_CMP_SLE = 67,
		LLIL_CMP_ULE = 68,
		LLIL_CMP_SGE = 69,
		LLIL_CMP_UGE = 70,
		LLIL_CMP_SGT = 71,
		LLIL_CMP_UGT = 72,
		LLIL_TEST_BIT = 73,
		LLIL_BOOL_TO_INT = 74,
		LLIL_ADD_OVERFLOW = 75,
		LLIL_SYSCALL = 76,
		LLIL_BP = 77,
		LLIL_TRAP = 78,
		LLIL_INTRINSIC = 79,
		LLIL_UNDEF = 80,
		LLIL_UNIMPL = 81,
		LLIL_UNIMPL_MEM = 82,
		LLIL_FADD = 83,
		LLIL_FSUB = 84,
		LLIL_FMUL = 85,
		LLIL_FDIV = 86,
		LLIL_FSQRT = 87,
		LLIL_FNEG = 88,
		LLIL_FABS = 89,
		LLIL_FLOAT_TO_INT = 90,
		LLIL_INT_TO_FLOAT = 91,
		LLIL_FLOAT_CONV = 92,
		LLIL_ROUND_TO_INT = 93,
		LLIL_FLOOR = 94,
		LLIL_CEIL = 95,
		LLIL_FTRUNC = 96,
		LLIL_FCMP_E = 97,
		LLIL_FCMP_NE = 98,
		LLIL_FCMP_LT = 99,
		LLIL_FCMP_LE = 100,
		LLIL_FCMP_GE = 101,
		LLIL_FCMP_GT = 102,
		LLIL_FCMP_O = 103,
		LLIL_FCMP_UO = 104,
		LLIL_SET_REG_SSA = 105,
		LLIL_SET_REG_SSA_PARTIAL = 106,
		LLIL_SET_REG_SPLIT_SSA = 107,
		LLIL_SET_REG_STACK_REL_SSA = 108,
		LLIL_SET_REG_STACK_ABS_SSA = 109,
		LLIL_REG_SPLIT_DEST_SSA = 110,
		LLIL_REG_STACK_DEST_SSA = 111,
		LLIL_REG_SSA = 112,
		LLIL_REG_SSA_PARTIAL = 113,
		LLIL_REG_SPLIT_SSA = 114,
		LLIL_REG_STACK_REL_SSA = 115,
		LLIL_REG_STACK_ABS_SSA = 116,
		LLIL_REG_STACK_FREE_REL_SSA = 117,
		LLIL_REG_STACK_FREE_ABS_SSA = 118,
		LLIL_SET_FLAG_SSA = 119,
		LLIL_FLAG_SSA = 120,
		LLIL_FLAG_BIT_SSA = 121,
		LLIL_CALL_SSA = 122,
		LLIL_SYSCALL_SSA = 123,
		LLIL_TAILCALL_SSA = 124,
		LLIL_CALL_PARAM = 125,
		LLIL_CALL_STACK_SSA = 126,
		LLIL_CALL_OUTPUT_SSA = 127,
		LLIL_LOAD_SSA = 128,
		LLIL_STORE_SSA = 129,
		LLIL_INTRINSIC_SSA = 130,
		LLIL_REG_PHI = 131,
		LLIL_REG_STACK_PHI = 132,
		LLIL_FLAG_PHI = 133,
		LLIL_MEM_PHI = 134,
	}
})

enums.MediumLevelILOperation = cdefs.metatype(cdefs.typeof('struct { BNMediumLevelILOperation; } '), {
	__index = {
		MLIL_NOP = 0,
		MLIL_SET_VAR = 1,
		MLIL_SET_VAR_FIELD = 2,
		MLIL_SET_VAR_SPLIT = 3,
		MLIL_LOAD = 4,
		MLIL_LOAD_STRUCT = 5,
		MLIL_STORE = 6,
		MLIL_STORE_STRUCT = 7,
		MLIL_VAR = 8,
		MLIL_VAR_FIELD = 9,
		MLIL_VAR_SPLIT = 10,
		MLIL_ADDRESS_OF = 11,
		MLIL_ADDRESS_OF_FIELD = 12,
		MLIL_CONST = 13,
		MLIL_CONST_DATA = 14,
		MLIL_CONST_PTR = 15,
		MLIL_EXTERN_PTR = 16,
		MLIL_FLOAT_CONST = 17,
		MLIL_IMPORT = 18,
		MLIL_ADD = 19,
		MLIL_ADC = 20,
		MLIL_SUB = 21,
		MLIL_SBB = 22,
		MLIL_AND = 23,
		MLIL_OR = 24,
		MLIL_XOR = 25,
		MLIL_LSL = 26,
		MLIL_LSR = 27,
		MLIL_ASR = 28,
		MLIL_ROL = 29,
		MLIL_RLC = 30,
		MLIL_ROR = 31,
		MLIL_RRC = 32,
		MLIL_MUL = 33,
		MLIL_MULU_DP = 34,
		MLIL_MULS_DP = 35,
		MLIL_DIVU = 36,
		MLIL_DIVU_DP = 37,
		MLIL_DIVS = 38,
		MLIL_DIVS_DP = 39,
		MLIL_MODU = 40,
		MLIL_MODU_DP = 41,
		MLIL_MODS = 42,
		MLIL_MODS_DP = 43,
		MLIL_NEG = 44,
		MLIL_NOT = 45,
		MLIL_SX = 46,
		MLIL_ZX = 47,
		MLIL_LOW_PART = 48,
		MLIL_JUMP = 49,
		MLIL_JUMP_TO = 50,
		MLIL_RET_HINT = 51,
		MLIL_CALL = 52,
		MLIL_CALL_UNTYPED = 53,
		MLIL_CALL_OUTPUT = 54,
		MLIL_CALL_PARAM = 55,
		MLIL_RET = 56,
		MLIL_NORET = 57,
		MLIL_IF = 58,
		MLIL_GOTO = 59,
		MLIL_CMP_E = 60,
		MLIL_CMP_NE = 61,
		MLIL_CMP_SLT = 62,
		MLIL_CMP_ULT = 63,
		MLIL_CMP_SLE = 64,
		MLIL_CMP_ULE = 65,
		MLIL_CMP_SGE = 66,
		MLIL_CMP_UGE = 67,
		MLIL_CMP_SGT = 68,
		MLIL_CMP_UGT = 69,
		MLIL_TEST_BIT = 70,
		MLIL_BOOL_TO_INT = 71,
		MLIL_ADD_OVERFLOW = 72,
		MLIL_SYSCALL = 73,
		MLIL_SYSCALL_UNTYPED = 74,
		MLIL_TAILCALL = 75,
		MLIL_TAILCALL_UNTYPED = 76,
		MLIL_INTRINSIC = 77,
		MLIL_FREE_VAR_SLOT = 78,
		MLIL_BP = 79,
		MLIL_TRAP = 80,
		MLIL_UNDEF = 81,
		MLIL_UNIMPL = 82,
		MLIL_UNIMPL_MEM = 83,
		MLIL_FADD = 84,
		MLIL_FSUB = 85,
		MLIL_FMUL = 86,
		MLIL_FDIV = 87,
		MLIL_FSQRT = 88,
		MLIL_FNEG = 89,
		MLIL_FABS = 90,
		MLIL_FLOAT_TO_INT = 91,
		MLIL_INT_TO_FLOAT = 92,
		MLIL_FLOAT_CONV = 93,
		MLIL_ROUND_TO_INT = 94,
		MLIL_FLOOR = 95,
		MLIL_CEIL = 96,
		MLIL_FTRUNC = 97,
		MLIL_FCMP_E = 98,
		MLIL_FCMP_NE = 99,
		MLIL_FCMP_LT = 100,
		MLIL_FCMP_LE = 101,
		MLIL_FCMP_GE = 102,
		MLIL_FCMP_GT = 103,
		MLIL_FCMP_O = 104,
		MLIL_FCMP_UO = 105,
		MLIL_SET_VAR_SSA = 106,
		MLIL_SET_VAR_SSA_FIELD = 107,
		MLIL_SET_VAR_SPLIT_SSA = 108,
		MLIL_SET_VAR_ALIASED = 109,
		MLIL_SET_VAR_ALIASED_FIELD = 110,
		MLIL_VAR_SSA = 111,
		MLIL_VAR_SSA_FIELD = 112,
		MLIL_VAR_ALIASED = 113,
		MLIL_VAR_ALIASED_FIELD = 114,
		MLIL_VAR_SPLIT_SSA = 115,
		MLIL_CALL_SSA = 116,
		MLIL_CALL_UNTYPED_SSA = 117,
		MLIL_SYSCALL_SSA = 118,
		MLIL_SYSCALL_UNTYPED_SSA = 119,
		MLIL_TAILCALL_SSA = 120,
		MLIL_TAILCALL_UNTYPED_SSA = 121,
		MLIL_CALL_PARAM_SSA = 122,
		MLIL_CALL_OUTPUT_SSA = 123,
		MLIL_LOAD_SSA = 124,
		MLIL_LOAD_STRUCT_SSA = 125,
		MLIL_STORE_SSA = 126,
		MLIL_STORE_STRUCT_SSA = 127,
		MLIL_INTRINSIC_SSA = 128,
		MLIL_FREE_VAR_SLOT_SSA = 129,
		MLIL_VAR_PHI = 130,
		MLIL_MEM_PHI = 131,
	}
})

enums.MessageBoxButtonResult = cdefs.metatype(cdefs.typeof('struct { BNMessageBoxButtonResult; } '), {
	__index = {
		NoButton = 0,
		YesButton = 1,
		OKButton = 2,
		CancelButton = 3,
	}
})

enums.MessageBoxButtonSet = cdefs.metatype(cdefs.typeof('struct { BNMessageBoxButtonSet; } '), {
	__index = {
		OKButtonSet = 0,
		YesNoButtonSet = 1,
		YesNoCancelButtonSet = 2,
	}
})

enums.MessageBoxIcon = cdefs.metatype(cdefs.typeof('struct { BNMessageBoxIcon; } '), {
	__index = {
		InformationIcon = 0,
		QuestionIcon = 1,
		WarningIcon = 2,
		ErrorIcon = 3,
	}
})

enums.MetadataType = cdefs.metatype(cdefs.typeof('struct { BNMetadataType; } '), {
	__index = {
		InvalidDataType = 0,
		BooleanDataType = 1,
		StringDataType = 2,
		UnsignedIntegerDataType = 3,
		SignedIntegerDataType = 4,
		DoubleDataType = 5,
		RawDataType = 6,
		KeyValueDataType = 7,
		ArrayDataType = 8,
	}
})

enums.ModificationStatus = cdefs.metatype(cdefs.typeof('struct { BNModificationStatus; } '), {
	__index = {
		Original = 0,
		Changed = 1,
		Inserted = 2,
	}
})

enums.NameType = cdefs.metatype(cdefs.typeof('struct { BNNameType; } '), {
	__index = {
		NoNameType = 0,
		ConstructorNameType = 1,
		DestructorNameType = 2,
		OperatorNewNameType = 3,
		OperatorDeleteNameType = 4,
		OperatorAssignNameType = 5,
		OperatorRightShiftNameType = 6,
		OperatorLeftShiftNameType = 7,
		OperatorNotNameType = 8,
		OperatorEqualNameType = 9,
		OperatorNotEqualNameType = 10,
		OperatorArrayNameType = 11,
		OperatorArrowNameType = 12,
		OperatorStarNameType = 13,
		OperatorIncrementNameType = 14,
		OperatorDecrementNameType = 15,
		OperatorMinusNameType = 16,
		OperatorPlusNameType = 17,
		OperatorBitAndNameType = 18,
		OperatorArrowStarNameType = 19,
		OperatorDivideNameType = 20,
		OperatorModulusNameType = 21,
		OperatorLessThanNameType = 22,
		OperatorLessThanEqualNameType = 23,
		OperatorGreaterThanNameType = 24,
		OperatorGreaterThanEqualNameType = 25,
		OperatorCommaNameType = 26,
		OperatorParenthesesNameType = 27,
		OperatorTildeNameType = 28,
		OperatorXorNameType = 29,
		OperatorBitOrNameType = 30,
		OperatorLogicalAndNameType = 31,
		OperatorLogicalOrNameType = 32,
		OperatorStarEqualNameType = 33,
		OperatorPlusEqualNameType = 34,
		OperatorMinusEqualNameType = 35,
		OperatorDivideEqualNameType = 36,
		OperatorModulusEqualNameType = 37,
		OperatorRightShiftEqualNameType = 38,
		OperatorLeftShiftEqualNameType = 39,
		OperatorAndEqualNameType = 40,
		OperatorOrEqualNameType = 41,
		OperatorXorEqualNameType = 42,
		VFTableNameType = 43,
		VBTableNameType = 44,
		VCallNameType = 45,
		TypeofNameType = 46,
		LocalStaticGuardNameType = 47,
		StringNameType = 48,
		VBaseDestructorNameType = 49,
		VectorDeletingDestructorNameType = 50,
		DefaultConstructorClosureNameType = 51,
		ScalarDeletingDestructorNameType = 52,
		VectorConstructorIteratorNameType = 53,
		VectorDestructorIteratorNameType = 54,
		VectorVBaseConstructorIteratorNameType = 55,
		VirtualDisplacementMapNameType = 56,
		EHVectorConstructorIteratorNameType = 57,
		EHVectorDestructorIteratorNameType = 58,
		EHVectorVBaseConstructorIteratorNameType = 59,
		CopyConstructorClosureNameType = 60,
		UDTReturningNameType = 61,
		LocalVFTableNameType = 62,
		LocalVFTableConstructorClosureNameType = 63,
		OperatorNewArrayNameType = 64,
		OperatorDeleteArrayNameType = 65,
		PlacementDeleteClosureNameType = 66,
		PlacementDeleteClosureArrayNameType = 67,
		OperatorReturnTypeNameType = 68,
		RttiTypeDescriptor = 69,
		RttiBaseClassDescriptor = 70,
		RttiBaseClassArray = 71,
		RttiClassHierarchyDescriptor = 72,
		RttiCompleteObjectLocator = 73,
		OperatorUnaryMinusNameType = 74,
		OperatorUnaryPlusNameType = 75,
		OperatorUnaryBitAndNameType = 76,
		OperatorUnaryStarNameType = 77,
		OmniCallSigNameType = 78,
		ManagedVectorConstructorIteratorNameType = 79,
		ManagedVectorDestructorIteratorNameType = 80,
		EHVectorCopyConstructorIteratorNameType = 81,
		EHVectorVBaseCopyConstructorIteratorNameType = 82,
		DynamicInitializerNameType = 83,
		DynamicAtExitDestructorNameType = 84,
		VectorCopyConstructorIteratorNameType = 85,
		VectorVBaseCopyConstructorIteratorNameType = 86,
		ManagedVectorCopyConstructorIteratorNameType = 87,
		LocalStaticThreadGuardNameType = 88,
		UserDefinedLiteralOperatorNameType = 89,
	}
})

enums.NamedTypeReferenceClass = cdefs.metatype(cdefs.typeof('struct { BNNamedTypeReferenceClass; } '), {
	__index = {
		UnknownNamedTypeClass = 0,
		TypedefNamedTypeClass = 1,
		ClassNamedTypeClass = 2,
		StructNamedTypeClass = 3,
		UnionNamedTypeClass = 4,
		EnumNamedTypeClass = 5,
	}
})

enums.PluginCommandType = cdefs.metatype(cdefs.typeof('struct { BNPluginCommandType; } '), {
	__index = {
		DefaultPluginCommand = 0,
		AddressPluginCommand = 1,
		RangePluginCommand = 2,
		FunctionPluginCommand = 3,
		LowLevelILFunctionPluginCommand = 4,
		LowLevelILInstructionPluginCommand = 5,
		MediumLevelILFunctionPluginCommand = 6,
		MediumLevelILInstructionPluginCommand = 7,
		HighLevelILFunctionPluginCommand = 8,
		HighLevelILInstructionPluginCommand = 9,
	}
})

enums.PluginLoadOrder = cdefs.metatype(cdefs.typeof('struct { BNPluginLoadOrder; } '), {
	__index = {
		EarlyPluginLoadOrder = 0,
		NormalPluginLoadOrder = 1,
		LatePluginLoadOrder = 2,
	}
})

enums.PluginOrigin = cdefs.metatype(cdefs.typeof('struct { BNPluginOrigin; } '), {
	__index = {
		OfficialPluginOrigin = 0,
		CommunityPluginOrigin = 1,
		OtherPluginOrigin = 2,
	}
})

enums.PluginStatus = cdefs.metatype(cdefs.typeof('struct { BNPluginStatus; } '), {
	__index = {
		NotInstalledPluginStatus = 0,
		InstalledPluginStatus = 1,
		EnabledPluginStatus = 2,
		UpdateAvailablePluginStatus = 16,
		DeletePendingPluginStatus = 32,
		UpdatePendingPluginStatus = 64,
		DisablePendingPluginStatus = 128,
		PendingRestartPluginStatus = 512,
		BeingUpdatedPluginStatus = 1024,
		BeingDeletedPluginStatus = 2048,
		DependenciesBeingInstalledStatus = 4096,
	}
})

enums.PluginType = cdefs.metatype(cdefs.typeof('struct { BNPluginType; } '), {
	__index = {
		CorePluginType = 0,
		UiPluginType = 1,
		ArchitecturePluginType = 2,
		BinaryViewPluginType = 3,
		HelperPluginType = 4,
	}
})

enums.PointerSuffix = cdefs.metatype(cdefs.typeof('struct { BNPointerSuffix; } '), {
	__index = {
		Ptr64Suffix = 0,
		UnalignedSuffix = 1,
		RestrictSuffix = 2,
		ReferenceSuffix = 3,
		LvalueSuffix = 4,
	}
})

enums.RegisterValueType = cdefs.metatype(cdefs.typeof('struct { BNRegisterValueType; } '), {
	__index = {
		UndeterminedValue = 0,
		EntryValue = 1,
		ConstantValue = 2,
		ConstantPointerValue = 3,
		ExternalPointerValue = 4,
		StackFrameOffset = 5,
		ReturnAddressValue = 6,
		ImportedAddressValue = 7,
		SignedRangeValue = 8,
		UnsignedRangeValue = 9,
		LookupTableValue = 10,
		InSetOfValues = 11,
		NotInSetOfValues = 12,
		ConstantDataValue = 32768,
		ConstantDataZeroExtendValue = 32769,
		ConstantDataSignExtendValue = 32770,
		ConstantDataAggregateValue = 32771,
	}
})

enums.ReferenceType = cdefs.metatype(cdefs.typeof('struct { BNReferenceType; } '), {
	__index = {
		PointerReferenceType = 0,
		ReferenceReferenceType = 1,
		RValueReferenceType = 2,
		NoReference = 3,
	}
})

enums.RelocationType = cdefs.metatype(cdefs.typeof('struct { BNRelocationType; } '), {
	__index = {
		ELFGlobalRelocationType = 0,
		ELFCopyRelocationType = 1,
		ELFJumpSlotRelocationType = 2,
		StandardRelocationType = 3,
		IgnoredRelocation = 4,
		UnhandledRelocation = 5,
	}
})

enums.ReportType = cdefs.metatype(cdefs.typeof('struct { BNReportType; } '), {
	__index = {
		PlainTextReportType = 0,
		MarkdownReportType = 1,
		HTMLReportType = 2,
		FlowGraphReportType = 3,
	}
})

enums.SaveOption = cdefs.metatype(cdefs.typeof('struct { BNSaveOption; } '), {
	__index = {
		RemoveUndoData = 0,
		TrimSnapshots = 1,
		PurgeOriginalFilenamePath = 2,
	}
})

enums.ScriptingProviderExecuteResult = cdefs.metatype(cdefs.typeof('struct { BNScriptingProviderExecuteResult; } '), {
	__index = {
		InvalidScriptInput = 0,
		IncompleteScriptInput = 1,
		SuccessfulScriptExecution = 2,
		ScriptExecutionCancelled = 3,
	}
})

enums.ScriptingProviderInputReadyState = cdefs.metatype(cdefs.typeof('struct { BNScriptingProviderInputReadyState; } '), {
	__index = {
		NotReadyForInput = 0,
		ReadyForScriptExecution = 1,
		ReadyForScriptProgramInput = 2,
	}
})

enums.SectionSemantics = cdefs.metatype(cdefs.typeof('struct { BNSectionSemantics; } '), {
	__index = {
		DefaultSectionSemantics = 0,
		ReadOnlyCodeSectionSemantics = 1,
		ReadOnlyDataSectionSemantics = 2,
		ReadWriteDataSectionSemantics = 3,
		ExternalSectionSemantics = 4,
	}
})

enums.SegmentFlag = cdefs.metatype(cdefs.typeof('struct { BNSegmentFlag; } '), {
	__index = {
		SegmentExecutable = 1,
		SegmentWritable = 2,
		SegmentReadable = 4,
		SegmentContainsData = 8,
		SegmentContainsCode = 16,
		SegmentDenyWrite = 32,
		SegmentDenyExecute = 64,
	}
})

enums.SettingsScope = cdefs.metatype(cdefs.typeof('struct { BNSettingsScope; } '), {
	__index = {
		SettingsInvalidScope = 0,
		SettingsAutoScope = 1,
		SettingsDefaultScope = 2,
		SettingsUserScope = 4,
		SettingsProjectScope = 8,
		SettingsResourceScope = 16,
	}
})

enums.StringType = cdefs.metatype(cdefs.typeof('struct { BNStringType; } '), {
	__index = {
		AsciiString = 0,
		Utf16String = 1,
		Utf32String = 2,
		Utf8String = 3,
	}
})

enums.StructureVariant = cdefs.metatype(cdefs.typeof('struct { BNStructureVariant; } '), {
	__index = {
		ClassStructureType = 0,
		StructStructureType = 1,
		UnionStructureType = 2,
	}
})

enums.SymbolBinding = cdefs.metatype(cdefs.typeof('struct { BNSymbolBinding; } '), {
	__index = {
		NoBinding = 0,
		LocalBinding = 1,
		GlobalBinding = 2,
		WeakBinding = 3,
	}
})

enums.SymbolType = cdefs.metatype(cdefs.typeof('struct { BNSymbolType; } '), {
	__index = {
		FunctionSymbol = 0,
		ImportAddressSymbol = 1,
		ImportedFunctionSymbol = 2,
		DataSymbol = 3,
		ImportedDataSymbol = 4,
		ExternalSymbol = 5,
		LibraryFunctionSymbol = 6,
	}
})

enums.TagReferenceType = cdefs.metatype(cdefs.typeof('struct { BNTagReferenceType; } '), {
	__index = {
		AddressTagReference = 0,
		FunctionTagReference = 1,
		DataTagReference = 2,
	}
})

enums.TagTypeType = cdefs.metatype(cdefs.typeof('struct { BNTagTypeType; } '), {
	__index = {
		UserTagType = 0,
		NotificationTagType = 1,
		BookmarksTagType = 2,
	}
})

enums.TokenEscapingType = cdefs.metatype(cdefs.typeof('struct { BNTokenEscapingType; } '), {
	__index = {
		NoTokenEscapingType = 0,
		BackticksTokenEscapingType = 1,
		QuotedStringEscapingType = 2,
		ReplaceInvalidCharsEscapingType = 3,
	}
})

enums.TransformType = cdefs.metatype(cdefs.typeof('struct { BNTransformType; } '), {
	__index = {
		BinaryCodecTransform = 0,
		TextCodecTransform = 1,
		UnicodeCodecTransform = 2,
		DecodeTransform = 3,
		BinaryEncodeTransform = 4,
		TextEncodeTransform = 5,
		EncryptTransform = 6,
		InvertingTransform = 7,
		HashTransform = 8,
	}
})

enums.TypeClass = cdefs.metatype(cdefs.typeof('struct { BNTypeClass; } '), {
	__index = {
		VoidTypeClass = 0,
		BoolTypeClass = 1,
		IntegerTypeClass = 2,
		FloatTypeClass = 3,
		StructureTypeClass = 4,
		EnumerationTypeClass = 5,
		PointerTypeClass = 6,
		ArrayTypeClass = 7,
		FunctionTypeClass = 8,
		VarArgsTypeClass = 9,
		ValueTypeClass = 10,
		NamedTypeReferenceClass = 11,
		WideCharTypeClass = 12,
	}
})

enums.TypeDefinitionLineType = cdefs.metatype(cdefs.typeof('struct { BNTypeDefinitionLineType; } '), {
	__index = {
		TypedefLineType = 0,
		StructDefinitionLineType = 1,
		StructFieldLineType = 2,
		StructDefinitionEndLineType = 3,
		EnumDefinitionLineType = 4,
		EnumMemberLineType = 5,
		EnumDefinitionEndLineType = 6,
		PaddingLineType = 7,
		UndefinedXrefLineType = 8,
		CollapsedPaddingLineType = 9,
	}
})

enums.TypeParserErrorSeverity = cdefs.metatype(cdefs.typeof('struct { BNTypeParserErrorSeverity; } '), {
	__index = {
		IgnoredSeverity = 0,
		NoteSeverity = 1,
		RemarkSeverity = 2,
		WarningSeverity = 3,
		ErrorSeverity = 4,
		FatalSeverity = 5,
	}
})

enums.TypeParserOption = cdefs.metatype(cdefs.typeof('struct { BNTypeParserOption; } '), {
	__index = {
		IncludeSystemTypes = 0,
		BuiltinMacros = 1,
	}
})

enums.TypeReferenceType = cdefs.metatype(cdefs.typeof('struct { BNTypeReferenceType; } '), {
	__index = {
		DirectTypeReferenceType = 0,
		IndirectTypeReferenceType = 1,
		UnknownTypeReferenceType = 2,
	}
})

enums.UpdateResult = cdefs.metatype(cdefs.typeof('struct { BNUpdateResult; } '), {
	__index = {
		UpdateFailed = 0,
		UpdateSuccess = 1,
		AlreadyUpToDate = 2,
		UpdateAvailable = 3,
	}
})

enums.WorkflowState = cdefs.metatype(cdefs.typeof('struct { BNWorkflowState; } '), {
	__index = {
		WorkflowInitial = 0,
		WorkflowIdle = 1,
		WorkflowRun = 2,
		WorkflowHalt = 3,
		WorkflowHold = 4,
		WorkflowInvalid = 5,
	}
})

enums.PluginLoadStatus = cdefs.metatype(cdefs.typeof('struct { BNPluginLoadStatus; } '), {
	__index = {
		NotAttemptedStatus = 0,
		LoadSucceededStatus = 1,
		LoadFailedStatus = 2,
	}
})

return enums
