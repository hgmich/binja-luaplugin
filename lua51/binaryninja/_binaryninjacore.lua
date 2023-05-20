local cdefs = require('binaryninja._cdefs')

local core = {}

-- Type definitions
core.BNActiveAnalysisInfo = cdefs.typeof('struct BNActiveAnalysisInfo')

core.BNActivity = cdefs.typeof('struct BNActivity')

core.BNAddressRange = cdefs.typeof('struct BNAddressRange')

core.BNAnalysisCompletionEvent = cdefs.typeof('struct BNAnalysisCompletionEvent')

core.BNAnalysisContext = cdefs.typeof('struct BNAnalysisContext')

core.BNAnalysisInfo = cdefs.typeof('struct BNAnalysisInfo')

core.BNAnalysisParameters = cdefs.typeof('struct BNAnalysisParameters')

core.BNAnalysisProgress = cdefs.typeof('struct BNAnalysisProgress')

core.BNArchitecture = cdefs.typeof('struct BNArchitecture')

core.BNArchitectureAndAddress = cdefs.typeof('struct BNArchitectureAndAddress')

core.BNBackgroundTask = cdefs.typeof('struct BNBackgroundTask')

core.BNBaseStructure = cdefs.typeof('struct BNBaseStructure')

core.BNBasicBlock = cdefs.typeof('struct BNBasicBlock')

core.BNBasicBlockEdge = cdefs.typeof('struct BNBasicBlockEdge')

core.BNBinaryDataNotification = cdefs.typeof('struct BNBinaryDataNotification')

core.BNBinaryReader = cdefs.typeof('struct BNBinaryReader')

core.BNBinaryView = cdefs.typeof('struct BNBinaryView')

core.BNBinaryViewEvent = cdefs.typeof('struct BNBinaryViewEvent')

core.BNBinaryViewType = cdefs.typeof('struct BNBinaryViewType')

core.BNBinaryWriter = cdefs.typeof('struct BNBinaryWriter')

core.BNBoolWithConfidence = cdefs.typeof('struct BNBoolWithConfidence')

core.BNCallingConvention = cdefs.typeof('struct BNCallingConvention')

core.BNCallingConventionWithConfidence = cdefs.typeof('struct BNCallingConventionWithConfidence')

core.BNComponent = cdefs.typeof('struct BNComponent')

core.BNConstantReference = cdefs.typeof('struct BNConstantReference')

core.BNCustomArchitecture = cdefs.typeof('struct BNCustomArchitecture')

core.BNCustomBinaryView = cdefs.typeof('struct BNCustomBinaryView')

core.BNCustomBinaryViewType = cdefs.typeof('struct BNCustomBinaryViewType')

core.BNCustomCallingConvention = cdefs.typeof('struct BNCustomCallingConvention')

core.BNCustomDataRenderer = cdefs.typeof('struct BNCustomDataRenderer')

core.BNCustomFlowGraph = cdefs.typeof('struct BNCustomFlowGraph')

core.BNCustomRelocationHandler = cdefs.typeof('struct BNCustomRelocationHandler')

core.BNCustomTransform = cdefs.typeof('struct BNCustomTransform')

core.BNDataBuffer = cdefs.typeof('struct BNDataBuffer')

core.BNDataRenderer = cdefs.typeof('struct BNDataRenderer')

core.BNDataRendererContainer = cdefs.typeof('struct BNDataRendererContainer')

core.BNDataVariable = cdefs.typeof('struct BNDataVariable')

core.BNDataVariableAndName = cdefs.typeof('struct BNDataVariableAndName')

core.BNDataVariableAndNameAndDebugParser = cdefs.typeof('struct BNDataVariableAndNameAndDebugParser')

core.BNDatabase = cdefs.typeof('struct BNDatabase')

core.BNDebugFunctionInfo = cdefs.typeof('struct BNDebugFunctionInfo')

core.BNDebugInfo = cdefs.typeof('struct BNDebugInfo')

core.BNDebugInfoParser = cdefs.typeof('struct BNDebugInfoParser')

core.BNDisassemblySettings = cdefs.typeof('struct BNDisassemblySettings')

core.BNHighlightColor = cdefs.typeof('struct BNHighlightColor')

core.BNDisassemblyTextLineTypeInfo = cdefs.typeof('struct BNDisassemblyTextLineTypeInfo')

core.BNDisassemblyTextLine = cdefs.typeof('struct BNDisassemblyTextLine')

core.BNDisassemblyTextRenderer = cdefs.typeof('struct BNDisassemblyTextRenderer')

core.BNDownloadInstance = cdefs.typeof('struct BNDownloadInstance')

core.BNDownloadInstanceCallbacks = cdefs.typeof('struct BNDownloadInstanceCallbacks')

core.BNDownloadInstanceInputOutputCallbacks = cdefs.typeof('struct BNDownloadInstanceInputOutputCallbacks')

core.BNDownloadInstanceOutputCallbacks = cdefs.typeof('struct BNDownloadInstanceOutputCallbacks')

core.BNDownloadInstanceResponse = cdefs.typeof('struct BNDownloadInstanceResponse')

core.BNDownloadProvider = cdefs.typeof('struct BNDownloadProvider')

core.BNDownloadProviderCallbacks = cdefs.typeof('struct BNDownloadProviderCallbacks')

core.BNEdgeStyle = cdefs.typeof('struct BNEdgeStyle')

core.BNEnterpriseServerCallbacks = cdefs.typeof('struct BNEnterpriseServerCallbacks')

core.BNEnumeration = cdefs.typeof('struct BNEnumeration')

core.BNEnumerationBuilder = cdefs.typeof('struct BNEnumerationBuilder')

core.BNEnumerationMember = cdefs.typeof('struct BNEnumerationMember')

core.BNFileAccessor = cdefs.typeof('struct BNFileAccessor')

core.BNFileMetadata = cdefs.typeof('struct BNFileMetadata')

core.BNFlagConditionForSemanticClass = cdefs.typeof('struct BNFlagConditionForSemanticClass')

core.BNFlowGraph = cdefs.typeof('struct BNFlowGraph')

core.BNFlowGraphEdge = cdefs.typeof('struct BNFlowGraphEdge')

core.BNFlowGraphLayoutRequest = cdefs.typeof('struct BNFlowGraphLayoutRequest')

core.BNFlowGraphNode = cdefs.typeof('struct BNFlowGraphNode')

core.BNFormInputField = cdefs.typeof('struct BNFormInputField')

core.BNFunction = cdefs.typeof('struct BNFunction')

core.BNVariable = cdefs.typeof('struct BNVariable')

core.BNFunctionParameter = cdefs.typeof('struct BNFunctionParameter')

core.BNFunctionRecognizer = cdefs.typeof('struct BNFunctionRecognizer')

core.BNHighLevelILFunction = cdefs.typeof('struct BNHighLevelILFunction')

core.BNHighLevelILInstruction = cdefs.typeof('struct BNHighLevelILInstruction')

core.BNILBranchInstructionAndDependence = cdefs.typeof('struct BNILBranchInstructionAndDependence')

core.BNILReferenceSource = cdefs.typeof('struct BNILReferenceSource')

core.BNIndirectBranchInfo = cdefs.typeof('struct BNIndirectBranchInfo')

core.BNStructureMember = cdefs.typeof('struct BNStructureMember')

core.BNInheritedStructureMember = cdefs.typeof('struct BNInheritedStructureMember')

core.BNInstructionInfo = cdefs.typeof('struct BNInstructionInfo')

core.BNInstructionTextLine = cdefs.typeof('struct BNInstructionTextLine')

core.BNInstructionTextToken = cdefs.typeof('struct BNInstructionTextToken')

core.BNInteractionHandlerCallbacks = cdefs.typeof('struct BNInteractionHandlerCallbacks')

core.BNKeyValueStore = cdefs.typeof('struct BNKeyValueStore')

core.BNLanguageRepresentationFunction = cdefs.typeof('struct BNLanguageRepresentationFunction')

core.BNLinearDisassemblyLine = cdefs.typeof('struct BNLinearDisassemblyLine')

core.BNLinearViewCursor = cdefs.typeof('struct BNLinearViewCursor')

core.BNLinearViewObject = cdefs.typeof('struct BNLinearViewObject')

core.BNLinearViewObjectIdentifier = cdefs.typeof('struct BNLinearViewObjectIdentifier')

core.BNLogListener = cdefs.typeof('struct BNLogListener')

core.BNLogger = cdefs.typeof('struct BNLogger')

core.BNLookupTableEntry = cdefs.typeof('struct BNLookupTableEntry')

core.BNLowLevelILFunction = cdefs.typeof('struct BNLowLevelILFunction')

core.BNLowLevelILInstruction = cdefs.typeof('struct BNLowLevelILInstruction')

core.BNLowLevelILLabel = cdefs.typeof('struct BNLowLevelILLabel')

core.BNMainThreadAction = cdefs.typeof('struct BNMainThreadAction')

core.BNMainThreadCallbacks = cdefs.typeof('struct BNMainThreadCallbacks')

core.BNMediumLevelILFunction = cdefs.typeof('struct BNMediumLevelILFunction')

core.BNMediumLevelILInstruction = cdefs.typeof('struct BNMediumLevelILInstruction')

core.BNMediumLevelILLabel = cdefs.typeof('struct BNMediumLevelILLabel')

core.BNMemoryUsageInfo = cdefs.typeof('struct BNMemoryUsageInfo')

core.BNMergedVariable = cdefs.typeof('struct BNMergedVariable')

core.BNMetadata = cdefs.typeof('struct BNMetadata')

core.BNMetadataValueStore = cdefs.typeof('struct BNMetadataValueStore')

core.BNNameAndType = cdefs.typeof('struct BNNameAndType')

core.BNNameList = cdefs.typeof('struct BNNameList')

core.BNNameSpace = cdefs.typeof('struct BNNameSpace')

core.BNNamedTypeReference = cdefs.typeof('struct BNNamedTypeReference')

core.BNNamedTypeReferenceBuilder = cdefs.typeof('struct BNNamedTypeReferenceBuilder')

core.BNNavigationHandler = cdefs.typeof('struct BNNavigationHandler')

core.BNObjectDestructionCallbacks = cdefs.typeof('struct BNObjectDestructionCallbacks')

core.BNOffsetWithConfidence = cdefs.typeof('struct BNOffsetWithConfidence')

core.BNParameterVariablesWithConfidence = cdefs.typeof('struct BNParameterVariablesWithConfidence')

core.BNQualifiedName = cdefs.typeof('struct BNQualifiedName')

core.BNParsedType = cdefs.typeof('struct BNParsedType')

core.BNPerformanceInfo = cdefs.typeof('struct BNPerformanceInfo')

core.BNPlatform = cdefs.typeof('struct BNPlatform')

core.BNPluginCommand = cdefs.typeof('struct BNPluginCommand')

core.BNPoint = cdefs.typeof('struct BNPoint')

core.BNPossibleValueSet = cdefs.typeof('struct BNPossibleValueSet')

core.BNQualifiedNameAndType = cdefs.typeof('struct BNQualifiedNameAndType')

core.BNQualifiedNameList = cdefs.typeof('struct BNQualifiedNameList')

core.BNQualifiedNameTypeAndId = cdefs.typeof('struct BNQualifiedNameTypeAndId')

core.BNRange = cdefs.typeof('struct BNRange')

core.BNReferenceSource = cdefs.typeof('struct BNReferenceSource')

core.BNRegisterInfo = cdefs.typeof('struct BNRegisterInfo')

core.BNRegisterOrConstant = cdefs.typeof('struct BNRegisterOrConstant')

core.BNRegisterSetWithConfidence = cdefs.typeof('struct BNRegisterSetWithConfidence')

core.BNRegisterStackAdjustment = cdefs.typeof('struct BNRegisterStackAdjustment')

core.BNRegisterStackInfo = cdefs.typeof('struct BNRegisterStackInfo')

core.BNRegisterValue = cdefs.typeof('struct BNRegisterValue')

core.BNRegisterValueWithConfidence = cdefs.typeof('struct BNRegisterValueWithConfidence')

core.BNRelocation = cdefs.typeof('struct BNRelocation')

core.BNRelocationHandler = cdefs.typeof('struct BNRelocationHandler')

core.BNRelocationInfo = cdefs.typeof('struct BNRelocationInfo')

core.BNRepoPlugin = cdefs.typeof('struct BNRepoPlugin')

core.BNReportCollection = cdefs.typeof('struct BNReportCollection')

core.BNRepository = cdefs.typeof('struct BNRepository')

core.BNRepositoryManager = cdefs.typeof('struct BNRepositoryManager')

core.BNSaveSettings = cdefs.typeof('struct BNSaveSettings')

core.BNScriptingInstance = cdefs.typeof('struct BNScriptingInstance')

core.BNScriptingInstanceCallbacks = cdefs.typeof('struct BNScriptingInstanceCallbacks')

core.BNScriptingOutputListener = cdefs.typeof('struct BNScriptingOutputListener')

core.BNScriptingProvider = cdefs.typeof('struct BNScriptingProvider')

core.BNScriptingProviderCallbacks = cdefs.typeof('struct BNScriptingProviderCallbacks')

core.BNSecretsProvider = cdefs.typeof('struct BNSecretsProvider')

core.BNSecretsProviderCallbacks = cdefs.typeof('struct BNSecretsProviderCallbacks')

core.BNSection = cdefs.typeof('struct BNSection')

core.BNSegment = cdefs.typeof('struct BNSegment')

core.BNSettings = cdefs.typeof('struct BNSettings')

core.BNSnapshot = cdefs.typeof('struct BNSnapshot')

core.BNStackVariableReference = cdefs.typeof('struct BNStackVariableReference')

core.BNStringReference = cdefs.typeof('struct BNStringReference')

core.BNStructure = cdefs.typeof('struct BNStructure')

core.BNStructureBuilder = cdefs.typeof('struct BNStructureBuilder')

core.BNSymbol = cdefs.typeof('struct BNSymbol')

core.BNSymbolQueue = cdefs.typeof('struct BNSymbolQueue')

core.BNSystemCallInfo = cdefs.typeof('struct BNSystemCallInfo')

core.BNTag = cdefs.typeof('struct BNTag')

core.BNTagReference = cdefs.typeof('struct BNTagReference')

core.BNTagType = cdefs.typeof('struct BNTagType')

core.BNTemporaryFile = cdefs.typeof('struct BNTemporaryFile')

core.BNTransform = cdefs.typeof('struct BNTransform')

core.BNTransformParameter = cdefs.typeof('struct BNTransformParameter')

core.BNTransformParameterInfo = cdefs.typeof('struct BNTransformParameterInfo')

core.BNType = cdefs.typeof('struct BNType')

core.BNTypeBuilder = cdefs.typeof('struct BNTypeBuilder')

core.BNTypeContext = cdefs.typeof('struct BNTypeContext')

core.BNTypeDefinitionLine = cdefs.typeof('struct BNTypeDefinitionLine')

core.BNTypeField = cdefs.typeof('struct BNTypeField')

core.BNTypeWithConfidence = cdefs.typeof('struct BNTypeWithConfidence')

core.BNTypeFieldReference = cdefs.typeof('struct BNTypeFieldReference')

core.BNTypeFieldReferenceSizeInfo = cdefs.typeof('struct BNTypeFieldReferenceSizeInfo')

core.BNTypeFieldReferenceTypeInfo = cdefs.typeof('struct BNTypeFieldReferenceTypeInfo')

core.BNTypeLibrary = cdefs.typeof('struct BNTypeLibrary')

core.BNTypeLibraryMapping = cdefs.typeof('struct BNTypeLibraryMapping')

core.BNTypeParser = cdefs.typeof('struct BNTypeParser')

core.BNTypeParserCallbacks = cdefs.typeof('struct BNTypeParserCallbacks')

core.BNTypeParserError = cdefs.typeof('struct BNTypeParserError')

core.BNTypeParserResult = cdefs.typeof('struct BNTypeParserResult')

core.BNTypePrinter = cdefs.typeof('struct BNTypePrinter')

core.BNTypePrinterCallbacks = cdefs.typeof('struct BNTypePrinterCallbacks')

core.BNTypeReferenceSource = cdefs.typeof('struct BNTypeReferenceSource')

core.BNUndoAction = cdefs.typeof('struct BNUndoAction')

core.BNUndoEntry = cdefs.typeof('struct BNUndoEntry')

core.BNUpdateChannel = cdefs.typeof('struct BNUpdateChannel')

core.BNUpdateVersion = cdefs.typeof('struct BNUpdateVersion')

core.BNUser = cdefs.typeof('struct BNUser')

core.BNUserVariableValue = cdefs.typeof('struct BNUserVariableValue')

core.BNValueRange = cdefs.typeof('struct BNValueRange')

core.BNVariableNameAndType = cdefs.typeof('struct BNVariableNameAndType')

core.BNVariableReferenceSource = cdefs.typeof('struct BNVariableReferenceSource')

core.BNVersionInfo = cdefs.typeof('struct BNVersionInfo')

core.BNWebsocketClient = cdefs.typeof('struct BNWebsocketClient')

core.BNWebsocketClientCallbacks = cdefs.typeof('struct BNWebsocketClientCallbacks')

core.BNWebsocketClientOutputCallbacks = cdefs.typeof('struct BNWebsocketClientOutputCallbacks')

core.BNWebsocketProvider = cdefs.typeof('struct BNWebsocketProvider')

core.BNWebsocketProviderCallbacks = cdefs.typeof('struct BNWebsocketProviderCallbacks')

core.BNWorkflow = cdefs.typeof('struct BNWorkflow')


-- Function definitions

-- -------------------------------------------------------
-- BNAbortAnalysis
-- -------------------------------------------------------

function core.BNAbortAnalysis(
		view
)
	return cdefs.C.BNAbortAnalysis(view)
end

-- -------------------------------------------------------
-- BNAbortFlowGraphLayoutRequest
-- -------------------------------------------------------

function core.BNAbortFlowGraphLayoutRequest(
		graph
)
	return cdefs.C.BNAbortFlowGraphLayoutRequest(graph)
end

-- -------------------------------------------------------
-- BNActivityGetName
-- -------------------------------------------------------

function core.BNActivityGetName(
		activity
)
	local result = cdefs.C.BNActivityGetName(activity)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNAddAnalysisCompletionEvent
-- -------------------------------------------------------

function core.BNAddAnalysisCompletionEvent(
		view, 
		ctxt, 
		callback
)
	local result = cdefs.C.BNAddAnalysisCompletionEvent(view, ctxt, callback)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNAddAnalysisOption
-- -------------------------------------------------------

function core.BNAddAnalysisOption(
		view, 
		name
)
	return cdefs.C.BNAddAnalysisOption(view, name)
end

-- -------------------------------------------------------
-- BNAddArchitectureRedirection
-- -------------------------------------------------------

function core.BNAddArchitectureRedirection(
		arch, 
		from, 
		to
)
	return cdefs.C.BNAddArchitectureRedirection(arch, from, to)
end

-- -------------------------------------------------------
-- BNAddAutoAddressTag
-- -------------------------------------------------------

function core.BNAddAutoAddressTag(
		func, 
		arch, 
		addr, 
		tag
)
	return cdefs.C.BNAddAutoAddressTag(func, arch, addr, tag)
end

-- -------------------------------------------------------
-- BNAddAutoDataTag
-- -------------------------------------------------------

function core.BNAddAutoDataTag(
		view, 
		addr, 
		tag
)
	return cdefs.C.BNAddAutoDataTag(view, addr, tag)
end

-- -------------------------------------------------------
-- BNAddAutoFunctionTag
-- -------------------------------------------------------

function core.BNAddAutoFunctionTag(
		func, 
		tag
)
	return cdefs.C.BNAddAutoFunctionTag(func, tag)
end

-- -------------------------------------------------------
-- BNAddAutoSection
-- -------------------------------------------------------

function core.BNAddAutoSection(
		view, 
		name, 
		start, 
		length, 
		semantics, 
		type, 
		align, 
		entrySize, 
		linkedSection, 
		infoSection, 
		infoData
)
	return cdefs.C.BNAddAutoSection(view, name, start, length, semantics, type, align, entrySize, linkedSection, infoSection, infoData)
end

-- -------------------------------------------------------
-- BNAddAutoSegment
-- -------------------------------------------------------

function core.BNAddAutoSegment(
		view, 
		start, 
		length, 
		dataOffset, 
		dataLength, 
		flags
)
	return cdefs.C.BNAddAutoSegment(view, start, length, dataOffset, dataLength, flags)
end

-- -------------------------------------------------------
-- BNAddBinaryViewTypeLibrary
-- -------------------------------------------------------

function core.BNAddBinaryViewTypeLibrary(
		view, 
		lib
)
	return cdefs.C.BNAddBinaryViewTypeLibrary(view, lib)
end

-- -------------------------------------------------------
-- BNAddDebugDataVariable
-- -------------------------------------------------------

function core.BNAddDebugDataVariable(
		debugInfo, 
		address, 
		type, 
		name
)
	return cdefs.C.BNAddDebugDataVariable(debugInfo, address, type, name)
end

-- -------------------------------------------------------
-- BNAddDebugDataVariableInfo
-- -------------------------------------------------------

function core.BNAddDebugDataVariableInfo(
		debugInfo, 
		var
)
	return cdefs.C.BNAddDebugDataVariableInfo(debugInfo, var)
end

-- -------------------------------------------------------
-- BNAddDebugFunction
-- -------------------------------------------------------

function core.BNAddDebugFunction(
		debugInfo, 
		func
)
	return cdefs.C.BNAddDebugFunction(debugInfo, func)
end

-- -------------------------------------------------------
-- BNAddDebugType
-- -------------------------------------------------------

function core.BNAddDebugType(
		debugInfo, 
		name, 
		type
)
	return cdefs.C.BNAddDebugType(debugInfo, name, type)
end

-- -------------------------------------------------------
-- BNAddEntryPointForAnalysis
-- -------------------------------------------------------

function core.BNAddEntryPointForAnalysis(
		view, 
		platform, 
		addr
)
	return cdefs.C.BNAddEntryPointForAnalysis(view, platform, addr)
end

-- -------------------------------------------------------
-- BNAddEnumerationBuilderMember
-- -------------------------------------------------------

function core.BNAddEnumerationBuilderMember(
		e, 
		name
)
	return cdefs.C.BNAddEnumerationBuilderMember(e, name)
end

-- -------------------------------------------------------
-- BNAddEnumerationBuilderMemberWithValue
-- -------------------------------------------------------

function core.BNAddEnumerationBuilderMemberWithValue(
		e, 
		name, 
		value
)
	return cdefs.C.BNAddEnumerationBuilderMemberWithValue(e, name, value)
end

-- -------------------------------------------------------
-- BNAddExpressionParserMagicValue
-- -------------------------------------------------------

function core.BNAddExpressionParserMagicValue(
		view, 
		name, 
		value
)
	return cdefs.C.BNAddExpressionParserMagicValue(view, name, value)
end

-- -------------------------------------------------------
-- BNAddExpressionParserMagicValues
-- -------------------------------------------------------

function core.BNAddExpressionParserMagicValues(
		view, 
		names, 
		values, 
		count
)
	return cdefs.C.BNAddExpressionParserMagicValues(view, names, values, count)
end

-- -------------------------------------------------------
-- BNAddFlowGraphNode
-- -------------------------------------------------------

function core.BNAddFlowGraphNode(
		graph, 
		node
)
	return cdefs.C.BNAddFlowGraphNode(graph, node)
end

-- -------------------------------------------------------
-- BNAddFlowGraphNodeOutgoingEdge
-- -------------------------------------------------------

function core.BNAddFlowGraphNodeOutgoingEdge(
		node, 
		type, 
		target, 
		edgeStyle
)
	return cdefs.C.BNAddFlowGraphNodeOutgoingEdge(node, type, target, edgeStyle)
end

-- -------------------------------------------------------
-- BNAddFunctionForAnalysis
-- -------------------------------------------------------

function core.BNAddFunctionForAnalysis(
		view, 
		platform, 
		addr, 
		autoDiscovered, 
		type
)
	local result = cdefs.C.BNAddFunctionForAnalysis(view, platform, addr, autoDiscovered, type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNAddGraphReportToCollection
-- -------------------------------------------------------

function core.BNAddGraphReportToCollection(
		reports, 
		view, 
		title, 
		graph
)
	return cdefs.C.BNAddGraphReportToCollection(reports, view, title, graph)
end

-- -------------------------------------------------------
-- BNAddHTMLReportToCollection
-- -------------------------------------------------------

function core.BNAddHTMLReportToCollection(
		reports, 
		view, 
		title, 
		contents, 
		plaintext
)
	return cdefs.C.BNAddHTMLReportToCollection(reports, view, title, contents, plaintext)
end

-- -------------------------------------------------------
-- BNAddLowLevelILLabelForAddress
-- -------------------------------------------------------

function core.BNAddLowLevelILLabelForAddress(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNAddLowLevelILLabelForAddress(func, arch, addr)
end

-- -------------------------------------------------------
-- BNAddMarkdownReportToCollection
-- -------------------------------------------------------

function core.BNAddMarkdownReportToCollection(
		reports, 
		view, 
		title, 
		contents, 
		plaintext
)
	return cdefs.C.BNAddMarkdownReportToCollection(reports, view, title, contents, plaintext)
end

-- -------------------------------------------------------
-- BNAddOptionalPluginDependency
-- -------------------------------------------------------

function core.BNAddOptionalPluginDependency(
		name
)
	return cdefs.C.BNAddOptionalPluginDependency(name)
end

-- -------------------------------------------------------
-- BNAddPlainTextReportToCollection
-- -------------------------------------------------------

function core.BNAddPlainTextReportToCollection(
		reports, 
		view, 
		title, 
		contents
)
	return cdefs.C.BNAddPlainTextReportToCollection(reports, view, title, contents)
end

-- -------------------------------------------------------
-- BNAddRelatedPlatform
-- -------------------------------------------------------

function core.BNAddRelatedPlatform(
		platform, 
		arch, 
		related
)
	return cdefs.C.BNAddRelatedPlatform(platform, arch, related)
end

-- -------------------------------------------------------
-- BNAddRequiredPluginDependency
-- -------------------------------------------------------

function core.BNAddRequiredPluginDependency(
		name
)
	return cdefs.C.BNAddRequiredPluginDependency(name)
end

-- -------------------------------------------------------
-- BNAddStructureBuilderMember
-- -------------------------------------------------------

function core.BNAddStructureBuilderMember(
		s, 
		type, 
		name, 
		access, 
		scope
)
	return cdefs.C.BNAddStructureBuilderMember(s, type, name, access, scope)
end

-- -------------------------------------------------------
-- BNAddStructureBuilderMemberAtOffset
-- -------------------------------------------------------

function core.BNAddStructureBuilderMemberAtOffset(
		s, 
		type, 
		name, 
		offset, 
		overwriteExisting, 
		access, 
		scope
)
	return cdefs.C.BNAddStructureBuilderMemberAtOffset(s, type, name, offset, overwriteExisting, access, scope)
end

-- -------------------------------------------------------
-- BNAddTag
-- -------------------------------------------------------

function core.BNAddTag(
		view, 
		tag, 
		user
)
	return cdefs.C.BNAddTag(view, tag, user)
end

-- -------------------------------------------------------
-- BNAddTagType
-- -------------------------------------------------------

function core.BNAddTagType(
		view, 
		tagType
)
	return cdefs.C.BNAddTagType(view, tagType)
end

-- -------------------------------------------------------
-- BNAddTypeLibraryAlternateName
-- -------------------------------------------------------

function core.BNAddTypeLibraryAlternateName(
		lib, 
		name
)
	return cdefs.C.BNAddTypeLibraryAlternateName(lib, name)
end

-- -------------------------------------------------------
-- BNAddTypeLibraryNamedObject
-- -------------------------------------------------------

function core.BNAddTypeLibraryNamedObject(
		lib, 
		name, 
		type
)
	return cdefs.C.BNAddTypeLibraryNamedObject(lib, name, type)
end

-- -------------------------------------------------------
-- BNAddTypeLibraryNamedType
-- -------------------------------------------------------

function core.BNAddTypeLibraryNamedType(
		lib, 
		name, 
		type
)
	return cdefs.C.BNAddTypeLibraryNamedType(lib, name, type)
end

-- -------------------------------------------------------
-- BNAddTypeLibraryNamedTypeSource
-- -------------------------------------------------------

function core.BNAddTypeLibraryNamedTypeSource(
		lib, 
		name, 
		source
)
	return cdefs.C.BNAddTypeLibraryNamedTypeSource(lib, name, source)
end

-- -------------------------------------------------------
-- BNAddTypeLibraryPlatform
-- -------------------------------------------------------

function core.BNAddTypeLibraryPlatform(
		lib, 
		platform
)
	return cdefs.C.BNAddTypeLibraryPlatform(lib, platform)
end

-- -------------------------------------------------------
-- BNAddTypeMemberTokens
-- -------------------------------------------------------

function core.BNAddTypeMemberTokens(
		type, 
		data, 
		tokens, 
		tokenCount, 
		offset, 
		nameList, 
		nameCount, 
		size, 
		indirect
)
	return cdefs.C.BNAddTypeMemberTokens(type, data, tokens, tokenCount, offset, nameList, nameCount, size, indirect)
end

-- -------------------------------------------------------
-- BNAddUserAddressTag
-- -------------------------------------------------------

function core.BNAddUserAddressTag(
		func, 
		arch, 
		addr, 
		tag
)
	return cdefs.C.BNAddUserAddressTag(func, arch, addr, tag)
end

-- -------------------------------------------------------
-- BNAddUserCodeReference
-- -------------------------------------------------------

function core.BNAddUserCodeReference(
		func, 
		fromArch, 
		fromAddr, 
		toAddr
)
	return cdefs.C.BNAddUserCodeReference(func, fromArch, fromAddr, toAddr)
end

-- -------------------------------------------------------
-- BNAddUserDataReference
-- -------------------------------------------------------

function core.BNAddUserDataReference(
		view, 
		fromAddr, 
		toAddr
)
	return cdefs.C.BNAddUserDataReference(view, fromAddr, toAddr)
end

-- -------------------------------------------------------
-- BNAddUserDataTag
-- -------------------------------------------------------

function core.BNAddUserDataTag(
		view, 
		addr, 
		tag
)
	return cdefs.C.BNAddUserDataTag(view, addr, tag)
end

-- -------------------------------------------------------
-- BNAddUserFunctionTag
-- -------------------------------------------------------

function core.BNAddUserFunctionTag(
		func, 
		tag
)
	return cdefs.C.BNAddUserFunctionTag(func, tag)
end

-- -------------------------------------------------------
-- BNAddUserSection
-- -------------------------------------------------------

function core.BNAddUserSection(
		view, 
		name, 
		start, 
		length, 
		semantics, 
		type, 
		align, 
		entrySize, 
		linkedSection, 
		infoSection, 
		infoData
)
	return cdefs.C.BNAddUserSection(view, name, start, length, semantics, type, align, entrySize, linkedSection, infoSection, infoData)
end

-- -------------------------------------------------------
-- BNAddUserSegment
-- -------------------------------------------------------

function core.BNAddUserSegment(
		view, 
		start, 
		length, 
		dataOffset, 
		dataLength, 
		flags
)
	return cdefs.C.BNAddUserSegment(view, start, length, dataOffset, dataLength, flags)
end

-- -------------------------------------------------------
-- BNAddUserTypeFieldReference
-- -------------------------------------------------------

function core.BNAddUserTypeFieldReference(
		func, 
		fromArch, 
		fromAddr, 
		name, 
		offset, 
		size
)
	return cdefs.C.BNAddUserTypeFieldReference(func, fromArch, fromAddr, name, offset, size)
end

-- -------------------------------------------------------
-- BNAddUserTypeReference
-- -------------------------------------------------------

function core.BNAddUserTypeReference(
		func, 
		fromArch, 
		fromAddr, 
		name
)
	return cdefs.C.BNAddUserTypeReference(func, fromArch, fromAddr, name)
end

-- -------------------------------------------------------
-- BNAllocString
-- -------------------------------------------------------

function core.BNAllocString(
		contents
)
	local result = cdefs.C.BNAllocString(contents)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNAllocStringList
-- -------------------------------------------------------

function core.BNAllocStringList(
		contents, 
		size
)
	local result = cdefs.C.BNAllocStringList(contents, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNAlwaysBranch
-- -------------------------------------------------------

function core.BNAlwaysBranch(
		view, 
		arch, 
		addr
)
	return cdefs.C.BNAlwaysBranch(view, arch, addr)
end

-- -------------------------------------------------------
-- BNAnalysisContextGetFunction
-- -------------------------------------------------------

function core.BNAnalysisContextGetFunction(
		analysisContext
)
	local result = cdefs.C.BNAnalysisContextGetFunction(analysisContext)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNAnalysisContextGetHighLevelILFunction
-- -------------------------------------------------------

function core.BNAnalysisContextGetHighLevelILFunction(
		analysisContext
)
	local result = cdefs.C.BNAnalysisContextGetHighLevelILFunction(analysisContext)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNAnalysisContextGetLowLevelILFunction
-- -------------------------------------------------------

function core.BNAnalysisContextGetLowLevelILFunction(
		analysisContext
)
	local result = cdefs.C.BNAnalysisContextGetLowLevelILFunction(analysisContext)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNAnalysisContextGetMediumLevelILFunction
-- -------------------------------------------------------

function core.BNAnalysisContextGetMediumLevelILFunction(
		analysisContext
)
	local result = cdefs.C.BNAnalysisContextGetMediumLevelILFunction(analysisContext)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNAnalysisContextInform
-- -------------------------------------------------------

function core.BNAnalysisContextInform(
		analysisContext, 
		request
)
	return cdefs.C.BNAnalysisContextInform(analysisContext, request)
end

-- -------------------------------------------------------
-- BNAppendDataBuffer
-- -------------------------------------------------------

function core.BNAppendDataBuffer(
		dest, 
		src
)
	return cdefs.C.BNAppendDataBuffer(dest, src)
end

-- -------------------------------------------------------
-- BNAppendDataBufferContents
-- -------------------------------------------------------

function core.BNAppendDataBufferContents(
		dest, 
		src, 
		len
)
	return cdefs.C.BNAppendDataBufferContents(dest, src, len)
end

-- -------------------------------------------------------
-- BNAppendPath
-- -------------------------------------------------------

function core.BNAppendPath(
		path, 
		part
)
	local result = cdefs.C.BNAppendPath(path, part)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNAppendSymbolQueue
-- -------------------------------------------------------

function core.BNAppendSymbolQueue(
		queue, 
		resolve, 
		resolveContext, 
		add, 
		addContext
)
	return cdefs.C.BNAppendSymbolQueue(queue, resolve, resolveContext, add, addContext)
end

-- -------------------------------------------------------
-- BNApplyAutoDiscoveredFunctionType
-- -------------------------------------------------------

function core.BNApplyAutoDiscoveredFunctionType(
		func, 
		type
)
	return cdefs.C.BNApplyAutoDiscoveredFunctionType(func, type)
end

-- -------------------------------------------------------
-- BNApplyDebugInfo
-- -------------------------------------------------------

function core.BNApplyDebugInfo(
		view, 
		newDebugInfo
)
	return cdefs.C.BNApplyDebugInfo(view, newDebugInfo)
end

-- -------------------------------------------------------
-- BNApplyImportedTypes
-- -------------------------------------------------------

function core.BNApplyImportedTypes(
		func, 
		sym, 
		type
)
	return cdefs.C.BNApplyImportedTypes(func, sym, type)
end

-- -------------------------------------------------------
-- BNApplySnapshotData
-- -------------------------------------------------------

function core.BNApplySnapshotData(
		file, 
		view, 
		data, 
		cache, 
		ctxt, 
		progress, 
		openForConfiguration, 
		restoreRawView
)
	return cdefs.C.BNApplySnapshotData(file, view, data, cache, ctxt, progress, openForConfiguration, restoreRawView)
end

-- -------------------------------------------------------
-- BNArchitectureAlwaysBranch
-- -------------------------------------------------------

function core.BNArchitectureAlwaysBranch(
		arch, 
		data, 
		addr, 
		len
)
	return cdefs.C.BNArchitectureAlwaysBranch(arch, data, addr, len)
end

-- -------------------------------------------------------
-- BNArchitectureConvertToNop
-- -------------------------------------------------------

function core.BNArchitectureConvertToNop(
		arch, 
		data, 
		addr, 
		len
)
	return cdefs.C.BNArchitectureConvertToNop(arch, data, addr, len)
end

-- -------------------------------------------------------
-- BNArchitectureGetRelocationHandler
-- -------------------------------------------------------

function core.BNArchitectureGetRelocationHandler(
		arch, 
		viewName
)
	local result = cdefs.C.BNArchitectureGetRelocationHandler(arch, viewName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNArchitectureInvertBranch
-- -------------------------------------------------------

function core.BNArchitectureInvertBranch(
		arch, 
		data, 
		addr, 
		len
)
	return cdefs.C.BNArchitectureInvertBranch(arch, data, addr, len)
end

-- -------------------------------------------------------
-- BNArchitectureRegisterRelocationHandler
-- -------------------------------------------------------

function core.BNArchitectureRegisterRelocationHandler(
		arch, 
		viewName, 
		handler
)
	return cdefs.C.BNArchitectureRegisterRelocationHandler(arch, viewName, handler)
end

-- -------------------------------------------------------
-- BNArchitectureSkipAndReturnValue
-- -------------------------------------------------------

function core.BNArchitectureSkipAndReturnValue(
		arch, 
		data, 
		addr, 
		len, 
		value
)
	return cdefs.C.BNArchitectureSkipAndReturnValue(arch, data, addr, len, value)
end

-- -------------------------------------------------------
-- BNAreArgumentRegistersSharedIndex
-- -------------------------------------------------------

function core.BNAreArgumentRegistersSharedIndex(
		cc
)
	return cdefs.C.BNAreArgumentRegistersSharedIndex(cc)
end

-- -------------------------------------------------------
-- BNAreArgumentRegistersUsedForVarArgs
-- -------------------------------------------------------

function core.BNAreArgumentRegistersUsedForVarArgs(
		cc
)
	return cdefs.C.BNAreArgumentRegistersUsedForVarArgs(cc)
end

-- -------------------------------------------------------
-- BNAreAutoUpdatesEnabled
-- -------------------------------------------------------

function core.BNAreAutoUpdatesEnabled(
)
	return cdefs.C.BNAreAutoUpdatesEnabled()
end

-- -------------------------------------------------------
-- BNAreUpdatesAvailable
-- -------------------------------------------------------

function core.BNAreUpdatesAvailable(
		channel, 
		expireTime, 
		serverTime, 
		errors
)
	return cdefs.C.BNAreUpdatesAvailable(channel, expireTime, serverTime, errors)
end

-- -------------------------------------------------------
-- BNAssemble
-- -------------------------------------------------------

function core.BNAssemble(
		arch, 
		code, 
		addr, 
		result, 
		errors
)
	return cdefs.C.BNAssemble(arch, code, addr, result, errors)
end

-- -------------------------------------------------------
-- BNAssignDataBuffer
-- -------------------------------------------------------

function core.BNAssignDataBuffer(
		dest, 
		src
)
	return cdefs.C.BNAssignDataBuffer(dest, src)
end

-- -------------------------------------------------------
-- BNAuthenticateEnterpriseServerWithCredentials
-- -------------------------------------------------------

function core.BNAuthenticateEnterpriseServerWithCredentials(
		username, 
		password, 
		remember
)
	return cdefs.C.BNAuthenticateEnterpriseServerWithCredentials(username, password, remember)
end

-- -------------------------------------------------------
-- BNAuthenticateEnterpriseServerWithMethod
-- -------------------------------------------------------

function core.BNAuthenticateEnterpriseServerWithMethod(
		method, 
		remember
)
	return cdefs.C.BNAuthenticateEnterpriseServerWithMethod(method, remember)
end

-- -------------------------------------------------------
-- BNBasicBlockCanExit
-- -------------------------------------------------------

function core.BNBasicBlockCanExit(
		block
)
	return cdefs.C.BNBasicBlockCanExit(block)
end

-- -------------------------------------------------------
-- BNBasicBlockHasInvalidInstructions
-- -------------------------------------------------------

function core.BNBasicBlockHasInvalidInstructions(
		block
)
	return cdefs.C.BNBasicBlockHasInvalidInstructions(block)
end

-- -------------------------------------------------------
-- BNBasicBlockHasUndeterminedOutgoingEdges
-- -------------------------------------------------------

function core.BNBasicBlockHasUndeterminedOutgoingEdges(
		block
)
	return cdefs.C.BNBasicBlockHasUndeterminedOutgoingEdges(block)
end

-- -------------------------------------------------------
-- BNBasicBlockSetCanExit
-- -------------------------------------------------------

function core.BNBasicBlockSetCanExit(
		block, 
		value
)
	return cdefs.C.BNBasicBlockSetCanExit(block, value)
end

-- -------------------------------------------------------
-- BNBeginBackgroundTask
-- -------------------------------------------------------

function core.BNBeginBackgroundTask(
		initialText, 
		canCancel
)
	local result = cdefs.C.BNBeginBackgroundTask(initialText, canCancel)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNBeginBulkModifySymbols
-- -------------------------------------------------------

function core.BNBeginBulkModifySymbols(
		view
)
	return cdefs.C.BNBeginBulkModifySymbols(view)
end

-- -------------------------------------------------------
-- BNBeginKeyValueStoreNamespace
-- -------------------------------------------------------

function core.BNBeginKeyValueStoreNamespace(
		store, 
		name
)
	return cdefs.C.BNBeginKeyValueStoreNamespace(store, name)
end

-- -------------------------------------------------------
-- BNBeginUndoActions
-- -------------------------------------------------------

function core.BNBeginUndoActions(
		file
)
	return cdefs.C.BNBeginUndoActions(file)
end

-- -------------------------------------------------------
-- BNBinaryViewExportObjectToTypeLibrary
-- -------------------------------------------------------

function core.BNBinaryViewExportObjectToTypeLibrary(
		view, 
		lib, 
		name, 
		type
)
	return cdefs.C.BNBinaryViewExportObjectToTypeLibrary(view, lib, name, type)
end

-- -------------------------------------------------------
-- BNBinaryViewExportTypeToTypeLibrary
-- -------------------------------------------------------

function core.BNBinaryViewExportTypeToTypeLibrary(
		view, 
		lib, 
		name, 
		type
)
	return cdefs.C.BNBinaryViewExportTypeToTypeLibrary(view, lib, name, type)
end

-- -------------------------------------------------------
-- BNBinaryViewGetLoadSettings
-- -------------------------------------------------------

function core.BNBinaryViewGetLoadSettings(
		view, 
		typeName
)
	local result = cdefs.C.BNBinaryViewGetLoadSettings(view, typeName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNBinaryViewGetLoadSettingsTypeNames
-- -------------------------------------------------------

function core.BNBinaryViewGetLoadSettingsTypeNames(
		view, 
		count
)
	local result = cdefs.C.BNBinaryViewGetLoadSettingsTypeNames(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNBinaryViewImportTypeLibraryObject
-- -------------------------------------------------------

function core.BNBinaryViewImportTypeLibraryObject(
		view, 
		lib, 
		name
)
	local result = cdefs.C.BNBinaryViewImportTypeLibraryObject(view, lib, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNBinaryViewImportTypeLibraryType
-- -------------------------------------------------------

function core.BNBinaryViewImportTypeLibraryType(
		view, 
		lib, 
		name
)
	local result = cdefs.C.BNBinaryViewImportTypeLibraryType(view, lib, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNBinaryViewLookupImportedObjectLibrary
-- -------------------------------------------------------

function core.BNBinaryViewLookupImportedObjectLibrary(
		view, 
		tgtPlatform, 
		tgtAddr, 
		lib, 
		name
)
	return cdefs.C.BNBinaryViewLookupImportedObjectLibrary(view, tgtPlatform, tgtAddr, lib, name)
end

-- -------------------------------------------------------
-- BNBinaryViewLookupImportedTypeLibrary
-- -------------------------------------------------------

function core.BNBinaryViewLookupImportedTypeLibrary(
		view, 
		typeName, 
		lib, 
		resultName
)
	return cdefs.C.BNBinaryViewLookupImportedTypeLibrary(view, typeName, lib, resultName)
end

-- -------------------------------------------------------
-- BNBinaryViewQueryMetadata
-- -------------------------------------------------------

function core.BNBinaryViewQueryMetadata(
		view, 
		key
)
	local result = cdefs.C.BNBinaryViewQueryMetadata(view, key)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNBinaryViewRecordImportedObjectLibrary
-- -------------------------------------------------------

function core.BNBinaryViewRecordImportedObjectLibrary(
		view, 
		tgtPlatform, 
		tgtAddr, 
		lib, 
		name
)
	return cdefs.C.BNBinaryViewRecordImportedObjectLibrary(view, tgtPlatform, tgtAddr, lib, name)
end

-- -------------------------------------------------------
-- BNBinaryViewRemoveMetadata
-- -------------------------------------------------------

function core.BNBinaryViewRemoveMetadata(
		view, 
		key
)
	return cdefs.C.BNBinaryViewRemoveMetadata(view, key)
end

-- -------------------------------------------------------
-- BNBinaryViewSetLoadSettings
-- -------------------------------------------------------

function core.BNBinaryViewSetLoadSettings(
		view, 
		typeName, 
		settings
)
	return cdefs.C.BNBinaryViewSetLoadSettings(view, typeName, settings)
end

-- -------------------------------------------------------
-- BNBinaryViewStoreMetadata
-- -------------------------------------------------------

function core.BNBinaryViewStoreMetadata(
		view, 
		key, 
		value, 
		isAuto
)
	return cdefs.C.BNBinaryViewStoreMetadata(view, key, value, isAuto)
end

-- -------------------------------------------------------
-- BNCanArchitectureAssemble
-- -------------------------------------------------------

function core.BNCanArchitectureAssemble(
		arch
)
	return cdefs.C.BNCanArchitectureAssemble(arch)
end

-- -------------------------------------------------------
-- BNCanAssemble
-- -------------------------------------------------------

function core.BNCanAssemble(
		view, 
		arch
)
	return cdefs.C.BNCanAssemble(view, arch)
end

-- -------------------------------------------------------
-- BNCanCancelBackgroundTask
-- -------------------------------------------------------

function core.BNCanCancelBackgroundTask(
		task
)
	return cdefs.C.BNCanCancelBackgroundTask(task)
end

-- -------------------------------------------------------
-- BNCanFunctionReturn
-- -------------------------------------------------------

function core.BNCanFunctionReturn(
		func
)
	return cdefs.C.BNCanFunctionReturn(func)
end

-- -------------------------------------------------------
-- BNCanRedo
-- -------------------------------------------------------

function core.BNCanRedo(
		file
)
	return cdefs.C.BNCanRedo(file)
end

-- -------------------------------------------------------
-- BNCanUndo
-- -------------------------------------------------------

function core.BNCanUndo(
		file
)
	return cdefs.C.BNCanUndo(file)
end

-- -------------------------------------------------------
-- BNCancelAnalysisCompletionEvent
-- -------------------------------------------------------

function core.BNCancelAnalysisCompletionEvent(
		event
)
	return cdefs.C.BNCancelAnalysisCompletionEvent(event)
end

-- -------------------------------------------------------
-- BNCancelBackgroundTask
-- -------------------------------------------------------

function core.BNCancelBackgroundTask(
		task
)
	return cdefs.C.BNCancelBackgroundTask(task)
end

-- -------------------------------------------------------
-- BNCancelEnterpriseServerAuthentication
-- -------------------------------------------------------

function core.BNCancelEnterpriseServerAuthentication(
)
	return cdefs.C.BNCancelEnterpriseServerAuthentication()
end

-- -------------------------------------------------------
-- BNCancelScriptInput
-- -------------------------------------------------------

function core.BNCancelScriptInput(
		instance
)
	return cdefs.C.BNCancelScriptInput(instance)
end

-- -------------------------------------------------------
-- BNClearDataBuffer
-- -------------------------------------------------------

function core.BNClearDataBuffer(
		buf
)
	return cdefs.C.BNClearDataBuffer(buf)
end

-- -------------------------------------------------------
-- BNClearTypeLibraryPlatforms
-- -------------------------------------------------------

function core.BNClearTypeLibraryPlatforms(
		lib
)
	return cdefs.C.BNClearTypeLibraryPlatforms(lib)
end

-- -------------------------------------------------------
-- BNClearUndoEntries
-- -------------------------------------------------------

function core.BNClearUndoEntries(
		file
)
	return cdefs.C.BNClearUndoEntries(file)
end

-- -------------------------------------------------------
-- BNClearUserVariableValue
-- -------------------------------------------------------

function core.BNClearUserVariableValue(
		func, 
		var, 
		defSite
)
	return cdefs.C.BNClearUserVariableValue(func, var, defSite)
end

-- -------------------------------------------------------
-- BNCloseFile
-- -------------------------------------------------------

function core.BNCloseFile(
		file
)
	return cdefs.C.BNCloseFile(file)
end

-- -------------------------------------------------------
-- BNCloseLogs
-- -------------------------------------------------------

function core.BNCloseLogs(
)
	return cdefs.C.BNCloseLogs()
end

-- -------------------------------------------------------
-- BNCloseProject
-- -------------------------------------------------------

function core.BNCloseProject(
		file
)
	return cdefs.C.BNCloseProject(file)
end

-- -------------------------------------------------------
-- BNCommitUndoActions
-- -------------------------------------------------------

function core.BNCommitUndoActions(
		file
)
	return cdefs.C.BNCommitUndoActions(file)
end

-- -------------------------------------------------------
-- BNCompareLinearViewCursors
-- -------------------------------------------------------

function core.BNCompareLinearViewCursors(
		a, 
		b
)
	return cdefs.C.BNCompareLinearViewCursors(a, b)
end

-- -------------------------------------------------------
-- BNCompareLinearViewObjectChildren
-- -------------------------------------------------------

function core.BNCompareLinearViewObjectChildren(
		obj, 
		a, 
		b
)
	return cdefs.C.BNCompareLinearViewObjectChildren(obj, a, b)
end

-- -------------------------------------------------------
-- BNComponentAddAllMembersFromComponent
-- -------------------------------------------------------

function core.BNComponentAddAllMembersFromComponent(
		component, 
		fromComponent
)
	return cdefs.C.BNComponentAddAllMembersFromComponent(component, fromComponent)
end

-- -------------------------------------------------------
-- BNComponentAddComponent
-- -------------------------------------------------------

function core.BNComponentAddComponent(
		parent, 
		component
)
	return cdefs.C.BNComponentAddComponent(parent, component)
end

-- -------------------------------------------------------
-- BNComponentAddDataVariable
-- -------------------------------------------------------

function core.BNComponentAddDataVariable(
		component, 
		address
)
	return cdefs.C.BNComponentAddDataVariable(component, address)
end

-- -------------------------------------------------------
-- BNComponentAddFunctionReference
-- -------------------------------------------------------

function core.BNComponentAddFunctionReference(
		component, 
		function_
)
	return cdefs.C.BNComponentAddFunctionReference(component, function_)
end

-- -------------------------------------------------------
-- BNComponentContainsComponent
-- -------------------------------------------------------

function core.BNComponentContainsComponent(
		parent, 
		component
)
	return cdefs.C.BNComponentContainsComponent(parent, component)
end

-- -------------------------------------------------------
-- BNComponentContainsDataVariable
-- -------------------------------------------------------

function core.BNComponentContainsDataVariable(
		component, 
		address
)
	return cdefs.C.BNComponentContainsDataVariable(component, address)
end

-- -------------------------------------------------------
-- BNComponentContainsFunction
-- -------------------------------------------------------

function core.BNComponentContainsFunction(
		component, 
		function_
)
	return cdefs.C.BNComponentContainsFunction(component, function_)
end

-- -------------------------------------------------------
-- BNComponentFreeReferencedTypes
-- -------------------------------------------------------

function core.BNComponentFreeReferencedTypes(
		types, 
		count
)
	return cdefs.C.BNComponentFreeReferencedTypes(types, count)
end

-- -------------------------------------------------------
-- BNComponentGetContainedComponents
-- -------------------------------------------------------

function core.BNComponentGetContainedComponents(
		component, 
		count
)
	local result = cdefs.C.BNComponentGetContainedComponents(component, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNComponentGetContainedDataVariables
-- -------------------------------------------------------

function core.BNComponentGetContainedDataVariables(
		component, 
		count
)
	local result = cdefs.C.BNComponentGetContainedDataVariables(component, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNComponentGetContainedFunctions
-- -------------------------------------------------------

function core.BNComponentGetContainedFunctions(
		component, 
		count
)
	local result = cdefs.C.BNComponentGetContainedFunctions(component, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNComponentGetDisplayName
-- -------------------------------------------------------

function core.BNComponentGetDisplayName(
		component
)
	local result = cdefs.C.BNComponentGetDisplayName(component)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNComponentGetGuid
-- -------------------------------------------------------

function core.BNComponentGetGuid(
		component
)
	local result = cdefs.C.BNComponentGetGuid(component)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNComponentGetOriginalName
-- -------------------------------------------------------

function core.BNComponentGetOriginalName(
		component
)
	local result = cdefs.C.BNComponentGetOriginalName(component)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNComponentGetParent
-- -------------------------------------------------------

function core.BNComponentGetParent(
		component
)
	local result = cdefs.C.BNComponentGetParent(component)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNComponentGetReferencedDataVariables
-- -------------------------------------------------------

function core.BNComponentGetReferencedDataVariables(
		component, 
		count
)
	local result = cdefs.C.BNComponentGetReferencedDataVariables(component, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNComponentGetReferencedDataVariablesRecursive
-- -------------------------------------------------------

function core.BNComponentGetReferencedDataVariablesRecursive(
		component, 
		count
)
	local result = cdefs.C.BNComponentGetReferencedDataVariablesRecursive(component, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNComponentGetReferencedTypes
-- -------------------------------------------------------

function core.BNComponentGetReferencedTypes(
		component, 
		count
)
	local result = cdefs.C.BNComponentGetReferencedTypes(component, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNComponentGetReferencedTypesRecursive
-- -------------------------------------------------------

function core.BNComponentGetReferencedTypesRecursive(
		component, 
		count
)
	local result = cdefs.C.BNComponentGetReferencedTypesRecursive(component, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNComponentGetView
-- -------------------------------------------------------

function core.BNComponentGetView(
		component
)
	local result = cdefs.C.BNComponentGetView(component)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNComponentRemoveAllFunctions
-- -------------------------------------------------------

function core.BNComponentRemoveAllFunctions(
		component
)
	return cdefs.C.BNComponentRemoveAllFunctions(component)
end

-- -------------------------------------------------------
-- BNComponentRemoveComponent
-- -------------------------------------------------------

function core.BNComponentRemoveComponent(
		component
)
	return cdefs.C.BNComponentRemoveComponent(component)
end

-- -------------------------------------------------------
-- BNComponentRemoveDataVariable
-- -------------------------------------------------------

function core.BNComponentRemoveDataVariable(
		component, 
		address
)
	return cdefs.C.BNComponentRemoveDataVariable(component, address)
end

-- -------------------------------------------------------
-- BNComponentRemoveFunctionReference
-- -------------------------------------------------------

function core.BNComponentRemoveFunctionReference(
		component, 
		function_
)
	return cdefs.C.BNComponentRemoveFunctionReference(component, function_)
end

-- -------------------------------------------------------
-- BNComponentSetName
-- -------------------------------------------------------

function core.BNComponentSetName(
		component, 
		name
)
	return cdefs.C.BNComponentSetName(component, name)
end

-- -------------------------------------------------------
-- BNComponentsEqual
-- -------------------------------------------------------

function core.BNComponentsEqual(
		a, 
		b
)
	return cdefs.C.BNComponentsEqual(a, b)
end

-- -------------------------------------------------------
-- BNComponentsNotEqual
-- -------------------------------------------------------

function core.BNComponentsNotEqual(
		a, 
		b
)
	return cdefs.C.BNComponentsNotEqual(a, b)
end

-- -------------------------------------------------------
-- BNConnectEnterpriseServer
-- -------------------------------------------------------

function core.BNConnectEnterpriseServer(
)
	return cdefs.C.BNConnectEnterpriseServer()
end

-- -------------------------------------------------------
-- BNConnectWebsocketClient
-- -------------------------------------------------------

function core.BNConnectWebsocketClient(
		client, 
		url, 
		headerCount, 
		headerKeys, 
		headerValues, 
		callbacks
)
	return cdefs.C.BNConnectWebsocketClient(client, url, headerCount, headerKeys, headerValues, callbacks)
end

-- -------------------------------------------------------
-- BNConvertToNop
-- -------------------------------------------------------

function core.BNConvertToNop(
		view, 
		arch, 
		addr
)
	return cdefs.C.BNConvertToNop(view, arch, addr)
end

-- -------------------------------------------------------
-- BNCopyFile
-- -------------------------------------------------------

function core.BNCopyFile(
		source, 
		dest
)
	return cdefs.C.BNCopyFile(source, dest)
end

-- -------------------------------------------------------
-- BNCreateActivity
-- -------------------------------------------------------

function core.BNCreateActivity(
		name, 
		ctxt, 
		action
)
	local result = cdefs.C.BNCreateActivity(name, ctxt, action)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateAnalysisContext
-- -------------------------------------------------------

function core.BNCreateAnalysisContext(
)
	local result = cdefs.C.BNCreateAnalysisContext()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateArrayType
-- -------------------------------------------------------

function core.BNCreateArrayType(
		type, 
		elem
)
	local result = cdefs.C.BNCreateArrayType(type, elem)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateArrayTypeBuilder
-- -------------------------------------------------------

function core.BNCreateArrayTypeBuilder(
		type, 
		elem
)
	local result = cdefs.C.BNCreateArrayTypeBuilder(type, elem)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateAutoStackVariable
-- -------------------------------------------------------

function core.BNCreateAutoStackVariable(
		func, 
		offset, 
		type, 
		name
)
	return cdefs.C.BNCreateAutoStackVariable(func, offset, type, name)
end

-- -------------------------------------------------------
-- BNCreateAutoVariable
-- -------------------------------------------------------

function core.BNCreateAutoVariable(
		func, 
		var, 
		type, 
		name, 
		ignoreDisjointUses
)
	return cdefs.C.BNCreateAutoVariable(func, var, type, name, ignoreDisjointUses)
end

-- -------------------------------------------------------
-- BNCreateBinaryDataView
-- -------------------------------------------------------

function core.BNCreateBinaryDataView(
		file
)
	local result = cdefs.C.BNCreateBinaryDataView(file)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateBinaryDataViewFromBuffer
-- -------------------------------------------------------

function core.BNCreateBinaryDataViewFromBuffer(
		file, 
		buf
)
	local result = cdefs.C.BNCreateBinaryDataViewFromBuffer(file, buf)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateBinaryDataViewFromData
-- -------------------------------------------------------

function core.BNCreateBinaryDataViewFromData(
		file, 
		data, 
		len
)
	local result = cdefs.C.BNCreateBinaryDataViewFromData(file, data, len)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateBinaryDataViewFromFile
-- -------------------------------------------------------

function core.BNCreateBinaryDataViewFromFile(
		file, 
		accessor
)
	local result = cdefs.C.BNCreateBinaryDataViewFromFile(file, accessor)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateBinaryDataViewFromFilename
-- -------------------------------------------------------

function core.BNCreateBinaryDataViewFromFilename(
		file, 
		filename
)
	local result = cdefs.C.BNCreateBinaryDataViewFromFilename(file, filename)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateBinaryReader
-- -------------------------------------------------------

function core.BNCreateBinaryReader(
		view
)
	local result = cdefs.C.BNCreateBinaryReader(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateBinaryViewOfType
-- -------------------------------------------------------

function core.BNCreateBinaryViewOfType(
		type, 
		data
)
	local result = cdefs.C.BNCreateBinaryViewOfType(type, data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateBinaryWriter
-- -------------------------------------------------------

function core.BNCreateBinaryWriter(
		view
)
	local result = cdefs.C.BNCreateBinaryWriter(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateBoolType
-- -------------------------------------------------------

function core.BNCreateBoolType(
)
	local result = cdefs.C.BNCreateBoolType()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateBoolTypeBuilder
-- -------------------------------------------------------

function core.BNCreateBoolTypeBuilder(
)
	local result = cdefs.C.BNCreateBoolTypeBuilder()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateCallingConvention
-- -------------------------------------------------------

function core.BNCreateCallingConvention(
		arch, 
		name, 
		cc
)
	local result = cdefs.C.BNCreateCallingConvention(arch, name, cc)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateComponent
-- -------------------------------------------------------

function core.BNCreateComponent(
		view
)
	local result = cdefs.C.BNCreateComponent(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateComponentWithName
-- -------------------------------------------------------

function core.BNCreateComponentWithName(
		view, 
		name
)
	local result = cdefs.C.BNCreateComponentWithName(view, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateComponentWithParent
-- -------------------------------------------------------

function core.BNCreateComponentWithParent(
		view, 
		parentGUID
)
	local result = cdefs.C.BNCreateComponentWithParent(view, parentGUID)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateComponentWithParentAndName
-- -------------------------------------------------------

function core.BNCreateComponentWithParentAndName(
		view, 
		parentGUID, 
		name
)
	local result = cdefs.C.BNCreateComponentWithParentAndName(view, parentGUID, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateCustomBinaryView
-- -------------------------------------------------------

function core.BNCreateCustomBinaryView(
		name, 
		file, 
		parent, 
		view
)
	local result = cdefs.C.BNCreateCustomBinaryView(name, file, parent, view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateCustomFlowGraph
-- -------------------------------------------------------

function core.BNCreateCustomFlowGraph(
		callbacks
)
	local result = cdefs.C.BNCreateCustomFlowGraph(callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateDataBuffer
-- -------------------------------------------------------

function core.BNCreateDataBuffer(
		data, 
		len
)
	local result = cdefs.C.BNCreateDataBuffer(data, len)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateDataRenderer
-- -------------------------------------------------------

function core.BNCreateDataRenderer(
		renderer
)
	local result = cdefs.C.BNCreateDataRenderer(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateDatabase
-- -------------------------------------------------------

function core.BNCreateDatabase(
		data, 
		path, 
		settings
)
	return cdefs.C.BNCreateDatabase(data, path, settings)
end

-- -------------------------------------------------------
-- BNCreateDatabaseWithProgress
-- -------------------------------------------------------

function core.BNCreateDatabaseWithProgress(
		data, 
		path, 
		ctxt, 
		progress, 
		settings
)
	return cdefs.C.BNCreateDatabaseWithProgress(data, path, ctxt, progress, settings)
end

-- -------------------------------------------------------
-- BNCreateDirectory
-- -------------------------------------------------------

function core.BNCreateDirectory(
		path, 
		createSubdirectories
)
	return cdefs.C.BNCreateDirectory(path, createSubdirectories)
end

-- -------------------------------------------------------
-- BNCreateDisassemblySettings
-- -------------------------------------------------------

function core.BNCreateDisassemblySettings(
)
	local result = cdefs.C.BNCreateDisassemblySettings()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateDisassemblyTextRenderer
-- -------------------------------------------------------

function core.BNCreateDisassemblyTextRenderer(
		func, 
		settings
)
	local result = cdefs.C.BNCreateDisassemblyTextRenderer(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateDownloadProviderInstance
-- -------------------------------------------------------

function core.BNCreateDownloadProviderInstance(
		provider
)
	local result = cdefs.C.BNCreateDownloadProviderInstance(provider)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateEnumerationBuilder
-- -------------------------------------------------------

function core.BNCreateEnumerationBuilder(
)
	local result = cdefs.C.BNCreateEnumerationBuilder()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateEnumerationBuilderFromEnumeration
-- -------------------------------------------------------

function core.BNCreateEnumerationBuilderFromEnumeration(
		e
)
	local result = cdefs.C.BNCreateEnumerationBuilderFromEnumeration(e)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateEnumerationType
-- -------------------------------------------------------

function core.BNCreateEnumerationType(
		arch, 
		e, 
		width, 
		isSigned
)
	local result = cdefs.C.BNCreateEnumerationType(arch, e, width, isSigned)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateEnumerationTypeBuilder
-- -------------------------------------------------------

function core.BNCreateEnumerationTypeBuilder(
		arch, 
		e, 
		width, 
		isSigned
)
	local result = cdefs.C.BNCreateEnumerationTypeBuilder(arch, e, width, isSigned)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateEnumerationTypeBuilderWithBuilder
-- -------------------------------------------------------

function core.BNCreateEnumerationTypeBuilderWithBuilder(
		arch, 
		e, 
		width, 
		isSigned
)
	local result = cdefs.C.BNCreateEnumerationTypeBuilderWithBuilder(arch, e, width, isSigned)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateEnumerationTypeOfWidth
-- -------------------------------------------------------

function core.BNCreateEnumerationTypeOfWidth(
		e, 
		width, 
		isSigned
)
	local result = cdefs.C.BNCreateEnumerationTypeOfWidth(e, width, isSigned)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateFileMetadata
-- -------------------------------------------------------

function core.BNCreateFileMetadata(
)
	local result = cdefs.C.BNCreateFileMetadata()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateFloatType
-- -------------------------------------------------------

function core.BNCreateFloatType(
		width, 
		altName
)
	local result = cdefs.C.BNCreateFloatType(width, altName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateFloatTypeBuilder
-- -------------------------------------------------------

function core.BNCreateFloatTypeBuilder(
		width, 
		altName
)
	local result = cdefs.C.BNCreateFloatTypeBuilder(width, altName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateFlowGraph
-- -------------------------------------------------------

function core.BNCreateFlowGraph(
)
	local result = cdefs.C.BNCreateFlowGraph()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateFlowGraphNode
-- -------------------------------------------------------

function core.BNCreateFlowGraphNode(
		graph
)
	local result = cdefs.C.BNCreateFlowGraphNode(graph)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateFunctionGraph
-- -------------------------------------------------------

function core.BNCreateFunctionGraph(
		func, 
		type, 
		settings
)
	local result = cdefs.C.BNCreateFunctionGraph(func, type, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateFunctionType
-- -------------------------------------------------------

function core.BNCreateFunctionType(
		returnValue, 
		callingConvention, 
		params, 
		paramCount, 
		varArg, 
		canReturn, 
		stackAdjust, 
		regStackAdjustRegs, 
		regStackAdjustValues, 
		regStackAdjustCount, 
		returnRegs, 
		ft
)
	local result = cdefs.C.BNCreateFunctionType(returnValue, callingConvention, params, paramCount, varArg, canReturn, stackAdjust, regStackAdjustRegs, regStackAdjustValues, regStackAdjustCount, returnRegs, ft)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateFunctionTypeBuilder
-- -------------------------------------------------------

function core.BNCreateFunctionTypeBuilder(
		returnValue, 
		callingConvention, 
		params, 
		paramCount, 
		varArg, 
		canReturn, 
		stackAdjust, 
		regStackAdjustRegs, 
		regStackAdjustValues, 
		regStackAdjustCount, 
		returnRegs, 
		ft
)
	local result = cdefs.C.BNCreateFunctionTypeBuilder(returnValue, callingConvention, params, paramCount, varArg, canReturn, stackAdjust, regStackAdjustRegs, regStackAdjustValues, regStackAdjustCount, returnRegs, ft)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateHighLevelILDisassemblyTextRenderer
-- -------------------------------------------------------

function core.BNCreateHighLevelILDisassemblyTextRenderer(
		func, 
		settings
)
	local result = cdefs.C.BNCreateHighLevelILDisassemblyTextRenderer(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateHighLevelILFunction
-- -------------------------------------------------------

function core.BNCreateHighLevelILFunction(
		arch, 
		func
)
	local result = cdefs.C.BNCreateHighLevelILFunction(arch, func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateHighLevelILFunctionGraph
-- -------------------------------------------------------

function core.BNCreateHighLevelILFunctionGraph(
		func, 
		settings
)
	local result = cdefs.C.BNCreateHighLevelILFunctionGraph(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateIntegerType
-- -------------------------------------------------------

function core.BNCreateIntegerType(
		width, 
		sign, 
		altName
)
	local result = cdefs.C.BNCreateIntegerType(width, sign, altName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateIntegerTypeBuilder
-- -------------------------------------------------------

function core.BNCreateIntegerTypeBuilder(
		width, 
		sign, 
		altName
)
	local result = cdefs.C.BNCreateIntegerTypeBuilder(width, sign, altName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateKeyValueStore
-- -------------------------------------------------------

function core.BNCreateKeyValueStore(
)
	local result = cdefs.C.BNCreateKeyValueStore()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateKeyValueStoreFromDataBuffer
-- -------------------------------------------------------

function core.BNCreateKeyValueStoreFromDataBuffer(
		buffer
)
	local result = cdefs.C.BNCreateKeyValueStoreFromDataBuffer(buffer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLanguageRepresentationFunction
-- -------------------------------------------------------

function core.BNCreateLanguageRepresentationFunction(
		arch, 
		func
)
	local result = cdefs.C.BNCreateLanguageRepresentationFunction(arch, func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewCursor
-- -------------------------------------------------------

function core.BNCreateLinearViewCursor(
		root
)
	local result = cdefs.C.BNCreateLinearViewCursor(root)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewDataOnly
-- -------------------------------------------------------

function core.BNCreateLinearViewDataOnly(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewDataOnly(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewDisassembly
-- -------------------------------------------------------

function core.BNCreateLinearViewDisassembly(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewDisassembly(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewHighLevelIL
-- -------------------------------------------------------

function core.BNCreateLinearViewHighLevelIL(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewHighLevelIL(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewHighLevelILSSAForm
-- -------------------------------------------------------

function core.BNCreateLinearViewHighLevelILSSAForm(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewHighLevelILSSAForm(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewLanguageRepresentation
-- -------------------------------------------------------

function core.BNCreateLinearViewLanguageRepresentation(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewLanguageRepresentation(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewLiftedIL
-- -------------------------------------------------------

function core.BNCreateLinearViewLiftedIL(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewLiftedIL(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewLowLevelIL
-- -------------------------------------------------------

function core.BNCreateLinearViewLowLevelIL(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewLowLevelIL(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewLowLevelILSSAForm
-- -------------------------------------------------------

function core.BNCreateLinearViewLowLevelILSSAForm(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewLowLevelILSSAForm(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewMappedMediumLevelIL
-- -------------------------------------------------------

function core.BNCreateLinearViewMappedMediumLevelIL(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewMappedMediumLevelIL(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewMappedMediumLevelILSSAForm
-- -------------------------------------------------------

function core.BNCreateLinearViewMappedMediumLevelILSSAForm(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewMappedMediumLevelILSSAForm(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewMediumLevelIL
-- -------------------------------------------------------

function core.BNCreateLinearViewMediumLevelIL(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewMediumLevelIL(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewMediumLevelILSSAForm
-- -------------------------------------------------------

function core.BNCreateLinearViewMediumLevelILSSAForm(
		view, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewMediumLevelILSSAForm(view, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionDisassembly
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionDisassembly(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionDisassembly(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionHighLevelIL
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionHighLevelIL(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionHighLevelIL(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionHighLevelILSSAForm
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionHighLevelILSSAForm(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionHighLevelILSSAForm(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionLanguageRepresentation
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionLanguageRepresentation(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionLanguageRepresentation(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionLiftedIL
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionLiftedIL(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionLiftedIL(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionLowLevelIL
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionLowLevelIL(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionLowLevelIL(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionLowLevelILSSAForm
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionLowLevelILSSAForm(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionLowLevelILSSAForm(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionMappedMediumLevelIL
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionMappedMediumLevelIL(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionMappedMediumLevelIL(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionMappedMediumLevelILSSAForm
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionMappedMediumLevelILSSAForm(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionMappedMediumLevelILSSAForm(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionMediumLevelIL
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionMediumLevelIL(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionMediumLevelIL(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLinearViewSingleFunctionMediumLevelILSSAForm
-- -------------------------------------------------------

function core.BNCreateLinearViewSingleFunctionMediumLevelILSSAForm(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLinearViewSingleFunctionMediumLevelILSSAForm(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLowLevelILDisassemblyTextRenderer
-- -------------------------------------------------------

function core.BNCreateLowLevelILDisassemblyTextRenderer(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLowLevelILDisassemblyTextRenderer(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLowLevelILFunction
-- -------------------------------------------------------

function core.BNCreateLowLevelILFunction(
		arch, 
		func
)
	local result = cdefs.C.BNCreateLowLevelILFunction(arch, func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateLowLevelILFunctionGraph
-- -------------------------------------------------------

function core.BNCreateLowLevelILFunctionGraph(
		func, 
		settings
)
	local result = cdefs.C.BNCreateLowLevelILFunctionGraph(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMediumLevelILDisassemblyTextRenderer
-- -------------------------------------------------------

function core.BNCreateMediumLevelILDisassemblyTextRenderer(
		func, 
		settings
)
	local result = cdefs.C.BNCreateMediumLevelILDisassemblyTextRenderer(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMediumLevelILFunction
-- -------------------------------------------------------

function core.BNCreateMediumLevelILFunction(
		arch, 
		func
)
	local result = cdefs.C.BNCreateMediumLevelILFunction(arch, func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMediumLevelILFunctionGraph
-- -------------------------------------------------------

function core.BNCreateMediumLevelILFunctionGraph(
		func, 
		settings
)
	local result = cdefs.C.BNCreateMediumLevelILFunctionGraph(func, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataArray
-- -------------------------------------------------------

function core.BNCreateMetadataArray(
		data, 
		size
)
	local result = cdefs.C.BNCreateMetadataArray(data, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataBooleanData
-- -------------------------------------------------------

function core.BNCreateMetadataBooleanData(
		data
)
	local result = cdefs.C.BNCreateMetadataBooleanData(data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataBooleanListData
-- -------------------------------------------------------

function core.BNCreateMetadataBooleanListData(
		data, 
		size
)
	local result = cdefs.C.BNCreateMetadataBooleanListData(data, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataDoubleData
-- -------------------------------------------------------

function core.BNCreateMetadataDoubleData(
		data
)
	local result = cdefs.C.BNCreateMetadataDoubleData(data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataDoubleListData
-- -------------------------------------------------------

function core.BNCreateMetadataDoubleListData(
		data, 
		size
)
	local result = cdefs.C.BNCreateMetadataDoubleListData(data, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataOfType
-- -------------------------------------------------------

function core.BNCreateMetadataOfType(
		type
)
	local result = cdefs.C.BNCreateMetadataOfType(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataRawData
-- -------------------------------------------------------

function core.BNCreateMetadataRawData(
		data, 
		size
)
	local result = cdefs.C.BNCreateMetadataRawData(data, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataSignedIntegerData
-- -------------------------------------------------------

function core.BNCreateMetadataSignedIntegerData(
		data
)
	local result = cdefs.C.BNCreateMetadataSignedIntegerData(data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataSignedIntegerListData
-- -------------------------------------------------------

function core.BNCreateMetadataSignedIntegerListData(
		data, 
		size
)
	local result = cdefs.C.BNCreateMetadataSignedIntegerListData(data, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataStringData
-- -------------------------------------------------------

function core.BNCreateMetadataStringData(
		data
)
	local result = cdefs.C.BNCreateMetadataStringData(data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataStringListData
-- -------------------------------------------------------

function core.BNCreateMetadataStringListData(
		data, 
		size
)
	local result = cdefs.C.BNCreateMetadataStringListData(data, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataUnsignedIntegerData
-- -------------------------------------------------------

function core.BNCreateMetadataUnsignedIntegerData(
		data
)
	local result = cdefs.C.BNCreateMetadataUnsignedIntegerData(data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataUnsignedIntegerListData
-- -------------------------------------------------------

function core.BNCreateMetadataUnsignedIntegerListData(
		data, 
		size
)
	local result = cdefs.C.BNCreateMetadataUnsignedIntegerListData(data, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateMetadataValueStore
-- -------------------------------------------------------

function core.BNCreateMetadataValueStore(
		keys, 
		values, 
		size
)
	local result = cdefs.C.BNCreateMetadataValueStore(keys, values, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateNamedType
-- -------------------------------------------------------

function core.BNCreateNamedType(
		cls, 
		id, 
		name
)
	local result = cdefs.C.BNCreateNamedType(cls, id, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateNamedTypeBuilder
-- -------------------------------------------------------

function core.BNCreateNamedTypeBuilder(
		cls, 
		id, 
		name
)
	local result = cdefs.C.BNCreateNamedTypeBuilder(cls, id, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateNamedTypeReference
-- -------------------------------------------------------

function core.BNCreateNamedTypeReference(
		nt, 
		width, 
		align, 
		cnst, 
		vltl
)
	local result = cdefs.C.BNCreateNamedTypeReference(nt, width, align, cnst, vltl)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateNamedTypeReferenceBuilder
-- -------------------------------------------------------

function core.BNCreateNamedTypeReferenceBuilder(
		nt, 
		width, 
		align, 
		cnst, 
		vltl
)
	local result = cdefs.C.BNCreateNamedTypeReferenceBuilder(nt, width, align, cnst, vltl)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateNamedTypeReferenceBuilderFromType
-- -------------------------------------------------------

function core.BNCreateNamedTypeReferenceBuilderFromType(
		view, 
		name
)
	local result = cdefs.C.BNCreateNamedTypeReferenceBuilderFromType(view, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateNamedTypeReferenceBuilderFromTypeAndId
-- -------------------------------------------------------

function core.BNCreateNamedTypeReferenceBuilderFromTypeAndId(
		id, 
		name, 
		type
)
	local result = cdefs.C.BNCreateNamedTypeReferenceBuilderFromTypeAndId(id, name, type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateNamedTypeReferenceBuilderWithBuilder
-- -------------------------------------------------------

function core.BNCreateNamedTypeReferenceBuilderWithBuilder(
		nt, 
		width, 
		align, 
		cnst, 
		vltl
)
	local result = cdefs.C.BNCreateNamedTypeReferenceBuilderWithBuilder(nt, width, align, cnst, vltl)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateNamedTypeReferenceFromType
-- -------------------------------------------------------

function core.BNCreateNamedTypeReferenceFromType(
		view, 
		name
)
	local result = cdefs.C.BNCreateNamedTypeReferenceFromType(view, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateNamedTypeReferenceFromTypeAndId
-- -------------------------------------------------------

function core.BNCreateNamedTypeReferenceFromTypeAndId(
		id, 
		name, 
		type
)
	local result = cdefs.C.BNCreateNamedTypeReferenceFromTypeAndId(id, name, type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreatePlatform
-- -------------------------------------------------------

function core.BNCreatePlatform(
		arch, 
		name
)
	local result = cdefs.C.BNCreatePlatform(arch, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreatePlatformWithTypes
-- -------------------------------------------------------

function core.BNCreatePlatformWithTypes(
		arch, 
		name, 
		typeFile, 
		includeDirs, 
		includeDirCount
)
	local result = cdefs.C.BNCreatePlatformWithTypes(arch, name, typeFile, includeDirs, includeDirCount)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreatePointerType
-- -------------------------------------------------------

function core.BNCreatePointerType(
		arch, 
		type, 
		cnst, 
		vltl, 
		refType
)
	local result = cdefs.C.BNCreatePointerType(arch, type, cnst, vltl, refType)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreatePointerTypeBuilder
-- -------------------------------------------------------

function core.BNCreatePointerTypeBuilder(
		arch, 
		type, 
		cnst, 
		vltl, 
		refType
)
	local result = cdefs.C.BNCreatePointerTypeBuilder(arch, type, cnst, vltl, refType)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreatePointerTypeBuilderOfWidth
-- -------------------------------------------------------

function core.BNCreatePointerTypeBuilderOfWidth(
		width, 
		type, 
		cnst, 
		vltl, 
		refType
)
	local result = cdefs.C.BNCreatePointerTypeBuilderOfWidth(width, type, cnst, vltl, refType)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreatePointerTypeOfWidth
-- -------------------------------------------------------

function core.BNCreatePointerTypeOfWidth(
		width, 
		type, 
		cnst, 
		vltl, 
		refType
)
	local result = cdefs.C.BNCreatePointerTypeOfWidth(width, type, cnst, vltl, refType)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateRelocationHandler
-- -------------------------------------------------------

function core.BNCreateRelocationHandler(
		handler
)
	local result = cdefs.C.BNCreateRelocationHandler(handler)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateReportCollection
-- -------------------------------------------------------

function core.BNCreateReportCollection(
)
	local result = cdefs.C.BNCreateReportCollection()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateRepositoryManager
-- -------------------------------------------------------

function core.BNCreateRepositoryManager(
		enabledPluginsPath
)
	local result = cdefs.C.BNCreateRepositoryManager(enabledPluginsPath)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateSaveSettings
-- -------------------------------------------------------

function core.BNCreateSaveSettings(
)
	local result = cdefs.C.BNCreateSaveSettings()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateScriptingProviderInstance
-- -------------------------------------------------------

function core.BNCreateScriptingProviderInstance(
		provider
)
	local result = cdefs.C.BNCreateScriptingProviderInstance(provider)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateSegment
-- -------------------------------------------------------

function core.BNCreateSegment(
		start, 
		length, 
		dataOffset, 
		dataLength, 
		flags, 
		autoDefined
)
	local result = cdefs.C.BNCreateSegment(start, length, dataOffset, dataLength, flags, autoDefined)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateSettings
-- -------------------------------------------------------

function core.BNCreateSettings(
		schemaId
)
	local result = cdefs.C.BNCreateSettings(schemaId)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateSnapshotedView
-- -------------------------------------------------------

function core.BNCreateSnapshotedView(
		data, 
		viewName
)
	return cdefs.C.BNCreateSnapshotedView(data, viewName)
end

-- -------------------------------------------------------
-- BNCreateSnapshotedViewWithProgress
-- -------------------------------------------------------

function core.BNCreateSnapshotedViewWithProgress(
		data, 
		viewName, 
		ctxt, 
		progress
)
	return cdefs.C.BNCreateSnapshotedViewWithProgress(data, viewName, ctxt, progress)
end

-- -------------------------------------------------------
-- BNCreateStructureBuilder
-- -------------------------------------------------------

function core.BNCreateStructureBuilder(
)
	local result = cdefs.C.BNCreateStructureBuilder()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateStructureBuilderFromStructure
-- -------------------------------------------------------

function core.BNCreateStructureBuilderFromStructure(
		s
)
	local result = cdefs.C.BNCreateStructureBuilderFromStructure(s)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateStructureBuilderWithOptions
-- -------------------------------------------------------

function core.BNCreateStructureBuilderWithOptions(
		type, 
		packed
)
	local result = cdefs.C.BNCreateStructureBuilderWithOptions(type, packed)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateStructureFromOffsetAccess
-- -------------------------------------------------------

function core.BNCreateStructureFromOffsetAccess(
		view, 
		name, 
		newMember
)
	local result = cdefs.C.BNCreateStructureFromOffsetAccess(view, name, newMember)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateStructureMemberFromAccess
-- -------------------------------------------------------

function core.BNCreateStructureMemberFromAccess(
		view, 
		name, 
		offset
)
	return cdefs.C.BNCreateStructureMemberFromAccess(view, name, offset)
end

-- -------------------------------------------------------
-- BNCreateStructureType
-- -------------------------------------------------------

function core.BNCreateStructureType(
		s
)
	local result = cdefs.C.BNCreateStructureType(s)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateStructureTypeBuilder
-- -------------------------------------------------------

function core.BNCreateStructureTypeBuilder(
		s
)
	local result = cdefs.C.BNCreateStructureTypeBuilder(s)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateStructureTypeBuilderWithBuilder
-- -------------------------------------------------------

function core.BNCreateStructureTypeBuilderWithBuilder(
		s
)
	local result = cdefs.C.BNCreateStructureTypeBuilderWithBuilder(s)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateSymbol
-- -------------------------------------------------------

function core.BNCreateSymbol(
		type, 
		shortName, 
		fullName, 
		rawName, 
		addr, 
		binding, 
		nameSpace, 
		ordinal
)
	local result = cdefs.C.BNCreateSymbol(type, shortName, fullName, rawName, addr, binding, nameSpace, ordinal)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateSymbolQueue
-- -------------------------------------------------------

function core.BNCreateSymbolQueue(
)
	local result = cdefs.C.BNCreateSymbolQueue()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateTag
-- -------------------------------------------------------

function core.BNCreateTag(
		type, 
		data
)
	local result = cdefs.C.BNCreateTag(type, data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateTagType
-- -------------------------------------------------------

function core.BNCreateTagType(
		view
)
	local result = cdefs.C.BNCreateTagType(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateTemporaryFile
-- -------------------------------------------------------

function core.BNCreateTemporaryFile(
)
	local result = cdefs.C.BNCreateTemporaryFile()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateTemporaryFileWithContents
-- -------------------------------------------------------

function core.BNCreateTemporaryFileWithContents(
		data
)
	local result = cdefs.C.BNCreateTemporaryFileWithContents(data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateTypeBuilderFromType
-- -------------------------------------------------------

function core.BNCreateTypeBuilderFromType(
		type
)
	local result = cdefs.C.BNCreateTypeBuilderFromType(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateUserFunction
-- -------------------------------------------------------

function core.BNCreateUserFunction(
		view, 
		platform, 
		addr
)
	local result = cdefs.C.BNCreateUserFunction(view, platform, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateUserStackVariable
-- -------------------------------------------------------

function core.BNCreateUserStackVariable(
		func, 
		offset, 
		type, 
		name
)
	return cdefs.C.BNCreateUserStackVariable(func, offset, type, name)
end

-- -------------------------------------------------------
-- BNCreateUserVariable
-- -------------------------------------------------------

function core.BNCreateUserVariable(
		func, 
		var, 
		type, 
		name, 
		ignoreDisjointUses
)
	return cdefs.C.BNCreateUserVariable(func, var, type, name, ignoreDisjointUses)
end

-- -------------------------------------------------------
-- BNCreateVoidType
-- -------------------------------------------------------

function core.BNCreateVoidType(
)
	local result = cdefs.C.BNCreateVoidType()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateVoidTypeBuilder
-- -------------------------------------------------------

function core.BNCreateVoidTypeBuilder(
)
	local result = cdefs.C.BNCreateVoidTypeBuilder()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateWebsocketProviderClient
-- -------------------------------------------------------

function core.BNCreateWebsocketProviderClient(
		provider
)
	local result = cdefs.C.BNCreateWebsocketProviderClient(provider)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateWideCharType
-- -------------------------------------------------------

function core.BNCreateWideCharType(
		width, 
		altName
)
	local result = cdefs.C.BNCreateWideCharType(width, altName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateWideCharTypeBuilder
-- -------------------------------------------------------

function core.BNCreateWideCharTypeBuilder(
		width, 
		altName
)
	local result = cdefs.C.BNCreateWideCharTypeBuilder(width, altName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNCreateWorkflow
-- -------------------------------------------------------

function core.BNCreateWorkflow(
		name
)
	local result = cdefs.C.BNCreateWorkflow(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDataBufferToBase64
-- -------------------------------------------------------

function core.BNDataBufferToBase64(
		buf
)
	local result = cdefs.C.BNDataBufferToBase64(buf)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNDataBufferToEscapedString
-- -------------------------------------------------------

function core.BNDataBufferToEscapedString(
		buf, 
		nullTerminates
)
	local result = cdefs.C.BNDataBufferToEscapedString(buf, nullTerminates)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNDatabaseHasGlobal
-- -------------------------------------------------------

function core.BNDatabaseHasGlobal(
		database, 
		key
)
	return cdefs.C.BNDatabaseHasGlobal(database, key)
end

-- -------------------------------------------------------
-- BNDeauthenticateEnterpriseServer
-- -------------------------------------------------------

function core.BNDeauthenticateEnterpriseServer(
)
	return cdefs.C.BNDeauthenticateEnterpriseServer()
end

-- -------------------------------------------------------
-- BNDecode
-- -------------------------------------------------------

function core.BNDecode(
		xform, 
		input, 
		output, 
		params, 
		paramCount
)
	return cdefs.C.BNDecode(xform, input, output, params, paramCount)
end

-- -------------------------------------------------------
-- BNDecodeBase64
-- -------------------------------------------------------

function core.BNDecodeBase64(
		str
)
	local result = cdefs.C.BNDecodeBase64(str)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDecodeEscapedString
-- -------------------------------------------------------

function core.BNDecodeEscapedString(
		str
)
	local result = cdefs.C.BNDecodeEscapedString(str)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDefineAnalysisType
-- -------------------------------------------------------

function core.BNDefineAnalysisType(
		view, 
		id, 
		defaultName, 
		type
)
	return cdefs.C.BNDefineAnalysisType(view, id, defaultName, type)
end

-- -------------------------------------------------------
-- BNDefineAnalysisTypes
-- -------------------------------------------------------

function core.BNDefineAnalysisTypes(
		view, 
		types, 
		count, 
		progress, 
		progressContext
)
	return cdefs.C.BNDefineAnalysisTypes(view, types, count, progress, progressContext)
end

-- -------------------------------------------------------
-- BNDefineAutoSymbol
-- -------------------------------------------------------

function core.BNDefineAutoSymbol(
		view, 
		sym
)
	return cdefs.C.BNDefineAutoSymbol(view, sym)
end

-- -------------------------------------------------------
-- BNDefineAutoSymbolAndVariableOrFunction
-- -------------------------------------------------------

function core.BNDefineAutoSymbolAndVariableOrFunction(
		view, 
		platform, 
		sym, 
		type
)
	local result = cdefs.C.BNDefineAutoSymbolAndVariableOrFunction(view, platform, sym, type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDefineDataVariable
-- -------------------------------------------------------

function core.BNDefineDataVariable(
		view, 
		addr, 
		type
)
	return cdefs.C.BNDefineDataVariable(view, addr, type)
end

-- -------------------------------------------------------
-- BNDefineImportedFunction
-- -------------------------------------------------------

function core.BNDefineImportedFunction(
		view, 
		importAddressSym, 
		func, 
		type
)
	return cdefs.C.BNDefineImportedFunction(view, importAddressSym, func, type)
end

-- -------------------------------------------------------
-- BNDefineRelocation
-- -------------------------------------------------------

function core.BNDefineRelocation(
		view, 
		arch, 
		info, 
		target, 
		reloc
)
	return cdefs.C.BNDefineRelocation(view, arch, info, target, reloc)
end

-- -------------------------------------------------------
-- BNDefineSymbolRelocation
-- -------------------------------------------------------

function core.BNDefineSymbolRelocation(
		view, 
		arch, 
		info, 
		target, 
		reloc
)
	return cdefs.C.BNDefineSymbolRelocation(view, arch, info, target, reloc)
end

-- -------------------------------------------------------
-- BNDefineUserAnalysisType
-- -------------------------------------------------------

function core.BNDefineUserAnalysisType(
		view, 
		name, 
		type
)
	return cdefs.C.BNDefineUserAnalysisType(view, name, type)
end

-- -------------------------------------------------------
-- BNDefineUserAnalysisTypes
-- -------------------------------------------------------

function core.BNDefineUserAnalysisTypes(
		view, 
		types, 
		count, 
		progress, 
		progressContext
)
	return cdefs.C.BNDefineUserAnalysisTypes(view, types, count, progress, progressContext)
end

-- -------------------------------------------------------
-- BNDefineUserDataVariable
-- -------------------------------------------------------

function core.BNDefineUserDataVariable(
		view, 
		addr, 
		type
)
	return cdefs.C.BNDefineUserDataVariable(view, addr, type)
end

-- -------------------------------------------------------
-- BNDefineUserSymbol
-- -------------------------------------------------------

function core.BNDefineUserSymbol(
		view, 
		sym
)
	return cdefs.C.BNDefineUserSymbol(view, sym)
end

-- -------------------------------------------------------
-- BNDeleteAutoStackVariable
-- -------------------------------------------------------

function core.BNDeleteAutoStackVariable(
		func, 
		offset
)
	return cdefs.C.BNDeleteAutoStackVariable(func, offset)
end

-- -------------------------------------------------------
-- BNDeleteDirectory
-- -------------------------------------------------------

function core.BNDeleteDirectory(
		path, 
		contentsOnly
)
	return cdefs.C.BNDeleteDirectory(path, contentsOnly)
end

-- -------------------------------------------------------
-- BNDeleteFile
-- -------------------------------------------------------

function core.BNDeleteFile(
		path
)
	return cdefs.C.BNDeleteFile(path)
end

-- -------------------------------------------------------
-- BNDeleteSecretsProviderData
-- -------------------------------------------------------

function core.BNDeleteSecretsProviderData(
		provider, 
		key
)
	return cdefs.C.BNDeleteSecretsProviderData(provider, key)
end

-- -------------------------------------------------------
-- BNDeleteUserStackVariable
-- -------------------------------------------------------

function core.BNDeleteUserStackVariable(
		func, 
		offset
)
	return cdefs.C.BNDeleteUserStackVariable(func, offset)
end

-- -------------------------------------------------------
-- BNDeleteUserVariable
-- -------------------------------------------------------

function core.BNDeleteUserVariable(
		func, 
		var
)
	return cdefs.C.BNDeleteUserVariable(func, var)
end

-- -------------------------------------------------------
-- BNDemangleGNU3
-- -------------------------------------------------------

function core.BNDemangleGNU3(
		arch, 
		mangledName, 
		outType, 
		outVarName, 
		outVarNameElements, 
		simplify
)
	return cdefs.C.BNDemangleGNU3(arch, mangledName, outType, outVarName, outVarNameElements, simplify)
end

-- -------------------------------------------------------
-- BNDemangleGNU3WithOptions
-- -------------------------------------------------------

function core.BNDemangleGNU3WithOptions(
		arch, 
		mangledName, 
		outType, 
		outVarName, 
		outVarNameElements, 
		view
)
	return cdefs.C.BNDemangleGNU3WithOptions(arch, mangledName, outType, outVarName, outVarNameElements, view)
end

-- -------------------------------------------------------
-- BNDemangleMS
-- -------------------------------------------------------

function core.BNDemangleMS(
		arch, 
		mangledName, 
		outType, 
		outVarName, 
		outVarNameElements, 
		simplify
)
	return cdefs.C.BNDemangleMS(arch, mangledName, outType, outVarName, outVarNameElements, simplify)
end

-- -------------------------------------------------------
-- BNDemangleMSPlatform
-- -------------------------------------------------------

function core.BNDemangleMSPlatform(
		platform, 
		mangledName, 
		outType, 
		outVarName, 
		outVarNameElements, 
		simplify
)
	return cdefs.C.BNDemangleMSPlatform(platform, mangledName, outType, outVarName, outVarNameElements, simplify)
end

-- -------------------------------------------------------
-- BNDemangleMSWithOptions
-- -------------------------------------------------------

function core.BNDemangleMSWithOptions(
		arch, 
		mangledName, 
		outType, 
		outVarName, 
		outVarNameElements, 
		view
)
	return cdefs.C.BNDemangleMSWithOptions(arch, mangledName, outType, outVarName, outVarNameElements, view)
end

-- -------------------------------------------------------
-- BNDeserializeSettings
-- -------------------------------------------------------

function core.BNDeserializeSettings(
		settings, 
		contents, 
		view, 
		scope
)
	return cdefs.C.BNDeserializeSettings(settings, contents, view, scope)
end

-- -------------------------------------------------------
-- BNDestroySymbolQueue
-- -------------------------------------------------------

function core.BNDestroySymbolQueue(
		queue
)
	return cdefs.C.BNDestroySymbolQueue(queue)
end

-- -------------------------------------------------------
-- BNDisablePlugins
-- -------------------------------------------------------

function core.BNDisablePlugins(
)
	return cdefs.C.BNDisablePlugins()
end

-- -------------------------------------------------------
-- BNDisassemblyTextRendererHasDataFlow
-- -------------------------------------------------------

function core.BNDisassemblyTextRendererHasDataFlow(
		renderer
)
	return cdefs.C.BNDisassemblyTextRendererHasDataFlow(renderer)
end

-- -------------------------------------------------------
-- BNDisassemblyTextRendererWrapComment
-- -------------------------------------------------------

function core.BNDisassemblyTextRendererWrapComment(
		renderer, 
		inLine, 
		outLineCount, 
		comment, 
		hasAutoAnnotations, 
		leadingSpaces, 
		indentSpaces
)
	local result = cdefs.C.BNDisassemblyTextRendererWrapComment(renderer, inLine, outLineCount, comment, hasAutoAnnotations, leadingSpaces, indentSpaces)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDisconnectWebsocketClient
-- -------------------------------------------------------

function core.BNDisconnectWebsocketClient(
		client
)
	return cdefs.C.BNDisconnectWebsocketClient(client)
end

-- -------------------------------------------------------
-- BNDuplicateDataBuffer
-- -------------------------------------------------------

function core.BNDuplicateDataBuffer(
		buf
)
	local result = cdefs.C.BNDuplicateDataBuffer(buf)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDuplicateDisassemblySettings
-- -------------------------------------------------------

function core.BNDuplicateDisassemblySettings(
		settings
)
	local result = cdefs.C.BNDuplicateDisassemblySettings(settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDuplicateEnumerationBuilder
-- -------------------------------------------------------

function core.BNDuplicateEnumerationBuilder(
		e
)
	local result = cdefs.C.BNDuplicateEnumerationBuilder(e)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDuplicateLinearViewCursor
-- -------------------------------------------------------

function core.BNDuplicateLinearViewCursor(
		cursor
)
	local result = cdefs.C.BNDuplicateLinearViewCursor(cursor)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDuplicateStructureBuilder
-- -------------------------------------------------------

function core.BNDuplicateStructureBuilder(
		s
)
	local result = cdefs.C.BNDuplicateStructureBuilder(s)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDuplicateType
-- -------------------------------------------------------

function core.BNDuplicateType(
		type
)
	local result = cdefs.C.BNDuplicateType(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDuplicateTypeBuilder
-- -------------------------------------------------------

function core.BNDuplicateTypeBuilder(
		type
)
	local result = cdefs.C.BNDuplicateTypeBuilder(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNDuplicateTypeLibrary
-- -------------------------------------------------------

function core.BNDuplicateTypeLibrary(
		lib
)
	local result = cdefs.C.BNDuplicateTypeLibrary(lib)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNEncode
-- -------------------------------------------------------

function core.BNEncode(
		xform, 
		input, 
		output, 
		params, 
		paramCount
)
	return cdefs.C.BNEncode(xform, input, output, params, paramCount)
end

-- -------------------------------------------------------
-- BNEndBulkModifySymbols
-- -------------------------------------------------------

function core.BNEndBulkModifySymbols(
		view
)
	return cdefs.C.BNEndBulkModifySymbols(view)
end

-- -------------------------------------------------------
-- BNEndKeyValueStoreNamespace
-- -------------------------------------------------------

function core.BNEndKeyValueStoreNamespace(
		store
)
	return cdefs.C.BNEndKeyValueStoreNamespace(store)
end

-- -------------------------------------------------------
-- BNEscapeTypeName
-- -------------------------------------------------------

function core.BNEscapeTypeName(
		name, 
		escaping
)
	local result = cdefs.C.BNEscapeTypeName(name, escaping)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNExecuteMainThreadAction
-- -------------------------------------------------------

function core.BNExecuteMainThreadAction(
		action
)
	return cdefs.C.BNExecuteMainThreadAction(action)
end

-- -------------------------------------------------------
-- BNExecuteOnMainThread
-- -------------------------------------------------------

function core.BNExecuteOnMainThread(
		ctxt, 
		func
)
	local result = cdefs.C.BNExecuteOnMainThread(ctxt, func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNExecuteOnMainThreadAndWait
-- -------------------------------------------------------

function core.BNExecuteOnMainThreadAndWait(
		ctxt, 
		func
)
	return cdefs.C.BNExecuteOnMainThreadAndWait(ctxt, func)
end

-- -------------------------------------------------------
-- BNExecuteScriptInput
-- -------------------------------------------------------

function core.BNExecuteScriptInput(
		instance, 
		input
)
	return cdefs.C.BNExecuteScriptInput(instance, input)
end

-- -------------------------------------------------------
-- BNExecuteScriptInputFromFilename
-- -------------------------------------------------------

function core.BNExecuteScriptInputFromFilename(
		instance, 
		filename
)
	return cdefs.C.BNExecuteScriptInputFromFilename(instance, filename)
end

-- -------------------------------------------------------
-- BNExecuteWorkerProcess
-- -------------------------------------------------------

function core.BNExecuteWorkerProcess(
		path, 
		args, 
		input, 
		output, 
		error, 
		stdoutIsText, 
		stderrIsText
)
	return cdefs.C.BNExecuteWorkerProcess(path, args, input, output, error, stdoutIsText, stderrIsText)
end

-- -------------------------------------------------------
-- BNFileMetadataGetSessionId
-- -------------------------------------------------------

function core.BNFileMetadataGetSessionId(
		file
)
	return cdefs.C.BNFileMetadataGetSessionId(file)
end

-- -------------------------------------------------------
-- BNFileSize
-- -------------------------------------------------------

function core.BNFileSize(
		path, 
		size
)
	return cdefs.C.BNFileSize(path, size)
end

-- -------------------------------------------------------
-- BNFinalizeArchitectureHook
-- -------------------------------------------------------

function core.BNFinalizeArchitectureHook(
		base
)
	return cdefs.C.BNFinalizeArchitectureHook(base)
end

-- -------------------------------------------------------
-- BNFinalizeEnumerationBuilder
-- -------------------------------------------------------

function core.BNFinalizeEnumerationBuilder(
		e
)
	local result = cdefs.C.BNFinalizeEnumerationBuilder(e)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNFinalizeHighLevelILFunction
-- -------------------------------------------------------

function core.BNFinalizeHighLevelILFunction(
		func
)
	return cdefs.C.BNFinalizeHighLevelILFunction(func)
end

-- -------------------------------------------------------
-- BNFinalizeLowLevelILFunction
-- -------------------------------------------------------

function core.BNFinalizeLowLevelILFunction(
		func
)
	return cdefs.C.BNFinalizeLowLevelILFunction(func)
end

-- -------------------------------------------------------
-- BNFinalizeMediumLevelILFunction
-- -------------------------------------------------------

function core.BNFinalizeMediumLevelILFunction(
		func
)
	return cdefs.C.BNFinalizeMediumLevelILFunction(func)
end

-- -------------------------------------------------------
-- BNFinalizeNamedTypeReferenceBuilder
-- -------------------------------------------------------

function core.BNFinalizeNamedTypeReferenceBuilder(
		s
)
	local result = cdefs.C.BNFinalizeNamedTypeReferenceBuilder(s)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNFinalizeStructureBuilder
-- -------------------------------------------------------

function core.BNFinalizeStructureBuilder(
		s
)
	local result = cdefs.C.BNFinalizeStructureBuilder(s)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNFinalizeTypeBuilder
-- -------------------------------------------------------

function core.BNFinalizeTypeBuilder(
		type
)
	local result = cdefs.C.BNFinalizeTypeBuilder(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNFinalizeTypeLibrary
-- -------------------------------------------------------

function core.BNFinalizeTypeLibrary(
		lib
)
	return cdefs.C.BNFinalizeTypeLibrary(lib)
end

-- -------------------------------------------------------
-- BNFindAllConstantWithProgress
-- -------------------------------------------------------

function core.BNFindAllConstantWithProgress(
		view, 
		start, 
		end_, 
		constant, 
		settings, 
		graph, 
		ctxt, 
		progress, 
		matchCtxt, 
		matchCallback
)
	return cdefs.C.BNFindAllConstantWithProgress(view, start, end_, constant, settings, graph, ctxt, progress, matchCtxt, matchCallback)
end

-- -------------------------------------------------------
-- BNFindAllDataWithProgress
-- -------------------------------------------------------

function core.BNFindAllDataWithProgress(
		view, 
		start, 
		end_, 
		data, 
		flags, 
		ctxt, 
		progress, 
		matchCtxt, 
		matchCallback
)
	return cdefs.C.BNFindAllDataWithProgress(view, start, end_, data, flags, ctxt, progress, matchCtxt, matchCallback)
end

-- -------------------------------------------------------
-- BNFindAllTextWithProgress
-- -------------------------------------------------------

function core.BNFindAllTextWithProgress(
		view, 
		start, 
		end_, 
		data, 
		settings, 
		flags, 
		graph, 
		ctxt, 
		progress, 
		matchCtxt, 
		matchCallback
)
	return cdefs.C.BNFindAllTextWithProgress(view, start, end_, data, settings, flags, graph, ctxt, progress, matchCtxt, matchCallback)
end

-- -------------------------------------------------------
-- BNFindNextConstant
-- -------------------------------------------------------

function core.BNFindNextConstant(
		view, 
		start, 
		constant, 
		result, 
		settings, 
		graph
)
	return cdefs.C.BNFindNextConstant(view, start, constant, result, settings, graph)
end

-- -------------------------------------------------------
-- BNFindNextConstantWithProgress
-- -------------------------------------------------------

function core.BNFindNextConstantWithProgress(
		view, 
		start, 
		end_, 
		constant, 
		result, 
		settings, 
		graph, 
		ctxt, 
		progress
)
	return cdefs.C.BNFindNextConstantWithProgress(view, start, end_, constant, result, settings, graph, ctxt, progress)
end

-- -------------------------------------------------------
-- BNFindNextData
-- -------------------------------------------------------

function core.BNFindNextData(
		view, 
		start, 
		data, 
		result, 
		flags
)
	return cdefs.C.BNFindNextData(view, start, data, result, flags)
end

-- -------------------------------------------------------
-- BNFindNextDataWithProgress
-- -------------------------------------------------------

function core.BNFindNextDataWithProgress(
		view, 
		start, 
		end_, 
		data, 
		result, 
		flags, 
		ctxt, 
		progress
)
	return cdefs.C.BNFindNextDataWithProgress(view, start, end_, data, result, flags, ctxt, progress)
end

-- -------------------------------------------------------
-- BNFindNextText
-- -------------------------------------------------------

function core.BNFindNextText(
		view, 
		start, 
		data, 
		result, 
		settings, 
		flags, 
		graph
)
	return cdefs.C.BNFindNextText(view, start, data, result, settings, flags, graph)
end

-- -------------------------------------------------------
-- BNFindNextTextWithProgress
-- -------------------------------------------------------

function core.BNFindNextTextWithProgress(
		view, 
		start, 
		end_, 
		data, 
		result, 
		settings, 
		flags, 
		graph, 
		ctxt, 
		progress
)
	return cdefs.C.BNFindNextTextWithProgress(view, start, end_, data, result, settings, flags, graph, ctxt, progress)
end

-- -------------------------------------------------------
-- BNFinishBackgroundTask
-- -------------------------------------------------------

function core.BNFinishBackgroundTask(
		task
)
	return cdefs.C.BNFinishBackgroundTask(task)
end

-- -------------------------------------------------------
-- BNFinishPrepareForLayout
-- -------------------------------------------------------

function core.BNFinishPrepareForLayout(
		graph
)
	return cdefs.C.BNFinishPrepareForLayout(graph)
end

-- -------------------------------------------------------
-- BNFlowGraphHasNodes
-- -------------------------------------------------------

function core.BNFlowGraphHasNodes(
		graph
)
	return cdefs.C.BNFlowGraphHasNodes(graph)
end

-- -------------------------------------------------------
-- BNFlowGraphHasUpdates
-- -------------------------------------------------------

function core.BNFlowGraphHasUpdates(
		graph
)
	return cdefs.C.BNFlowGraphHasUpdates(graph)
end

-- -------------------------------------------------------
-- BNFlowGraphUpdateQueryMode
-- -------------------------------------------------------

function core.BNFlowGraphUpdateQueryMode(
		graph
)
	return cdefs.C.BNFlowGraphUpdateQueryMode(graph)
end

-- -------------------------------------------------------
-- BNFormatTypeParserParseErrors
-- -------------------------------------------------------

function core.BNFormatTypeParserParseErrors(
		errors, 
		count
)
	local result = cdefs.C.BNFormatTypeParserParseErrors(errors, count)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNFreeActivity
-- -------------------------------------------------------

function core.BNFreeActivity(
		activity
)
	return cdefs.C.BNFreeActivity(activity)
end

-- -------------------------------------------------------
-- BNFreeAddressList
-- -------------------------------------------------------

function core.BNFreeAddressList(
		addrs
)
	return cdefs.C.BNFreeAddressList(addrs)
end

-- -------------------------------------------------------
-- BNFreeAddressRanges
-- -------------------------------------------------------

function core.BNFreeAddressRanges(
		ranges
)
	return cdefs.C.BNFreeAddressRanges(ranges)
end

-- -------------------------------------------------------
-- BNFreeAnalysisCompletionEvent
-- -------------------------------------------------------

function core.BNFreeAnalysisCompletionEvent(
		event
)
	return cdefs.C.BNFreeAnalysisCompletionEvent(event)
end

-- -------------------------------------------------------
-- BNFreeAnalysisContext
-- -------------------------------------------------------

function core.BNFreeAnalysisContext(
		analysisContext
)
	return cdefs.C.BNFreeAnalysisContext(analysisContext)
end

-- -------------------------------------------------------
-- BNFreeAnalysisInfo
-- -------------------------------------------------------

function core.BNFreeAnalysisInfo(
		info
)
	return cdefs.C.BNFreeAnalysisInfo(info)
end

-- -------------------------------------------------------
-- BNFreeAnalysisPerformanceInfo
-- -------------------------------------------------------

function core.BNFreeAnalysisPerformanceInfo(
		info, 
		count
)
	return cdefs.C.BNFreeAnalysisPerformanceInfo(info, count)
end

-- -------------------------------------------------------
-- BNFreeArchitectureList
-- -------------------------------------------------------

function core.BNFreeArchitectureList(
		archs
)
	return cdefs.C.BNFreeArchitectureList(archs)
end

-- -------------------------------------------------------
-- BNFreeBackgroundTask
-- -------------------------------------------------------

function core.BNFreeBackgroundTask(
		task
)
	return cdefs.C.BNFreeBackgroundTask(task)
end

-- -------------------------------------------------------
-- BNFreeBackgroundTaskList
-- -------------------------------------------------------

function core.BNFreeBackgroundTaskList(
		tasks, 
		count
)
	return cdefs.C.BNFreeBackgroundTaskList(tasks, count)
end

-- -------------------------------------------------------
-- BNFreeBaseStructureList
-- -------------------------------------------------------

function core.BNFreeBaseStructureList(
		bases, 
		count
)
	return cdefs.C.BNFreeBaseStructureList(bases, count)
end

-- -------------------------------------------------------
-- BNFreeBasicBlock
-- -------------------------------------------------------

function core.BNFreeBasicBlock(
		block
)
	return cdefs.C.BNFreeBasicBlock(block)
end

-- -------------------------------------------------------
-- BNFreeBasicBlockEdgeList
-- -------------------------------------------------------

function core.BNFreeBasicBlockEdgeList(
		edges, 
		count
)
	return cdefs.C.BNFreeBasicBlockEdgeList(edges, count)
end

-- -------------------------------------------------------
-- BNFreeBasicBlockList
-- -------------------------------------------------------

function core.BNFreeBasicBlockList(
		blocks, 
		count
)
	return cdefs.C.BNFreeBasicBlockList(blocks, count)
end

-- -------------------------------------------------------
-- BNFreeBinaryReader
-- -------------------------------------------------------

function core.BNFreeBinaryReader(
		stream
)
	return cdefs.C.BNFreeBinaryReader(stream)
end

-- -------------------------------------------------------
-- BNFreeBinaryView
-- -------------------------------------------------------

function core.BNFreeBinaryView(
		view
)
	return cdefs.C.BNFreeBinaryView(view)
end

-- -------------------------------------------------------
-- BNFreeBinaryViewTypeList
-- -------------------------------------------------------

function core.BNFreeBinaryViewTypeList(
		types
)
	return cdefs.C.BNFreeBinaryViewTypeList(types)
end

-- -------------------------------------------------------
-- BNFreeBinaryWriter
-- -------------------------------------------------------

function core.BNFreeBinaryWriter(
		stream
)
	return cdefs.C.BNFreeBinaryWriter(stream)
end

-- -------------------------------------------------------
-- BNFreeCallingConvention
-- -------------------------------------------------------

function core.BNFreeCallingConvention(
		cc
)
	return cdefs.C.BNFreeCallingConvention(cc)
end

-- -------------------------------------------------------
-- BNFreeCallingConventionList
-- -------------------------------------------------------

function core.BNFreeCallingConventionList(
		list, 
		count
)
	return cdefs.C.BNFreeCallingConventionList(list, count)
end

-- -------------------------------------------------------
-- BNFreeCodeReferences
-- -------------------------------------------------------

function core.BNFreeCodeReferences(
		refs, 
		count
)
	return cdefs.C.BNFreeCodeReferences(refs, count)
end

-- -------------------------------------------------------
-- BNFreeComponent
-- -------------------------------------------------------

function core.BNFreeComponent(
		component
)
	return cdefs.C.BNFreeComponent(component)
end

-- -------------------------------------------------------
-- BNFreeComponents
-- -------------------------------------------------------

function core.BNFreeComponents(
		components, 
		count
)
	return cdefs.C.BNFreeComponents(components, count)
end

-- -------------------------------------------------------
-- BNFreeConstantReferenceList
-- -------------------------------------------------------

function core.BNFreeConstantReferenceList(
		refs
)
	return cdefs.C.BNFreeConstantReferenceList(refs)
end

-- -------------------------------------------------------
-- BNFreeDataBuffer
-- -------------------------------------------------------

function core.BNFreeDataBuffer(
		buf
)
	return cdefs.C.BNFreeDataBuffer(buf)
end

-- -------------------------------------------------------
-- BNFreeDataReferences
-- -------------------------------------------------------

function core.BNFreeDataReferences(
		refs
)
	return cdefs.C.BNFreeDataReferences(refs)
end

-- -------------------------------------------------------
-- BNFreeDataRenderer
-- -------------------------------------------------------

function core.BNFreeDataRenderer(
		renderer
)
	return cdefs.C.BNFreeDataRenderer(renderer)
end

-- -------------------------------------------------------
-- BNFreeDataVariable
-- -------------------------------------------------------

function core.BNFreeDataVariable(
		var
)
	return cdefs.C.BNFreeDataVariable(var)
end

-- -------------------------------------------------------
-- BNFreeDataVariableAndName
-- -------------------------------------------------------

function core.BNFreeDataVariableAndName(
		var
)
	return cdefs.C.BNFreeDataVariableAndName(var)
end

-- -------------------------------------------------------
-- BNFreeDataVariableAndNameAndDebugParserList
-- -------------------------------------------------------

function core.BNFreeDataVariableAndNameAndDebugParserList(
		vars, 
		count
)
	return cdefs.C.BNFreeDataVariableAndNameAndDebugParserList(vars, count)
end

-- -------------------------------------------------------
-- BNFreeDataVariables
-- -------------------------------------------------------

function core.BNFreeDataVariables(
		vars, 
		count
)
	return cdefs.C.BNFreeDataVariables(vars, count)
end

-- -------------------------------------------------------
-- BNFreeDataVariablesAndName
-- -------------------------------------------------------

function core.BNFreeDataVariablesAndName(
		vars, 
		count
)
	return cdefs.C.BNFreeDataVariablesAndName(vars, count)
end

-- -------------------------------------------------------
-- BNFreeDatabase
-- -------------------------------------------------------

function core.BNFreeDatabase(
		database
)
	return cdefs.C.BNFreeDatabase(database)
end

-- -------------------------------------------------------
-- BNFreeDebugFunctions
-- -------------------------------------------------------

function core.BNFreeDebugFunctions(
		functions, 
		count
)
	return cdefs.C.BNFreeDebugFunctions(functions, count)
end

-- -------------------------------------------------------
-- BNFreeDebugInfoParserList
-- -------------------------------------------------------

function core.BNFreeDebugInfoParserList(
		parsers, 
		count
)
	return cdefs.C.BNFreeDebugInfoParserList(parsers, count)
end

-- -------------------------------------------------------
-- BNFreeDebugInfoParserReference
-- -------------------------------------------------------

function core.BNFreeDebugInfoParserReference(
		parser
)
	return cdefs.C.BNFreeDebugInfoParserReference(parser)
end

-- -------------------------------------------------------
-- BNFreeDebugInfoReference
-- -------------------------------------------------------

function core.BNFreeDebugInfoReference(
		debugInfo
)
	return cdefs.C.BNFreeDebugInfoReference(debugInfo)
end

-- -------------------------------------------------------
-- BNFreeDebugTypes
-- -------------------------------------------------------

function core.BNFreeDebugTypes(
		types, 
		count
)
	return cdefs.C.BNFreeDebugTypes(types, count)
end

-- -------------------------------------------------------
-- BNFreeDemangledName
-- -------------------------------------------------------

function core.BNFreeDemangledName(
		name, 
		nameElements
)
	return cdefs.C.BNFreeDemangledName(name, nameElements)
end

-- -------------------------------------------------------
-- BNFreeDisassemblySettings
-- -------------------------------------------------------

function core.BNFreeDisassemblySettings(
		settings
)
	return cdefs.C.BNFreeDisassemblySettings(settings)
end

-- -------------------------------------------------------
-- BNFreeDisassemblyTextLines
-- -------------------------------------------------------

function core.BNFreeDisassemblyTextLines(
		lines, 
		count
)
	return cdefs.C.BNFreeDisassemblyTextLines(lines, count)
end

-- -------------------------------------------------------
-- BNFreeDisassemblyTextRenderer
-- -------------------------------------------------------

function core.BNFreeDisassemblyTextRenderer(
		renderer
)
	return cdefs.C.BNFreeDisassemblyTextRenderer(renderer)
end

-- -------------------------------------------------------
-- BNFreeDownloadInstance
-- -------------------------------------------------------

function core.BNFreeDownloadInstance(
		instance
)
	return cdefs.C.BNFreeDownloadInstance(instance)
end

-- -------------------------------------------------------
-- BNFreeDownloadInstanceResponse
-- -------------------------------------------------------

function core.BNFreeDownloadInstanceResponse(
		response
)
	return cdefs.C.BNFreeDownloadInstanceResponse(response)
end

-- -------------------------------------------------------
-- BNFreeDownloadProviderList
-- -------------------------------------------------------

function core.BNFreeDownloadProviderList(
		providers
)
	return cdefs.C.BNFreeDownloadProviderList(providers)
end

-- -------------------------------------------------------
-- BNFreeEnumeration
-- -------------------------------------------------------

function core.BNFreeEnumeration(
		e
)
	return cdefs.C.BNFreeEnumeration(e)
end

-- -------------------------------------------------------
-- BNFreeEnumerationBuilder
-- -------------------------------------------------------

function core.BNFreeEnumerationBuilder(
		e
)
	return cdefs.C.BNFreeEnumerationBuilder(e)
end

-- -------------------------------------------------------
-- BNFreeEnumerationMemberList
-- -------------------------------------------------------

function core.BNFreeEnumerationMemberList(
		members, 
		count
)
	return cdefs.C.BNFreeEnumerationMemberList(members, count)
end

-- -------------------------------------------------------
-- BNFreeFileMetadata
-- -------------------------------------------------------

function core.BNFreeFileMetadata(
		file
)
	return cdefs.C.BNFreeFileMetadata(file)
end

-- -------------------------------------------------------
-- BNFreeFlagConditionsForSemanticFlagGroup
-- -------------------------------------------------------

function core.BNFreeFlagConditionsForSemanticFlagGroup(
		conditions
)
	return cdefs.C.BNFreeFlagConditionsForSemanticFlagGroup(conditions)
end

-- -------------------------------------------------------
-- BNFreeFlowGraph
-- -------------------------------------------------------

function core.BNFreeFlowGraph(
		graph
)
	return cdefs.C.BNFreeFlowGraph(graph)
end

-- -------------------------------------------------------
-- BNFreeFlowGraphLayoutRequest
-- -------------------------------------------------------

function core.BNFreeFlowGraphLayoutRequest(
		layout
)
	return cdefs.C.BNFreeFlowGraphLayoutRequest(layout)
end

-- -------------------------------------------------------
-- BNFreeFlowGraphNode
-- -------------------------------------------------------

function core.BNFreeFlowGraphNode(
		node
)
	return cdefs.C.BNFreeFlowGraphNode(node)
end

-- -------------------------------------------------------
-- BNFreeFlowGraphNodeEdgeList
-- -------------------------------------------------------

function core.BNFreeFlowGraphNodeEdgeList(
		edges, 
		count
)
	return cdefs.C.BNFreeFlowGraphNodeEdgeList(edges, count)
end

-- -------------------------------------------------------
-- BNFreeFlowGraphNodeList
-- -------------------------------------------------------

function core.BNFreeFlowGraphNodeList(
		nodes, 
		count
)
	return cdefs.C.BNFreeFlowGraphNodeList(nodes, count)
end

-- -------------------------------------------------------
-- BNFreeFormInputResults
-- -------------------------------------------------------

function core.BNFreeFormInputResults(
		fields, 
		count
)
	return cdefs.C.BNFreeFormInputResults(fields, count)
end

-- -------------------------------------------------------
-- BNFreeFunction
-- -------------------------------------------------------

function core.BNFreeFunction(
		func
)
	return cdefs.C.BNFreeFunction(func)
end

-- -------------------------------------------------------
-- BNFreeFunctionList
-- -------------------------------------------------------

function core.BNFreeFunctionList(
		funcs, 
		count
)
	return cdefs.C.BNFreeFunctionList(funcs, count)
end

-- -------------------------------------------------------
-- BNFreeHighLevelILFunction
-- -------------------------------------------------------

function core.BNFreeHighLevelILFunction(
		func
)
	return cdefs.C.BNFreeHighLevelILFunction(func)
end

-- -------------------------------------------------------
-- BNFreeILBranchDependenceList
-- -------------------------------------------------------

function core.BNFreeILBranchDependenceList(
		branches
)
	return cdefs.C.BNFreeILBranchDependenceList(branches)
end

-- -------------------------------------------------------
-- BNFreeILInstructionList
-- -------------------------------------------------------

function core.BNFreeILInstructionList(
		list
)
	return cdefs.C.BNFreeILInstructionList(list)
end

-- -------------------------------------------------------
-- BNFreeILReferences
-- -------------------------------------------------------

function core.BNFreeILReferences(
		refs, 
		count
)
	return cdefs.C.BNFreeILReferences(refs, count)
end

-- -------------------------------------------------------
-- BNFreeIndirectBranchList
-- -------------------------------------------------------

function core.BNFreeIndirectBranchList(
		branches
)
	return cdefs.C.BNFreeIndirectBranchList(branches)
end

-- -------------------------------------------------------
-- BNFreeInheritedStructureMemberList
-- -------------------------------------------------------

function core.BNFreeInheritedStructureMemberList(
		members, 
		count
)
	return cdefs.C.BNFreeInheritedStructureMemberList(members, count)
end

-- -------------------------------------------------------
-- BNFreeInstructionText
-- -------------------------------------------------------

function core.BNFreeInstructionText(
		tokens, 
		count
)
	return cdefs.C.BNFreeInstructionText(tokens, count)
end

-- -------------------------------------------------------
-- BNFreeInstructionTextLines
-- -------------------------------------------------------

function core.BNFreeInstructionTextLines(
		lines, 
		count
)
	return cdefs.C.BNFreeInstructionTextLines(lines, count)
end

-- -------------------------------------------------------
-- BNFreeKeyValueStore
-- -------------------------------------------------------

function core.BNFreeKeyValueStore(
		store
)
	return cdefs.C.BNFreeKeyValueStore(store)
end

-- -------------------------------------------------------
-- BNFreeLLILVariableVersionList
-- -------------------------------------------------------

function core.BNFreeLLILVariableVersionList(
		versions
)
	return cdefs.C.BNFreeLLILVariableVersionList(versions)
end

-- -------------------------------------------------------
-- BNFreeLLILVariablesList
-- -------------------------------------------------------

function core.BNFreeLLILVariablesList(
		vars
)
	return cdefs.C.BNFreeLLILVariablesList(vars)
end

-- -------------------------------------------------------
-- BNFreeLanguageRepresentationFunction
-- -------------------------------------------------------

function core.BNFreeLanguageRepresentationFunction(
		func
)
	return cdefs.C.BNFreeLanguageRepresentationFunction(func)
end

-- -------------------------------------------------------
-- BNFreeLinearDisassemblyLines
-- -------------------------------------------------------

function core.BNFreeLinearDisassemblyLines(
		lines, 
		count
)
	return cdefs.C.BNFreeLinearDisassemblyLines(lines, count)
end

-- -------------------------------------------------------
-- BNFreeLinearViewCursor
-- -------------------------------------------------------

function core.BNFreeLinearViewCursor(
		cursor
)
	return cdefs.C.BNFreeLinearViewCursor(cursor)
end

-- -------------------------------------------------------
-- BNFreeLinearViewCursorPath
-- -------------------------------------------------------

function core.BNFreeLinearViewCursorPath(
		objs, 
		count
)
	return cdefs.C.BNFreeLinearViewCursorPath(objs, count)
end

-- -------------------------------------------------------
-- BNFreeLinearViewCursorPathObjects
-- -------------------------------------------------------

function core.BNFreeLinearViewCursorPathObjects(
		objs, 
		count
)
	return cdefs.C.BNFreeLinearViewCursorPathObjects(objs, count)
end

-- -------------------------------------------------------
-- BNFreeLinearViewObject
-- -------------------------------------------------------

function core.BNFreeLinearViewObject(
		obj
)
	return cdefs.C.BNFreeLinearViewObject(obj)
end

-- -------------------------------------------------------
-- BNFreeLinearViewObjectIdentifier
-- -------------------------------------------------------

function core.BNFreeLinearViewObjectIdentifier(
		id
)
	return cdefs.C.BNFreeLinearViewObjectIdentifier(id)
end

-- -------------------------------------------------------
-- BNFreeLogger
-- -------------------------------------------------------

function core.BNFreeLogger(
		logger
)
	return cdefs.C.BNFreeLogger(logger)
end

-- -------------------------------------------------------
-- BNFreeLowLevelILFunction
-- -------------------------------------------------------

function core.BNFreeLowLevelILFunction(
		func
)
	return cdefs.C.BNFreeLowLevelILFunction(func)
end

-- -------------------------------------------------------
-- BNFreeMainThreadAction
-- -------------------------------------------------------

function core.BNFreeMainThreadAction(
		action
)
	return cdefs.C.BNFreeMainThreadAction(action)
end

-- -------------------------------------------------------
-- BNFreeMediumLevelILFunction
-- -------------------------------------------------------

function core.BNFreeMediumLevelILFunction(
		func
)
	return cdefs.C.BNFreeMediumLevelILFunction(func)
end

-- -------------------------------------------------------
-- BNFreeMemoryUsageInfo
-- -------------------------------------------------------

function core.BNFreeMemoryUsageInfo(
		info, 
		count
)
	return cdefs.C.BNFreeMemoryUsageInfo(info, count)
end

-- -------------------------------------------------------
-- BNFreeMergedVariableList
-- -------------------------------------------------------

function core.BNFreeMergedVariableList(
		vars, 
		count
)
	return cdefs.C.BNFreeMergedVariableList(vars, count)
end

-- -------------------------------------------------------
-- BNFreeMetadata
-- -------------------------------------------------------

function core.BNFreeMetadata(
		data
)
	return cdefs.C.BNFreeMetadata(data)
end

-- -------------------------------------------------------
-- BNFreeMetadataArray
-- -------------------------------------------------------

function core.BNFreeMetadataArray(
		data
)
	return cdefs.C.BNFreeMetadataArray(data)
end

-- -------------------------------------------------------
-- BNFreeMetadataBooleanList
-- -------------------------------------------------------

function core.BNFreeMetadataBooleanList(
		arg0, 
		arg1
)
	return cdefs.C.BNFreeMetadataBooleanList(arg0, arg1)
end

-- -------------------------------------------------------
-- BNFreeMetadataDoubleList
-- -------------------------------------------------------

function core.BNFreeMetadataDoubleList(
		arg0, 
		arg1
)
	return cdefs.C.BNFreeMetadataDoubleList(arg0, arg1)
end

-- -------------------------------------------------------
-- BNFreeMetadataRaw
-- -------------------------------------------------------

function core.BNFreeMetadataRaw(
		data
)
	return cdefs.C.BNFreeMetadataRaw(data)
end

-- -------------------------------------------------------
-- BNFreeMetadataSignedIntegerList
-- -------------------------------------------------------

function core.BNFreeMetadataSignedIntegerList(
		arg0, 
		arg1
)
	return cdefs.C.BNFreeMetadataSignedIntegerList(arg0, arg1)
end

-- -------------------------------------------------------
-- BNFreeMetadataStringList
-- -------------------------------------------------------

function core.BNFreeMetadataStringList(
		arg0, 
		arg1
)
	return cdefs.C.BNFreeMetadataStringList(arg0, arg1)
end

-- -------------------------------------------------------
-- BNFreeMetadataUnsignedIntegerList
-- -------------------------------------------------------

function core.BNFreeMetadataUnsignedIntegerList(
		arg0, 
		arg1
)
	return cdefs.C.BNFreeMetadataUnsignedIntegerList(arg0, arg1)
end

-- -------------------------------------------------------
-- BNFreeMetadataValueStore
-- -------------------------------------------------------

function core.BNFreeMetadataValueStore(
		data
)
	return cdefs.C.BNFreeMetadataValueStore(data)
end

-- -------------------------------------------------------
-- BNFreeNameAndTypeList
-- -------------------------------------------------------

function core.BNFreeNameAndTypeList(
		nt, 
		count
)
	return cdefs.C.BNFreeNameAndTypeList(nt, count)
end

-- -------------------------------------------------------
-- BNFreeNameSpace
-- -------------------------------------------------------

function core.BNFreeNameSpace(
		name
)
	return cdefs.C.BNFreeNameSpace(name)
end

-- -------------------------------------------------------
-- BNFreeNameSpaceList
-- -------------------------------------------------------

function core.BNFreeNameSpaceList(
		nameSpace, 
		count
)
	return cdefs.C.BNFreeNameSpaceList(nameSpace, count)
end

-- -------------------------------------------------------
-- BNFreeNamedTypeReference
-- -------------------------------------------------------

function core.BNFreeNamedTypeReference(
		nt
)
	return cdefs.C.BNFreeNamedTypeReference(nt)
end

-- -------------------------------------------------------
-- BNFreeNamedTypeReferenceBuilder
-- -------------------------------------------------------

function core.BNFreeNamedTypeReferenceBuilder(
		s
)
	return cdefs.C.BNFreeNamedTypeReferenceBuilder(s)
end

-- -------------------------------------------------------
-- BNFreeOutputTypeList
-- -------------------------------------------------------

function core.BNFreeOutputTypeList(
		types, 
		count
)
	return cdefs.C.BNFreeOutputTypeList(types, count)
end

-- -------------------------------------------------------
-- BNFreeParameterVariables
-- -------------------------------------------------------

function core.BNFreeParameterVariables(
		vars
)
	return cdefs.C.BNFreeParameterVariables(vars)
end

-- -------------------------------------------------------
-- BNFreeParseError
-- -------------------------------------------------------

function core.BNFreeParseError(
		errorString
)
	return cdefs.C.BNFreeParseError(errorString)
end

-- -------------------------------------------------------
-- BNFreePath
-- -------------------------------------------------------

function core.BNFreePath(
		path
)
	return cdefs.C.BNFreePath(path)
end

-- -------------------------------------------------------
-- BNFreePlatform
-- -------------------------------------------------------

function core.BNFreePlatform(
		platform
)
	return cdefs.C.BNFreePlatform(platform)
end

-- -------------------------------------------------------
-- BNFreePlatformList
-- -------------------------------------------------------

function core.BNFreePlatformList(
		platform, 
		count
)
	return cdefs.C.BNFreePlatformList(platform, count)
end

-- -------------------------------------------------------
-- BNFreePlatformOSList
-- -------------------------------------------------------

function core.BNFreePlatformOSList(
		list, 
		count
)
	return cdefs.C.BNFreePlatformOSList(list, count)
end

-- -------------------------------------------------------
-- BNFreePlugin
-- -------------------------------------------------------

function core.BNFreePlugin(
		plugin
)
	return cdefs.C.BNFreePlugin(plugin)
end

-- -------------------------------------------------------
-- BNFreePluginCommandList
-- -------------------------------------------------------

function core.BNFreePluginCommandList(
		commands
)
	return cdefs.C.BNFreePluginCommandList(commands)
end

-- -------------------------------------------------------
-- BNFreePluginPlatforms
-- -------------------------------------------------------

function core.BNFreePluginPlatforms(
		platforms, 
		count
)
	return cdefs.C.BNFreePluginPlatforms(platforms, count)
end

-- -------------------------------------------------------
-- BNFreePluginTypes
-- -------------------------------------------------------

function core.BNFreePluginTypes(
		r
)
	return cdefs.C.BNFreePluginTypes(r)
end

-- -------------------------------------------------------
-- BNFreePossibleValueSet
-- -------------------------------------------------------

function core.BNFreePossibleValueSet(
		value
)
	return cdefs.C.BNFreePossibleValueSet(value)
end

-- -------------------------------------------------------
-- BNFreeQualifiedName
-- -------------------------------------------------------

function core.BNFreeQualifiedName(
		name
)
	return cdefs.C.BNFreeQualifiedName(name)
end

-- -------------------------------------------------------
-- BNFreeQualifiedNameAndType
-- -------------------------------------------------------

function core.BNFreeQualifiedNameAndType(
		obj
)
	return cdefs.C.BNFreeQualifiedNameAndType(obj)
end

-- -------------------------------------------------------
-- BNFreeQualifiedNameAndTypeArray
-- -------------------------------------------------------

function core.BNFreeQualifiedNameAndTypeArray(
		obj, 
		count
)
	return cdefs.C.BNFreeQualifiedNameAndTypeArray(obj, count)
end

-- -------------------------------------------------------
-- BNFreeRegisterList
-- -------------------------------------------------------

function core.BNFreeRegisterList(
		regs
)
	return cdefs.C.BNFreeRegisterList(regs)
end

-- -------------------------------------------------------
-- BNFreeRegisterSet
-- -------------------------------------------------------

function core.BNFreeRegisterSet(
		regs
)
	return cdefs.C.BNFreeRegisterSet(regs)
end

-- -------------------------------------------------------
-- BNFreeRegisterStackAdjustments
-- -------------------------------------------------------

function core.BNFreeRegisterStackAdjustments(
		adjustments
)
	return cdefs.C.BNFreeRegisterStackAdjustments(adjustments)
end

-- -------------------------------------------------------
-- BNFreeRelocation
-- -------------------------------------------------------

function core.BNFreeRelocation(
		reloc
)
	return cdefs.C.BNFreeRelocation(reloc)
end

-- -------------------------------------------------------
-- BNFreeRelocationHandler
-- -------------------------------------------------------

function core.BNFreeRelocationHandler(
		handler
)
	return cdefs.C.BNFreeRelocationHandler(handler)
end

-- -------------------------------------------------------
-- BNFreeRelocationRanges
-- -------------------------------------------------------

function core.BNFreeRelocationRanges(
		ranges
)
	return cdefs.C.BNFreeRelocationRanges(ranges)
end

-- -------------------------------------------------------
-- BNFreeReportCollection
-- -------------------------------------------------------

function core.BNFreeReportCollection(
		reports
)
	return cdefs.C.BNFreeReportCollection(reports)
end

-- -------------------------------------------------------
-- BNFreeRepository
-- -------------------------------------------------------

function core.BNFreeRepository(
		r
)
	return cdefs.C.BNFreeRepository(r)
end

-- -------------------------------------------------------
-- BNFreeRepositoryManager
-- -------------------------------------------------------

function core.BNFreeRepositoryManager(
		r
)
	return cdefs.C.BNFreeRepositoryManager(r)
end

-- -------------------------------------------------------
-- BNFreeRepositoryManagerRepositoriesList
-- -------------------------------------------------------

function core.BNFreeRepositoryManagerRepositoriesList(
		r
)
	return cdefs.C.BNFreeRepositoryManagerRepositoriesList(r)
end

-- -------------------------------------------------------
-- BNFreeRepositoryPluginList
-- -------------------------------------------------------

function core.BNFreeRepositoryPluginList(
		r
)
	return cdefs.C.BNFreeRepositoryPluginList(r)
end

-- -------------------------------------------------------
-- BNFreeSaveSettings
-- -------------------------------------------------------

function core.BNFreeSaveSettings(
		settings
)
	return cdefs.C.BNFreeSaveSettings(settings)
end

-- -------------------------------------------------------
-- BNFreeScriptingInstance
-- -------------------------------------------------------

function core.BNFreeScriptingInstance(
		instance
)
	return cdefs.C.BNFreeScriptingInstance(instance)
end

-- -------------------------------------------------------
-- BNFreeScriptingProviderList
-- -------------------------------------------------------

function core.BNFreeScriptingProviderList(
		providers
)
	return cdefs.C.BNFreeScriptingProviderList(providers)
end

-- -------------------------------------------------------
-- BNFreeSecretsProviderList
-- -------------------------------------------------------

function core.BNFreeSecretsProviderList(
		providers
)
	return cdefs.C.BNFreeSecretsProviderList(providers)
end

-- -------------------------------------------------------
-- BNFreeSection
-- -------------------------------------------------------

function core.BNFreeSection(
		section
)
	return cdefs.C.BNFreeSection(section)
end

-- -------------------------------------------------------
-- BNFreeSectionList
-- -------------------------------------------------------

function core.BNFreeSectionList(
		sections, 
		count
)
	return cdefs.C.BNFreeSectionList(sections, count)
end

-- -------------------------------------------------------
-- BNFreeSegment
-- -------------------------------------------------------

function core.BNFreeSegment(
		seg
)
	return cdefs.C.BNFreeSegment(seg)
end

-- -------------------------------------------------------
-- BNFreeSegmentList
-- -------------------------------------------------------

function core.BNFreeSegmentList(
		segments, 
		count
)
	return cdefs.C.BNFreeSegmentList(segments, count)
end

-- -------------------------------------------------------
-- BNFreeSettings
-- -------------------------------------------------------

function core.BNFreeSettings(
		settings
)
	return cdefs.C.BNFreeSettings(settings)
end

-- -------------------------------------------------------
-- BNFreeSnapshot
-- -------------------------------------------------------

function core.BNFreeSnapshot(
		snapshot
)
	return cdefs.C.BNFreeSnapshot(snapshot)
end

-- -------------------------------------------------------
-- BNFreeSnapshotList
-- -------------------------------------------------------

function core.BNFreeSnapshotList(
		snapshots, 
		count
)
	return cdefs.C.BNFreeSnapshotList(snapshots, count)
end

-- -------------------------------------------------------
-- BNFreeStackVariableReferenceList
-- -------------------------------------------------------

function core.BNFreeStackVariableReferenceList(
		refs, 
		count
)
	return cdefs.C.BNFreeStackVariableReferenceList(refs, count)
end

-- -------------------------------------------------------
-- BNFreeString
-- -------------------------------------------------------

function core.BNFreeString(
		str
)
	return cdefs.C.BNFreeString(str)
end

-- -------------------------------------------------------
-- BNFreeStringList
-- -------------------------------------------------------

function core.BNFreeStringList(
		strs, 
		count
)
	return cdefs.C.BNFreeStringList(strs, count)
end

-- -------------------------------------------------------
-- BNFreeStringReferenceList
-- -------------------------------------------------------

function core.BNFreeStringReferenceList(
		strings
)
	return cdefs.C.BNFreeStringReferenceList(strings)
end

-- -------------------------------------------------------
-- BNFreeStructure
-- -------------------------------------------------------

function core.BNFreeStructure(
		s
)
	return cdefs.C.BNFreeStructure(s)
end

-- -------------------------------------------------------
-- BNFreeStructureBuilder
-- -------------------------------------------------------

function core.BNFreeStructureBuilder(
		s
)
	return cdefs.C.BNFreeStructureBuilder(s)
end

-- -------------------------------------------------------
-- BNFreeStructureMember
-- -------------------------------------------------------

function core.BNFreeStructureMember(
		s
)
	return cdefs.C.BNFreeStructureMember(s)
end

-- -------------------------------------------------------
-- BNFreeStructureMemberList
-- -------------------------------------------------------

function core.BNFreeStructureMemberList(
		members, 
		count
)
	return cdefs.C.BNFreeStructureMemberList(members, count)
end

-- -------------------------------------------------------
-- BNFreeSymbol
-- -------------------------------------------------------

function core.BNFreeSymbol(
		sym
)
	return cdefs.C.BNFreeSymbol(sym)
end

-- -------------------------------------------------------
-- BNFreeSymbolList
-- -------------------------------------------------------

function core.BNFreeSymbolList(
		syms, 
		count
)
	return cdefs.C.BNFreeSymbolList(syms, count)
end

-- -------------------------------------------------------
-- BNFreeSymbolRawBytes
-- -------------------------------------------------------

function core.BNFreeSymbolRawBytes(
		bytes
)
	return cdefs.C.BNFreeSymbolRawBytes(bytes)
end

-- -------------------------------------------------------
-- BNFreeSystemCallList
-- -------------------------------------------------------

function core.BNFreeSystemCallList(
		syscalls, 
		count
)
	return cdefs.C.BNFreeSystemCallList(syscalls, count)
end

-- -------------------------------------------------------
-- BNFreeTag
-- -------------------------------------------------------

function core.BNFreeTag(
		tag
)
	return cdefs.C.BNFreeTag(tag)
end

-- -------------------------------------------------------
-- BNFreeTagList
-- -------------------------------------------------------

function core.BNFreeTagList(
		tags, 
		count
)
	return cdefs.C.BNFreeTagList(tags, count)
end

-- -------------------------------------------------------
-- BNFreeTagReferenceTypeCounts
-- -------------------------------------------------------

function core.BNFreeTagReferenceTypeCounts(
		tagTypes, 
		counts
)
	return cdefs.C.BNFreeTagReferenceTypeCounts(tagTypes, counts)
end

-- -------------------------------------------------------
-- BNFreeTagReferences
-- -------------------------------------------------------

function core.BNFreeTagReferences(
		refs, 
		count
)
	return cdefs.C.BNFreeTagReferences(refs, count)
end

-- -------------------------------------------------------
-- BNFreeTagType
-- -------------------------------------------------------

function core.BNFreeTagType(
		tagType
)
	return cdefs.C.BNFreeTagType(tagType)
end

-- -------------------------------------------------------
-- BNFreeTagTypeList
-- -------------------------------------------------------

function core.BNFreeTagTypeList(
		tagTypes, 
		count
)
	return cdefs.C.BNFreeTagTypeList(tagTypes, count)
end

-- -------------------------------------------------------
-- BNFreeTemporaryFile
-- -------------------------------------------------------

function core.BNFreeTemporaryFile(
		file
)
	return cdefs.C.BNFreeTemporaryFile(file)
end

-- -------------------------------------------------------
-- BNFreeTransformParameterList
-- -------------------------------------------------------

function core.BNFreeTransformParameterList(
		params, 
		count
)
	return cdefs.C.BNFreeTransformParameterList(params, count)
end

-- -------------------------------------------------------
-- BNFreeTransformTypeList
-- -------------------------------------------------------

function core.BNFreeTransformTypeList(
		xforms
)
	return cdefs.C.BNFreeTransformTypeList(xforms)
end

-- -------------------------------------------------------
-- BNFreeType
-- -------------------------------------------------------

function core.BNFreeType(
		type
)
	return cdefs.C.BNFreeType(type)
end

-- -------------------------------------------------------
-- BNFreeTypeBuilder
-- -------------------------------------------------------

function core.BNFreeTypeBuilder(
		type
)
	return cdefs.C.BNFreeTypeBuilder(type)
end

-- -------------------------------------------------------
-- BNFreeTypeDefinitionLineList
-- -------------------------------------------------------

function core.BNFreeTypeDefinitionLineList(
		list, 
		count
)
	return cdefs.C.BNFreeTypeDefinitionLineList(list, count)
end

-- -------------------------------------------------------
-- BNFreeTypeFieldReferenceSizeInfo
-- -------------------------------------------------------

function core.BNFreeTypeFieldReferenceSizeInfo(
		refs, 
		count
)
	return cdefs.C.BNFreeTypeFieldReferenceSizeInfo(refs, count)
end

-- -------------------------------------------------------
-- BNFreeTypeFieldReferenceSizes
-- -------------------------------------------------------

function core.BNFreeTypeFieldReferenceSizes(
		refs, 
		count
)
	return cdefs.C.BNFreeTypeFieldReferenceSizes(refs, count)
end

-- -------------------------------------------------------
-- BNFreeTypeFieldReferenceTypeInfo
-- -------------------------------------------------------

function core.BNFreeTypeFieldReferenceTypeInfo(
		refs, 
		count
)
	return cdefs.C.BNFreeTypeFieldReferenceTypeInfo(refs, count)
end

-- -------------------------------------------------------
-- BNFreeTypeFieldReferenceTypes
-- -------------------------------------------------------

function core.BNFreeTypeFieldReferenceTypes(
		refs, 
		count
)
	return cdefs.C.BNFreeTypeFieldReferenceTypes(refs, count)
end

-- -------------------------------------------------------
-- BNFreeTypeFieldReferences
-- -------------------------------------------------------

function core.BNFreeTypeFieldReferences(
		refs, 
		count
)
	return cdefs.C.BNFreeTypeFieldReferences(refs, count)
end

-- -------------------------------------------------------
-- BNFreeTypeIdList
-- -------------------------------------------------------

function core.BNFreeTypeIdList(
		types, 
		count
)
	return cdefs.C.BNFreeTypeIdList(types, count)
end

-- -------------------------------------------------------
-- BNFreeTypeLibrary
-- -------------------------------------------------------

function core.BNFreeTypeLibrary(
		lib
)
	return cdefs.C.BNFreeTypeLibrary(lib)
end

-- -------------------------------------------------------
-- BNFreeTypeLibraryList
-- -------------------------------------------------------

function core.BNFreeTypeLibraryList(
		lib, 
		count
)
	return cdefs.C.BNFreeTypeLibraryList(lib, count)
end

-- -------------------------------------------------------
-- BNFreeTypeList
-- -------------------------------------------------------

function core.BNFreeTypeList(
		types, 
		count
)
	return cdefs.C.BNFreeTypeList(types, count)
end

-- -------------------------------------------------------
-- BNFreeTypeNameList
-- -------------------------------------------------------

function core.BNFreeTypeNameList(
		names, 
		count
)
	return cdefs.C.BNFreeTypeNameList(names, count)
end

-- -------------------------------------------------------
-- BNFreeTypeParameterList
-- -------------------------------------------------------

function core.BNFreeTypeParameterList(
		types, 
		count
)
	return cdefs.C.BNFreeTypeParameterList(types, count)
end

-- -------------------------------------------------------
-- BNFreeTypeParserErrors
-- -------------------------------------------------------

function core.BNFreeTypeParserErrors(
		errors, 
		count
)
	return cdefs.C.BNFreeTypeParserErrors(errors, count)
end

-- -------------------------------------------------------
-- BNFreeTypeParserList
-- -------------------------------------------------------

function core.BNFreeTypeParserList(
		parsers
)
	return cdefs.C.BNFreeTypeParserList(parsers)
end

-- -------------------------------------------------------
-- BNFreeTypeParserResult
-- -------------------------------------------------------

function core.BNFreeTypeParserResult(
		result
)
	return cdefs.C.BNFreeTypeParserResult(result)
end

-- -------------------------------------------------------
-- BNFreeTypePrinterList
-- -------------------------------------------------------

function core.BNFreeTypePrinterList(
		printers
)
	return cdefs.C.BNFreeTypePrinterList(printers)
end

-- -------------------------------------------------------
-- BNFreeTypeReferences
-- -------------------------------------------------------

function core.BNFreeTypeReferences(
		refs, 
		count
)
	return cdefs.C.BNFreeTypeReferences(refs, count)
end

-- -------------------------------------------------------
-- BNFreeUndoEntries
-- -------------------------------------------------------

function core.BNFreeUndoEntries(
		entries, 
		count
)
	return cdefs.C.BNFreeUndoEntries(entries, count)
end

-- -------------------------------------------------------
-- BNFreeUpdateChannelList
-- -------------------------------------------------------

function core.BNFreeUpdateChannelList(
		list, 
		count
)
	return cdefs.C.BNFreeUpdateChannelList(list, count)
end

-- -------------------------------------------------------
-- BNFreeUpdateChannelVersionList
-- -------------------------------------------------------

function core.BNFreeUpdateChannelVersionList(
		list, 
		count
)
	return cdefs.C.BNFreeUpdateChannelVersionList(list, count)
end

-- -------------------------------------------------------
-- BNFreeUser
-- -------------------------------------------------------

function core.BNFreeUser(
		user
)
	return cdefs.C.BNFreeUser(user)
end

-- -------------------------------------------------------
-- BNFreeUserList
-- -------------------------------------------------------

function core.BNFreeUserList(
		users, 
		count
)
	return cdefs.C.BNFreeUserList(users, count)
end

-- -------------------------------------------------------
-- BNFreeUserVariableValues
-- -------------------------------------------------------

function core.BNFreeUserVariableValues(
		result
)
	return cdefs.C.BNFreeUserVariableValues(result)
end

-- -------------------------------------------------------
-- BNFreeVariableList
-- -------------------------------------------------------

function core.BNFreeVariableList(
		vars
)
	return cdefs.C.BNFreeVariableList(vars)
end

-- -------------------------------------------------------
-- BNFreeVariableNameAndType
-- -------------------------------------------------------

function core.BNFreeVariableNameAndType(
		var
)
	return cdefs.C.BNFreeVariableNameAndType(var)
end

-- -------------------------------------------------------
-- BNFreeVariableNameAndTypeList
-- -------------------------------------------------------

function core.BNFreeVariableNameAndTypeList(
		vars, 
		count
)
	return cdefs.C.BNFreeVariableNameAndTypeList(vars, count)
end

-- -------------------------------------------------------
-- BNFreeVariableReferenceSourceList
-- -------------------------------------------------------

function core.BNFreeVariableReferenceSourceList(
		vars, 
		count
)
	return cdefs.C.BNFreeVariableReferenceSourceList(vars, count)
end

-- -------------------------------------------------------
-- BNFreeWebsocketClient
-- -------------------------------------------------------

function core.BNFreeWebsocketClient(
		client
)
	return cdefs.C.BNFreeWebsocketClient(client)
end

-- -------------------------------------------------------
-- BNFreeWebsocketProviderList
-- -------------------------------------------------------

function core.BNFreeWebsocketProviderList(
		providers
)
	return cdefs.C.BNFreeWebsocketProviderList(providers)
end

-- -------------------------------------------------------
-- BNFreeWorkflow
-- -------------------------------------------------------

function core.BNFreeWorkflow(
		workflow
)
	return cdefs.C.BNFreeWorkflow(workflow)
end

-- -------------------------------------------------------
-- BNFreeWorkflowList
-- -------------------------------------------------------

function core.BNFreeWorkflowList(
		workflows, 
		count
)
	return cdefs.C.BNFreeWorkflowList(workflows, count)
end

-- -------------------------------------------------------
-- BNFromVariableIdentifier
-- -------------------------------------------------------

function core.BNFromVariableIdentifier(
		id
)
	return cdefs.C.BNFromVariableIdentifier(id)
end

-- -------------------------------------------------------
-- BNFunctionHasExplicitlyDefinedType
-- -------------------------------------------------------

function core.BNFunctionHasExplicitlyDefinedType(
		func
)
	return cdefs.C.BNFunctionHasExplicitlyDefinedType(func)
end

-- -------------------------------------------------------
-- BNFunctionHasUserAnnotations
-- -------------------------------------------------------

function core.BNFunctionHasUserAnnotations(
		func
)
	return cdefs.C.BNFunctionHasUserAnnotations(func)
end

-- -------------------------------------------------------
-- BNFunctionHasUserType
-- -------------------------------------------------------

function core.BNFunctionHasUserType(
		func
)
	return cdefs.C.BNFunctionHasUserType(func)
end

-- -------------------------------------------------------
-- BNFunctionHasVariableArguments
-- -------------------------------------------------------

function core.BNFunctionHasVariableArguments(
		func
)
	return cdefs.C.BNFunctionHasVariableArguments(func)
end

-- -------------------------------------------------------
-- BNFunctionTypeBuilderCanReturn
-- -------------------------------------------------------

function core.BNFunctionTypeBuilderCanReturn(
		type
)
	return cdefs.C.BNFunctionTypeBuilderCanReturn(type)
end

-- -------------------------------------------------------
-- BNFunctionTypeCanReturn
-- -------------------------------------------------------

function core.BNFunctionTypeCanReturn(
		type
)
	return cdefs.C.BNFunctionTypeCanReturn(type)
end

-- -------------------------------------------------------
-- BNGenerateAutoDebugTypeId
-- -------------------------------------------------------

function core.BNGenerateAutoDebugTypeId(
		name
)
	local result = cdefs.C.BNGenerateAutoDebugTypeId(name)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGenerateAutoDemangledTypeId
-- -------------------------------------------------------

function core.BNGenerateAutoDemangledTypeId(
		name
)
	local result = cdefs.C.BNGenerateAutoDemangledTypeId(name)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGenerateAutoPlatformTypeId
-- -------------------------------------------------------

function core.BNGenerateAutoPlatformTypeId(
		platform, 
		name
)
	local result = cdefs.C.BNGenerateAutoPlatformTypeId(platform, name)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGenerateAutoTypeId
-- -------------------------------------------------------

function core.BNGenerateAutoTypeId(
		source, 
		name
)
	local result = cdefs.C.BNGenerateAutoTypeId(source, name)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGenerateHighLevelILSSAForm
-- -------------------------------------------------------

function core.BNGenerateHighLevelILSSAForm(
		func, 
		aliases, 
		aliasCount
)
	return cdefs.C.BNGenerateHighLevelILSSAForm(func, aliases, aliasCount)
end

-- -------------------------------------------------------
-- BNGenerateLowLevelILSSAForm
-- -------------------------------------------------------

function core.BNGenerateLowLevelILSSAForm(
		func
)
	return cdefs.C.BNGenerateLowLevelILSSAForm(func)
end

-- -------------------------------------------------------
-- BNGenerateMediumLevelILSSAForm
-- -------------------------------------------------------

function core.BNGenerateMediumLevelILSSAForm(
		func, 
		analyzeConditionals, 
		handleAliases, 
		knownNotAliases, 
		knownNotAliasCount, 
		knownAliases, 
		knownAliasCount
)
	return cdefs.C.BNGenerateMediumLevelILSSAForm(func, analyzeConditionals, handleAliases, knownNotAliases, knownNotAliasCount, knownAliases, knownAliasCount)
end

-- -------------------------------------------------------
-- BNGetActiveUpdateChannel
-- -------------------------------------------------------

function core.BNGetActiveUpdateChannel(
)
	local result = cdefs.C.BNGetActiveUpdateChannel()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetAddressForDataOffset
-- -------------------------------------------------------

function core.BNGetAddressForDataOffset(
		view, 
		offset, 
		addr
)
	return cdefs.C.BNGetAddressForDataOffset(view, offset, addr)
end

-- -------------------------------------------------------
-- BNGetAddressInput
-- -------------------------------------------------------

function core.BNGetAddressInput(
		result, 
		prompt, 
		title, 
		view, 
		currentAddr
)
	return cdefs.C.BNGetAddressInput(result, prompt, title, view, currentAddr)
end

-- -------------------------------------------------------
-- BNGetAddressRenderedWidth
-- -------------------------------------------------------

function core.BNGetAddressRenderedWidth(
		addr
)
	return cdefs.C.BNGetAddressRenderedWidth(addr)
end

-- -------------------------------------------------------
-- BNGetAddressTagReferences
-- -------------------------------------------------------

function core.BNGetAddressTagReferences(
		func, 
		count
)
	local result = cdefs.C.BNGetAddressTagReferences(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAddressTags
-- -------------------------------------------------------

function core.BNGetAddressTags(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetAddressTags(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAddressTagsInRange
-- -------------------------------------------------------

function core.BNGetAddressTagsInRange(
		func, 
		arch, 
		start, 
		end_, 
		count
)
	local result = cdefs.C.BNGetAddressTagsInRange(func, arch, start, end_, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAddressTagsOfType
-- -------------------------------------------------------

function core.BNGetAddressTagsOfType(
		func, 
		arch, 
		addr, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetAddressTagsOfType(func, arch, addr, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllAddressTagReferences
-- -------------------------------------------------------

function core.BNGetAllAddressTagReferences(
		view, 
		count
)
	local result = cdefs.C.BNGetAllAddressTagReferences(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllArchitectureFlagWriteTypes
-- -------------------------------------------------------

function core.BNGetAllArchitectureFlagWriteTypes(
		arch, 
		count
)
	local result = cdefs.C.BNGetAllArchitectureFlagWriteTypes(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllArchitectureFlags
-- -------------------------------------------------------

function core.BNGetAllArchitectureFlags(
		arch, 
		count
)
	local result = cdefs.C.BNGetAllArchitectureFlags(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllArchitectureIntrinsics
-- -------------------------------------------------------

function core.BNGetAllArchitectureIntrinsics(
		arch, 
		count
)
	local result = cdefs.C.BNGetAllArchitectureIntrinsics(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllArchitectureRegisterStacks
-- -------------------------------------------------------

function core.BNGetAllArchitectureRegisterStacks(
		arch, 
		count
)
	local result = cdefs.C.BNGetAllArchitectureRegisterStacks(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllArchitectureRegisters
-- -------------------------------------------------------

function core.BNGetAllArchitectureRegisters(
		arch, 
		count
)
	local result = cdefs.C.BNGetAllArchitectureRegisters(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllArchitectureSemanticFlagClasses
-- -------------------------------------------------------

function core.BNGetAllArchitectureSemanticFlagClasses(
		arch, 
		count
)
	local result = cdefs.C.BNGetAllArchitectureSemanticFlagClasses(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllArchitectureSemanticFlagGroups
-- -------------------------------------------------------

function core.BNGetAllArchitectureSemanticFlagGroups(
		arch, 
		count
)
	local result = cdefs.C.BNGetAllArchitectureSemanticFlagGroups(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllFieldsReferenced
-- -------------------------------------------------------

function core.BNGetAllFieldsReferenced(
		view, 
		type, 
		count
)
	local result = cdefs.C.BNGetAllFieldsReferenced(view, type, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllFunctionTagReferences
-- -------------------------------------------------------

function core.BNGetAllFunctionTagReferences(
		view, 
		count
)
	local result = cdefs.C.BNGetAllFunctionTagReferences(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllMediumLevelILBranchDependence
-- -------------------------------------------------------

function core.BNGetAllMediumLevelILBranchDependence(
		func, 
		instr, 
		count
)
	local result = cdefs.C.BNGetAllMediumLevelILBranchDependence(func, instr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllPluginCommands
-- -------------------------------------------------------

function core.BNGetAllPluginCommands(
		count
)
	local result = cdefs.C.BNGetAllPluginCommands(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllSizesReferenced
-- -------------------------------------------------------

function core.BNGetAllSizesReferenced(
		view, 
		type, 
		count
)
	local result = cdefs.C.BNGetAllSizesReferenced(view, type, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllTagReferenceTypeCounts
-- -------------------------------------------------------

function core.BNGetAllTagReferenceTypeCounts(
		view, 
		tagTypes, 
		counts, 
		count
)
	return cdefs.C.BNGetAllTagReferenceTypeCounts(view, tagTypes, counts, count)
end

-- -------------------------------------------------------
-- BNGetAllTagReferences
-- -------------------------------------------------------

function core.BNGetAllTagReferences(
		view, 
		count
)
	local result = cdefs.C.BNGetAllTagReferences(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllTagReferencesOfType
-- -------------------------------------------------------

function core.BNGetAllTagReferencesOfType(
		view, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetAllTagReferencesOfType(view, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllTagReferencesOfTypeCount
-- -------------------------------------------------------

function core.BNGetAllTagReferencesOfTypeCount(
		view, 
		tagType
)
	return cdefs.C.BNGetAllTagReferencesOfTypeCount(view, tagType)
end

-- -------------------------------------------------------
-- BNGetAllTypesReferenced
-- -------------------------------------------------------

function core.BNGetAllTypesReferenced(
		view, 
		type, 
		count
)
	local result = cdefs.C.BNGetAllTypesReferenced(view, type, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllUserVariableValues
-- -------------------------------------------------------

function core.BNGetAllUserVariableValues(
		func, 
		count
)
	local result = cdefs.C.BNGetAllUserVariableValues(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAllocatedRanges
-- -------------------------------------------------------

function core.BNGetAllocatedRanges(
		view, 
		count
)
	local result = cdefs.C.BNGetAllocatedRanges(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisDependencySortedTypeList
-- -------------------------------------------------------

function core.BNGetAnalysisDependencySortedTypeList(
		view, 
		count
)
	local result = cdefs.C.BNGetAnalysisDependencySortedTypeList(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisEntryPoint
-- -------------------------------------------------------

function core.BNGetAnalysisEntryPoint(
		view
)
	local result = cdefs.C.BNGetAnalysisEntryPoint(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisFunction
-- -------------------------------------------------------

function core.BNGetAnalysisFunction(
		view, 
		platform, 
		addr
)
	local result = cdefs.C.BNGetAnalysisFunction(view, platform, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisFunctionList
-- -------------------------------------------------------

function core.BNGetAnalysisFunctionList(
		view, 
		count
)
	local result = cdefs.C.BNGetAnalysisFunctionList(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisFunctionsContainingAddress
-- -------------------------------------------------------

function core.BNGetAnalysisFunctionsContainingAddress(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetAnalysisFunctionsContainingAddress(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisFunctionsForAddress
-- -------------------------------------------------------

function core.BNGetAnalysisFunctionsForAddress(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetAnalysisFunctionsForAddress(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisInfo
-- -------------------------------------------------------

function core.BNGetAnalysisInfo(
		view
)
	local result = cdefs.C.BNGetAnalysisInfo(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisProgress
-- -------------------------------------------------------

function core.BNGetAnalysisProgress(
		view
)
	return cdefs.C.BNGetAnalysisProgress(view)
end

-- -------------------------------------------------------
-- BNGetAnalysisSkipReason
-- -------------------------------------------------------

function core.BNGetAnalysisSkipReason(
		func
)
	return cdefs.C.BNGetAnalysisSkipReason(func)
end

-- -------------------------------------------------------
-- BNGetAnalysisTypeById
-- -------------------------------------------------------

function core.BNGetAnalysisTypeById(
		view, 
		id
)
	local result = cdefs.C.BNGetAnalysisTypeById(view, id)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisTypeByName
-- -------------------------------------------------------

function core.BNGetAnalysisTypeByName(
		view, 
		name
)
	local result = cdefs.C.BNGetAnalysisTypeByName(view, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisTypeByRef
-- -------------------------------------------------------

function core.BNGetAnalysisTypeByRef(
		view, 
		ref
)
	local result = cdefs.C.BNGetAnalysisTypeByRef(view, ref)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisTypeId
-- -------------------------------------------------------

function core.BNGetAnalysisTypeId(
		view, 
		name
)
	local result = cdefs.C.BNGetAnalysisTypeId(view, name)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetAnalysisTypeList
-- -------------------------------------------------------

function core.BNGetAnalysisTypeList(
		view, 
		count
)
	local result = cdefs.C.BNGetAnalysisTypeList(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAnalysisTypeNameById
-- -------------------------------------------------------

function core.BNGetAnalysisTypeNameById(
		view, 
		id
)
	return cdefs.C.BNGetAnalysisTypeNameById(view, id)
end

-- -------------------------------------------------------
-- BNGetAnalysisTypeNames
-- -------------------------------------------------------

function core.BNGetAnalysisTypeNames(
		view, 
		count, 
		matching
)
	local result = cdefs.C.BNGetAnalysisTypeNames(view, count, matching)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureAddressSize
-- -------------------------------------------------------

function core.BNGetArchitectureAddressSize(
		arch
)
	return cdefs.C.BNGetArchitectureAddressSize(arch)
end

-- -------------------------------------------------------
-- BNGetArchitectureByName
-- -------------------------------------------------------

function core.BNGetArchitectureByName(
		name
)
	local result = cdefs.C.BNGetArchitectureByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureCallingConventionByName
-- -------------------------------------------------------

function core.BNGetArchitectureCallingConventionByName(
		arch, 
		name
)
	local result = cdefs.C.BNGetArchitectureCallingConventionByName(arch, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureCallingConventions
-- -------------------------------------------------------

function core.BNGetArchitectureCallingConventions(
		arch, 
		count
)
	local result = cdefs.C.BNGetArchitectureCallingConventions(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureCdeclCallingConvention
-- -------------------------------------------------------

function core.BNGetArchitectureCdeclCallingConvention(
		arch
)
	local result = cdefs.C.BNGetArchitectureCdeclCallingConvention(arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureDefaultCallingConvention
-- -------------------------------------------------------

function core.BNGetArchitectureDefaultCallingConvention(
		arch
)
	local result = cdefs.C.BNGetArchitectureDefaultCallingConvention(arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureDefaultIntegerSize
-- -------------------------------------------------------

function core.BNGetArchitectureDefaultIntegerSize(
		arch
)
	return cdefs.C.BNGetArchitectureDefaultIntegerSize(arch)
end

-- -------------------------------------------------------
-- BNGetArchitectureEndianness
-- -------------------------------------------------------

function core.BNGetArchitectureEndianness(
		arch
)
	return cdefs.C.BNGetArchitectureEndianness(arch)
end

-- -------------------------------------------------------
-- BNGetArchitectureFastcallCallingConvention
-- -------------------------------------------------------

function core.BNGetArchitectureFastcallCallingConvention(
		arch
)
	local result = cdefs.C.BNGetArchitectureFastcallCallingConvention(arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureFlagConditionLowLevelIL
-- -------------------------------------------------------

function core.BNGetArchitectureFlagConditionLowLevelIL(
		arch, 
		cond, 
		semClass, 
		il
)
	return cdefs.C.BNGetArchitectureFlagConditionLowLevelIL(arch, cond, semClass, il)
end

-- -------------------------------------------------------
-- BNGetArchitectureFlagConditionsForSemanticFlagGroup
-- -------------------------------------------------------

function core.BNGetArchitectureFlagConditionsForSemanticFlagGroup(
		arch, 
		semGroup, 
		count
)
	local result = cdefs.C.BNGetArchitectureFlagConditionsForSemanticFlagGroup(arch, semGroup, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureFlagName
-- -------------------------------------------------------

function core.BNGetArchitectureFlagName(
		arch, 
		flag
)
	local result = cdefs.C.BNGetArchitectureFlagName(arch, flag)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetArchitectureFlagRole
-- -------------------------------------------------------

function core.BNGetArchitectureFlagRole(
		arch, 
		flag, 
		semClass
)
	return cdefs.C.BNGetArchitectureFlagRole(arch, flag, semClass)
end

-- -------------------------------------------------------
-- BNGetArchitectureFlagWriteLowLevelIL
-- -------------------------------------------------------

function core.BNGetArchitectureFlagWriteLowLevelIL(
		arch, 
		op, 
		size, 
		flagWriteType, 
		flag, 
		operands, 
		operandCount, 
		il
)
	return cdefs.C.BNGetArchitectureFlagWriteLowLevelIL(arch, op, size, flagWriteType, flag, operands, operandCount, il)
end

-- -------------------------------------------------------
-- BNGetArchitectureFlagWriteTypeName
-- -------------------------------------------------------

function core.BNGetArchitectureFlagWriteTypeName(
		arch, 
		flags
)
	local result = cdefs.C.BNGetArchitectureFlagWriteTypeName(arch, flags)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetArchitectureFlagsRequiredForFlagCondition
-- -------------------------------------------------------

function core.BNGetArchitectureFlagsRequiredForFlagCondition(
		arch, 
		cond, 
		semClass, 
		count
)
	local result = cdefs.C.BNGetArchitectureFlagsRequiredForFlagCondition(arch, cond, semClass, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureFlagsRequiredForSemanticFlagGroup
-- -------------------------------------------------------

function core.BNGetArchitectureFlagsRequiredForSemanticFlagGroup(
		arch, 
		semGroup, 
		count
)
	local result = cdefs.C.BNGetArchitectureFlagsRequiredForSemanticFlagGroup(arch, semGroup, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureFlagsWrittenByFlagWriteType
-- -------------------------------------------------------

function core.BNGetArchitectureFlagsWrittenByFlagWriteType(
		arch, 
		writeType, 
		count
)
	local result = cdefs.C.BNGetArchitectureFlagsWrittenByFlagWriteType(arch, writeType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureForViewType
-- -------------------------------------------------------

function core.BNGetArchitectureForViewType(
		type, 
		id, 
		endian
)
	local result = cdefs.C.BNGetArchitectureForViewType(type, id, endian)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureGlobalRegisters
-- -------------------------------------------------------

function core.BNGetArchitectureGlobalRegisters(
		arch, 
		count
)
	local result = cdefs.C.BNGetArchitectureGlobalRegisters(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureInstructionAlignment
-- -------------------------------------------------------

function core.BNGetArchitectureInstructionAlignment(
		arch
)
	return cdefs.C.BNGetArchitectureInstructionAlignment(arch)
end

-- -------------------------------------------------------
-- BNGetArchitectureIntrinsicInputs
-- -------------------------------------------------------

function core.BNGetArchitectureIntrinsicInputs(
		arch, 
		intrinsic, 
		count
)
	local result = cdefs.C.BNGetArchitectureIntrinsicInputs(arch, intrinsic, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureIntrinsicName
-- -------------------------------------------------------

function core.BNGetArchitectureIntrinsicName(
		arch, 
		intrinsic
)
	local result = cdefs.C.BNGetArchitectureIntrinsicName(arch, intrinsic)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetArchitectureIntrinsicOutputs
-- -------------------------------------------------------

function core.BNGetArchitectureIntrinsicOutputs(
		arch, 
		intrinsic, 
		count
)
	local result = cdefs.C.BNGetArchitectureIntrinsicOutputs(arch, intrinsic, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureLinkRegister
-- -------------------------------------------------------

function core.BNGetArchitectureLinkRegister(
		arch
)
	return cdefs.C.BNGetArchitectureLinkRegister(arch)
end

-- -------------------------------------------------------
-- BNGetArchitectureList
-- -------------------------------------------------------

function core.BNGetArchitectureList(
		count
)
	local result = cdefs.C.BNGetArchitectureList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureMaxInstructionLength
-- -------------------------------------------------------

function core.BNGetArchitectureMaxInstructionLength(
		arch
)
	return cdefs.C.BNGetArchitectureMaxInstructionLength(arch)
end

-- -------------------------------------------------------
-- BNGetArchitectureName
-- -------------------------------------------------------

function core.BNGetArchitectureName(
		arch
)
	local result = cdefs.C.BNGetArchitectureName(arch)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetArchitectureOpcodeDisplayLength
-- -------------------------------------------------------

function core.BNGetArchitectureOpcodeDisplayLength(
		arch
)
	return cdefs.C.BNGetArchitectureOpcodeDisplayLength(arch)
end

-- -------------------------------------------------------
-- BNGetArchitectureRegisterByName
-- -------------------------------------------------------

function core.BNGetArchitectureRegisterByName(
		arch, 
		name
)
	return cdefs.C.BNGetArchitectureRegisterByName(arch, name)
end

-- -------------------------------------------------------
-- BNGetArchitectureRegisterInfo
-- -------------------------------------------------------

function core.BNGetArchitectureRegisterInfo(
		arch, 
		reg
)
	return cdefs.C.BNGetArchitectureRegisterInfo(arch, reg)
end

-- -------------------------------------------------------
-- BNGetArchitectureRegisterName
-- -------------------------------------------------------

function core.BNGetArchitectureRegisterName(
		arch, 
		reg
)
	local result = cdefs.C.BNGetArchitectureRegisterName(arch, reg)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetArchitectureRegisterStackForRegister
-- -------------------------------------------------------

function core.BNGetArchitectureRegisterStackForRegister(
		arch, 
		reg
)
	return cdefs.C.BNGetArchitectureRegisterStackForRegister(arch, reg)
end

-- -------------------------------------------------------
-- BNGetArchitectureRegisterStackInfo
-- -------------------------------------------------------

function core.BNGetArchitectureRegisterStackInfo(
		arch, 
		regStack
)
	return cdefs.C.BNGetArchitectureRegisterStackInfo(arch, regStack)
end

-- -------------------------------------------------------
-- BNGetArchitectureRegisterStackName
-- -------------------------------------------------------

function core.BNGetArchitectureRegisterStackName(
		arch, 
		regStack
)
	local result = cdefs.C.BNGetArchitectureRegisterStackName(arch, regStack)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetArchitectureSemanticClassForFlagWriteType
-- -------------------------------------------------------

function core.BNGetArchitectureSemanticClassForFlagWriteType(
		arch, 
		writeType
)
	return cdefs.C.BNGetArchitectureSemanticClassForFlagWriteType(arch, writeType)
end

-- -------------------------------------------------------
-- BNGetArchitectureSemanticFlagClassName
-- -------------------------------------------------------

function core.BNGetArchitectureSemanticFlagClassName(
		arch, 
		semClass
)
	local result = cdefs.C.BNGetArchitectureSemanticFlagClassName(arch, semClass)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetArchitectureSemanticFlagGroupLowLevelIL
-- -------------------------------------------------------

function core.BNGetArchitectureSemanticFlagGroupLowLevelIL(
		arch, 
		semGroup, 
		il
)
	return cdefs.C.BNGetArchitectureSemanticFlagGroupLowLevelIL(arch, semGroup, il)
end

-- -------------------------------------------------------
-- BNGetArchitectureSemanticFlagGroupName
-- -------------------------------------------------------

function core.BNGetArchitectureSemanticFlagGroupName(
		arch, 
		semGroup
)
	local result = cdefs.C.BNGetArchitectureSemanticFlagGroupName(arch, semGroup)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetArchitectureStackPointerRegister
-- -------------------------------------------------------

function core.BNGetArchitectureStackPointerRegister(
		arch
)
	return cdefs.C.BNGetArchitectureStackPointerRegister(arch)
end

-- -------------------------------------------------------
-- BNGetArchitectureStandalonePlatform
-- -------------------------------------------------------

function core.BNGetArchitectureStandalonePlatform(
		arch
)
	local result = cdefs.C.BNGetArchitectureStandalonePlatform(arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureStdcallCallingConvention
-- -------------------------------------------------------

function core.BNGetArchitectureStdcallCallingConvention(
		arch
)
	local result = cdefs.C.BNGetArchitectureStdcallCallingConvention(arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureSystemRegisters
-- -------------------------------------------------------

function core.BNGetArchitectureSystemRegisters(
		arch, 
		count
)
	local result = cdefs.C.BNGetArchitectureSystemRegisters(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetArchitectureTypeLibraries
-- -------------------------------------------------------

function core.BNGetArchitectureTypeLibraries(
		arch, 
		count
)
	local result = cdefs.C.BNGetArchitectureTypeLibraries(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAssociatedArchitectureByAddress
-- -------------------------------------------------------

function core.BNGetAssociatedArchitectureByAddress(
		arch, 
		addr
)
	local result = cdefs.C.BNGetAssociatedArchitectureByAddress(arch, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAssociatedPlatformByAddress
-- -------------------------------------------------------

function core.BNGetAssociatedPlatformByAddress(
		platform, 
		addr
)
	local result = cdefs.C.BNGetAssociatedPlatformByAddress(platform, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoAddressTagReferences
-- -------------------------------------------------------

function core.BNGetAutoAddressTagReferences(
		func, 
		count
)
	local result = cdefs.C.BNGetAutoAddressTagReferences(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoAddressTags
-- -------------------------------------------------------

function core.BNGetAutoAddressTags(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetAutoAddressTags(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoAddressTagsInRange
-- -------------------------------------------------------

function core.BNGetAutoAddressTagsInRange(
		func, 
		arch, 
		start, 
		end_, 
		count
)
	local result = cdefs.C.BNGetAutoAddressTagsInRange(func, arch, start, end_, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoAddressTagsOfType
-- -------------------------------------------------------

function core.BNGetAutoAddressTagsOfType(
		func, 
		arch, 
		addr, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetAutoAddressTagsOfType(func, arch, addr, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoDataTagReferences
-- -------------------------------------------------------

function core.BNGetAutoDataTagReferences(
		view, 
		count
)
	local result = cdefs.C.BNGetAutoDataTagReferences(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoDataTags
-- -------------------------------------------------------

function core.BNGetAutoDataTags(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetAutoDataTags(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoDataTagsInRange
-- -------------------------------------------------------

function core.BNGetAutoDataTagsInRange(
		view, 
		start, 
		end_, 
		count
)
	local result = cdefs.C.BNGetAutoDataTagsInRange(view, start, end_, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoDataTagsOfType
-- -------------------------------------------------------

function core.BNGetAutoDataTagsOfType(
		view, 
		addr, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetAutoDataTagsOfType(view, addr, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoDebugTypeIdSource
-- -------------------------------------------------------

function core.BNGetAutoDebugTypeIdSource(
)
	local result = cdefs.C.BNGetAutoDebugTypeIdSource()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetAutoDemangledTypeIdSource
-- -------------------------------------------------------

function core.BNGetAutoDemangledTypeIdSource(
)
	local result = cdefs.C.BNGetAutoDemangledTypeIdSource()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetAutoFunctionTagReferences
-- -------------------------------------------------------

function core.BNGetAutoFunctionTagReferences(
		func, 
		count
)
	local result = cdefs.C.BNGetAutoFunctionTagReferences(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoFunctionTags
-- -------------------------------------------------------

function core.BNGetAutoFunctionTags(
		func, 
		count
)
	local result = cdefs.C.BNGetAutoFunctionTags(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoFunctionTagsOfType
-- -------------------------------------------------------

function core.BNGetAutoFunctionTagsOfType(
		func, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetAutoFunctionTagsOfType(func, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetAutoPlatformTypeIdSource
-- -------------------------------------------------------

function core.BNGetAutoPlatformTypeIdSource(
		platform
)
	local result = cdefs.C.BNGetAutoPlatformTypeIdSource(platform)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetBackgroundAnalysisTask
-- -------------------------------------------------------

function core.BNGetBackgroundAnalysisTask(
		view
)
	local result = cdefs.C.BNGetBackgroundAnalysisTask(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBackgroundTaskProgressText
-- -------------------------------------------------------

function core.BNGetBackgroundTaskProgressText(
		task
)
	local result = cdefs.C.BNGetBackgroundTaskProgressText(task)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetBaseStructuresForStructure
-- -------------------------------------------------------

function core.BNGetBaseStructuresForStructure(
		s, 
		count
)
	local result = cdefs.C.BNGetBaseStructuresForStructure(s, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBaseStructuresForStructureBuilder
-- -------------------------------------------------------

function core.BNGetBaseStructuresForStructureBuilder(
		s, 
		count
)
	local result = cdefs.C.BNGetBaseStructuresForStructureBuilder(s, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockArchitecture
-- -------------------------------------------------------

function core.BNGetBasicBlockArchitecture(
		block
)
	local result = cdefs.C.BNGetBasicBlockArchitecture(block)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockDisassemblyText
-- -------------------------------------------------------

function core.BNGetBasicBlockDisassemblyText(
		block, 
		settings, 
		count
)
	local result = cdefs.C.BNGetBasicBlockDisassemblyText(block, settings, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockDominanceFrontier
-- -------------------------------------------------------

function core.BNGetBasicBlockDominanceFrontier(
		block, 
		count, 
		post
)
	local result = cdefs.C.BNGetBasicBlockDominanceFrontier(block, count, post)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockDominatorTreeChildren
-- -------------------------------------------------------

function core.BNGetBasicBlockDominatorTreeChildren(
		block, 
		count, 
		post
)
	local result = cdefs.C.BNGetBasicBlockDominatorTreeChildren(block, count, post)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockDominators
-- -------------------------------------------------------

function core.BNGetBasicBlockDominators(
		block, 
		count, 
		post
)
	local result = cdefs.C.BNGetBasicBlockDominators(block, count, post)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockEnd
-- -------------------------------------------------------

function core.BNGetBasicBlockEnd(
		block
)
	return cdefs.C.BNGetBasicBlockEnd(block)
end

-- -------------------------------------------------------
-- BNGetBasicBlockFunction
-- -------------------------------------------------------

function core.BNGetBasicBlockFunction(
		block
)
	local result = cdefs.C.BNGetBasicBlockFunction(block)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockFunctionGraphType
-- -------------------------------------------------------

function core.BNGetBasicBlockFunctionGraphType(
		block
)
	return cdefs.C.BNGetBasicBlockFunctionGraphType(block)
end

-- -------------------------------------------------------
-- BNGetBasicBlockHighLevelILFunction
-- -------------------------------------------------------

function core.BNGetBasicBlockHighLevelILFunction(
		block
)
	local result = cdefs.C.BNGetBasicBlockHighLevelILFunction(block)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockHighlight
-- -------------------------------------------------------

function core.BNGetBasicBlockHighlight(
		block
)
	return cdefs.C.BNGetBasicBlockHighlight(block)
end

-- -------------------------------------------------------
-- BNGetBasicBlockImmediateDominator
-- -------------------------------------------------------

function core.BNGetBasicBlockImmediateDominator(
		block, 
		post
)
	local result = cdefs.C.BNGetBasicBlockImmediateDominator(block, post)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockIncomingEdges
-- -------------------------------------------------------

function core.BNGetBasicBlockIncomingEdges(
		block, 
		count
)
	local result = cdefs.C.BNGetBasicBlockIncomingEdges(block, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockIndex
-- -------------------------------------------------------

function core.BNGetBasicBlockIndex(
		block
)
	return cdefs.C.BNGetBasicBlockIndex(block)
end

-- -------------------------------------------------------
-- BNGetBasicBlockInstructionContainingAddress
-- -------------------------------------------------------

function core.BNGetBasicBlockInstructionContainingAddress(
		block, 
		addr, 
		start
)
	return cdefs.C.BNGetBasicBlockInstructionContainingAddress(block, addr, start)
end

-- -------------------------------------------------------
-- BNGetBasicBlockIteratedDominanceFrontier
-- -------------------------------------------------------

function core.BNGetBasicBlockIteratedDominanceFrontier(
		blocks, 
		incomingCount, 
		outputCount
)
	local result = cdefs.C.BNGetBasicBlockIteratedDominanceFrontier(blocks, incomingCount, outputCount)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockLength
-- -------------------------------------------------------

function core.BNGetBasicBlockLength(
		block
)
	return cdefs.C.BNGetBasicBlockLength(block)
end

-- -------------------------------------------------------
-- BNGetBasicBlockLowLevelILFunction
-- -------------------------------------------------------

function core.BNGetBasicBlockLowLevelILFunction(
		block
)
	local result = cdefs.C.BNGetBasicBlockLowLevelILFunction(block)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockMediumLevelILFunction
-- -------------------------------------------------------

function core.BNGetBasicBlockMediumLevelILFunction(
		block
)
	local result = cdefs.C.BNGetBasicBlockMediumLevelILFunction(block)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockOutgoingEdges
-- -------------------------------------------------------

function core.BNGetBasicBlockOutgoingEdges(
		block, 
		count
)
	local result = cdefs.C.BNGetBasicBlockOutgoingEdges(block, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockSource
-- -------------------------------------------------------

function core.BNGetBasicBlockSource(
		block
)
	local result = cdefs.C.BNGetBasicBlockSource(block)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockSourceBlock
-- -------------------------------------------------------

function core.BNGetBasicBlockSourceBlock(
		block
)
	local result = cdefs.C.BNGetBasicBlockSourceBlock(block)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlockStart
-- -------------------------------------------------------

function core.BNGetBasicBlockStart(
		block
)
	return cdefs.C.BNGetBasicBlockStart(block)
end

-- -------------------------------------------------------
-- BNGetBasicBlockStrictDominators
-- -------------------------------------------------------

function core.BNGetBasicBlockStrictDominators(
		block, 
		count, 
		post
)
	local result = cdefs.C.BNGetBasicBlockStrictDominators(block, count, post)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlocksForAddress
-- -------------------------------------------------------

function core.BNGetBasicBlocksForAddress(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetBasicBlocksForAddress(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBasicBlocksStartingAtAddress
-- -------------------------------------------------------

function core.BNGetBasicBlocksStartingAtAddress(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetBasicBlocksStartingAtAddress(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBinaryReaderEndianness
-- -------------------------------------------------------

function core.BNGetBinaryReaderEndianness(
		stream
)
	return cdefs.C.BNGetBinaryReaderEndianness(stream)
end

-- -------------------------------------------------------
-- BNGetBinaryReaderVirtualBase
-- -------------------------------------------------------

function core.BNGetBinaryReaderVirtualBase(
		stream
)
	return cdefs.C.BNGetBinaryReaderVirtualBase(stream)
end

-- -------------------------------------------------------
-- BNGetBinaryViewDefaultLoadSettingsForData
-- -------------------------------------------------------

function core.BNGetBinaryViewDefaultLoadSettingsForData(
		type, 
		data
)
	local result = cdefs.C.BNGetBinaryViewDefaultLoadSettingsForData(type, data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBinaryViewLoadSettingsForData
-- -------------------------------------------------------

function core.BNGetBinaryViewLoadSettingsForData(
		type, 
		data
)
	local result = cdefs.C.BNGetBinaryViewLoadSettingsForData(type, data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBinaryViewTypeByName
-- -------------------------------------------------------

function core.BNGetBinaryViewTypeByName(
		name
)
	local result = cdefs.C.BNGetBinaryViewTypeByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBinaryViewTypeLibraries
-- -------------------------------------------------------

function core.BNGetBinaryViewTypeLibraries(
		view, 
		count
)
	local result = cdefs.C.BNGetBinaryViewTypeLibraries(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBinaryViewTypeLibrary
-- -------------------------------------------------------

function core.BNGetBinaryViewTypeLibrary(
		view, 
		name
)
	local result = cdefs.C.BNGetBinaryViewTypeLibrary(view, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBinaryViewTypeLongName
-- -------------------------------------------------------

function core.BNGetBinaryViewTypeLongName(
		type
)
	local result = cdefs.C.BNGetBinaryViewTypeLongName(type)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetBinaryViewTypeName
-- -------------------------------------------------------

function core.BNGetBinaryViewTypeName(
		type
)
	local result = cdefs.C.BNGetBinaryViewTypeName(type)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetBinaryViewTypes
-- -------------------------------------------------------

function core.BNGetBinaryViewTypes(
		count
)
	local result = cdefs.C.BNGetBinaryViewTypes(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBinaryViewTypesForData
-- -------------------------------------------------------

function core.BNGetBinaryViewTypesForData(
		data, 
		count
)
	local result = cdefs.C.BNGetBinaryViewTypesForData(data, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetBinaryWriterEndianness
-- -------------------------------------------------------

function core.BNGetBinaryWriterEndianness(
		stream
)
	return cdefs.C.BNGetBinaryWriterEndianness(stream)
end

-- -------------------------------------------------------
-- BNGetBuildId
-- -------------------------------------------------------

function core.BNGetBuildId(
)
	return cdefs.C.BNGetBuildId()
end

-- -------------------------------------------------------
-- BNGetBundledPluginDirectory
-- -------------------------------------------------------

function core.BNGetBundledPluginDirectory(
)
	local result = cdefs.C.BNGetBundledPluginDirectory()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetCallRegisterStackAdjustment
-- -------------------------------------------------------

function core.BNGetCallRegisterStackAdjustment(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetCallRegisterStackAdjustment(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCallRegisterStackAdjustmentForRegisterStack
-- -------------------------------------------------------

function core.BNGetCallRegisterStackAdjustmentForRegisterStack(
		func, 
		arch, 
		addr, 
		regStack
)
	return cdefs.C.BNGetCallRegisterStackAdjustmentForRegisterStack(func, arch, addr, regStack)
end

-- -------------------------------------------------------
-- BNGetCallStackAdjustment
-- -------------------------------------------------------

function core.BNGetCallStackAdjustment(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNGetCallStackAdjustment(func, arch, addr)
end

-- -------------------------------------------------------
-- BNGetCallTypeAdjustment
-- -------------------------------------------------------

function core.BNGetCallTypeAdjustment(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNGetCallTypeAdjustment(func, arch, addr)
end

-- -------------------------------------------------------
-- BNGetCalleeSavedRegisters
-- -------------------------------------------------------

function core.BNGetCalleeSavedRegisters(
		cc, 
		count
)
	local result = cdefs.C.BNGetCalleeSavedRegisters(cc, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCallees
-- -------------------------------------------------------

function core.BNGetCallees(
		view, 
		callSite, 
		count
)
	local result = cdefs.C.BNGetCallees(view, callSite, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCallerSavedRegisters
-- -------------------------------------------------------

function core.BNGetCallerSavedRegisters(
		cc, 
		count
)
	local result = cdefs.C.BNGetCallerSavedRegisters(cc, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCallers
-- -------------------------------------------------------

function core.BNGetCallers(
		view, 
		callee, 
		count
)
	local result = cdefs.C.BNGetCallers(view, callee, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCallingConventionArchitecture
-- -------------------------------------------------------

function core.BNGetCallingConventionArchitecture(
		cc
)
	local result = cdefs.C.BNGetCallingConventionArchitecture(cc)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCallingConventionName
-- -------------------------------------------------------

function core.BNGetCallingConventionName(
		cc
)
	local result = cdefs.C.BNGetCallingConventionName(cc)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetChildType
-- -------------------------------------------------------

function core.BNGetChildType(
		type
)
	return cdefs.C.BNGetChildType(type)
end

-- -------------------------------------------------------
-- BNGetChoiceInput
-- -------------------------------------------------------

function core.BNGetChoiceInput(
		result, 
		prompt, 
		title, 
		choices, 
		count
)
	return cdefs.C.BNGetChoiceInput(result, prompt, title, choices, count)
end

-- -------------------------------------------------------
-- BNGetCodeReferences
-- -------------------------------------------------------

function core.BNGetCodeReferences(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetCodeReferences(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCodeReferencesForType
-- -------------------------------------------------------

function core.BNGetCodeReferencesForType(
		view, 
		type, 
		count
)
	local result = cdefs.C.BNGetCodeReferencesForType(view, type, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCodeReferencesForTypeField
-- -------------------------------------------------------

function core.BNGetCodeReferencesForTypeField(
		view, 
		type, 
		offset, 
		count
)
	local result = cdefs.C.BNGetCodeReferencesForTypeField(view, type, offset, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCodeReferencesForTypeFieldsFrom
-- -------------------------------------------------------

function core.BNGetCodeReferencesForTypeFieldsFrom(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetCodeReferencesForTypeFieldsFrom(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCodeReferencesForTypeFieldsFromInRange
-- -------------------------------------------------------

function core.BNGetCodeReferencesForTypeFieldsFromInRange(
		view, 
		addr, 
		len, 
		count
)
	local result = cdefs.C.BNGetCodeReferencesForTypeFieldsFromInRange(view, addr, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCodeReferencesForTypeFrom
-- -------------------------------------------------------

function core.BNGetCodeReferencesForTypeFrom(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetCodeReferencesForTypeFrom(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCodeReferencesForTypeFromInRange
-- -------------------------------------------------------

function core.BNGetCodeReferencesForTypeFromInRange(
		view, 
		addr, 
		len, 
		count
)
	local result = cdefs.C.BNGetCodeReferencesForTypeFromInRange(view, addr, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCodeReferencesFrom
-- -------------------------------------------------------

function core.BNGetCodeReferencesFrom(
		view, 
		src, 
		count
)
	local result = cdefs.C.BNGetCodeReferencesFrom(view, src, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCodeReferencesFromInRange
-- -------------------------------------------------------

function core.BNGetCodeReferencesFromInRange(
		view, 
		src, 
		len, 
		count
)
	local result = cdefs.C.BNGetCodeReferencesFromInRange(view, src, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCodeReferencesInRange
-- -------------------------------------------------------

function core.BNGetCodeReferencesInRange(
		view, 
		addr, 
		len, 
		count
)
	local result = cdefs.C.BNGetCodeReferencesInRange(view, addr, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCommentForAddress
-- -------------------------------------------------------

function core.BNGetCommentForAddress(
		func, 
		addr
)
	local result = cdefs.C.BNGetCommentForAddress(func, addr)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetCommentedAddresses
-- -------------------------------------------------------

function core.BNGetCommentedAddresses(
		func, 
		count
)
	local result = cdefs.C.BNGetCommentedAddresses(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetComponentByGuid
-- -------------------------------------------------------

function core.BNGetComponentByGuid(
		view, 
		guid
)
	local result = cdefs.C.BNGetComponentByGuid(view, guid)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetComponentByPath
-- -------------------------------------------------------

function core.BNGetComponentByPath(
		view, 
		path
)
	local result = cdefs.C.BNGetComponentByPath(view, path)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetConstantData
-- -------------------------------------------------------

function core.BNGetConstantData(
		func, 
		state, 
		value, 
		size
)
	local result = cdefs.C.BNGetConstantData(func, state, value, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetConstantsReferencedByInstruction
-- -------------------------------------------------------

function core.BNGetConstantsReferencedByInstruction(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetConstantsReferencedByInstruction(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetConstantsReferencedByInstructionIfAvailable
-- -------------------------------------------------------

function core.BNGetConstantsReferencedByInstructionIfAvailable(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetConstantsReferencedByInstructionIfAvailable(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetCurrentCoreABIVersion
-- -------------------------------------------------------

function core.BNGetCurrentCoreABIVersion(
)
	return cdefs.C.BNGetCurrentCoreABIVersion()
end

-- -------------------------------------------------------
-- BNGetCurrentOffset
-- -------------------------------------------------------

function core.BNGetCurrentOffset(
		file
)
	return cdefs.C.BNGetCurrentOffset(file)
end

-- -------------------------------------------------------
-- BNGetCurrentStackTraceString
-- -------------------------------------------------------

function core.BNGetCurrentStackTraceString(
)
	local result = cdefs.C.BNGetCurrentStackTraceString()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetCurrentView
-- -------------------------------------------------------

function core.BNGetCurrentView(
		file
)
	local result = cdefs.C.BNGetCurrentView(file)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetDataBufferByte
-- -------------------------------------------------------

function core.BNGetDataBufferByte(
		buf, 
		offset
)
	return cdefs.C.BNGetDataBufferByte(buf, offset)
end

-- -------------------------------------------------------
-- BNGetDataBufferContents
-- -------------------------------------------------------

function core.BNGetDataBufferContents(
		buf
)
	local result = cdefs.C.BNGetDataBufferContents(buf)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataBufferContentsAt
-- -------------------------------------------------------

function core.BNGetDataBufferContentsAt(
		buf, 
		offset
)
	local result = cdefs.C.BNGetDataBufferContentsAt(buf, offset)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataBufferLength
-- -------------------------------------------------------

function core.BNGetDataBufferLength(
		buf
)
	return cdefs.C.BNGetDataBufferLength(buf)
end

-- -------------------------------------------------------
-- BNGetDataBufferSlice
-- -------------------------------------------------------

function core.BNGetDataBufferSlice(
		buf, 
		start, 
		len
)
	local result = cdefs.C.BNGetDataBufferSlice(buf, start, len)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataReferences
-- -------------------------------------------------------

function core.BNGetDataReferences(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetDataReferences(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataReferencesForType
-- -------------------------------------------------------

function core.BNGetDataReferencesForType(
		view, 
		type, 
		count
)
	local result = cdefs.C.BNGetDataReferencesForType(view, type, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataReferencesForTypeField
-- -------------------------------------------------------

function core.BNGetDataReferencesForTypeField(
		view, 
		type, 
		offset, 
		count
)
	local result = cdefs.C.BNGetDataReferencesForTypeField(view, type, offset, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataReferencesFrom
-- -------------------------------------------------------

function core.BNGetDataReferencesFrom(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetDataReferencesFrom(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataReferencesFromForTypeField
-- -------------------------------------------------------

function core.BNGetDataReferencesFromForTypeField(
		view, 
		type, 
		offset, 
		count
)
	local result = cdefs.C.BNGetDataReferencesFromForTypeField(view, type, offset, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataReferencesFromInRange
-- -------------------------------------------------------

function core.BNGetDataReferencesFromInRange(
		view, 
		addr, 
		len, 
		count
)
	local result = cdefs.C.BNGetDataReferencesFromInRange(view, addr, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataReferencesInRange
-- -------------------------------------------------------

function core.BNGetDataReferencesInRange(
		view, 
		addr, 
		len, 
		count
)
	local result = cdefs.C.BNGetDataReferencesInRange(view, addr, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataRendererContainer
-- -------------------------------------------------------

function core.BNGetDataRendererContainer(
)
	local result = cdefs.C.BNGetDataRendererContainer()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataTagReferences
-- -------------------------------------------------------

function core.BNGetDataTagReferences(
		view, 
		count
)
	local result = cdefs.C.BNGetDataTagReferences(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataTags
-- -------------------------------------------------------

function core.BNGetDataTags(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetDataTags(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataTagsInRange
-- -------------------------------------------------------

function core.BNGetDataTagsInRange(
		view, 
		start, 
		end_, 
		count
)
	local result = cdefs.C.BNGetDataTagsInRange(view, start, end_, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataTagsOfType
-- -------------------------------------------------------

function core.BNGetDataTagsOfType(
		view, 
		addr, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetDataTagsOfType(view, addr, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataVariableAtAddress
-- -------------------------------------------------------

function core.BNGetDataVariableAtAddress(
		view, 
		addr, 
		var
)
	return cdefs.C.BNGetDataVariableAtAddress(view, addr, var)
end

-- -------------------------------------------------------
-- BNGetDataVariableParentComponents
-- -------------------------------------------------------

function core.BNGetDataVariableParentComponents(
		view, 
		dataVariable, 
		count
)
	local result = cdefs.C.BNGetDataVariableParentComponents(view, dataVariable, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDataVariables
-- -------------------------------------------------------

function core.BNGetDataVariables(
		view, 
		count
)
	local result = cdefs.C.BNGetDataVariables(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDatabaseCurrentSnapshot
-- -------------------------------------------------------

function core.BNGetDatabaseCurrentSnapshot(
		database
)
	local result = cdefs.C.BNGetDatabaseCurrentSnapshot(database)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDatabaseFile
-- -------------------------------------------------------

function core.BNGetDatabaseFile(
		database
)
	local result = cdefs.C.BNGetDatabaseFile(database)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDatabaseGlobalKeys
-- -------------------------------------------------------

function core.BNGetDatabaseGlobalKeys(
		database, 
		count
)
	local result = cdefs.C.BNGetDatabaseGlobalKeys(database, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDatabaseSnapshot
-- -------------------------------------------------------

function core.BNGetDatabaseSnapshot(
		database, 
		id
)
	local result = cdefs.C.BNGetDatabaseSnapshot(database, id)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDatabaseSnapshots
-- -------------------------------------------------------

function core.BNGetDatabaseSnapshots(
		database, 
		count
)
	local result = cdefs.C.BNGetDatabaseSnapshots(database, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugDataVariableByAddress
-- -------------------------------------------------------

function core.BNGetDebugDataVariableByAddress(
		debugInfo, 
		parserName, 
		address
)
	local result = cdefs.C.BNGetDebugDataVariableByAddress(debugInfo, parserName, address)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugDataVariableByName
-- -------------------------------------------------------

function core.BNGetDebugDataVariableByName(
		debugInfo, 
		parserName, 
		variableName
)
	local result = cdefs.C.BNGetDebugDataVariableByName(debugInfo, parserName, variableName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugDataVariables
-- -------------------------------------------------------

function core.BNGetDebugDataVariables(
		debugInfo, 
		name, 
		count
)
	local result = cdefs.C.BNGetDebugDataVariables(debugInfo, name, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugDataVariablesByAddress
-- -------------------------------------------------------

function core.BNGetDebugDataVariablesByAddress(
		debugInfo, 
		address, 
		count
)
	local result = cdefs.C.BNGetDebugDataVariablesByAddress(debugInfo, address, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugDataVariablesByName
-- -------------------------------------------------------

function core.BNGetDebugDataVariablesByName(
		debugInfo, 
		variableName, 
		count
)
	local result = cdefs.C.BNGetDebugDataVariablesByName(debugInfo, variableName, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugFunctions
-- -------------------------------------------------------

function core.BNGetDebugFunctions(
		debugInfo, 
		name, 
		count
)
	local result = cdefs.C.BNGetDebugFunctions(debugInfo, name, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugInfo
-- -------------------------------------------------------

function core.BNGetDebugInfo(
		view
)
	local result = cdefs.C.BNGetDebugInfo(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugInfoParserByName
-- -------------------------------------------------------

function core.BNGetDebugInfoParserByName(
		name
)
	local result = cdefs.C.BNGetDebugInfoParserByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugInfoParserName
-- -------------------------------------------------------

function core.BNGetDebugInfoParserName(
		parser
)
	local result = cdefs.C.BNGetDebugInfoParserName(parser)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetDebugInfoParsers
-- -------------------------------------------------------

function core.BNGetDebugInfoParsers(
		count
)
	local result = cdefs.C.BNGetDebugInfoParsers(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugInfoParsersForView
-- -------------------------------------------------------

function core.BNGetDebugInfoParsersForView(
		view, 
		count
)
	local result = cdefs.C.BNGetDebugInfoParsersForView(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugParserNames
-- -------------------------------------------------------

function core.BNGetDebugParserNames(
		debugInfo, 
		count
)
	local result = cdefs.C.BNGetDebugParserNames(debugInfo, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugTypeByName
-- -------------------------------------------------------

function core.BNGetDebugTypeByName(
		debugInfo, 
		parserName, 
		typeName
)
	local result = cdefs.C.BNGetDebugTypeByName(debugInfo, parserName, typeName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugTypes
-- -------------------------------------------------------

function core.BNGetDebugTypes(
		debugInfo, 
		name, 
		count
)
	local result = cdefs.C.BNGetDebugTypes(debugInfo, name, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDebugTypesByName
-- -------------------------------------------------------

function core.BNGetDebugTypesByName(
		debugInfo, 
		typeName, 
		count
)
	local result = cdefs.C.BNGetDebugTypesByName(debugInfo, typeName, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDefaultArchitecture
-- -------------------------------------------------------

function core.BNGetDefaultArchitecture(
		view
)
	local result = cdefs.C.BNGetDefaultArchitecture(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDefaultArchitectureFlagConditionLowLevelIL
-- -------------------------------------------------------

function core.BNGetDefaultArchitectureFlagConditionLowLevelIL(
		arch, 
		cond, 
		semClass, 
		il
)
	return cdefs.C.BNGetDefaultArchitectureFlagConditionLowLevelIL(arch, cond, semClass, il)
end

-- -------------------------------------------------------
-- BNGetDefaultArchitectureFlagWriteLowLevelIL
-- -------------------------------------------------------

function core.BNGetDefaultArchitectureFlagWriteLowLevelIL(
		arch, 
		op, 
		size, 
		role, 
		operands, 
		operandCount, 
		il
)
	return cdefs.C.BNGetDefaultArchitectureFlagWriteLowLevelIL(arch, op, size, role, operands, operandCount, il)
end

-- -------------------------------------------------------
-- BNGetDefaultEndianness
-- -------------------------------------------------------

function core.BNGetDefaultEndianness(
		view
)
	return cdefs.C.BNGetDefaultEndianness(view)
end

-- -------------------------------------------------------
-- BNGetDefaultIncomingVariableForParameterVariable
-- -------------------------------------------------------

function core.BNGetDefaultIncomingVariableForParameterVariable(
		cc, 
		var
)
	return cdefs.C.BNGetDefaultIncomingVariableForParameterVariable(cc, var)
end

-- -------------------------------------------------------
-- BNGetDefaultIndexForMediumLevelILVariableDefinition
-- -------------------------------------------------------

function core.BNGetDefaultIndexForMediumLevelILVariableDefinition(
		func, 
		var, 
		instrIndex
)
	return cdefs.C.BNGetDefaultIndexForMediumLevelILVariableDefinition(func, var, instrIndex)
end

-- -------------------------------------------------------
-- BNGetDefaultParameterVariableForIncomingVariable
-- -------------------------------------------------------

function core.BNGetDefaultParameterVariableForIncomingVariable(
		cc, 
		var
)
	return cdefs.C.BNGetDefaultParameterVariableForIncomingVariable(cc, var)
end

-- -------------------------------------------------------
-- BNGetDefaultPlatform
-- -------------------------------------------------------

function core.BNGetDefaultPlatform(
		view
)
	local result = cdefs.C.BNGetDefaultPlatform(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDirectoryNameInput
-- -------------------------------------------------------

function core.BNGetDirectoryNameInput(
		result, 
		prompt, 
		defaultName
)
	return cdefs.C.BNGetDirectoryNameInput(result, prompt, defaultName)
end

-- -------------------------------------------------------
-- BNGetDisassemblyGutterWidth
-- -------------------------------------------------------

function core.BNGetDisassemblyGutterWidth(
		settings
)
	return cdefs.C.BNGetDisassemblyGutterWidth(settings)
end

-- -------------------------------------------------------
-- BNGetDisassemblyMaximumSymbolWidth
-- -------------------------------------------------------

function core.BNGetDisassemblyMaximumSymbolWidth(
		settings
)
	return cdefs.C.BNGetDisassemblyMaximumSymbolWidth(settings)
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererArchitecture
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererArchitecture(
		renderer
)
	local result = cdefs.C.BNGetDisassemblyTextRendererArchitecture(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererBasicBlock
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererBasicBlock(
		renderer
)
	local result = cdefs.C.BNGetDisassemblyTextRendererBasicBlock(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererFunction
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererFunction(
		renderer
)
	local result = cdefs.C.BNGetDisassemblyTextRendererFunction(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererHighLevelILFunction
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererHighLevelILFunction(
		renderer
)
	local result = cdefs.C.BNGetDisassemblyTextRendererHighLevelILFunction(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererInstructionAnnotations
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererInstructionAnnotations(
		renderer, 
		addr, 
		count
)
	local result = cdefs.C.BNGetDisassemblyTextRendererInstructionAnnotations(renderer, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererInstructionText
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererInstructionText(
		renderer, 
		addr, 
		len, 
		result, 
		count
)
	return cdefs.C.BNGetDisassemblyTextRendererInstructionText(renderer, addr, len, result, count)
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererIntegerTokens
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererIntegerTokens(
		renderer, 
		token, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetDisassemblyTextRendererIntegerTokens(renderer, token, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererLines
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererLines(
		renderer, 
		addr, 
		len, 
		result, 
		count
)
	return cdefs.C.BNGetDisassemblyTextRendererLines(renderer, addr, len, result, count)
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererLowLevelILFunction
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererLowLevelILFunction(
		renderer
)
	local result = cdefs.C.BNGetDisassemblyTextRendererLowLevelILFunction(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererMediumLevelILFunction
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererMediumLevelILFunction(
		renderer
)
	local result = cdefs.C.BNGetDisassemblyTextRendererMediumLevelILFunction(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererSettings
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererSettings(
		renderer
)
	local result = cdefs.C.BNGetDisassemblyTextRendererSettings(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererStackVariableReferenceTokens
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererStackVariableReferenceTokens(
		renderer, 
		ref, 
		count
)
	local result = cdefs.C.BNGetDisassemblyTextRendererStackVariableReferenceTokens(renderer, ref, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDisassemblyTextRendererSymbolTokens
-- -------------------------------------------------------

function core.BNGetDisassemblyTextRendererSymbolTokens(
		renderer, 
		addr, 
		size, 
		operand, 
		result, 
		count
)
	return cdefs.C.BNGetDisassemblyTextRendererSymbolTokens(renderer, addr, size, operand, result, count)
end

-- -------------------------------------------------------
-- BNGetDisassemblyWidth
-- -------------------------------------------------------

function core.BNGetDisassemblyWidth(
		settings
)
	return cdefs.C.BNGetDisassemblyWidth(settings)
end

-- -------------------------------------------------------
-- BNGetDisplayStringForInteger
-- -------------------------------------------------------

function core.BNGetDisplayStringForInteger(
		binaryView, 
		type, 
		value, 
		inputWidth, 
		isSigned
)
	local result = cdefs.C.BNGetDisplayStringForInteger(binaryView, type, value, inputWidth, isSigned)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetDownloadProviderByName
-- -------------------------------------------------------

function core.BNGetDownloadProviderByName(
		name
)
	local result = cdefs.C.BNGetDownloadProviderByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDownloadProviderList
-- -------------------------------------------------------

function core.BNGetDownloadProviderList(
		count
)
	local result = cdefs.C.BNGetDownloadProviderList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetDownloadProviderName
-- -------------------------------------------------------

function core.BNGetDownloadProviderName(
		provider
)
	local result = cdefs.C.BNGetDownloadProviderName(provider)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetEndOffset
-- -------------------------------------------------------

function core.BNGetEndOffset(
		view
)
	return cdefs.C.BNGetEndOffset(view)
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerAuthenticationMethods
-- -------------------------------------------------------

function core.BNGetEnterpriseServerAuthenticationMethods(
		methods, 
		names
)
	return cdefs.C.BNGetEnterpriseServerAuthenticationMethods(methods, names)
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerBuildId
-- -------------------------------------------------------

function core.BNGetEnterpriseServerBuildId(
)
	local result = cdefs.C.BNGetEnterpriseServerBuildId()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerId
-- -------------------------------------------------------

function core.BNGetEnterpriseServerId(
)
	local result = cdefs.C.BNGetEnterpriseServerId()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerLastError
-- -------------------------------------------------------

function core.BNGetEnterpriseServerLastError(
)
	local result = cdefs.C.BNGetEnterpriseServerLastError()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerLicenseDuration
-- -------------------------------------------------------

function core.BNGetEnterpriseServerLicenseDuration(
)
	return cdefs.C.BNGetEnterpriseServerLicenseDuration()
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerLicenseExpirationTime
-- -------------------------------------------------------

function core.BNGetEnterpriseServerLicenseExpirationTime(
)
	return cdefs.C.BNGetEnterpriseServerLicenseExpirationTime()
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerName
-- -------------------------------------------------------

function core.BNGetEnterpriseServerName(
)
	local result = cdefs.C.BNGetEnterpriseServerName()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerReservationTimeLimit
-- -------------------------------------------------------

function core.BNGetEnterpriseServerReservationTimeLimit(
)
	return cdefs.C.BNGetEnterpriseServerReservationTimeLimit()
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerToken
-- -------------------------------------------------------

function core.BNGetEnterpriseServerToken(
)
	local result = cdefs.C.BNGetEnterpriseServerToken()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerUrl
-- -------------------------------------------------------

function core.BNGetEnterpriseServerUrl(
)
	local result = cdefs.C.BNGetEnterpriseServerUrl()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerUsername
-- -------------------------------------------------------

function core.BNGetEnterpriseServerUsername(
)
	local result = cdefs.C.BNGetEnterpriseServerUsername()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetEnterpriseServerVersion
-- -------------------------------------------------------

function core.BNGetEnterpriseServerVersion(
)
	return cdefs.C.BNGetEnterpriseServerVersion()
end

-- -------------------------------------------------------
-- BNGetEntropy
-- -------------------------------------------------------

function core.BNGetEntropy(
		view, 
		offset, 
		len, 
		blockSize, 
		result
)
	return cdefs.C.BNGetEntropy(view, offset, len, blockSize, result)
end

-- -------------------------------------------------------
-- BNGetEntryPoint
-- -------------------------------------------------------

function core.BNGetEntryPoint(
		view
)
	return cdefs.C.BNGetEntryPoint(view)
end

-- -------------------------------------------------------
-- BNGetEnumerationBuilderMembers
-- -------------------------------------------------------

function core.BNGetEnumerationBuilderMembers(
		e, 
		count
)
	local result = cdefs.C.BNGetEnumerationBuilderMembers(e, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetEnumerationMembers
-- -------------------------------------------------------

function core.BNGetEnumerationMembers(
		e, 
		count
)
	local result = cdefs.C.BNGetEnumerationMembers(e, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetEnumerationTokensForValue
-- -------------------------------------------------------

function core.BNGetEnumerationTokensForValue(
		e, 
		value, 
		width, 
		count
)
	local result = cdefs.C.BNGetEnumerationTokensForValue(e, value, width, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetErrorForDownloadInstance
-- -------------------------------------------------------

function core.BNGetErrorForDownloadInstance(
		instance
)
	local result = cdefs.C.BNGetErrorForDownloadInstance(instance)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetExistingViews
-- -------------------------------------------------------

function core.BNGetExistingViews(
		file, 
		count
)
	local result = cdefs.C.BNGetExistingViews(file, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetExpressionParserMagicValue
-- -------------------------------------------------------

function core.BNGetExpressionParserMagicValue(
		view, 
		name, 
		value
)
	return cdefs.C.BNGetExpressionParserMagicValue(view, name, value)
end

-- -------------------------------------------------------
-- BNGetExternalNameSpace
-- -------------------------------------------------------

function core.BNGetExternalNameSpace(
)
	return cdefs.C.BNGetExternalNameSpace()
end

-- -------------------------------------------------------
-- BNGetFileExtension
-- -------------------------------------------------------

function core.BNGetFileExtension(
		path
)
	local result = cdefs.C.BNGetFileExtension(path)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetFileForView
-- -------------------------------------------------------

function core.BNGetFileForView(
		view
)
	local result = cdefs.C.BNGetFileForView(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFileMetadataDatabase
-- -------------------------------------------------------

function core.BNGetFileMetadataDatabase(
		file
)
	local result = cdefs.C.BNGetFileMetadataDatabase(file)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFileName
-- -------------------------------------------------------

function core.BNGetFileName(
		path
)
	local result = cdefs.C.BNGetFileName(path)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetFilePathsInDirectory
-- -------------------------------------------------------

function core.BNGetFilePathsInDirectory(
		path, 
		count
)
	local result = cdefs.C.BNGetFilePathsInDirectory(path, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFileViewOfType
-- -------------------------------------------------------

function core.BNGetFileViewOfType(
		file, 
		name
)
	local result = cdefs.C.BNGetFileViewOfType(file, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFilename
-- -------------------------------------------------------

function core.BNGetFilename(
		file
)
	local result = cdefs.C.BNGetFilename(file)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetFirstLinearViewObjectChild
-- -------------------------------------------------------

function core.BNGetFirstLinearViewObjectChild(
		obj
)
	local result = cdefs.C.BNGetFirstLinearViewObjectChild(obj)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlagsReadByLiftedILInstruction
-- -------------------------------------------------------

function core.BNGetFlagsReadByLiftedILInstruction(
		func, 
		i, 
		count
)
	local result = cdefs.C.BNGetFlagsReadByLiftedILInstruction(func, i, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlagsWrittenByLiftedILInstruction
-- -------------------------------------------------------

function core.BNGetFlagsWrittenByLiftedILInstruction(
		func, 
		i, 
		count
)
	local result = cdefs.C.BNGetFlagsWrittenByLiftedILInstruction(func, i, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFloatArgumentRegisters
-- -------------------------------------------------------

function core.BNGetFloatArgumentRegisters(
		cc, 
		count
)
	local result = cdefs.C.BNGetFloatArgumentRegisters(cc, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFloatReturnValueRegister
-- -------------------------------------------------------

function core.BNGetFloatReturnValueRegister(
		cc
)
	return cdefs.C.BNGetFloatReturnValueRegister(cc)
end

-- -------------------------------------------------------
-- BNGetFlowGraphBasicBlock
-- -------------------------------------------------------

function core.BNGetFlowGraphBasicBlock(
		node
)
	local result = cdefs.C.BNGetFlowGraphBasicBlock(node)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphHeight
-- -------------------------------------------------------

function core.BNGetFlowGraphHeight(
		graph
)
	return cdefs.C.BNGetFlowGraphHeight(graph)
end

-- -------------------------------------------------------
-- BNGetFlowGraphHighLevelILFunction
-- -------------------------------------------------------

function core.BNGetFlowGraphHighLevelILFunction(
		graph
)
	local result = cdefs.C.BNGetFlowGraphHighLevelILFunction(graph)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphLowLevelILFunction
-- -------------------------------------------------------

function core.BNGetFlowGraphLowLevelILFunction(
		graph
)
	local result = cdefs.C.BNGetFlowGraphLowLevelILFunction(graph)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphMediumLevelILFunction
-- -------------------------------------------------------

function core.BNGetFlowGraphMediumLevelILFunction(
		graph
)
	local result = cdefs.C.BNGetFlowGraphMediumLevelILFunction(graph)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphNode
-- -------------------------------------------------------

function core.BNGetFlowGraphNode(
		graph, 
		i
)
	local result = cdefs.C.BNGetFlowGraphNode(graph, i)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodeHeight
-- -------------------------------------------------------

function core.BNGetFlowGraphNodeHeight(
		node
)
	return cdefs.C.BNGetFlowGraphNodeHeight(node)
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodeHighlight
-- -------------------------------------------------------

function core.BNGetFlowGraphNodeHighlight(
		node
)
	return cdefs.C.BNGetFlowGraphNodeHighlight(node)
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodeIncomingEdges
-- -------------------------------------------------------

function core.BNGetFlowGraphNodeIncomingEdges(
		node, 
		count
)
	local result = cdefs.C.BNGetFlowGraphNodeIncomingEdges(node, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodeLines
-- -------------------------------------------------------

function core.BNGetFlowGraphNodeLines(
		node, 
		count
)
	local result = cdefs.C.BNGetFlowGraphNodeLines(node, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodeOutgoingEdges
-- -------------------------------------------------------

function core.BNGetFlowGraphNodeOutgoingEdges(
		node, 
		count
)
	local result = cdefs.C.BNGetFlowGraphNodeOutgoingEdges(node, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodeOwner
-- -------------------------------------------------------

function core.BNGetFlowGraphNodeOwner(
		node
)
	local result = cdefs.C.BNGetFlowGraphNodeOwner(node)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodeWidth
-- -------------------------------------------------------

function core.BNGetFlowGraphNodeWidth(
		node
)
	return cdefs.C.BNGetFlowGraphNodeWidth(node)
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodeX
-- -------------------------------------------------------

function core.BNGetFlowGraphNodeX(
		node
)
	return cdefs.C.BNGetFlowGraphNodeX(node)
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodeY
-- -------------------------------------------------------

function core.BNGetFlowGraphNodeY(
		node
)
	return cdefs.C.BNGetFlowGraphNodeY(node)
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodes
-- -------------------------------------------------------

function core.BNGetFlowGraphNodes(
		graph, 
		count
)
	local result = cdefs.C.BNGetFlowGraphNodes(graph, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphNodesInRegion
-- -------------------------------------------------------

function core.BNGetFlowGraphNodesInRegion(
		graph, 
		left, 
		top, 
		right, 
		bottom, 
		count
)
	local result = cdefs.C.BNGetFlowGraphNodesInRegion(graph, left, top, right, bottom, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFlowGraphWidth
-- -------------------------------------------------------

function core.BNGetFlowGraphWidth(
		graph
)
	return cdefs.C.BNGetFlowGraphWidth(graph)
end

-- -------------------------------------------------------
-- BNGetFormInput
-- -------------------------------------------------------

function core.BNGetFormInput(
		fields, 
		count, 
		title
)
	return cdefs.C.BNGetFormInput(fields, count, title)
end

-- -------------------------------------------------------
-- BNGetFullWidthArchitectureRegisters
-- -------------------------------------------------------

function core.BNGetFullWidthArchitectureRegisters(
		arch, 
		count
)
	local result = cdefs.C.BNGetFullWidthArchitectureRegisters(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionAddressRanges
-- -------------------------------------------------------

function core.BNGetFunctionAddressRanges(
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionAddressRanges(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionAllTagReferences
-- -------------------------------------------------------

function core.BNGetFunctionAllTagReferences(
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionAllTagReferences(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionAnalysisPerformanceInfo
-- -------------------------------------------------------

function core.BNGetFunctionAnalysisPerformanceInfo(
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionAnalysisPerformanceInfo(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionAnalysisSkipOverride
-- -------------------------------------------------------

function core.BNGetFunctionAnalysisSkipOverride(
		func
)
	return cdefs.C.BNGetFunctionAnalysisSkipOverride(func)
end

-- -------------------------------------------------------
-- BNGetFunctionArchitecture
-- -------------------------------------------------------

function core.BNGetFunctionArchitecture(
		func
)
	local result = cdefs.C.BNGetFunctionArchitecture(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionBasicBlockAtAddress
-- -------------------------------------------------------

function core.BNGetFunctionBasicBlockAtAddress(
		func, 
		arch, 
		addr
)
	local result = cdefs.C.BNGetFunctionBasicBlockAtAddress(func, arch, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionBasicBlockList
-- -------------------------------------------------------

function core.BNGetFunctionBasicBlockList(
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionBasicBlockList(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionBlockAnnotations
-- -------------------------------------------------------

function core.BNGetFunctionBlockAnnotations(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetFunctionBlockAnnotations(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionCallSites
-- -------------------------------------------------------

function core.BNGetFunctionCallSites(
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionCallSites(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionCallingConvention
-- -------------------------------------------------------

function core.BNGetFunctionCallingConvention(
		func
)
	return cdefs.C.BNGetFunctionCallingConvention(func)
end

-- -------------------------------------------------------
-- BNGetFunctionClobberedRegisters
-- -------------------------------------------------------

function core.BNGetFunctionClobberedRegisters(
		func
)
	return cdefs.C.BNGetFunctionClobberedRegisters(func)
end

-- -------------------------------------------------------
-- BNGetFunctionComment
-- -------------------------------------------------------

function core.BNGetFunctionComment(
		func
)
	local result = cdefs.C.BNGetFunctionComment(func)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetFunctionData
-- -------------------------------------------------------

function core.BNGetFunctionData(
		func
)
	local result = cdefs.C.BNGetFunctionData(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionForFlowGraph
-- -------------------------------------------------------

function core.BNGetFunctionForFlowGraph(
		graph
)
	local result = cdefs.C.BNGetFunctionForFlowGraph(graph)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionGlobalPointerValue
-- -------------------------------------------------------

function core.BNGetFunctionGlobalPointerValue(
		func
)
	return cdefs.C.BNGetFunctionGlobalPointerValue(func)
end

-- -------------------------------------------------------
-- BNGetFunctionHighLevelIL
-- -------------------------------------------------------

function core.BNGetFunctionHighLevelIL(
		func
)
	local result = cdefs.C.BNGetFunctionHighLevelIL(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionHighLevelILIfAvailable
-- -------------------------------------------------------

function core.BNGetFunctionHighLevelILIfAvailable(
		func
)
	local result = cdefs.C.BNGetFunctionHighLevelILIfAvailable(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionHighestAddress
-- -------------------------------------------------------

function core.BNGetFunctionHighestAddress(
		func
)
	return cdefs.C.BNGetFunctionHighestAddress(func)
end

-- -------------------------------------------------------
-- BNGetFunctionLanguageRepresentation
-- -------------------------------------------------------

function core.BNGetFunctionLanguageRepresentation(
		func
)
	local result = cdefs.C.BNGetFunctionLanguageRepresentation(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionLanguageRepresentationIfAvailable
-- -------------------------------------------------------

function core.BNGetFunctionLanguageRepresentationIfAvailable(
		func
)
	local result = cdefs.C.BNGetFunctionLanguageRepresentationIfAvailable(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionLiftedIL
-- -------------------------------------------------------

function core.BNGetFunctionLiftedIL(
		func
)
	local result = cdefs.C.BNGetFunctionLiftedIL(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionLiftedILIfAvailable
-- -------------------------------------------------------

function core.BNGetFunctionLiftedILIfAvailable(
		func
)
	local result = cdefs.C.BNGetFunctionLiftedILIfAvailable(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionLowLevelIL
-- -------------------------------------------------------

function core.BNGetFunctionLowLevelIL(
		func
)
	local result = cdefs.C.BNGetFunctionLowLevelIL(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionLowLevelILIfAvailable
-- -------------------------------------------------------

function core.BNGetFunctionLowLevelILIfAvailable(
		func
)
	local result = cdefs.C.BNGetFunctionLowLevelILIfAvailable(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionLowestAddress
-- -------------------------------------------------------

function core.BNGetFunctionLowestAddress(
		func
)
	return cdefs.C.BNGetFunctionLowestAddress(func)
end

-- -------------------------------------------------------
-- BNGetFunctionMappedMediumLevelIL
-- -------------------------------------------------------

function core.BNGetFunctionMappedMediumLevelIL(
		func
)
	local result = cdefs.C.BNGetFunctionMappedMediumLevelIL(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionMappedMediumLevelILIfAvailable
-- -------------------------------------------------------

function core.BNGetFunctionMappedMediumLevelILIfAvailable(
		func
)
	local result = cdefs.C.BNGetFunctionMappedMediumLevelILIfAvailable(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionMediumLevelIL
-- -------------------------------------------------------

function core.BNGetFunctionMediumLevelIL(
		func
)
	local result = cdefs.C.BNGetFunctionMediumLevelIL(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionMediumLevelILIfAvailable
-- -------------------------------------------------------

function core.BNGetFunctionMediumLevelILIfAvailable(
		func
)
	local result = cdefs.C.BNGetFunctionMediumLevelILIfAvailable(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionParameterVariables
-- -------------------------------------------------------

function core.BNGetFunctionParameterVariables(
		func
)
	return cdefs.C.BNGetFunctionParameterVariables(func)
end

-- -------------------------------------------------------
-- BNGetFunctionParentComponents
-- -------------------------------------------------------

function core.BNGetFunctionParentComponents(
		view, 
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionParentComponents(view, func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionPlatform
-- -------------------------------------------------------

function core.BNGetFunctionPlatform(
		func
)
	local result = cdefs.C.BNGetFunctionPlatform(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionRegisterStackAdjustments
-- -------------------------------------------------------

function core.BNGetFunctionRegisterStackAdjustments(
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionRegisterStackAdjustments(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionRegisterValueAtExit
-- -------------------------------------------------------

function core.BNGetFunctionRegisterValueAtExit(
		func, 
		reg
)
	return cdefs.C.BNGetFunctionRegisterValueAtExit(func, reg)
end

-- -------------------------------------------------------
-- BNGetFunctionReturnRegisters
-- -------------------------------------------------------

function core.BNGetFunctionReturnRegisters(
		func
)
	return cdefs.C.BNGetFunctionReturnRegisters(func)
end

-- -------------------------------------------------------
-- BNGetFunctionReturnType
-- -------------------------------------------------------

function core.BNGetFunctionReturnType(
		func
)
	return cdefs.C.BNGetFunctionReturnType(func)
end

-- -------------------------------------------------------
-- BNGetFunctionStackAdjustment
-- -------------------------------------------------------

function core.BNGetFunctionStackAdjustment(
		func
)
	return cdefs.C.BNGetFunctionStackAdjustment(func)
end

-- -------------------------------------------------------
-- BNGetFunctionStart
-- -------------------------------------------------------

function core.BNGetFunctionStart(
		func
)
	return cdefs.C.BNGetFunctionStart(func)
end

-- -------------------------------------------------------
-- BNGetFunctionSymbol
-- -------------------------------------------------------

function core.BNGetFunctionSymbol(
		func
)
	local result = cdefs.C.BNGetFunctionSymbol(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionTagReferences
-- -------------------------------------------------------

function core.BNGetFunctionTagReferences(
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionTagReferences(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionTagReferencesOfType
-- -------------------------------------------------------

function core.BNGetFunctionTagReferencesOfType(
		func, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetFunctionTagReferencesOfType(func, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionTags
-- -------------------------------------------------------

function core.BNGetFunctionTags(
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionTags(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionTagsOfType
-- -------------------------------------------------------

function core.BNGetFunctionTagsOfType(
		func, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetFunctionTagsOfType(func, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionType
-- -------------------------------------------------------

function core.BNGetFunctionType(
		func
)
	local result = cdefs.C.BNGetFunctionType(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionTypeTokens
-- -------------------------------------------------------

function core.BNGetFunctionTypeTokens(
		func, 
		settings, 
		count
)
	local result = cdefs.C.BNGetFunctionTypeTokens(func, settings, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetFunctionVariableDeadStoreElimination
-- -------------------------------------------------------

function core.BNGetFunctionVariableDeadStoreElimination(
		func, 
		var
)
	return cdefs.C.BNGetFunctionVariableDeadStoreElimination(func, var)
end

-- -------------------------------------------------------
-- BNGetFunctionVariables
-- -------------------------------------------------------

function core.BNGetFunctionVariables(
		func, 
		count
)
	local result = cdefs.C.BNGetFunctionVariables(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetGlobalCommentForAddress
-- -------------------------------------------------------

function core.BNGetGlobalCommentForAddress(
		view, 
		addr
)
	local result = cdefs.C.BNGetGlobalCommentForAddress(view, addr)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetGlobalCommentedAddresses
-- -------------------------------------------------------

function core.BNGetGlobalCommentedAddresses(
		view, 
		count
)
	local result = cdefs.C.BNGetGlobalCommentedAddresses(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetGlobalPointerRegister
-- -------------------------------------------------------

function core.BNGetGlobalPointerRegister(
		cc
)
	return cdefs.C.BNGetGlobalPointerRegister(cc)
end

-- -------------------------------------------------------
-- BNGetGlobalPointerValue
-- -------------------------------------------------------

function core.BNGetGlobalPointerValue(
		view
)
	return cdefs.C.BNGetGlobalPointerValue(view)
end

-- -------------------------------------------------------
-- BNGetGotoLabelName
-- -------------------------------------------------------

function core.BNGetGotoLabelName(
		func, 
		labelId
)
	local result = cdefs.C.BNGetGotoLabelName(func, labelId)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetGraphForFlowGraphLayoutRequest
-- -------------------------------------------------------

function core.BNGetGraphForFlowGraphLayoutRequest(
		layout
)
	local result = cdefs.C.BNGetGraphForFlowGraphLayoutRequest(layout)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighIntegerReturnValueRegister
-- -------------------------------------------------------

function core.BNGetHighIntegerReturnValueRegister(
		cc
)
	return cdefs.C.BNGetHighIntegerReturnValueRegister(cc)
end

-- -------------------------------------------------------
-- BNGetHighLevelILAliasedVariables
-- -------------------------------------------------------

function core.BNGetHighLevelILAliasedVariables(
		func, 
		count
)
	local result = cdefs.C.BNGetHighLevelILAliasedVariables(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILBasicBlockForInstruction
-- -------------------------------------------------------

function core.BNGetHighLevelILBasicBlockForInstruction(
		func, 
		i
)
	local result = cdefs.C.BNGetHighLevelILBasicBlockForInstruction(func, i)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILBasicBlockList
-- -------------------------------------------------------

function core.BNGetHighLevelILBasicBlockList(
		func, 
		count
)
	local result = cdefs.C.BNGetHighLevelILBasicBlockList(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILByIndex
-- -------------------------------------------------------

function core.BNGetHighLevelILByIndex(
		func, 
		i, 
		asFullAst
)
	return cdefs.C.BNGetHighLevelILByIndex(func, i, asFullAst)
end

-- -------------------------------------------------------
-- BNGetHighLevelILExprCount
-- -------------------------------------------------------

function core.BNGetHighLevelILExprCount(
		func
)
	return cdefs.C.BNGetHighLevelILExprCount(func)
end

-- -------------------------------------------------------
-- BNGetHighLevelILExprIndex
-- -------------------------------------------------------

function core.BNGetHighLevelILExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetHighLevelILExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILExprIndexForLabel
-- -------------------------------------------------------

function core.BNGetHighLevelILExprIndexForLabel(
		func, 
		label
)
	return cdefs.C.BNGetHighLevelILExprIndexForLabel(func, label)
end

-- -------------------------------------------------------
-- BNGetHighLevelILExprIndexes
-- -------------------------------------------------------

function core.BNGetHighLevelILExprIndexes(
		func, 
		expr, 
		count
)
	local result = cdefs.C.BNGetHighLevelILExprIndexes(func, expr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILExprText
-- -------------------------------------------------------

function core.BNGetHighLevelILExprText(
		func, 
		expr, 
		asFullAst, 
		count, 
		settings
)
	local result = cdefs.C.BNGetHighLevelILExprText(func, expr, asFullAst, count, settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILExprType
-- -------------------------------------------------------

function core.BNGetHighLevelILExprType(
		func, 
		expr
)
	return cdefs.C.BNGetHighLevelILExprType(func, expr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILForMediumLevelIL
-- -------------------------------------------------------

function core.BNGetHighLevelILForMediumLevelIL(
		func
)
	local result = cdefs.C.BNGetHighLevelILForMediumLevelIL(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILIndexForInstruction
-- -------------------------------------------------------

function core.BNGetHighLevelILIndexForInstruction(
		func, 
		i
)
	return cdefs.C.BNGetHighLevelILIndexForInstruction(func, i)
end

-- -------------------------------------------------------
-- BNGetHighLevelILInstructionCount
-- -------------------------------------------------------

function core.BNGetHighLevelILInstructionCount(
		func
)
	return cdefs.C.BNGetHighLevelILInstructionCount(func)
end

-- -------------------------------------------------------
-- BNGetHighLevelILInstructionForExpr
-- -------------------------------------------------------

function core.BNGetHighLevelILInstructionForExpr(
		func, 
		expr
)
	return cdefs.C.BNGetHighLevelILInstructionForExpr(func, expr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILInstructionIndex
-- -------------------------------------------------------

function core.BNGetHighLevelILInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetHighLevelILInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILNonSSAExprIndex
-- -------------------------------------------------------

function core.BNGetHighLevelILNonSSAExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetHighLevelILNonSSAExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILNonSSAForm
-- -------------------------------------------------------

function core.BNGetHighLevelILNonSSAForm(
		func
)
	local result = cdefs.C.BNGetHighLevelILNonSSAForm(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILNonSSAInstructionIndex
-- -------------------------------------------------------

function core.BNGetHighLevelILNonSSAInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetHighLevelILNonSSAInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILOwnerFunction
-- -------------------------------------------------------

function core.BNGetHighLevelILOwnerFunction(
		func
)
	local result = cdefs.C.BNGetHighLevelILOwnerFunction(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILRootExpr
-- -------------------------------------------------------

function core.BNGetHighLevelILRootExpr(
		func
)
	return cdefs.C.BNGetHighLevelILRootExpr(func)
end

-- -------------------------------------------------------
-- BNGetHighLevelILSSAExprIndex
-- -------------------------------------------------------

function core.BNGetHighLevelILSSAExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetHighLevelILSSAExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILSSAForm
-- -------------------------------------------------------

function core.BNGetHighLevelILSSAForm(
		func
)
	local result = cdefs.C.BNGetHighLevelILSSAForm(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILSSAInstructionIndex
-- -------------------------------------------------------

function core.BNGetHighLevelILSSAInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetHighLevelILSSAInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILSSAMemoryDefinition
-- -------------------------------------------------------

function core.BNGetHighLevelILSSAMemoryDefinition(
		func, 
		version
)
	return cdefs.C.BNGetHighLevelILSSAMemoryDefinition(func, version)
end

-- -------------------------------------------------------
-- BNGetHighLevelILSSAMemoryUses
-- -------------------------------------------------------

function core.BNGetHighLevelILSSAMemoryUses(
		func, 
		version, 
		count
)
	local result = cdefs.C.BNGetHighLevelILSSAMemoryUses(func, version, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILSSAMemoryVersionAtILInstruction
-- -------------------------------------------------------

function core.BNGetHighLevelILSSAMemoryVersionAtILInstruction(
		func, 
		instr
)
	return cdefs.C.BNGetHighLevelILSSAMemoryVersionAtILInstruction(func, instr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILSSAVarDefinition
-- -------------------------------------------------------

function core.BNGetHighLevelILSSAVarDefinition(
		func, 
		var, 
		version
)
	return cdefs.C.BNGetHighLevelILSSAVarDefinition(func, var, version)
end

-- -------------------------------------------------------
-- BNGetHighLevelILSSAVarUses
-- -------------------------------------------------------

function core.BNGetHighLevelILSSAVarUses(
		func, 
		var, 
		version, 
		count
)
	local result = cdefs.C.BNGetHighLevelILSSAVarUses(func, var, version, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILSSAVarVersionAtILInstruction
-- -------------------------------------------------------

function core.BNGetHighLevelILSSAVarVersionAtILInstruction(
		func, 
		var, 
		instr
)
	return cdefs.C.BNGetHighLevelILSSAVarVersionAtILInstruction(func, var, instr)
end

-- -------------------------------------------------------
-- BNGetHighLevelILUsesForLabel
-- -------------------------------------------------------

function core.BNGetHighLevelILUsesForLabel(
		func, 
		label, 
		count
)
	local result = cdefs.C.BNGetHighLevelILUsesForLabel(func, label, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariableDefinitions
-- -------------------------------------------------------

function core.BNGetHighLevelILVariableDefinitions(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariableDefinitions(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariableReferences
-- -------------------------------------------------------

function core.BNGetHighLevelILVariableReferences(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariableReferences(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariableReferencesFrom
-- -------------------------------------------------------

function core.BNGetHighLevelILVariableReferencesFrom(
		func, 
		arch, 
		address, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariableReferencesFrom(func, arch, address, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariableReferencesFromIfAvailable
-- -------------------------------------------------------

function core.BNGetHighLevelILVariableReferencesFromIfAvailable(
		func, 
		arch, 
		address, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariableReferencesFromIfAvailable(func, arch, address, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariableReferencesIfAvailable
-- -------------------------------------------------------

function core.BNGetHighLevelILVariableReferencesIfAvailable(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariableReferencesIfAvailable(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariableReferencesInRange
-- -------------------------------------------------------

function core.BNGetHighLevelILVariableReferencesInRange(
		func, 
		arch, 
		address, 
		len, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariableReferencesInRange(func, arch, address, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariableReferencesInRangeIfAvailable
-- -------------------------------------------------------

function core.BNGetHighLevelILVariableReferencesInRangeIfAvailable(
		func, 
		arch, 
		address, 
		len, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariableReferencesInRangeIfAvailable(func, arch, address, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariableSSAVersions
-- -------------------------------------------------------

function core.BNGetHighLevelILVariableSSAVersions(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariableSSAVersions(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariableUses
-- -------------------------------------------------------

function core.BNGetHighLevelILVariableUses(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariableUses(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHighLevelILVariables
-- -------------------------------------------------------

function core.BNGetHighLevelILVariables(
		func, 
		count
)
	local result = cdefs.C.BNGetHighLevelILVariables(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetHorizontalFlowGraphNodeMargin
-- -------------------------------------------------------

function core.BNGetHorizontalFlowGraphNodeMargin(
		graph
)
	return cdefs.C.BNGetHorizontalFlowGraphNodeMargin(graph)
end

-- -------------------------------------------------------
-- BNGetImplicitlyDefinedRegisters
-- -------------------------------------------------------

function core.BNGetImplicitlyDefinedRegisters(
		cc, 
		count
)
	local result = cdefs.C.BNGetImplicitlyDefinedRegisters(cc, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetIncomingFlagValue
-- -------------------------------------------------------

function core.BNGetIncomingFlagValue(
		cc, 
		reg, 
		func
)
	return cdefs.C.BNGetIncomingFlagValue(cc, reg, func)
end

-- -------------------------------------------------------
-- BNGetIncomingRegisterValue
-- -------------------------------------------------------

function core.BNGetIncomingRegisterValue(
		cc, 
		reg, 
		func
)
	return cdefs.C.BNGetIncomingRegisterValue(cc, reg, func)
end

-- -------------------------------------------------------
-- BNGetIncomingVariableForParameterVariable
-- -------------------------------------------------------

function core.BNGetIncomingVariableForParameterVariable(
		cc, 
		var, 
		func
)
	return cdefs.C.BNGetIncomingVariableForParameterVariable(cc, var, func)
end

-- -------------------------------------------------------
-- BNGetIndirectBranches
-- -------------------------------------------------------

function core.BNGetIndirectBranches(
		func, 
		count
)
	local result = cdefs.C.BNGetIndirectBranches(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetIndirectBranchesAt
-- -------------------------------------------------------

function core.BNGetIndirectBranchesAt(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetIndirectBranchesAt(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetInstallDirectory
-- -------------------------------------------------------

function core.BNGetInstallDirectory(
)
	local result = cdefs.C.BNGetInstallDirectory()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetInstructionContainingAddress
-- -------------------------------------------------------

function core.BNGetInstructionContainingAddress(
		func, 
		arch, 
		addr, 
		start
)
	return cdefs.C.BNGetInstructionContainingAddress(func, arch, addr, start)
end

-- -------------------------------------------------------
-- BNGetInstructionHighlight
-- -------------------------------------------------------

function core.BNGetInstructionHighlight(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNGetInstructionHighlight(func, arch, addr)
end

-- -------------------------------------------------------
-- BNGetInstructionInfo
-- -------------------------------------------------------

function core.BNGetInstructionInfo(
		arch, 
		data, 
		addr, 
		maxLen, 
		result
)
	return cdefs.C.BNGetInstructionInfo(arch, data, addr, maxLen, result)
end

-- -------------------------------------------------------
-- BNGetInstructionLength
-- -------------------------------------------------------

function core.BNGetInstructionLength(
		view, 
		arch, 
		addr
)
	return cdefs.C.BNGetInstructionLength(view, arch, addr)
end

-- -------------------------------------------------------
-- BNGetInstructionLowLevelIL
-- -------------------------------------------------------

function core.BNGetInstructionLowLevelIL(
		arch, 
		data, 
		addr, 
		len, 
		il
)
	return cdefs.C.BNGetInstructionLowLevelIL(arch, data, addr, len, il)
end

-- -------------------------------------------------------
-- BNGetInstructionText
-- -------------------------------------------------------

function core.BNGetInstructionText(
		arch, 
		data, 
		addr, 
		len, 
		result, 
		count
)
	return cdefs.C.BNGetInstructionText(arch, data, addr, len, result, count)
end

-- -------------------------------------------------------
-- BNGetIntegerArgumentRegisters
-- -------------------------------------------------------

function core.BNGetIntegerArgumentRegisters(
		cc, 
		count
)
	local result = cdefs.C.BNGetIntegerArgumentRegisters(cc, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetIntegerConstantDisplayType
-- -------------------------------------------------------

function core.BNGetIntegerConstantDisplayType(
		func, 
		arch, 
		instrAddr, 
		value, 
		operand
)
	return cdefs.C.BNGetIntegerConstantDisplayType(func, arch, instrAddr, value, operand)
end

-- -------------------------------------------------------
-- BNGetIntegerConstantDisplayTypeEnumerationType
-- -------------------------------------------------------

function core.BNGetIntegerConstantDisplayTypeEnumerationType(
		func, 
		arch, 
		instrAddr, 
		value, 
		operand
)
	local result = cdefs.C.BNGetIntegerConstantDisplayTypeEnumerationType(func, arch, instrAddr, value, operand)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetIntegerInput
-- -------------------------------------------------------

function core.BNGetIntegerInput(
		result, 
		prompt, 
		title
)
	return cdefs.C.BNGetIntegerInput(result, prompt, title)
end

-- -------------------------------------------------------
-- BNGetIntegerReturnValueRegister
-- -------------------------------------------------------

function core.BNGetIntegerReturnValueRegister(
		cc
)
	return cdefs.C.BNGetIntegerReturnValueRegister(cc)
end

-- -------------------------------------------------------
-- BNGetIntegerTypeDisplayType
-- -------------------------------------------------------

function core.BNGetIntegerTypeDisplayType(
		type
)
	return cdefs.C.BNGetIntegerTypeDisplayType(type)
end

-- -------------------------------------------------------
-- BNGetInternalNameSpace
-- -------------------------------------------------------

function core.BNGetInternalNameSpace(
)
	return cdefs.C.BNGetInternalNameSpace()
end

-- -------------------------------------------------------
-- BNGetKeyValueStoreBuffer
-- -------------------------------------------------------

function core.BNGetKeyValueStoreBuffer(
		store, 
		name
)
	local result = cdefs.C.BNGetKeyValueStoreBuffer(store, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetKeyValueStoreDataSize
-- -------------------------------------------------------

function core.BNGetKeyValueStoreDataSize(
		store
)
	return cdefs.C.BNGetKeyValueStoreDataSize(store)
end

-- -------------------------------------------------------
-- BNGetKeyValueStoreKeys
-- -------------------------------------------------------

function core.BNGetKeyValueStoreKeys(
		store, 
		count
)
	local result = cdefs.C.BNGetKeyValueStoreKeys(store, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetKeyValueStoreNamespaceSize
-- -------------------------------------------------------

function core.BNGetKeyValueStoreNamespaceSize(
		store
)
	return cdefs.C.BNGetKeyValueStoreNamespaceSize(store)
end

-- -------------------------------------------------------
-- BNGetKeyValueStoreSerializedData
-- -------------------------------------------------------

function core.BNGetKeyValueStoreSerializedData(
		store
)
	local result = cdefs.C.BNGetKeyValueStoreSerializedData(store)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetKeyValueStoreValue
-- -------------------------------------------------------

function core.BNGetKeyValueStoreValue(
		store, 
		name
)
	local result = cdefs.C.BNGetKeyValueStoreValue(store, name)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetKeyValueStoreValueSize
-- -------------------------------------------------------

function core.BNGetKeyValueStoreValueSize(
		store
)
	return cdefs.C.BNGetKeyValueStoreValueSize(store)
end

-- -------------------------------------------------------
-- BNGetKeyValueStoreValueStorageSize
-- -------------------------------------------------------

function core.BNGetKeyValueStoreValueStorageSize(
		store
)
	return cdefs.C.BNGetKeyValueStoreValueStorageSize(store)
end

-- -------------------------------------------------------
-- BNGetLabelForLowLevelILSourceInstruction
-- -------------------------------------------------------

function core.BNGetLabelForLowLevelILSourceInstruction(
		func, 
		instr
)
	local result = cdefs.C.BNGetLabelForLowLevelILSourceInstruction(func, instr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLabelForMediumLevelILSourceInstruction
-- -------------------------------------------------------

function core.BNGetLabelForMediumLevelILSourceInstruction(
		func, 
		instr
)
	local result = cdefs.C.BNGetLabelForMediumLevelILSourceInstruction(func, instr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLanguageRepresentationOwnerFunction
-- -------------------------------------------------------

function core.BNGetLanguageRepresentationOwnerFunction(
		func
)
	local result = cdefs.C.BNGetLanguageRepresentationOwnerFunction(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLastLinearViewObjectChild
-- -------------------------------------------------------

function core.BNGetLastLinearViewObjectChild(
		obj
)
	local result = cdefs.C.BNGetLastLinearViewObjectChild(obj)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLastRedoEntry
-- -------------------------------------------------------

function core.BNGetLastRedoEntry(
		file
)
	return cdefs.C.BNGetLastRedoEntry(file)
end

-- -------------------------------------------------------
-- BNGetLastRedoEntryTitle
-- -------------------------------------------------------

function core.BNGetLastRedoEntryTitle(
		file
)
	local result = cdefs.C.BNGetLastRedoEntryTitle(file)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetLastSeenVariableNameOrDefault
-- -------------------------------------------------------

function core.BNGetLastSeenVariableNameOrDefault(
		func, 
		var
)
	local result = cdefs.C.BNGetLastSeenVariableNameOrDefault(func, var)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetLastUndoEntry
-- -------------------------------------------------------

function core.BNGetLastUndoEntry(
		file
)
	return cdefs.C.BNGetLastUndoEntry(file)
end

-- -------------------------------------------------------
-- BNGetLastUndoEntryTitle
-- -------------------------------------------------------

function core.BNGetLastUndoEntryTitle(
		file
)
	local result = cdefs.C.BNGetLastUndoEntryTitle(file)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetLicenseCount
-- -------------------------------------------------------

function core.BNGetLicenseCount(
)
	return cdefs.C.BNGetLicenseCount()
end

-- -------------------------------------------------------
-- BNGetLicenseExpirationTime
-- -------------------------------------------------------

function core.BNGetLicenseExpirationTime(
)
	return cdefs.C.BNGetLicenseExpirationTime()
end

-- -------------------------------------------------------
-- BNGetLicensedUserEmail
-- -------------------------------------------------------

function core.BNGetLicensedUserEmail(
)
	local result = cdefs.C.BNGetLicensedUserEmail()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetLiftedILFlagDefinitionsForUse
-- -------------------------------------------------------

function core.BNGetLiftedILFlagDefinitionsForUse(
		func, 
		i, 
		flag, 
		count
)
	local result = cdefs.C.BNGetLiftedILFlagDefinitionsForUse(func, i, flag, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLiftedILFlagUsesForDefinition
-- -------------------------------------------------------

function core.BNGetLiftedILFlagUsesForDefinition(
		func, 
		i, 
		flag, 
		count
)
	local result = cdefs.C.BNGetLiftedILFlagUsesForDefinition(func, i, flag, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLiftedILForInstruction
-- -------------------------------------------------------

function core.BNGetLiftedILForInstruction(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNGetLiftedILForInstruction(func, arch, addr)
end

-- -------------------------------------------------------
-- BNGetLiftedILInstructionsForAddress
-- -------------------------------------------------------

function core.BNGetLiftedILInstructionsForAddress(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetLiftedILInstructionsForAddress(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLinearViewCursorCurrentObject
-- -------------------------------------------------------

function core.BNGetLinearViewCursorCurrentObject(
		cursor
)
	local result = cdefs.C.BNGetLinearViewCursorCurrentObject(cursor)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLinearViewCursorLines
-- -------------------------------------------------------

function core.BNGetLinearViewCursorLines(
		cursor, 
		count
)
	local result = cdefs.C.BNGetLinearViewCursorLines(cursor, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLinearViewCursorOrderingIndex
-- -------------------------------------------------------

function core.BNGetLinearViewCursorOrderingIndex(
		cursor
)
	return cdefs.C.BNGetLinearViewCursorOrderingIndex(cursor)
end

-- -------------------------------------------------------
-- BNGetLinearViewCursorOrderingIndexTotal
-- -------------------------------------------------------

function core.BNGetLinearViewCursorOrderingIndexTotal(
		cursor
)
	return cdefs.C.BNGetLinearViewCursorOrderingIndexTotal(cursor)
end

-- -------------------------------------------------------
-- BNGetLinearViewCursorPath
-- -------------------------------------------------------

function core.BNGetLinearViewCursorPath(
		cursor, 
		count
)
	local result = cdefs.C.BNGetLinearViewCursorPath(cursor, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLinearViewCursorPathObjects
-- -------------------------------------------------------

function core.BNGetLinearViewCursorPathObjects(
		cursor, 
		count
)
	local result = cdefs.C.BNGetLinearViewCursorPathObjects(cursor, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLinearViewObjectChildForAddress
-- -------------------------------------------------------

function core.BNGetLinearViewObjectChildForAddress(
		parent, 
		addr
)
	local result = cdefs.C.BNGetLinearViewObjectChildForAddress(parent, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLinearViewObjectChildForIdentifier
-- -------------------------------------------------------

function core.BNGetLinearViewObjectChildForIdentifier(
		parent, 
		id
)
	local result = cdefs.C.BNGetLinearViewObjectChildForIdentifier(parent, id)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLinearViewObjectChildForOrderingIndex
-- -------------------------------------------------------

function core.BNGetLinearViewObjectChildForOrderingIndex(
		parent, 
		idx
)
	local result = cdefs.C.BNGetLinearViewObjectChildForOrderingIndex(parent, idx)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLinearViewObjectEnd
-- -------------------------------------------------------

function core.BNGetLinearViewObjectEnd(
		obj
)
	return cdefs.C.BNGetLinearViewObjectEnd(obj)
end

-- -------------------------------------------------------
-- BNGetLinearViewObjectIdentifier
-- -------------------------------------------------------

function core.BNGetLinearViewObjectIdentifier(
		obj
)
	return cdefs.C.BNGetLinearViewObjectIdentifier(obj)
end

-- -------------------------------------------------------
-- BNGetLinearViewObjectLines
-- -------------------------------------------------------

function core.BNGetLinearViewObjectLines(
		obj, 
		prev, 
		next, 
		count
)
	local result = cdefs.C.BNGetLinearViewObjectLines(obj, prev, next, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLinearViewObjectOrderingIndexForChild
-- -------------------------------------------------------

function core.BNGetLinearViewObjectOrderingIndexForChild(
		parent, 
		child
)
	return cdefs.C.BNGetLinearViewObjectOrderingIndexForChild(parent, child)
end

-- -------------------------------------------------------
-- BNGetLinearViewObjectOrderingIndexTotal
-- -------------------------------------------------------

function core.BNGetLinearViewObjectOrderingIndexTotal(
		obj
)
	return cdefs.C.BNGetLinearViewObjectOrderingIndexTotal(obj)
end

-- -------------------------------------------------------
-- BNGetLinearViewObjectStart
-- -------------------------------------------------------

function core.BNGetLinearViewObjectStart(
		obj
)
	return cdefs.C.BNGetLinearViewObjectStart(obj)
end

-- -------------------------------------------------------
-- BNGetLinesForData
-- -------------------------------------------------------

function core.BNGetLinesForData(
		ctxt, 
		view, 
		addr, 
		type, 
		prefix, 
		prefixCount, 
		width, 
		count, 
		typeCtx, 
		ctxCount
)
	local result = cdefs.C.BNGetLinesForData(ctxt, view, addr, type, prefix, prefixCount, width, count, typeCtx, ctxCount)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelFlagSSAVersions
-- -------------------------------------------------------

function core.BNGetLowLevelFlagSSAVersions(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetLowLevelFlagSSAVersions(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelFlags
-- -------------------------------------------------------

function core.BNGetLowLevelFlags(
		func, 
		count
)
	local result = cdefs.C.BNGetLowLevelFlags(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILBasicBlockForInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILBasicBlockForInstruction(
		func, 
		i
)
	local result = cdefs.C.BNGetLowLevelILBasicBlockForInstruction(func, i)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILBasicBlockList
-- -------------------------------------------------------

function core.BNGetLowLevelILBasicBlockList(
		func, 
		count
)
	local result = cdefs.C.BNGetLowLevelILBasicBlockList(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILByIndex
-- -------------------------------------------------------

function core.BNGetLowLevelILByIndex(
		func, 
		i
)
	return cdefs.C.BNGetLowLevelILByIndex(func, i)
end

-- -------------------------------------------------------
-- BNGetLowLevelILExitsForInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILExitsForInstruction(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetLowLevelILExitsForInstruction(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILExprCount
-- -------------------------------------------------------

function core.BNGetLowLevelILExprCount(
		func
)
	return cdefs.C.BNGetLowLevelILExprCount(func)
end

-- -------------------------------------------------------
-- BNGetLowLevelILExprIndex
-- -------------------------------------------------------

function core.BNGetLowLevelILExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetLowLevelILExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILExprIndexes
-- -------------------------------------------------------

function core.BNGetLowLevelILExprIndexes(
		func, 
		expr, 
		count
)
	local result = cdefs.C.BNGetLowLevelILExprIndexes(func, expr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILExprText
-- -------------------------------------------------------

function core.BNGetLowLevelILExprText(
		func, 
		arch, 
		i, 
		settings, 
		tokens, 
		count
)
	return cdefs.C.BNGetLowLevelILExprText(func, arch, i, settings, tokens, count)
end

-- -------------------------------------------------------
-- BNGetLowLevelILExprValue
-- -------------------------------------------------------

function core.BNGetLowLevelILExprValue(
		func, 
		expr
)
	return cdefs.C.BNGetLowLevelILExprValue(func, expr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILFlagValueAfterInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILFlagValueAfterInstruction(
		func, 
		flag, 
		instr
)
	return cdefs.C.BNGetLowLevelILFlagValueAfterInstruction(func, flag, instr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILFlagValueAtInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILFlagValueAtInstruction(
		func, 
		flag, 
		instr
)
	return cdefs.C.BNGetLowLevelILFlagValueAtInstruction(func, flag, instr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILForInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILForInstruction(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNGetLowLevelILForInstruction(func, arch, addr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILForMediumLevelIL
-- -------------------------------------------------------

function core.BNGetLowLevelILForMediumLevelIL(
		func
)
	local result = cdefs.C.BNGetLowLevelILForMediumLevelIL(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILIndexForInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILIndexForInstruction(
		func, 
		i
)
	return cdefs.C.BNGetLowLevelILIndexForInstruction(func, i)
end

-- -------------------------------------------------------
-- BNGetLowLevelILInstructionCount
-- -------------------------------------------------------

function core.BNGetLowLevelILInstructionCount(
		func
)
	return cdefs.C.BNGetLowLevelILInstructionCount(func)
end

-- -------------------------------------------------------
-- BNGetLowLevelILInstructionForExpr
-- -------------------------------------------------------

function core.BNGetLowLevelILInstructionForExpr(
		func, 
		expr
)
	return cdefs.C.BNGetLowLevelILInstructionForExpr(func, expr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILInstructionIndex
-- -------------------------------------------------------

function core.BNGetLowLevelILInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetLowLevelILInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILInstructionText
-- -------------------------------------------------------

function core.BNGetLowLevelILInstructionText(
		il, 
		func, 
		arch, 
		i, 
		settings, 
		tokens, 
		count
)
	return cdefs.C.BNGetLowLevelILInstructionText(il, func, arch, i, settings, tokens, count)
end

-- -------------------------------------------------------
-- BNGetLowLevelILInstructionsForAddress
-- -------------------------------------------------------

function core.BNGetLowLevelILInstructionsForAddress(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetLowLevelILInstructionsForAddress(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILLabelForAddress
-- -------------------------------------------------------

function core.BNGetLowLevelILLabelForAddress(
		func, 
		arch, 
		addr
)
	local result = cdefs.C.BNGetLowLevelILLabelForAddress(func, arch, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILNonSSAExprIndex
-- -------------------------------------------------------

function core.BNGetLowLevelILNonSSAExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetLowLevelILNonSSAExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILNonSSAForm
-- -------------------------------------------------------

function core.BNGetLowLevelILNonSSAForm(
		func
)
	local result = cdefs.C.BNGetLowLevelILNonSSAForm(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILNonSSAInstructionIndex
-- -------------------------------------------------------

function core.BNGetLowLevelILNonSSAInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetLowLevelILNonSSAInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILOwnerFunction
-- -------------------------------------------------------

function core.BNGetLowLevelILOwnerFunction(
		func
)
	local result = cdefs.C.BNGetLowLevelILOwnerFunction(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILPossibleExprValues
-- -------------------------------------------------------

function core.BNGetLowLevelILPossibleExprValues(
		func, 
		expr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetLowLevelILPossibleExprValues(func, expr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetLowLevelILPossibleFlagValuesAfterInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILPossibleFlagValuesAfterInstruction(
		func, 
		flag, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetLowLevelILPossibleFlagValuesAfterInstruction(func, flag, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetLowLevelILPossibleFlagValuesAtInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILPossibleFlagValuesAtInstruction(
		func, 
		flag, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetLowLevelILPossibleFlagValuesAtInstruction(func, flag, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetLowLevelILPossibleRegisterValuesAfterInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILPossibleRegisterValuesAfterInstruction(
		func, 
		reg, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetLowLevelILPossibleRegisterValuesAfterInstruction(func, reg, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetLowLevelILPossibleRegisterValuesAtInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILPossibleRegisterValuesAtInstruction(
		func, 
		reg, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetLowLevelILPossibleRegisterValuesAtInstruction(func, reg, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetLowLevelILPossibleStackContentsAfterInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILPossibleStackContentsAfterInstruction(
		func, 
		offset, 
		len, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetLowLevelILPossibleStackContentsAfterInstruction(func, offset, len, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetLowLevelILPossibleStackContentsAtInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILPossibleStackContentsAtInstruction(
		func, 
		offset, 
		len, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetLowLevelILPossibleStackContentsAtInstruction(func, offset, len, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetLowLevelILRegisterValueAfterInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILRegisterValueAfterInstruction(
		func, 
		reg, 
		instr
)
	return cdefs.C.BNGetLowLevelILRegisterValueAfterInstruction(func, reg, instr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILRegisterValueAtInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILRegisterValueAtInstruction(
		func, 
		reg, 
		instr
)
	return cdefs.C.BNGetLowLevelILRegisterValueAtInstruction(func, reg, instr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSAExprIndex
-- -------------------------------------------------------

function core.BNGetLowLevelILSSAExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetLowLevelILSSAExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSAFlagDefinition
-- -------------------------------------------------------

function core.BNGetLowLevelILSSAFlagDefinition(
		func, 
		reg, 
		version
)
	return cdefs.C.BNGetLowLevelILSSAFlagDefinition(func, reg, version)
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSAFlagUses
-- -------------------------------------------------------

function core.BNGetLowLevelILSSAFlagUses(
		func, 
		reg, 
		version, 
		count
)
	local result = cdefs.C.BNGetLowLevelILSSAFlagUses(func, reg, version, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSAFlagValue
-- -------------------------------------------------------

function core.BNGetLowLevelILSSAFlagValue(
		func, 
		flag, 
		version
)
	return cdefs.C.BNGetLowLevelILSSAFlagValue(func, flag, version)
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSAForm
-- -------------------------------------------------------

function core.BNGetLowLevelILSSAForm(
		func
)
	local result = cdefs.C.BNGetLowLevelILSSAForm(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSAInstructionIndex
-- -------------------------------------------------------

function core.BNGetLowLevelILSSAInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetLowLevelILSSAInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSAMemoryDefinition
-- -------------------------------------------------------

function core.BNGetLowLevelILSSAMemoryDefinition(
		func, 
		version
)
	return cdefs.C.BNGetLowLevelILSSAMemoryDefinition(func, version)
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSAMemoryUses
-- -------------------------------------------------------

function core.BNGetLowLevelILSSAMemoryUses(
		func, 
		version, 
		count
)
	local result = cdefs.C.BNGetLowLevelILSSAMemoryUses(func, version, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSARegisterDefinition
-- -------------------------------------------------------

function core.BNGetLowLevelILSSARegisterDefinition(
		func, 
		reg, 
		version
)
	return cdefs.C.BNGetLowLevelILSSARegisterDefinition(func, reg, version)
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSARegisterUses
-- -------------------------------------------------------

function core.BNGetLowLevelILSSARegisterUses(
		func, 
		reg, 
		version, 
		count
)
	local result = cdefs.C.BNGetLowLevelILSSARegisterUses(func, reg, version, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelILSSARegisterValue
-- -------------------------------------------------------

function core.BNGetLowLevelILSSARegisterValue(
		func, 
		reg, 
		version
)
	return cdefs.C.BNGetLowLevelILSSARegisterValue(func, reg, version)
end

-- -------------------------------------------------------
-- BNGetLowLevelILStackContentsAfterInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILStackContentsAfterInstruction(
		func, 
		offset, 
		len, 
		instr
)
	return cdefs.C.BNGetLowLevelILStackContentsAfterInstruction(func, offset, len, instr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILStackContentsAtInstruction
-- -------------------------------------------------------

function core.BNGetLowLevelILStackContentsAtInstruction(
		func, 
		offset, 
		len, 
		instr
)
	return cdefs.C.BNGetLowLevelILStackContentsAtInstruction(func, offset, len, instr)
end

-- -------------------------------------------------------
-- BNGetLowLevelILTemporaryFlagCount
-- -------------------------------------------------------

function core.BNGetLowLevelILTemporaryFlagCount(
		func
)
	return cdefs.C.BNGetLowLevelILTemporaryFlagCount(func)
end

-- -------------------------------------------------------
-- BNGetLowLevelILTemporaryRegisterCount
-- -------------------------------------------------------

function core.BNGetLowLevelILTemporaryRegisterCount(
		func
)
	return cdefs.C.BNGetLowLevelILTemporaryRegisterCount(func)
end

-- -------------------------------------------------------
-- BNGetLowLevelMemoryVersions
-- -------------------------------------------------------

function core.BNGetLowLevelMemoryVersions(
		func, 
		count
)
	local result = cdefs.C.BNGetLowLevelMemoryVersions(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelRegisterSSAVersions
-- -------------------------------------------------------

function core.BNGetLowLevelRegisterSSAVersions(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetLowLevelRegisterSSAVersions(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelRegisterStackSSAVersions
-- -------------------------------------------------------

function core.BNGetLowLevelRegisterStackSSAVersions(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetLowLevelRegisterStackSSAVersions(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelRegisterStacks
-- -------------------------------------------------------

function core.BNGetLowLevelRegisterStacks(
		func, 
		count
)
	local result = cdefs.C.BNGetLowLevelRegisterStacks(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelRegisters
-- -------------------------------------------------------

function core.BNGetLowLevelRegisters(
		func, 
		count
)
	local result = cdefs.C.BNGetLowLevelRegisters(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelSSAFlagsWithoutVersions
-- -------------------------------------------------------

function core.BNGetLowLevelSSAFlagsWithoutVersions(
		func, 
		count
)
	local result = cdefs.C.BNGetLowLevelSSAFlagsWithoutVersions(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelSSARegisterStacksWithoutVersions
-- -------------------------------------------------------

function core.BNGetLowLevelSSARegisterStacksWithoutVersions(
		func, 
		count
)
	local result = cdefs.C.BNGetLowLevelSSARegisterStacksWithoutVersions(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetLowLevelSSARegistersWithoutVersions
-- -------------------------------------------------------

function core.BNGetLowLevelSSARegistersWithoutVersions(
		func, 
		count
)
	local result = cdefs.C.BNGetLowLevelSSARegistersWithoutVersions(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMappedMediumLevelIL
-- -------------------------------------------------------

function core.BNGetMappedMediumLevelIL(
		func
)
	local result = cdefs.C.BNGetMappedMediumLevelIL(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMappedMediumLevelILExprIndex
-- -------------------------------------------------------

function core.BNGetMappedMediumLevelILExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetMappedMediumLevelILExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetMappedMediumLevelILInstructionIndex
-- -------------------------------------------------------

function core.BNGetMappedMediumLevelILInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetMappedMediumLevelILInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetMaxFunctionSizeForAnalysis
-- -------------------------------------------------------

function core.BNGetMaxFunctionSizeForAnalysis(
		view
)
	return cdefs.C.BNGetMaxFunctionSizeForAnalysis(view)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILAliasedVariables
-- -------------------------------------------------------

function core.BNGetMediumLevelILAliasedVariables(
		func, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILAliasedVariables(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILBasicBlockForInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILBasicBlockForInstruction(
		func, 
		i
)
	local result = cdefs.C.BNGetMediumLevelILBasicBlockForInstruction(func, i)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILBasicBlockList
-- -------------------------------------------------------

function core.BNGetMediumLevelILBasicBlockList(
		func, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILBasicBlockList(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILBranchDependence
-- -------------------------------------------------------

function core.BNGetMediumLevelILBranchDependence(
		func, 
		curInstr, 
		branchInstr
)
	return cdefs.C.BNGetMediumLevelILBranchDependence(func, curInstr, branchInstr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILByIndex
-- -------------------------------------------------------

function core.BNGetMediumLevelILByIndex(
		func, 
		i
)
	return cdefs.C.BNGetMediumLevelILByIndex(func, i)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILExprCount
-- -------------------------------------------------------

function core.BNGetMediumLevelILExprCount(
		func
)
	return cdefs.C.BNGetMediumLevelILExprCount(func)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILExprIndex
-- -------------------------------------------------------

function core.BNGetMediumLevelILExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetMediumLevelILExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILExprIndexFromHighLevelIL
-- -------------------------------------------------------

function core.BNGetMediumLevelILExprIndexFromHighLevelIL(
		func, 
		expr
)
	return cdefs.C.BNGetMediumLevelILExprIndexFromHighLevelIL(func, expr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILExprIndexes
-- -------------------------------------------------------

function core.BNGetMediumLevelILExprIndexes(
		func, 
		expr, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILExprIndexes(func, expr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILExprIndexesFromHighLevelIL
-- -------------------------------------------------------

function core.BNGetMediumLevelILExprIndexesFromHighLevelIL(
		func, 
		expr, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILExprIndexesFromHighLevelIL(func, expr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILExprText
-- -------------------------------------------------------

function core.BNGetMediumLevelILExprText(
		func, 
		arch, 
		i, 
		tokens, 
		count, 
		settings
)
	return cdefs.C.BNGetMediumLevelILExprText(func, arch, i, tokens, count, settings)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILExprType
-- -------------------------------------------------------

function core.BNGetMediumLevelILExprType(
		func, 
		expr
)
	return cdefs.C.BNGetMediumLevelILExprType(func, expr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILExprValue
-- -------------------------------------------------------

function core.BNGetMediumLevelILExprValue(
		func, 
		expr
)
	return cdefs.C.BNGetMediumLevelILExprValue(func, expr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILFlagValueAfterInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILFlagValueAfterInstruction(
		func, 
		flag, 
		instr
)
	return cdefs.C.BNGetMediumLevelILFlagValueAfterInstruction(func, flag, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILFlagValueAtInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILFlagValueAtInstruction(
		func, 
		flag, 
		instr
)
	return cdefs.C.BNGetMediumLevelILFlagValueAtInstruction(func, flag, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILForHighLevelILFunction
-- -------------------------------------------------------

function core.BNGetMediumLevelILForHighLevelILFunction(
		func
)
	local result = cdefs.C.BNGetMediumLevelILForHighLevelILFunction(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILForLowLevelIL
-- -------------------------------------------------------

function core.BNGetMediumLevelILForLowLevelIL(
		func
)
	local result = cdefs.C.BNGetMediumLevelILForLowLevelIL(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILIndexForInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILIndexForInstruction(
		func, 
		i
)
	return cdefs.C.BNGetMediumLevelILIndexForInstruction(func, i)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILInstructionCount
-- -------------------------------------------------------

function core.BNGetMediumLevelILInstructionCount(
		func
)
	return cdefs.C.BNGetMediumLevelILInstructionCount(func)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILInstructionForExpr
-- -------------------------------------------------------

function core.BNGetMediumLevelILInstructionForExpr(
		func, 
		expr
)
	return cdefs.C.BNGetMediumLevelILInstructionForExpr(func, expr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILInstructionIndex
-- -------------------------------------------------------

function core.BNGetMediumLevelILInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetMediumLevelILInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILInstructionText
-- -------------------------------------------------------

function core.BNGetMediumLevelILInstructionText(
		il, 
		func, 
		arch, 
		i, 
		tokens, 
		count, 
		settings
)
	return cdefs.C.BNGetMediumLevelILInstructionText(il, func, arch, i, tokens, count, settings)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILLiveInstructionsForVariable
-- -------------------------------------------------------

function core.BNGetMediumLevelILLiveInstructionsForVariable(
		func, 
		var, 
		includeLastUse, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILLiveInstructionsForVariable(func, var, includeLastUse, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILNonSSAExprIndex
-- -------------------------------------------------------

function core.BNGetMediumLevelILNonSSAExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetMediumLevelILNonSSAExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILNonSSAForm
-- -------------------------------------------------------

function core.BNGetMediumLevelILNonSSAForm(
		func
)
	local result = cdefs.C.BNGetMediumLevelILNonSSAForm(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILNonSSAInstructionIndex
-- -------------------------------------------------------

function core.BNGetMediumLevelILNonSSAInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetMediumLevelILNonSSAInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILOwnerFunction
-- -------------------------------------------------------

function core.BNGetMediumLevelILOwnerFunction(
		func
)
	local result = cdefs.C.BNGetMediumLevelILOwnerFunction(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILPossibleExprValues
-- -------------------------------------------------------

function core.BNGetMediumLevelILPossibleExprValues(
		func, 
		expr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetMediumLevelILPossibleExprValues(func, expr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILPossibleFlagValuesAfterInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILPossibleFlagValuesAfterInstruction(
		func, 
		flag, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetMediumLevelILPossibleFlagValuesAfterInstruction(func, flag, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILPossibleFlagValuesAtInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILPossibleFlagValuesAtInstruction(
		func, 
		flag, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetMediumLevelILPossibleFlagValuesAtInstruction(func, flag, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILPossibleRegisterValuesAfterInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILPossibleRegisterValuesAfterInstruction(
		func, 
		reg, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetMediumLevelILPossibleRegisterValuesAfterInstruction(func, reg, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILPossibleRegisterValuesAtInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILPossibleRegisterValuesAtInstruction(
		func, 
		reg, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetMediumLevelILPossibleRegisterValuesAtInstruction(func, reg, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILPossibleSSAVarValues
-- -------------------------------------------------------

function core.BNGetMediumLevelILPossibleSSAVarValues(
		func, 
		var, 
		version, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetMediumLevelILPossibleSSAVarValues(func, var, version, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILPossibleStackContentsAfterInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILPossibleStackContentsAfterInstruction(
		func, 
		offset, 
		len, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetMediumLevelILPossibleStackContentsAfterInstruction(func, offset, len, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILPossibleStackContentsAtInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILPossibleStackContentsAtInstruction(
		func, 
		offset, 
		len, 
		instr, 
		options, 
		optionCount
)
	return cdefs.C.BNGetMediumLevelILPossibleStackContentsAtInstruction(func, offset, len, instr, options, optionCount)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILRegisterValueAfterInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILRegisterValueAfterInstruction(
		func, 
		reg, 
		instr
)
	return cdefs.C.BNGetMediumLevelILRegisterValueAfterInstruction(func, reg, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILRegisterValueAtInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILRegisterValueAtInstruction(
		func, 
		reg, 
		instr
)
	return cdefs.C.BNGetMediumLevelILRegisterValueAtInstruction(func, reg, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAExprIndex
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAExprIndex(
		func, 
		expr
)
	return cdefs.C.BNGetMediumLevelILSSAExprIndex(func, expr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAForm
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAForm(
		func
)
	local result = cdefs.C.BNGetMediumLevelILSSAForm(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAInstructionIndex
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAInstructionIndex(
		func, 
		instr
)
	return cdefs.C.BNGetMediumLevelILSSAInstructionIndex(func, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAMemoryDefinition
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAMemoryDefinition(
		func, 
		version
)
	return cdefs.C.BNGetMediumLevelILSSAMemoryDefinition(func, version)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAMemoryUses
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAMemoryUses(
		func, 
		version, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILSSAMemoryUses(func, version, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAMemoryVersionAtILInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAMemoryVersionAtILInstruction(
		func, 
		instr
)
	return cdefs.C.BNGetMediumLevelILSSAMemoryVersionAtILInstruction(func, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAVarDefinition
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAVarDefinition(
		func, 
		var, 
		version
)
	return cdefs.C.BNGetMediumLevelILSSAVarDefinition(func, var, version)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAVarUses
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAVarUses(
		func, 
		var, 
		version, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILSSAVarUses(func, var, version, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAVarValue
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAVarValue(
		func, 
		var, 
		version
)
	return cdefs.C.BNGetMediumLevelILSSAVarValue(func, var, version)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILSSAVarVersionAtILInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILSSAVarVersionAtILInstruction(
		func, 
		var, 
		instr
)
	return cdefs.C.BNGetMediumLevelILSSAVarVersionAtILInstruction(func, var, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILStackContentsAfterInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILStackContentsAfterInstruction(
		func, 
		offset, 
		len, 
		instr
)
	return cdefs.C.BNGetMediumLevelILStackContentsAfterInstruction(func, offset, len, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILStackContentsAtInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILStackContentsAtInstruction(
		func, 
		offset, 
		len, 
		instr
)
	return cdefs.C.BNGetMediumLevelILStackContentsAtInstruction(func, offset, len, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableDefinitions
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableDefinitions(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariableDefinitions(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableForFlagAtInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableForFlagAtInstruction(
		func, 
		flag, 
		instr
)
	return cdefs.C.BNGetMediumLevelILVariableForFlagAtInstruction(func, flag, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableForRegisterAtInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableForRegisterAtInstruction(
		func, 
		reg, 
		instr
)
	return cdefs.C.BNGetMediumLevelILVariableForRegisterAtInstruction(func, reg, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableForStackLocationAtInstruction
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableForStackLocationAtInstruction(
		func, 
		offset, 
		instr
)
	return cdefs.C.BNGetMediumLevelILVariableForStackLocationAtInstruction(func, offset, instr)
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableReferences
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableReferences(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariableReferences(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableReferencesFrom
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableReferencesFrom(
		func, 
		arch, 
		address, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariableReferencesFrom(func, arch, address, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableReferencesFromIfAvailable
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableReferencesFromIfAvailable(
		func, 
		arch, 
		address, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariableReferencesFromIfAvailable(func, arch, address, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableReferencesIfAvailable
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableReferencesIfAvailable(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariableReferencesIfAvailable(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableReferencesInRange
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableReferencesInRange(
		func, 
		arch, 
		address, 
		len, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariableReferencesInRange(func, arch, address, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableReferencesInRangeIfAvailable
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableReferencesInRangeIfAvailable(
		func, 
		arch, 
		address, 
		len, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariableReferencesInRangeIfAvailable(func, arch, address, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableSSAVersions
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableSSAVersions(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariableSSAVersions(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariableUses
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariableUses(
		func, 
		var, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariableUses(func, var, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMediumLevelILVariables
-- -------------------------------------------------------

function core.BNGetMediumLevelILVariables(
		func, 
		count
)
	local result = cdefs.C.BNGetMediumLevelILVariables(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMemoryUsageInfo
-- -------------------------------------------------------

function core.BNGetMemoryUsageInfo(
		count
)
	local result = cdefs.C.BNGetMemoryUsageInfo(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMergedVariables
-- -------------------------------------------------------

function core.BNGetMergedVariables(
		func, 
		count
)
	local result = cdefs.C.BNGetMergedVariables(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetMinimumCoreABIVersion
-- -------------------------------------------------------

function core.BNGetMinimumCoreABIVersion(
)
	return cdefs.C.BNGetMinimumCoreABIVersion()
end

-- -------------------------------------------------------
-- BNGetModification
-- -------------------------------------------------------

function core.BNGetModification(
		view, 
		offset
)
	return cdefs.C.BNGetModification(view, offset)
end

-- -------------------------------------------------------
-- BNGetModificationArray
-- -------------------------------------------------------

function core.BNGetModificationArray(
		view, 
		offset, 
		result, 
		len
)
	return cdefs.C.BNGetModificationArray(view, offset, result, len)
end

-- -------------------------------------------------------
-- BNGetModifiedArchitectureRegistersOnWrite
-- -------------------------------------------------------

function core.BNGetModifiedArchitectureRegistersOnWrite(
		arch, 
		reg, 
		count
)
	local result = cdefs.C.BNGetModifiedArchitectureRegistersOnWrite(arch, reg, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetNameSpaces
-- -------------------------------------------------------

function core.BNGetNameSpaces(
		view, 
		count
)
	local result = cdefs.C.BNGetNameSpaces(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetNativeTypeParserArchitecture
-- -------------------------------------------------------

function core.BNGetNativeTypeParserArchitecture(
)
	local result = cdefs.C.BNGetNativeTypeParserArchitecture()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetNewAutoFunctionAnalysisSuppressed
-- -------------------------------------------------------

function core.BNGetNewAutoFunctionAnalysisSuppressed(
		view
)
	return cdefs.C.BNGetNewAutoFunctionAnalysisSuppressed(view)
end

-- -------------------------------------------------------
-- BNGetNextBasicBlockStartAfterAddress
-- -------------------------------------------------------

function core.BNGetNextBasicBlockStartAfterAddress(
		view, 
		addr
)
	return cdefs.C.BNGetNextBasicBlockStartAfterAddress(view, addr)
end

-- -------------------------------------------------------
-- BNGetNextDataAfterAddress
-- -------------------------------------------------------

function core.BNGetNextDataAfterAddress(
		view, 
		addr
)
	return cdefs.C.BNGetNextDataAfterAddress(view, addr)
end

-- -------------------------------------------------------
-- BNGetNextDataVariableStartAfterAddress
-- -------------------------------------------------------

function core.BNGetNextDataVariableStartAfterAddress(
		view, 
		addr
)
	return cdefs.C.BNGetNextDataVariableStartAfterAddress(view, addr)
end

-- -------------------------------------------------------
-- BNGetNextFunctionStartAfterAddress
-- -------------------------------------------------------

function core.BNGetNextFunctionStartAfterAddress(
		view, 
		addr
)
	return cdefs.C.BNGetNextFunctionStartAfterAddress(view, addr)
end

-- -------------------------------------------------------
-- BNGetNextLinearViewObjectChild
-- -------------------------------------------------------

function core.BNGetNextLinearViewObjectChild(
		parent, 
		child
)
	local result = cdefs.C.BNGetNextLinearViewObjectChild(parent, child)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetNextValidOffset
-- -------------------------------------------------------

function core.BNGetNextValidOffset(
		view, 
		offset
)
	return cdefs.C.BNGetNextValidOffset(view, offset)
end

-- -------------------------------------------------------
-- BNGetOpenFileNameInput
-- -------------------------------------------------------

function core.BNGetOpenFileNameInput(
		result, 
		prompt, 
		ext
)
	return cdefs.C.BNGetOpenFileNameInput(result, prompt, ext)
end

-- -------------------------------------------------------
-- BNGetOriginalFilename
-- -------------------------------------------------------

function core.BNGetOriginalFilename(
		file
)
	local result = cdefs.C.BNGetOriginalFilename(file)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetParameterOrderingForVariables
-- -------------------------------------------------------

function core.BNGetParameterOrderingForVariables(
		cc, 
		paramVars, 
		paramTypes, 
		paramCount, 
		count
)
	local result = cdefs.C.BNGetParameterOrderingForVariables(cc, paramVars, paramTypes, paramCount, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetParameterValueAtInstruction
-- -------------------------------------------------------

function core.BNGetParameterValueAtInstruction(
		func, 
		arch, 
		addr, 
		functionType, 
		i
)
	return cdefs.C.BNGetParameterValueAtInstruction(func, arch, addr, functionType, i)
end

-- -------------------------------------------------------
-- BNGetParameterValueAtLowLevelILInstruction
-- -------------------------------------------------------

function core.BNGetParameterValueAtLowLevelILInstruction(
		func, 
		instr, 
		functionType, 
		i
)
	return cdefs.C.BNGetParameterValueAtLowLevelILInstruction(func, instr, functionType, i)
end

-- -------------------------------------------------------
-- BNGetParameterVariableForIncomingVariable
-- -------------------------------------------------------

function core.BNGetParameterVariableForIncomingVariable(
		cc, 
		var, 
		func
)
	return cdefs.C.BNGetParameterVariableForIncomingVariable(cc, var, func)
end

-- -------------------------------------------------------
-- BNGetParametersForAnalysis
-- -------------------------------------------------------

function core.BNGetParametersForAnalysis(
		view
)
	return cdefs.C.BNGetParametersForAnalysis(view)
end

-- -------------------------------------------------------
-- BNGetParentPath
-- -------------------------------------------------------

function core.BNGetParentPath(
		path
)
	local result = cdefs.C.BNGetParentPath(path)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetParentView
-- -------------------------------------------------------

function core.BNGetParentView(
		view
)
	local result = cdefs.C.BNGetParentView(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPathRelativeToBundledPluginDirectory
-- -------------------------------------------------------

function core.BNGetPathRelativeToBundledPluginDirectory(
		path
)
	local result = cdefs.C.BNGetPathRelativeToBundledPluginDirectory(path)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetPathRelativeToUserDirectory
-- -------------------------------------------------------

function core.BNGetPathRelativeToUserDirectory(
		path
)
	local result = cdefs.C.BNGetPathRelativeToUserDirectory(path)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetPathRelativeToUserPluginDirectory
-- -------------------------------------------------------

function core.BNGetPathRelativeToUserPluginDirectory(
		path
)
	local result = cdefs.C.BNGetPathRelativeToUserPluginDirectory(path)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetPlatformArchitecture
-- -------------------------------------------------------

function core.BNGetPlatformArchitecture(
		platform
)
	local result = cdefs.C.BNGetPlatformArchitecture(platform)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformByName
-- -------------------------------------------------------

function core.BNGetPlatformByName(
		name
)
	local result = cdefs.C.BNGetPlatformByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformCallingConventions
-- -------------------------------------------------------

function core.BNGetPlatformCallingConventions(
		platform, 
		count
)
	local result = cdefs.C.BNGetPlatformCallingConventions(platform, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformCdeclCallingConvention
-- -------------------------------------------------------

function core.BNGetPlatformCdeclCallingConvention(
		platform
)
	local result = cdefs.C.BNGetPlatformCdeclCallingConvention(platform)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformDefaultCallingConvention
-- -------------------------------------------------------

function core.BNGetPlatformDefaultCallingConvention(
		platform
)
	local result = cdefs.C.BNGetPlatformDefaultCallingConvention(platform)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformFastcallCallingConvention
-- -------------------------------------------------------

function core.BNGetPlatformFastcallCallingConvention(
		platform
)
	local result = cdefs.C.BNGetPlatformFastcallCallingConvention(platform)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformForViewType
-- -------------------------------------------------------

function core.BNGetPlatformForViewType(
		type, 
		id, 
		arch
)
	local result = cdefs.C.BNGetPlatformForViewType(type, id, arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformFunctionByName
-- -------------------------------------------------------

function core.BNGetPlatformFunctionByName(
		platform, 
		name, 
		exactMatch
)
	local result = cdefs.C.BNGetPlatformFunctionByName(platform, name, exactMatch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformFunctions
-- -------------------------------------------------------

function core.BNGetPlatformFunctions(
		platform, 
		count
)
	local result = cdefs.C.BNGetPlatformFunctions(platform, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformList
-- -------------------------------------------------------

function core.BNGetPlatformList(
		count
)
	local result = cdefs.C.BNGetPlatformList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformListByArchitecture
-- -------------------------------------------------------

function core.BNGetPlatformListByArchitecture(
		arch, 
		count
)
	local result = cdefs.C.BNGetPlatformListByArchitecture(arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformListByOS
-- -------------------------------------------------------

function core.BNGetPlatformListByOS(
		os, 
		count
)
	local result = cdefs.C.BNGetPlatformListByOS(os, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformListByOSAndArchitecture
-- -------------------------------------------------------

function core.BNGetPlatformListByOSAndArchitecture(
		os, 
		arch, 
		count
)
	local result = cdefs.C.BNGetPlatformListByOSAndArchitecture(os, arch, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformName
-- -------------------------------------------------------

function core.BNGetPlatformName(
		platform
)
	local result = cdefs.C.BNGetPlatformName(platform)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetPlatformOSList
-- -------------------------------------------------------

function core.BNGetPlatformOSList(
		count
)
	local result = cdefs.C.BNGetPlatformOSList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformStdcallCallingConvention
-- -------------------------------------------------------

function core.BNGetPlatformStdcallCallingConvention(
		platform
)
	local result = cdefs.C.BNGetPlatformStdcallCallingConvention(platform)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformSystemCallConvention
-- -------------------------------------------------------

function core.BNGetPlatformSystemCallConvention(
		platform
)
	local result = cdefs.C.BNGetPlatformSystemCallConvention(platform)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformSystemCallName
-- -------------------------------------------------------

function core.BNGetPlatformSystemCallName(
		platform, 
		number
)
	local result = cdefs.C.BNGetPlatformSystemCallName(platform, number)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetPlatformSystemCallType
-- -------------------------------------------------------

function core.BNGetPlatformSystemCallType(
		platform, 
		number
)
	local result = cdefs.C.BNGetPlatformSystemCallType(platform, number)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformSystemCalls
-- -------------------------------------------------------

function core.BNGetPlatformSystemCalls(
		platform, 
		count
)
	local result = cdefs.C.BNGetPlatformSystemCalls(platform, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformTypeByName
-- -------------------------------------------------------

function core.BNGetPlatformTypeByName(
		platform, 
		name
)
	local result = cdefs.C.BNGetPlatformTypeByName(platform, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformTypeLibraries
-- -------------------------------------------------------

function core.BNGetPlatformTypeLibraries(
		platform, 
		count
)
	local result = cdefs.C.BNGetPlatformTypeLibraries(platform, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformTypeLibrariesByName
-- -------------------------------------------------------

function core.BNGetPlatformTypeLibrariesByName(
		platform, 
		depName, 
		count
)
	local result = cdefs.C.BNGetPlatformTypeLibrariesByName(platform, depName, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformTypes
-- -------------------------------------------------------

function core.BNGetPlatformTypes(
		platform, 
		count
)
	local result = cdefs.C.BNGetPlatformTypes(platform, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformVariableByName
-- -------------------------------------------------------

function core.BNGetPlatformVariableByName(
		platform, 
		name
)
	local result = cdefs.C.BNGetPlatformVariableByName(platform, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPlatformVariables
-- -------------------------------------------------------

function core.BNGetPlatformVariables(
		platform, 
		count
)
	local result = cdefs.C.BNGetPlatformVariables(platform, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetPreviousBasicBlockEndBeforeAddress
-- -------------------------------------------------------

function core.BNGetPreviousBasicBlockEndBeforeAddress(
		view, 
		addr
)
	return cdefs.C.BNGetPreviousBasicBlockEndBeforeAddress(view, addr)
end

-- -------------------------------------------------------
-- BNGetPreviousBasicBlockStartBeforeAddress
-- -------------------------------------------------------

function core.BNGetPreviousBasicBlockStartBeforeAddress(
		view, 
		addr
)
	return cdefs.C.BNGetPreviousBasicBlockStartBeforeAddress(view, addr)
end

-- -------------------------------------------------------
-- BNGetPreviousDataBeforeAddress
-- -------------------------------------------------------

function core.BNGetPreviousDataBeforeAddress(
		view, 
		addr
)
	return cdefs.C.BNGetPreviousDataBeforeAddress(view, addr)
end

-- -------------------------------------------------------
-- BNGetPreviousDataVariableStartBeforeAddress
-- -------------------------------------------------------

function core.BNGetPreviousDataVariableStartBeforeAddress(
		view, 
		addr
)
	return cdefs.C.BNGetPreviousDataVariableStartBeforeAddress(view, addr)
end

-- -------------------------------------------------------
-- BNGetPreviousFunctionStartBeforeAddress
-- -------------------------------------------------------

function core.BNGetPreviousFunctionStartBeforeAddress(
		view, 
		addr
)
	return cdefs.C.BNGetPreviousFunctionStartBeforeAddress(view, addr)
end

-- -------------------------------------------------------
-- BNGetPreviousLinearViewObjectChild
-- -------------------------------------------------------

function core.BNGetPreviousLinearViewObjectChild(
		parent, 
		child
)
	local result = cdefs.C.BNGetPreviousLinearViewObjectChild(parent, child)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetProduct
-- -------------------------------------------------------

function core.BNGetProduct(
)
	local result = cdefs.C.BNGetProduct()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetProductType
-- -------------------------------------------------------

function core.BNGetProductType(
)
	local result = cdefs.C.BNGetProductType()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetReaderPosition
-- -------------------------------------------------------

function core.BNGetReaderPosition(
		stream
)
	return cdefs.C.BNGetReaderPosition(stream)
end

-- -------------------------------------------------------
-- BNGetRecentAnalysisFunctionForAddress
-- -------------------------------------------------------

function core.BNGetRecentAnalysisFunctionForAddress(
		view, 
		addr
)
	local result = cdefs.C.BNGetRecentAnalysisFunctionForAddress(view, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRecentBasicBlockForAddress
-- -------------------------------------------------------

function core.BNGetRecentBasicBlockForAddress(
		view, 
		addr
)
	local result = cdefs.C.BNGetRecentBasicBlockForAddress(view, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRedoEntries
-- -------------------------------------------------------

function core.BNGetRedoEntries(
		file, 
		count
)
	local result = cdefs.C.BNGetRedoEntries(file, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRegisterStackAdjustments
-- -------------------------------------------------------

function core.BNGetRegisterStackAdjustments(
		cc, 
		returnRegs, 
		returnRegCount, 
		returnType, 
		params, 
		paramCount, 
		types, 
		typeCount, 
		resultRegisters, 
		resultAdjustments
)
	return cdefs.C.BNGetRegisterStackAdjustments(cc, returnRegs, returnRegCount, returnType, params, paramCount, types, typeCount, resultRegisters, resultAdjustments)
end

-- -------------------------------------------------------
-- BNGetRegisterValueAfterInstruction
-- -------------------------------------------------------

function core.BNGetRegisterValueAfterInstruction(
		func, 
		arch, 
		addr, 
		reg
)
	return cdefs.C.BNGetRegisterValueAfterInstruction(func, arch, addr, reg)
end

-- -------------------------------------------------------
-- BNGetRegisterValueAtInstruction
-- -------------------------------------------------------

function core.BNGetRegisterValueAtInstruction(
		func, 
		arch, 
		addr, 
		reg
)
	return cdefs.C.BNGetRegisterValueAtInstruction(func, arch, addr, reg)
end

-- -------------------------------------------------------
-- BNGetRegisteredTypeName
-- -------------------------------------------------------

function core.BNGetRegisteredTypeName(
		type
)
	local result = cdefs.C.BNGetRegisteredTypeName(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRegistersReadByInstruction
-- -------------------------------------------------------

function core.BNGetRegistersReadByInstruction(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetRegistersReadByInstruction(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRegistersWrittenByInstruction
-- -------------------------------------------------------

function core.BNGetRegistersWrittenByInstruction(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetRegistersWrittenByInstruction(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRelatedPlatform
-- -------------------------------------------------------

function core.BNGetRelatedPlatform(
		platform, 
		arch
)
	local result = cdefs.C.BNGetRelatedPlatform(platform, arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRelocationRanges
-- -------------------------------------------------------

function core.BNGetRelocationRanges(
		view, 
		count
)
	local result = cdefs.C.BNGetRelocationRanges(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRelocationRangesAtAddress
-- -------------------------------------------------------

function core.BNGetRelocationRangesAtAddress(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetRelocationRangesAtAddress(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetReportCollectionCount
-- -------------------------------------------------------

function core.BNGetReportCollectionCount(
		reports
)
	return cdefs.C.BNGetReportCollectionCount(reports)
end

-- -------------------------------------------------------
-- BNGetReportContents
-- -------------------------------------------------------

function core.BNGetReportContents(
		reports, 
		i
)
	local result = cdefs.C.BNGetReportContents(reports, i)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetReportFlowGraph
-- -------------------------------------------------------

function core.BNGetReportFlowGraph(
		reports, 
		i
)
	local result = cdefs.C.BNGetReportFlowGraph(reports, i)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetReportPlainText
-- -------------------------------------------------------

function core.BNGetReportPlainText(
		reports, 
		i
)
	local result = cdefs.C.BNGetReportPlainText(reports, i)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetReportTitle
-- -------------------------------------------------------

function core.BNGetReportTitle(
		reports, 
		i
)
	local result = cdefs.C.BNGetReportTitle(reports, i)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetReportType
-- -------------------------------------------------------

function core.BNGetReportType(
		reports, 
		i
)
	return cdefs.C.BNGetReportType(reports, i)
end

-- -------------------------------------------------------
-- BNGetReportView
-- -------------------------------------------------------

function core.BNGetReportView(
		reports, 
		i
)
	local result = cdefs.C.BNGetReportView(reports, i)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRepositoriesDirectory
-- -------------------------------------------------------

function core.BNGetRepositoriesDirectory(
)
	local result = cdefs.C.BNGetRepositoriesDirectory()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetRepositoryManager
-- -------------------------------------------------------

function core.BNGetRepositoryManager(
)
	local result = cdefs.C.BNGetRepositoryManager()
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRootComponent
-- -------------------------------------------------------

function core.BNGetRootComponent(
		view
)
	local result = cdefs.C.BNGetRootComponent(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetRunningBackgroundTasks
-- -------------------------------------------------------

function core.BNGetRunningBackgroundTasks(
		count
)
	local result = cdefs.C.BNGetRunningBackgroundTasks(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSaveFileNameInput
-- -------------------------------------------------------

function core.BNGetSaveFileNameInput(
		result, 
		prompt, 
		ext, 
		defaultName
)
	return cdefs.C.BNGetSaveFileNameInput(result, prompt, ext, defaultName)
end

-- -------------------------------------------------------
-- BNGetSaveSettingsName
-- -------------------------------------------------------

function core.BNGetSaveSettingsName(
		settings
)
	local result = cdefs.C.BNGetSaveSettingsName(settings)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetScriptingInstanceDelimiters
-- -------------------------------------------------------

function core.BNGetScriptingInstanceDelimiters(
		instance
)
	local result = cdefs.C.BNGetScriptingInstanceDelimiters(instance)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetScriptingInstanceInputReadyState
-- -------------------------------------------------------

function core.BNGetScriptingInstanceInputReadyState(
		instance
)
	return cdefs.C.BNGetScriptingInstanceInputReadyState(instance)
end

-- -------------------------------------------------------
-- BNGetScriptingProviderAPIName
-- -------------------------------------------------------

function core.BNGetScriptingProviderAPIName(
		provider
)
	local result = cdefs.C.BNGetScriptingProviderAPIName(provider)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetScriptingProviderByAPIName
-- -------------------------------------------------------

function core.BNGetScriptingProviderByAPIName(
		name
)
	local result = cdefs.C.BNGetScriptingProviderByAPIName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetScriptingProviderByName
-- -------------------------------------------------------

function core.BNGetScriptingProviderByName(
		name
)
	local result = cdefs.C.BNGetScriptingProviderByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetScriptingProviderList
-- -------------------------------------------------------

function core.BNGetScriptingProviderList(
		count
)
	local result = cdefs.C.BNGetScriptingProviderList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetScriptingProviderName
-- -------------------------------------------------------

function core.BNGetScriptingProviderName(
		provider
)
	local result = cdefs.C.BNGetScriptingProviderName(provider)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetSecretsProviderByName
-- -------------------------------------------------------

function core.BNGetSecretsProviderByName(
		name
)
	local result = cdefs.C.BNGetSecretsProviderByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSecretsProviderData
-- -------------------------------------------------------

function core.BNGetSecretsProviderData(
		provider, 
		key
)
	local result = cdefs.C.BNGetSecretsProviderData(provider, key)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetSecretsProviderList
-- -------------------------------------------------------

function core.BNGetSecretsProviderList(
		count
)
	local result = cdefs.C.BNGetSecretsProviderList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSecretsProviderName
-- -------------------------------------------------------

function core.BNGetSecretsProviderName(
		provider
)
	local result = cdefs.C.BNGetSecretsProviderName(provider)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetSectionByName
-- -------------------------------------------------------

function core.BNGetSectionByName(
		view, 
		name
)
	local result = cdefs.C.BNGetSectionByName(view, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSections
-- -------------------------------------------------------

function core.BNGetSections(
		view, 
		count
)
	local result = cdefs.C.BNGetSections(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSectionsAt
-- -------------------------------------------------------

function core.BNGetSectionsAt(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetSectionsAt(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSegmentAt
-- -------------------------------------------------------

function core.BNGetSegmentAt(
		view, 
		addr
)
	local result = cdefs.C.BNGetSegmentAt(view, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSegments
-- -------------------------------------------------------

function core.BNGetSegments(
		view, 
		count
)
	local result = cdefs.C.BNGetSegments(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSerialNumber
-- -------------------------------------------------------

function core.BNGetSerialNumber(
)
	local result = cdefs.C.BNGetSerialNumber()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetSettingsFileName
-- -------------------------------------------------------

function core.BNGetSettingsFileName(
)
	local result = cdefs.C.BNGetSettingsFileName()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetSizesReferenced
-- -------------------------------------------------------

function core.BNGetSizesReferenced(
		view, 
		type, 
		offset, 
		count
)
	local result = cdefs.C.BNGetSizesReferenced(view, type, offset, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSnapshotChildren
-- -------------------------------------------------------

function core.BNGetSnapshotChildren(
		snapshot, 
		count
)
	local result = cdefs.C.BNGetSnapshotChildren(snapshot, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSnapshotData
-- -------------------------------------------------------

function core.BNGetSnapshotData(
		file, 
		data, 
		cache, 
		ctxt, 
		progress
)
	return cdefs.C.BNGetSnapshotData(file, data, cache, ctxt, progress)
end

-- -------------------------------------------------------
-- BNGetSnapshotDatabase
-- -------------------------------------------------------

function core.BNGetSnapshotDatabase(
		snapshot
)
	local result = cdefs.C.BNGetSnapshotDatabase(snapshot)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSnapshotFileContents
-- -------------------------------------------------------

function core.BNGetSnapshotFileContents(
		snapshot
)
	local result = cdefs.C.BNGetSnapshotFileContents(snapshot)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSnapshotFileContentsHash
-- -------------------------------------------------------

function core.BNGetSnapshotFileContentsHash(
		snapshot
)
	local result = cdefs.C.BNGetSnapshotFileContentsHash(snapshot)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSnapshotFirstParent
-- -------------------------------------------------------

function core.BNGetSnapshotFirstParent(
		snapshot
)
	local result = cdefs.C.BNGetSnapshotFirstParent(snapshot)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSnapshotId
-- -------------------------------------------------------

function core.BNGetSnapshotId(
		snapshot
)
	return cdefs.C.BNGetSnapshotId(snapshot)
end

-- -------------------------------------------------------
-- BNGetSnapshotName
-- -------------------------------------------------------

function core.BNGetSnapshotName(
		snapshot
)
	local result = cdefs.C.BNGetSnapshotName(snapshot)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetSnapshotParents
-- -------------------------------------------------------

function core.BNGetSnapshotParents(
		snapshot, 
		count
)
	local result = cdefs.C.BNGetSnapshotParents(snapshot, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSnapshotUndoEntries
-- -------------------------------------------------------

function core.BNGetSnapshotUndoEntries(
		snapshot, 
		count
)
	local result = cdefs.C.BNGetSnapshotUndoEntries(snapshot, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSnapshotUndoEntriesWithProgress
-- -------------------------------------------------------

function core.BNGetSnapshotUndoEntriesWithProgress(
		snapshot, 
		ctxt, 
		progress, 
		count
)
	local result = cdefs.C.BNGetSnapshotUndoEntriesWithProgress(snapshot, ctxt, progress, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSplitVariables
-- -------------------------------------------------------

function core.BNGetSplitVariables(
		func, 
		count
)
	local result = cdefs.C.BNGetSplitVariables(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStackAdjustmentForVariables
-- -------------------------------------------------------

function core.BNGetStackAdjustmentForVariables(
		cc, 
		paramVars, 
		paramTypes, 
		paramCount
)
	return cdefs.C.BNGetStackAdjustmentForVariables(cc, paramVars, paramTypes, paramCount)
end

-- -------------------------------------------------------
-- BNGetStackContentsAfterInstruction
-- -------------------------------------------------------

function core.BNGetStackContentsAfterInstruction(
		func, 
		arch, 
		addr, 
		offset, 
		size
)
	return cdefs.C.BNGetStackContentsAfterInstruction(func, arch, addr, offset, size)
end

-- -------------------------------------------------------
-- BNGetStackContentsAtInstruction
-- -------------------------------------------------------

function core.BNGetStackContentsAtInstruction(
		func, 
		arch, 
		addr, 
		offset, 
		size
)
	return cdefs.C.BNGetStackContentsAtInstruction(func, arch, addr, offset, size)
end

-- -------------------------------------------------------
-- BNGetStackLayout
-- -------------------------------------------------------

function core.BNGetStackLayout(
		func, 
		count
)
	local result = cdefs.C.BNGetStackLayout(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStackVariableAtFrameOffset
-- -------------------------------------------------------

function core.BNGetStackVariableAtFrameOffset(
		func, 
		arch, 
		addr, 
		offset, 
		var
)
	return cdefs.C.BNGetStackVariableAtFrameOffset(func, arch, addr, offset, var)
end

-- -------------------------------------------------------
-- BNGetStackVariablesReferencedByInstruction
-- -------------------------------------------------------

function core.BNGetStackVariablesReferencedByInstruction(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetStackVariablesReferencedByInstruction(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStackVariablesReferencedByInstructionIfAvailable
-- -------------------------------------------------------

function core.BNGetStackVariablesReferencedByInstructionIfAvailable(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetStackVariablesReferencedByInstructionIfAvailable(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStartOffset
-- -------------------------------------------------------

function core.BNGetStartOffset(
		view
)
	return cdefs.C.BNGetStartOffset(view)
end

-- -------------------------------------------------------
-- BNGetStringAtAddress
-- -------------------------------------------------------

function core.BNGetStringAtAddress(
		view, 
		addr, 
		strRef
)
	return cdefs.C.BNGetStringAtAddress(view, addr, strRef)
end

-- -------------------------------------------------------
-- BNGetStrings
-- -------------------------------------------------------

function core.BNGetStrings(
		view, 
		count
)
	local result = cdefs.C.BNGetStrings(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStringsInRange
-- -------------------------------------------------------

function core.BNGetStringsInRange(
		view, 
		start, 
		len, 
		count
)
	local result = cdefs.C.BNGetStringsInRange(view, start, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStructureAlignment
-- -------------------------------------------------------

function core.BNGetStructureAlignment(
		s
)
	return cdefs.C.BNGetStructureAlignment(s)
end

-- -------------------------------------------------------
-- BNGetStructureBuilderAlignment
-- -------------------------------------------------------

function core.BNGetStructureBuilderAlignment(
		s
)
	return cdefs.C.BNGetStructureBuilderAlignment(s)
end

-- -------------------------------------------------------
-- BNGetStructureBuilderMemberAtOffset
-- -------------------------------------------------------

function core.BNGetStructureBuilderMemberAtOffset(
		s, 
		offset, 
		idx
)
	local result = cdefs.C.BNGetStructureBuilderMemberAtOffset(s, offset, idx)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStructureBuilderMemberByName
-- -------------------------------------------------------

function core.BNGetStructureBuilderMemberByName(
		s, 
		name
)
	local result = cdefs.C.BNGetStructureBuilderMemberByName(s, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStructureBuilderMembers
-- -------------------------------------------------------

function core.BNGetStructureBuilderMembers(
		s, 
		count
)
	local result = cdefs.C.BNGetStructureBuilderMembers(s, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStructureBuilderPointerOffset
-- -------------------------------------------------------

function core.BNGetStructureBuilderPointerOffset(
		s
)
	return cdefs.C.BNGetStructureBuilderPointerOffset(s)
end

-- -------------------------------------------------------
-- BNGetStructureBuilderType
-- -------------------------------------------------------

function core.BNGetStructureBuilderType(
		s
)
	return cdefs.C.BNGetStructureBuilderType(s)
end

-- -------------------------------------------------------
-- BNGetStructureBuilderWidth
-- -------------------------------------------------------

function core.BNGetStructureBuilderWidth(
		s
)
	return cdefs.C.BNGetStructureBuilderWidth(s)
end

-- -------------------------------------------------------
-- BNGetStructureMemberAtOffset
-- -------------------------------------------------------

function core.BNGetStructureMemberAtOffset(
		s, 
		offset, 
		idx
)
	local result = cdefs.C.BNGetStructureMemberAtOffset(s, offset, idx)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStructureMemberByName
-- -------------------------------------------------------

function core.BNGetStructureMemberByName(
		s, 
		name
)
	local result = cdefs.C.BNGetStructureMemberByName(s, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStructureMembers
-- -------------------------------------------------------

function core.BNGetStructureMembers(
		s, 
		count
)
	local result = cdefs.C.BNGetStructureMembers(s, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStructureMembersIncludingInherited
-- -------------------------------------------------------

function core.BNGetStructureMembersIncludingInherited(
		s, 
		view, 
		count
)
	local result = cdefs.C.BNGetStructureMembersIncludingInherited(s, view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetStructurePointerOffset
-- -------------------------------------------------------

function core.BNGetStructurePointerOffset(
		s
)
	return cdefs.C.BNGetStructurePointerOffset(s)
end

-- -------------------------------------------------------
-- BNGetStructureType
-- -------------------------------------------------------

function core.BNGetStructureType(
		s
)
	return cdefs.C.BNGetStructureType(s)
end

-- -------------------------------------------------------
-- BNGetStructureWidth
-- -------------------------------------------------------

function core.BNGetStructureWidth(
		s
)
	return cdefs.C.BNGetStructureWidth(s)
end

-- -------------------------------------------------------
-- BNGetSymbolAddress
-- -------------------------------------------------------

function core.BNGetSymbolAddress(
		sym
)
	return cdefs.C.BNGetSymbolAddress(sym)
end

-- -------------------------------------------------------
-- BNGetSymbolBinding
-- -------------------------------------------------------

function core.BNGetSymbolBinding(
		sym
)
	return cdefs.C.BNGetSymbolBinding(sym)
end

-- -------------------------------------------------------
-- BNGetSymbolByAddress
-- -------------------------------------------------------

function core.BNGetSymbolByAddress(
		view, 
		addr, 
		nameSpace
)
	local result = cdefs.C.BNGetSymbolByAddress(view, addr, nameSpace)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSymbolByRawName
-- -------------------------------------------------------

function core.BNGetSymbolByRawName(
		view, 
		name, 
		nameSpace
)
	local result = cdefs.C.BNGetSymbolByRawName(view, name, nameSpace)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSymbolFullName
-- -------------------------------------------------------

function core.BNGetSymbolFullName(
		sym
)
	local result = cdefs.C.BNGetSymbolFullName(sym)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetSymbolNameSpace
-- -------------------------------------------------------

function core.BNGetSymbolNameSpace(
		sym
)
	return cdefs.C.BNGetSymbolNameSpace(sym)
end

-- -------------------------------------------------------
-- BNGetSymbolOrdinal
-- -------------------------------------------------------

function core.BNGetSymbolOrdinal(
		sym
)
	return cdefs.C.BNGetSymbolOrdinal(sym)
end

-- -------------------------------------------------------
-- BNGetSymbolRawBytes
-- -------------------------------------------------------

function core.BNGetSymbolRawBytes(
		sym, 
		count
)
	local result = cdefs.C.BNGetSymbolRawBytes(sym, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSymbolRawName
-- -------------------------------------------------------

function core.BNGetSymbolRawName(
		sym
)
	local result = cdefs.C.BNGetSymbolRawName(sym)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetSymbolShortName
-- -------------------------------------------------------

function core.BNGetSymbolShortName(
		sym
)
	local result = cdefs.C.BNGetSymbolShortName(sym)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetSymbolType
-- -------------------------------------------------------

function core.BNGetSymbolType(
		sym
)
	return cdefs.C.BNGetSymbolType(sym)
end

-- -------------------------------------------------------
-- BNGetSymbols
-- -------------------------------------------------------

function core.BNGetSymbols(
		view, 
		count, 
		nameSpace
)
	local result = cdefs.C.BNGetSymbols(view, count, nameSpace)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSymbolsByName
-- -------------------------------------------------------

function core.BNGetSymbolsByName(
		view, 
		name, 
		count, 
		nameSpace
)
	local result = cdefs.C.BNGetSymbolsByName(view, name, count, nameSpace)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSymbolsByRawName
-- -------------------------------------------------------

function core.BNGetSymbolsByRawName(
		view, 
		name, 
		count, 
		nameSpace
)
	local result = cdefs.C.BNGetSymbolsByRawName(view, name, count, nameSpace)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSymbolsInRange
-- -------------------------------------------------------

function core.BNGetSymbolsInRange(
		view, 
		start, 
		len, 
		count, 
		nameSpace
)
	local result = cdefs.C.BNGetSymbolsInRange(view, start, len, count, nameSpace)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSymbolsOfType
-- -------------------------------------------------------

function core.BNGetSymbolsOfType(
		view, 
		type, 
		count, 
		nameSpace
)
	local result = cdefs.C.BNGetSymbolsOfType(view, type, count, nameSpace)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetSymbolsOfTypeInRange
-- -------------------------------------------------------

function core.BNGetSymbolsOfTypeInRange(
		view, 
		type, 
		start, 
		len, 
		count, 
		nameSpace
)
	local result = cdefs.C.BNGetSymbolsOfTypeInRange(view, type, start, len, count, nameSpace)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTag
-- -------------------------------------------------------

function core.BNGetTag(
		view, 
		tagId
)
	local result = cdefs.C.BNGetTag(view, tagId)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTagReferencesOfType
-- -------------------------------------------------------

function core.BNGetTagReferencesOfType(
		view, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetTagReferencesOfType(view, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTagReferencesOfTypeCount
-- -------------------------------------------------------

function core.BNGetTagReferencesOfTypeCount(
		view, 
		tagType
)
	return cdefs.C.BNGetTagReferencesOfTypeCount(view, tagType)
end

-- -------------------------------------------------------
-- BNGetTagType
-- -------------------------------------------------------

function core.BNGetTagType(
		view, 
		name
)
	local result = cdefs.C.BNGetTagType(view, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTagTypeById
-- -------------------------------------------------------

function core.BNGetTagTypeById(
		view, 
		id
)
	local result = cdefs.C.BNGetTagTypeById(view, id)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTagTypeByIdWithType
-- -------------------------------------------------------

function core.BNGetTagTypeByIdWithType(
		view, 
		id, 
		type
)
	local result = cdefs.C.BNGetTagTypeByIdWithType(view, id, type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTagTypeWithType
-- -------------------------------------------------------

function core.BNGetTagTypeWithType(
		view, 
		name, 
		type
)
	local result = cdefs.C.BNGetTagTypeWithType(view, name, type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTagTypes
-- -------------------------------------------------------

function core.BNGetTagTypes(
		view, 
		count
)
	local result = cdefs.C.BNGetTagTypes(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTemporaryFileContents
-- -------------------------------------------------------

function core.BNGetTemporaryFileContents(
		file
)
	local result = cdefs.C.BNGetTemporaryFileContents(file)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTemporaryFilePath
-- -------------------------------------------------------

function core.BNGetTemporaryFilePath(
		file
)
	local result = cdefs.C.BNGetTemporaryFilePath(file)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTextLineInput
-- -------------------------------------------------------

function core.BNGetTextLineInput(
		result, 
		prompt, 
		title
)
	return cdefs.C.BNGetTextLineInput(result, prompt, title)
end

-- -------------------------------------------------------
-- BNGetTimeSinceLastUpdateCheck
-- -------------------------------------------------------

function core.BNGetTimeSinceLastUpdateCheck(
)
	return cdefs.C.BNGetTimeSinceLastUpdateCheck()
end

-- -------------------------------------------------------
-- BNGetTransformByName
-- -------------------------------------------------------

function core.BNGetTransformByName(
		name
)
	local result = cdefs.C.BNGetTransformByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTransformGroup
-- -------------------------------------------------------

function core.BNGetTransformGroup(
		xform
)
	local result = cdefs.C.BNGetTransformGroup(xform)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTransformLongName
-- -------------------------------------------------------

function core.BNGetTransformLongName(
		xform
)
	local result = cdefs.C.BNGetTransformLongName(xform)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTransformName
-- -------------------------------------------------------

function core.BNGetTransformName(
		xform
)
	local result = cdefs.C.BNGetTransformName(xform)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTransformParameterList
-- -------------------------------------------------------

function core.BNGetTransformParameterList(
		xform, 
		count
)
	local result = cdefs.C.BNGetTransformParameterList(xform, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTransformType
-- -------------------------------------------------------

function core.BNGetTransformType(
		xform
)
	return cdefs.C.BNGetTransformType(xform)
end

-- -------------------------------------------------------
-- BNGetTransformTypeList
-- -------------------------------------------------------

function core.BNGetTransformTypeList(
		count
)
	local result = cdefs.C.BNGetTransformTypeList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeAlignment
-- -------------------------------------------------------

function core.BNGetTypeAlignment(
		type
)
	return cdefs.C.BNGetTypeAlignment(type)
end

-- -------------------------------------------------------
-- BNGetTypeAlternateName
-- -------------------------------------------------------

function core.BNGetTypeAlternateName(
		type
)
	local result = cdefs.C.BNGetTypeAlternateName(type)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeAndName
-- -------------------------------------------------------

function core.BNGetTypeAndName(
		type, 
		name, 
		escaping
)
	local result = cdefs.C.BNGetTypeAndName(type, name, escaping)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeBuilderAlignment
-- -------------------------------------------------------

function core.BNGetTypeBuilderAlignment(
		type
)
	return cdefs.C.BNGetTypeBuilderAlignment(type)
end

-- -------------------------------------------------------
-- BNGetTypeBuilderAlternateName
-- -------------------------------------------------------

function core.BNGetTypeBuilderAlternateName(
		type
)
	local result = cdefs.C.BNGetTypeBuilderAlternateName(type)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeBuilderCallingConvention
-- -------------------------------------------------------

function core.BNGetTypeBuilderCallingConvention(
		type
)
	return cdefs.C.BNGetTypeBuilderCallingConvention(type)
end

-- -------------------------------------------------------
-- BNGetTypeBuilderChildType
-- -------------------------------------------------------

function core.BNGetTypeBuilderChildType(
		type
)
	return cdefs.C.BNGetTypeBuilderChildType(type)
end

-- -------------------------------------------------------
-- BNGetTypeBuilderClass
-- -------------------------------------------------------

function core.BNGetTypeBuilderClass(
		type
)
	return cdefs.C.BNGetTypeBuilderClass(type)
end

-- -------------------------------------------------------
-- BNGetTypeBuilderElementCount
-- -------------------------------------------------------

function core.BNGetTypeBuilderElementCount(
		type
)
	return cdefs.C.BNGetTypeBuilderElementCount(type)
end

-- -------------------------------------------------------
-- BNGetTypeBuilderEnumeration
-- -------------------------------------------------------

function core.BNGetTypeBuilderEnumeration(
		type
)
	local result = cdefs.C.BNGetTypeBuilderEnumeration(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeBuilderNamedTypeReference
-- -------------------------------------------------------

function core.BNGetTypeBuilderNamedTypeReference(
		type
)
	local result = cdefs.C.BNGetTypeBuilderNamedTypeReference(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeBuilderOffset
-- -------------------------------------------------------

function core.BNGetTypeBuilderOffset(
		type
)
	return cdefs.C.BNGetTypeBuilderOffset(type)
end

-- -------------------------------------------------------
-- BNGetTypeBuilderParameters
-- -------------------------------------------------------

function core.BNGetTypeBuilderParameters(
		type, 
		count
)
	local result = cdefs.C.BNGetTypeBuilderParameters(type, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeBuilderStackAdjustment
-- -------------------------------------------------------

function core.BNGetTypeBuilderStackAdjustment(
		type
)
	return cdefs.C.BNGetTypeBuilderStackAdjustment(type)
end

-- -------------------------------------------------------
-- BNGetTypeBuilderString
-- -------------------------------------------------------

function core.BNGetTypeBuilderString(
		type, 
		platform
)
	local result = cdefs.C.BNGetTypeBuilderString(type, platform)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeBuilderStringAfterName
-- -------------------------------------------------------

function core.BNGetTypeBuilderStringAfterName(
		type, 
		platform
)
	local result = cdefs.C.BNGetTypeBuilderStringAfterName(type, platform)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeBuilderStringBeforeName
-- -------------------------------------------------------

function core.BNGetTypeBuilderStringBeforeName(
		type, 
		platform
)
	local result = cdefs.C.BNGetTypeBuilderStringBeforeName(type, platform)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeBuilderStructure
-- -------------------------------------------------------

function core.BNGetTypeBuilderStructure(
		type
)
	local result = cdefs.C.BNGetTypeBuilderStructure(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeBuilderTokens
-- -------------------------------------------------------

function core.BNGetTypeBuilderTokens(
		type, 
		platform, 
		baseConfidence, 
		count
)
	local result = cdefs.C.BNGetTypeBuilderTokens(type, platform, baseConfidence, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeBuilderTokensAfterName
-- -------------------------------------------------------

function core.BNGetTypeBuilderTokensAfterName(
		type, 
		platform, 
		baseConfidence, 
		count
)
	local result = cdefs.C.BNGetTypeBuilderTokensAfterName(type, platform, baseConfidence, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeBuilderTokensBeforeName
-- -------------------------------------------------------

function core.BNGetTypeBuilderTokensBeforeName(
		type, 
		platform, 
		baseConfidence, 
		count
)
	local result = cdefs.C.BNGetTypeBuilderTokensBeforeName(type, platform, baseConfidence, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeBuilderTypeAndName
-- -------------------------------------------------------

function core.BNGetTypeBuilderTypeAndName(
		type, 
		name
)
	local result = cdefs.C.BNGetTypeBuilderTypeAndName(type, name)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeBuilderWidth
-- -------------------------------------------------------

function core.BNGetTypeBuilderWidth(
		type
)
	return cdefs.C.BNGetTypeBuilderWidth(type)
end

-- -------------------------------------------------------
-- BNGetTypeCallingConvention
-- -------------------------------------------------------

function core.BNGetTypeCallingConvention(
		type
)
	return cdefs.C.BNGetTypeCallingConvention(type)
end

-- -------------------------------------------------------
-- BNGetTypeClass
-- -------------------------------------------------------

function core.BNGetTypeClass(
		type
)
	return cdefs.C.BNGetTypeClass(type)
end

-- -------------------------------------------------------
-- BNGetTypeElementCount
-- -------------------------------------------------------

function core.BNGetTypeElementCount(
		type
)
	return cdefs.C.BNGetTypeElementCount(type)
end

-- -------------------------------------------------------
-- BNGetTypeEnumeration
-- -------------------------------------------------------

function core.BNGetTypeEnumeration(
		type
)
	local result = cdefs.C.BNGetTypeEnumeration(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeLibraryAlternateNames
-- -------------------------------------------------------

function core.BNGetTypeLibraryAlternateNames(
		lib, 
		count
)
	local result = cdefs.C.BNGetTypeLibraryAlternateNames(lib, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeLibraryArchitecture
-- -------------------------------------------------------

function core.BNGetTypeLibraryArchitecture(
		lib
)
	local result = cdefs.C.BNGetTypeLibraryArchitecture(lib)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeLibraryDependencyName
-- -------------------------------------------------------

function core.BNGetTypeLibraryDependencyName(
		lib
)
	local result = cdefs.C.BNGetTypeLibraryDependencyName(lib)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeLibraryGuid
-- -------------------------------------------------------

function core.BNGetTypeLibraryGuid(
		lib
)
	local result = cdefs.C.BNGetTypeLibraryGuid(lib)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeLibraryName
-- -------------------------------------------------------

function core.BNGetTypeLibraryName(
		lib
)
	local result = cdefs.C.BNGetTypeLibraryName(lib)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeLibraryNamedObject
-- -------------------------------------------------------

function core.BNGetTypeLibraryNamedObject(
		lib, 
		name
)
	local result = cdefs.C.BNGetTypeLibraryNamedObject(lib, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeLibraryNamedObjects
-- -------------------------------------------------------

function core.BNGetTypeLibraryNamedObjects(
		lib, 
		count
)
	local result = cdefs.C.BNGetTypeLibraryNamedObjects(lib, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeLibraryNamedType
-- -------------------------------------------------------

function core.BNGetTypeLibraryNamedType(
		lib, 
		name
)
	local result = cdefs.C.BNGetTypeLibraryNamedType(lib, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeLibraryNamedTypes
-- -------------------------------------------------------

function core.BNGetTypeLibraryNamedTypes(
		lib, 
		count
)
	local result = cdefs.C.BNGetTypeLibraryNamedTypes(lib, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeLibraryPlatforms
-- -------------------------------------------------------

function core.BNGetTypeLibraryPlatforms(
		lib, 
		count
)
	local result = cdefs.C.BNGetTypeLibraryPlatforms(lib, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeLines
-- -------------------------------------------------------

function core.BNGetTypeLines(
		type, 
		data, 
		name, 
		lineWidth, 
		collapsed, 
		escaping, 
		count
)
	local result = cdefs.C.BNGetTypeLines(type, data, name, lineWidth, collapsed, escaping, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeNamedTypeReference
-- -------------------------------------------------------

function core.BNGetTypeNamedTypeReference(
		type
)
	local result = cdefs.C.BNGetTypeNamedTypeReference(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeOffset
-- -------------------------------------------------------

function core.BNGetTypeOffset(
		type
)
	return cdefs.C.BNGetTypeOffset(type)
end

-- -------------------------------------------------------
-- BNGetTypeParameters
-- -------------------------------------------------------

function core.BNGetTypeParameters(
		type, 
		count
)
	local result = cdefs.C.BNGetTypeParameters(type, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeParserByName
-- -------------------------------------------------------

function core.BNGetTypeParserByName(
		name
)
	local result = cdefs.C.BNGetTypeParserByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeParserList
-- -------------------------------------------------------

function core.BNGetTypeParserList(
		count
)
	local result = cdefs.C.BNGetTypeParserList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeParserName
-- -------------------------------------------------------

function core.BNGetTypeParserName(
		parser
)
	local result = cdefs.C.BNGetTypeParserName(parser)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeParserOptionText
-- -------------------------------------------------------

function core.BNGetTypeParserOptionText(
		parser, 
		option, 
		value, 
		result
)
	return cdefs.C.BNGetTypeParserOptionText(parser, option, value, result)
end

-- -------------------------------------------------------
-- BNGetTypePrinterByName
-- -------------------------------------------------------

function core.BNGetTypePrinterByName(
		name
)
	local result = cdefs.C.BNGetTypePrinterByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypePrinterList
-- -------------------------------------------------------

function core.BNGetTypePrinterList(
		count
)
	local result = cdefs.C.BNGetTypePrinterList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypePrinterName
-- -------------------------------------------------------

function core.BNGetTypePrinterName(
		printer
)
	local result = cdefs.C.BNGetTypePrinterName(printer)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypePrinterTypeLines
-- -------------------------------------------------------

function core.BNGetTypePrinterTypeLines(
		printer, 
		type, 
		data, 
		name, 
		lineWidth, 
		collapsed, 
		escaping, 
		result, 
		resultCount
)
	return cdefs.C.BNGetTypePrinterTypeLines(printer, type, data, name, lineWidth, collapsed, escaping, result, resultCount)
end

-- -------------------------------------------------------
-- BNGetTypePrinterTypeString
-- -------------------------------------------------------

function core.BNGetTypePrinterTypeString(
		printer, 
		type, 
		platform, 
		name, 
		escaping, 
		result
)
	return cdefs.C.BNGetTypePrinterTypeString(printer, type, platform, name, escaping, result)
end

-- -------------------------------------------------------
-- BNGetTypePrinterTypeStringAfterName
-- -------------------------------------------------------

function core.BNGetTypePrinterTypeStringAfterName(
		printer, 
		type, 
		platform, 
		escaping, 
		result
)
	return cdefs.C.BNGetTypePrinterTypeStringAfterName(printer, type, platform, escaping, result)
end

-- -------------------------------------------------------
-- BNGetTypePrinterTypeStringBeforeName
-- -------------------------------------------------------

function core.BNGetTypePrinterTypeStringBeforeName(
		printer, 
		type, 
		platform, 
		escaping, 
		result
)
	return cdefs.C.BNGetTypePrinterTypeStringBeforeName(printer, type, platform, escaping, result)
end

-- -------------------------------------------------------
-- BNGetTypePrinterTypeTokens
-- -------------------------------------------------------

function core.BNGetTypePrinterTypeTokens(
		printer, 
		type, 
		platform, 
		name, 
		baseConfidence, 
		escaping, 
		result, 
		resultCount
)
	return cdefs.C.BNGetTypePrinterTypeTokens(printer, type, platform, name, baseConfidence, escaping, result, resultCount)
end

-- -------------------------------------------------------
-- BNGetTypePrinterTypeTokensAfterName
-- -------------------------------------------------------

function core.BNGetTypePrinterTypeTokensAfterName(
		printer, 
		type, 
		platform, 
		baseConfidence, 
		parentType, 
		escaping, 
		result, 
		resultCount
)
	return cdefs.C.BNGetTypePrinterTypeTokensAfterName(printer, type, platform, baseConfidence, parentType, escaping, result, resultCount)
end

-- -------------------------------------------------------
-- BNGetTypePrinterTypeTokensBeforeName
-- -------------------------------------------------------

function core.BNGetTypePrinterTypeTokensBeforeName(
		printer, 
		type, 
		platform, 
		baseConfidence, 
		parentType, 
		escaping, 
		result, 
		resultCount
)
	return cdefs.C.BNGetTypePrinterTypeTokensBeforeName(printer, type, platform, baseConfidence, parentType, escaping, result, resultCount)
end

-- -------------------------------------------------------
-- BNGetTypeReferenceBuilderClass
-- -------------------------------------------------------

function core.BNGetTypeReferenceBuilderClass(
		nt
)
	return cdefs.C.BNGetTypeReferenceBuilderClass(nt)
end

-- -------------------------------------------------------
-- BNGetTypeReferenceBuilderId
-- -------------------------------------------------------

function core.BNGetTypeReferenceBuilderId(
		nt
)
	local result = cdefs.C.BNGetTypeReferenceBuilderId(nt)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeReferenceBuilderName
-- -------------------------------------------------------

function core.BNGetTypeReferenceBuilderName(
		nt
)
	return cdefs.C.BNGetTypeReferenceBuilderName(nt)
end

-- -------------------------------------------------------
-- BNGetTypeReferenceClass
-- -------------------------------------------------------

function core.BNGetTypeReferenceClass(
		nt
)
	return cdefs.C.BNGetTypeReferenceClass(nt)
end

-- -------------------------------------------------------
-- BNGetTypeReferenceId
-- -------------------------------------------------------

function core.BNGetTypeReferenceId(
		nt
)
	local result = cdefs.C.BNGetTypeReferenceId(nt)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeReferenceName
-- -------------------------------------------------------

function core.BNGetTypeReferenceName(
		nt
)
	return cdefs.C.BNGetTypeReferenceName(nt)
end

-- -------------------------------------------------------
-- BNGetTypeReferencesForType
-- -------------------------------------------------------

function core.BNGetTypeReferencesForType(
		view, 
		type, 
		count
)
	local result = cdefs.C.BNGetTypeReferencesForType(view, type, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeReferencesForTypeField
-- -------------------------------------------------------

function core.BNGetTypeReferencesForTypeField(
		view, 
		type, 
		offset, 
		count
)
	local result = cdefs.C.BNGetTypeReferencesForTypeField(view, type, offset, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeStackAdjustment
-- -------------------------------------------------------

function core.BNGetTypeStackAdjustment(
		type
)
	return cdefs.C.BNGetTypeStackAdjustment(type)
end

-- -------------------------------------------------------
-- BNGetTypeString
-- -------------------------------------------------------

function core.BNGetTypeString(
		type, 
		platform, 
		escaping
)
	local result = cdefs.C.BNGetTypeString(type, platform, escaping)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeStringAfterName
-- -------------------------------------------------------

function core.BNGetTypeStringAfterName(
		type, 
		platform, 
		escaping
)
	local result = cdefs.C.BNGetTypeStringAfterName(type, platform, escaping)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeStringBeforeName
-- -------------------------------------------------------

function core.BNGetTypeStringBeforeName(
		type, 
		platform, 
		escaping
)
	local result = cdefs.C.BNGetTypeStringBeforeName(type, platform, escaping)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetTypeStructure
-- -------------------------------------------------------

function core.BNGetTypeStructure(
		type
)
	local result = cdefs.C.BNGetTypeStructure(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeTokens
-- -------------------------------------------------------

function core.BNGetTypeTokens(
		type, 
		platform, 
		baseConfidence, 
		escaping, 
		count
)
	local result = cdefs.C.BNGetTypeTokens(type, platform, baseConfidence, escaping, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeTokensAfterName
-- -------------------------------------------------------

function core.BNGetTypeTokensAfterName(
		type, 
		platform, 
		baseConfidence, 
		escaping, 
		count
)
	local result = cdefs.C.BNGetTypeTokensAfterName(type, platform, baseConfidence, escaping, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeTokensBeforeName
-- -------------------------------------------------------

function core.BNGetTypeTokensBeforeName(
		type, 
		platform, 
		baseConfidence, 
		escaping, 
		count
)
	local result = cdefs.C.BNGetTypeTokensBeforeName(type, platform, baseConfidence, escaping, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetTypeWidth
-- -------------------------------------------------------

function core.BNGetTypeWidth(
		type
)
	return cdefs.C.BNGetTypeWidth(type)
end

-- -------------------------------------------------------
-- BNGetTypesReferenced
-- -------------------------------------------------------

function core.BNGetTypesReferenced(
		view, 
		type, 
		offset, 
		count
)
	local result = cdefs.C.BNGetTypesReferenced(view, type, offset, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUndoEntries
-- -------------------------------------------------------

function core.BNGetUndoEntries(
		file, 
		count
)
	local result = cdefs.C.BNGetUndoEntries(file, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUniqueIdentifierString
-- -------------------------------------------------------

function core.BNGetUniqueIdentifierString(
)
	local result = cdefs.C.BNGetUniqueIdentifierString()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetUniqueSectionNames
-- -------------------------------------------------------

function core.BNGetUniqueSectionNames(
		view, 
		names, 
		count
)
	local result = cdefs.C.BNGetUniqueSectionNames(view, names, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUnresolvedIndirectBranches
-- -------------------------------------------------------

function core.BNGetUnresolvedIndirectBranches(
		func, 
		count
)
	local result = cdefs.C.BNGetUnresolvedIndirectBranches(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUnresolvedStackAdjustmentGraph
-- -------------------------------------------------------

function core.BNGetUnresolvedStackAdjustmentGraph(
		func
)
	local result = cdefs.C.BNGetUnresolvedStackAdjustmentGraph(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUpdateChannelVersions
-- -------------------------------------------------------

function core.BNGetUpdateChannelVersions(
		channel, 
		count, 
		errors
)
	local result = cdefs.C.BNGetUpdateChannelVersions(channel, count, errors)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUpdateChannels
-- -------------------------------------------------------

function core.BNGetUpdateChannels(
		count, 
		errors
)
	local result = cdefs.C.BNGetUpdateChannels(count, errors)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserAddressTagReferences
-- -------------------------------------------------------

function core.BNGetUserAddressTagReferences(
		func, 
		count
)
	local result = cdefs.C.BNGetUserAddressTagReferences(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserAddressTags
-- -------------------------------------------------------

function core.BNGetUserAddressTags(
		func, 
		arch, 
		addr, 
		count
)
	local result = cdefs.C.BNGetUserAddressTags(func, arch, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserAddressTagsInRange
-- -------------------------------------------------------

function core.BNGetUserAddressTagsInRange(
		func, 
		arch, 
		start, 
		end_, 
		count
)
	local result = cdefs.C.BNGetUserAddressTagsInRange(func, arch, start, end_, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserAddressTagsOfType
-- -------------------------------------------------------

function core.BNGetUserAddressTagsOfType(
		func, 
		arch, 
		addr, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetUserAddressTagsOfType(func, arch, addr, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserDataTagReferences
-- -------------------------------------------------------

function core.BNGetUserDataTagReferences(
		view, 
		count
)
	local result = cdefs.C.BNGetUserDataTagReferences(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserDataTags
-- -------------------------------------------------------

function core.BNGetUserDataTags(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetUserDataTags(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserDataTagsInRange
-- -------------------------------------------------------

function core.BNGetUserDataTagsInRange(
		view, 
		start, 
		end_, 
		count
)
	local result = cdefs.C.BNGetUserDataTagsInRange(view, start, end_, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserDataTagsOfType
-- -------------------------------------------------------

function core.BNGetUserDataTagsOfType(
		view, 
		addr, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetUserDataTagsOfType(view, addr, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserDirectory
-- -------------------------------------------------------

function core.BNGetUserDirectory(
)
	local result = cdefs.C.BNGetUserDirectory()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetUserEmail
-- -------------------------------------------------------

function core.BNGetUserEmail(
		user
)
	local result = cdefs.C.BNGetUserEmail(user)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetUserFunctionTagReferences
-- -------------------------------------------------------

function core.BNGetUserFunctionTagReferences(
		func, 
		count
)
	local result = cdefs.C.BNGetUserFunctionTagReferences(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserFunctionTags
-- -------------------------------------------------------

function core.BNGetUserFunctionTags(
		func, 
		count
)
	local result = cdefs.C.BNGetUserFunctionTags(func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserFunctionTagsOfType
-- -------------------------------------------------------

function core.BNGetUserFunctionTagsOfType(
		func, 
		tagType, 
		count
)
	local result = cdefs.C.BNGetUserFunctionTagsOfType(func, tagType, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetUserId
-- -------------------------------------------------------

function core.BNGetUserId(
		user
)
	local result = cdefs.C.BNGetUserId(user)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetUserName
-- -------------------------------------------------------

function core.BNGetUserName(
		user
)
	local result = cdefs.C.BNGetUserName(user)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetUserPluginDirectory
-- -------------------------------------------------------

function core.BNGetUserPluginDirectory(
)
	local result = cdefs.C.BNGetUserPluginDirectory()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetUsers
-- -------------------------------------------------------

function core.BNGetUsers(
		file, 
		count
)
	local result = cdefs.C.BNGetUsers(file, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommands
-- -------------------------------------------------------

function core.BNGetValidPluginCommands(
		view, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommands(view, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommandsForAddress
-- -------------------------------------------------------

function core.BNGetValidPluginCommandsForAddress(
		view, 
		addr, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommandsForAddress(view, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommandsForFunction
-- -------------------------------------------------------

function core.BNGetValidPluginCommandsForFunction(
		view, 
		func, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommandsForFunction(view, func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommandsForHighLevelILFunction
-- -------------------------------------------------------

function core.BNGetValidPluginCommandsForHighLevelILFunction(
		view, 
		func, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommandsForHighLevelILFunction(view, func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommandsForHighLevelILInstruction
-- -------------------------------------------------------

function core.BNGetValidPluginCommandsForHighLevelILInstruction(
		view, 
		func, 
		instr, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommandsForHighLevelILInstruction(view, func, instr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommandsForLowLevelILFunction
-- -------------------------------------------------------

function core.BNGetValidPluginCommandsForLowLevelILFunction(
		view, 
		func, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommandsForLowLevelILFunction(view, func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommandsForLowLevelILInstruction
-- -------------------------------------------------------

function core.BNGetValidPluginCommandsForLowLevelILInstruction(
		view, 
		func, 
		instr, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommandsForLowLevelILInstruction(view, func, instr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommandsForMediumLevelILFunction
-- -------------------------------------------------------

function core.BNGetValidPluginCommandsForMediumLevelILFunction(
		view, 
		func, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommandsForMediumLevelILFunction(view, func, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommandsForMediumLevelILInstruction
-- -------------------------------------------------------

function core.BNGetValidPluginCommandsForMediumLevelILInstruction(
		view, 
		func, 
		instr, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommandsForMediumLevelILInstruction(view, func, instr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetValidPluginCommandsForRange
-- -------------------------------------------------------

function core.BNGetValidPluginCommandsForRange(
		view, 
		addr, 
		len, 
		count
)
	local result = cdefs.C.BNGetValidPluginCommandsForRange(view, addr, len, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetVariableName
-- -------------------------------------------------------

function core.BNGetVariableName(
		func, 
		var
)
	local result = cdefs.C.BNGetVariableName(func, var)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetVariableNameOrDefault
-- -------------------------------------------------------

function core.BNGetVariableNameOrDefault(
		func, 
		var
)
	local result = cdefs.C.BNGetVariableNameOrDefault(func, var)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetVariableType
-- -------------------------------------------------------

function core.BNGetVariableType(
		func, 
		var
)
	return cdefs.C.BNGetVariableType(func, var)
end

-- -------------------------------------------------------
-- BNGetVariablesForParameters
-- -------------------------------------------------------

function core.BNGetVariablesForParameters(
		cc, 
		params, 
		paramCount, 
		intArgs, 
		intArgCount, 
		count
)
	local result = cdefs.C.BNGetVariablesForParameters(cc, params, paramCount, intArgs, intArgCount, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetVariablesForParametersDefaultIntArgs
-- -------------------------------------------------------

function core.BNGetVariablesForParametersDefaultIntArgs(
		cc, 
		params, 
		paramCount, 
		count
)
	local result = cdefs.C.BNGetVariablesForParametersDefaultIntArgs(cc, params, paramCount, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetVersionInfo
-- -------------------------------------------------------

function core.BNGetVersionInfo(
)
	return cdefs.C.BNGetVersionInfo()
end

-- -------------------------------------------------------
-- BNGetVersionString
-- -------------------------------------------------------

function core.BNGetVersionString(
)
	local result = cdefs.C.BNGetVersionString()
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetVerticalFlowGraphNodeMargin
-- -------------------------------------------------------

function core.BNGetVerticalFlowGraphNodeMargin(
		graph
)
	return cdefs.C.BNGetVerticalFlowGraphNodeMargin(graph)
end

-- -------------------------------------------------------
-- BNGetViewAddressSize
-- -------------------------------------------------------

function core.BNGetViewAddressSize(
		view
)
	return cdefs.C.BNGetViewAddressSize(view)
end

-- -------------------------------------------------------
-- BNGetViewForFlowGraph
-- -------------------------------------------------------

function core.BNGetViewForFlowGraph(
		graph
)
	local result = cdefs.C.BNGetViewForFlowGraph(graph)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetViewLength
-- -------------------------------------------------------

function core.BNGetViewLength(
		view
)
	return cdefs.C.BNGetViewLength(view)
end

-- -------------------------------------------------------
-- BNGetViewType
-- -------------------------------------------------------

function core.BNGetViewType(
		view
)
	local result = cdefs.C.BNGetViewType(view)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetVisibleSymbols
-- -------------------------------------------------------

function core.BNGetVisibleSymbols(
		view, 
		count, 
		nameSpace
)
	local result = cdefs.C.BNGetVisibleSymbols(view, count, nameSpace)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetWebsocketProviderByName
-- -------------------------------------------------------

function core.BNGetWebsocketProviderByName(
		name
)
	local result = cdefs.C.BNGetWebsocketProviderByName(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetWebsocketProviderList
-- -------------------------------------------------------

function core.BNGetWebsocketProviderList(
		count
)
	local result = cdefs.C.BNGetWebsocketProviderList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetWebsocketProviderName
-- -------------------------------------------------------

function core.BNGetWebsocketProviderName(
		provider
)
	local result = cdefs.C.BNGetWebsocketProviderName(provider)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetWorkerThreadCount
-- -------------------------------------------------------

function core.BNGetWorkerThreadCount(
)
	return cdefs.C.BNGetWorkerThreadCount()
end

-- -------------------------------------------------------
-- BNGetWorkflowForBinaryView
-- -------------------------------------------------------

function core.BNGetWorkflowForBinaryView(
		view
)
	local result = cdefs.C.BNGetWorkflowForBinaryView(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetWorkflowForFunction
-- -------------------------------------------------------

function core.BNGetWorkflowForFunction(
		func
)
	local result = cdefs.C.BNGetWorkflowForFunction(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetWorkflowList
-- -------------------------------------------------------

function core.BNGetWorkflowList(
		count
)
	local result = cdefs.C.BNGetWorkflowList(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNGetWorkflowName
-- -------------------------------------------------------

function core.BNGetWorkflowName(
		workflow
)
	local result = cdefs.C.BNGetWorkflowName(workflow)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNGetWriterPosition
-- -------------------------------------------------------

function core.BNGetWriterPosition(
		stream
)
	return cdefs.C.BNGetWriterPosition(stream)
end

-- -------------------------------------------------------
-- BNHasDataVariables
-- -------------------------------------------------------

function core.BNHasDataVariables(
		view
)
	return cdefs.C.BNHasDataVariables(view)
end

-- -------------------------------------------------------
-- BNHasFunctions
-- -------------------------------------------------------

function core.BNHasFunctions(
		view
)
	return cdefs.C.BNHasFunctions(view)
end

-- -------------------------------------------------------
-- BNHasInitialAnalysis
-- -------------------------------------------------------

function core.BNHasInitialAnalysis(
		view
)
	return cdefs.C.BNHasInitialAnalysis(view)
end

-- -------------------------------------------------------
-- BNHasSymbols
-- -------------------------------------------------------

function core.BNHasSymbols(
		view
)
	return cdefs.C.BNHasSymbols(view)
end

-- -------------------------------------------------------
-- BNHasUnresolvedIndirectBranches
-- -------------------------------------------------------

function core.BNHasUnresolvedIndirectBranches(
		func
)
	return cdefs.C.BNHasUnresolvedIndirectBranches(func)
end

-- -------------------------------------------------------
-- BNHighLevelILAddExpr
-- -------------------------------------------------------

function core.BNHighLevelILAddExpr(
		func, 
		operation, 
		size, 
		a, 
		b, 
		c, 
		d, 
		e
)
	return cdefs.C.BNHighLevelILAddExpr(func, operation, size, a, b, c, d, e)
end

-- -------------------------------------------------------
-- BNHighLevelILAddExprWithLocation
-- -------------------------------------------------------

function core.BNHighLevelILAddExprWithLocation(
		func, 
		operation, 
		addr, 
		sourceOperand, 
		size, 
		a, 
		b, 
		c, 
		d, 
		e
)
	return cdefs.C.BNHighLevelILAddExprWithLocation(func, operation, addr, sourceOperand, size, a, b, c, d, e)
end

-- -------------------------------------------------------
-- BNHighLevelILAddOperandList
-- -------------------------------------------------------

function core.BNHighLevelILAddOperandList(
		func, 
		operands, 
		count
)
	return cdefs.C.BNHighLevelILAddOperandList(func, operands, count)
end

-- -------------------------------------------------------
-- BNHighLevelILExprEqual
-- -------------------------------------------------------

function core.BNHighLevelILExprEqual(
		leftFunc, 
		leftExpr, 
		rightFunc, 
		rightExpr
)
	return cdefs.C.BNHighLevelILExprEqual(leftFunc, leftExpr, rightFunc, rightExpr)
end

-- -------------------------------------------------------
-- BNHighLevelILExprLessThan
-- -------------------------------------------------------

function core.BNHighLevelILExprLessThan(
		leftFunc, 
		leftExpr, 
		rightFunc, 
		rightExpr
)
	return cdefs.C.BNHighLevelILExprLessThan(leftFunc, leftExpr, rightFunc, rightExpr)
end

-- -------------------------------------------------------
-- BNHighLevelILFreeOperandList
-- -------------------------------------------------------

function core.BNHighLevelILFreeOperandList(
		operands
)
	return cdefs.C.BNHighLevelILFreeOperandList(operands)
end

-- -------------------------------------------------------
-- BNHighLevelILGetCurrentAddress
-- -------------------------------------------------------

function core.BNHighLevelILGetCurrentAddress(
		func
)
	return cdefs.C.BNHighLevelILGetCurrentAddress(func)
end

-- -------------------------------------------------------
-- BNHighLevelILGetOperandList
-- -------------------------------------------------------

function core.BNHighLevelILGetOperandList(
		func, 
		expr, 
		operand, 
		count
)
	local result = cdefs.C.BNHighLevelILGetOperandList(func, expr, operand, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNHighLevelILSetCurrentAddress
-- -------------------------------------------------------

function core.BNHighLevelILSetCurrentAddress(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNHighLevelILSetCurrentAddress(func, arch, addr)
end

-- -------------------------------------------------------
-- BNImportedFunctionFromImportAddressSymbol
-- -------------------------------------------------------

function core.BNImportedFunctionFromImportAddressSymbol(
		sym, 
		addr
)
	local result = cdefs.C.BNImportedFunctionFromImportAddressSymbol(sym, addr)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNInitCorePlugins
-- -------------------------------------------------------

function core.BNInitCorePlugins(
)
	return cdefs.C.BNInitCorePlugins()
end

-- -------------------------------------------------------
-- BNInitDownloadInstance
-- -------------------------------------------------------

function core.BNInitDownloadInstance(
		provider, 
		callbacks
)
	local result = cdefs.C.BNInitDownloadInstance(provider, callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNInitPlugins
-- -------------------------------------------------------

function core.BNInitPlugins(
		allowUserPlugins
)
	return cdefs.C.BNInitPlugins(allowUserPlugins)
end

-- -------------------------------------------------------
-- BNInitRepoPlugins
-- -------------------------------------------------------

function core.BNInitRepoPlugins(
)
	return cdefs.C.BNInitRepoPlugins()
end

-- -------------------------------------------------------
-- BNInitScriptingInstance
-- -------------------------------------------------------

function core.BNInitScriptingInstance(
		provider, 
		callbacks
)
	local result = cdefs.C.BNInitScriptingInstance(provider, callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNInitUserPlugins
-- -------------------------------------------------------

function core.BNInitUserPlugins(
)
	return cdefs.C.BNInitUserPlugins()
end

-- -------------------------------------------------------
-- BNInitWebsocketClient
-- -------------------------------------------------------

function core.BNInitWebsocketClient(
		provider, 
		callbacks
)
	local result = cdefs.C.BNInitWebsocketClient(provider, callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNInsertViewBuffer
-- -------------------------------------------------------

function core.BNInsertViewBuffer(
		view, 
		offset, 
		data
)
	return cdefs.C.BNInsertViewBuffer(view, offset, data)
end

-- -------------------------------------------------------
-- BNInsertViewData
-- -------------------------------------------------------

function core.BNInsertViewData(
		view, 
		offset, 
		data, 
		len
)
	return cdefs.C.BNInsertViewData(view, offset, data, len)
end

-- -------------------------------------------------------
-- BNInstallPendingUpdate
-- -------------------------------------------------------

function core.BNInstallPendingUpdate(
		errors
)
	return cdefs.C.BNInstallPendingUpdate(errors)
end

-- -------------------------------------------------------
-- BNInstallScriptingProviderModules
-- -------------------------------------------------------

function core.BNInstallScriptingProviderModules(
		provider, 
		modules
)
	return cdefs.C.BNInstallScriptingProviderModules(provider, modules)
end

-- -------------------------------------------------------
-- BNInvertBranch
-- -------------------------------------------------------

function core.BNInvertBranch(
		view, 
		arch, 
		addr
)
	return cdefs.C.BNInvertBranch(view, arch, addr)
end

-- -------------------------------------------------------
-- BNIsAlwaysBranchPatchAvailable
-- -------------------------------------------------------

function core.BNIsAlwaysBranchPatchAvailable(
		view, 
		arch, 
		addr
)
	return cdefs.C.BNIsAlwaysBranchPatchAvailable(view, arch, addr)
end

-- -------------------------------------------------------
-- BNIsAnalysisChanged
-- -------------------------------------------------------

function core.BNIsAnalysisChanged(
		file
)
	return cdefs.C.BNIsAnalysisChanged(file)
end

-- -------------------------------------------------------
-- BNIsAnalysisTypeAutoDefined
-- -------------------------------------------------------

function core.BNIsAnalysisTypeAutoDefined(
		view, 
		name
)
	return cdefs.C.BNIsAnalysisTypeAutoDefined(view, name)
end

-- -------------------------------------------------------
-- BNIsApplyingDebugInfo
-- -------------------------------------------------------

function core.BNIsApplyingDebugInfo(
		view
)
	return cdefs.C.BNIsApplyingDebugInfo(view)
end

-- -------------------------------------------------------
-- BNIsArchitectureAlwaysBranchPatchAvailable
-- -------------------------------------------------------

function core.BNIsArchitectureAlwaysBranchPatchAvailable(
		arch, 
		data, 
		addr, 
		len
)
	return cdefs.C.BNIsArchitectureAlwaysBranchPatchAvailable(arch, data, addr, len)
end

-- -------------------------------------------------------
-- BNIsArchitectureGlobalRegister
-- -------------------------------------------------------

function core.BNIsArchitectureGlobalRegister(
		arch, 
		reg
)
	return cdefs.C.BNIsArchitectureGlobalRegister(arch, reg)
end

-- -------------------------------------------------------
-- BNIsArchitectureInvertBranchPatchAvailable
-- -------------------------------------------------------

function core.BNIsArchitectureInvertBranchPatchAvailable(
		arch, 
		data, 
		addr, 
		len
)
	return cdefs.C.BNIsArchitectureInvertBranchPatchAvailable(arch, data, addr, len)
end

-- -------------------------------------------------------
-- BNIsArchitectureNeverBranchPatchAvailable
-- -------------------------------------------------------

function core.BNIsArchitectureNeverBranchPatchAvailable(
		arch, 
		data, 
		addr, 
		len
)
	return cdefs.C.BNIsArchitectureNeverBranchPatchAvailable(arch, data, addr, len)
end

-- -------------------------------------------------------
-- BNIsArchitectureSkipAndReturnValuePatchAvailable
-- -------------------------------------------------------

function core.BNIsArchitectureSkipAndReturnValuePatchAvailable(
		arch, 
		data, 
		addr, 
		len
)
	return cdefs.C.BNIsArchitectureSkipAndReturnValuePatchAvailable(arch, data, addr, len)
end

-- -------------------------------------------------------
-- BNIsArchitectureSkipAndReturnZeroPatchAvailable
-- -------------------------------------------------------

function core.BNIsArchitectureSkipAndReturnZeroPatchAvailable(
		arch, 
		data, 
		addr, 
		len
)
	return cdefs.C.BNIsArchitectureSkipAndReturnZeroPatchAvailable(arch, data, addr, len)
end

-- -------------------------------------------------------
-- BNIsArchitectureSystemRegister
-- -------------------------------------------------------

function core.BNIsArchitectureSystemRegister(
		arch, 
		reg
)
	return cdefs.C.BNIsArchitectureSystemRegister(arch, reg)
end

-- -------------------------------------------------------
-- BNIsBackedByDatabase
-- -------------------------------------------------------

function core.BNIsBackedByDatabase(
		file, 
		binaryViewType
)
	return cdefs.C.BNIsBackedByDatabase(file, binaryViewType)
end

-- -------------------------------------------------------
-- BNIsBackgroundTaskCancelled
-- -------------------------------------------------------

function core.BNIsBackgroundTaskCancelled(
		task
)
	return cdefs.C.BNIsBackgroundTaskCancelled(task)
end

-- -------------------------------------------------------
-- BNIsBackgroundTaskFinished
-- -------------------------------------------------------

function core.BNIsBackgroundTaskFinished(
		task
)
	return cdefs.C.BNIsBackgroundTaskFinished(task)
end

-- -------------------------------------------------------
-- BNIsBinaryViewTypeDeprecated
-- -------------------------------------------------------

function core.BNIsBinaryViewTypeDeprecated(
		type
)
	return cdefs.C.BNIsBinaryViewTypeDeprecated(type)
end

-- -------------------------------------------------------
-- BNIsBinaryViewTypeValidForData
-- -------------------------------------------------------

function core.BNIsBinaryViewTypeValidForData(
		type, 
		data
)
	return cdefs.C.BNIsBinaryViewTypeValidForData(type, data)
end

-- -------------------------------------------------------
-- BNIsCallInstruction
-- -------------------------------------------------------

function core.BNIsCallInstruction(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNIsCallInstruction(func, arch, addr)
end

-- -------------------------------------------------------
-- BNIsDebugInfoParserValidForView
-- -------------------------------------------------------

function core.BNIsDebugInfoParserValidForView(
		parser, 
		view
)
	return cdefs.C.BNIsDebugInfoParserValidForView(parser, view)
end

-- -------------------------------------------------------
-- BNIsDisassemblySettingsOptionSet
-- -------------------------------------------------------

function core.BNIsDisassemblySettingsOptionSet(
		settings, 
		option
)
	return cdefs.C.BNIsDisassemblySettingsOptionSet(settings, option)
end

-- -------------------------------------------------------
-- BNIsEligibleForHeuristics
-- -------------------------------------------------------

function core.BNIsEligibleForHeuristics(
		cc
)
	return cdefs.C.BNIsEligibleForHeuristics(cc)
end

-- -------------------------------------------------------
-- BNIsEndOfFile
-- -------------------------------------------------------

function core.BNIsEndOfFile(
		stream
)
	return cdefs.C.BNIsEndOfFile(stream)
end

-- -------------------------------------------------------
-- BNIsEnterpriseServerAuthenticated
-- -------------------------------------------------------

function core.BNIsEnterpriseServerAuthenticated(
)
	return cdefs.C.BNIsEnterpriseServerAuthenticated()
end

-- -------------------------------------------------------
-- BNIsEnterpriseServerConnected
-- -------------------------------------------------------

function core.BNIsEnterpriseServerConnected(
)
	return cdefs.C.BNIsEnterpriseServerConnected()
end

-- -------------------------------------------------------
-- BNIsEnterpriseServerFloatingLicense
-- -------------------------------------------------------

function core.BNIsEnterpriseServerFloatingLicense(
)
	return cdefs.C.BNIsEnterpriseServerFloatingLicense()
end

-- -------------------------------------------------------
-- BNIsEnterpriseServerInitialized
-- -------------------------------------------------------

function core.BNIsEnterpriseServerInitialized(
)
	return cdefs.C.BNIsEnterpriseServerInitialized()
end

-- -------------------------------------------------------
-- BNIsEnterpriseServerLicenseStillActivated
-- -------------------------------------------------------

function core.BNIsEnterpriseServerLicenseStillActivated(
)
	return cdefs.C.BNIsEnterpriseServerLicenseStillActivated()
end

-- -------------------------------------------------------
-- BNIsExecutableView
-- -------------------------------------------------------

function core.BNIsExecutableView(
		view
)
	return cdefs.C.BNIsExecutableView(view)
end

-- -------------------------------------------------------
-- BNIsFileModified
-- -------------------------------------------------------

function core.BNIsFileModified(
		file
)
	return cdefs.C.BNIsFileModified(file)
end

-- -------------------------------------------------------
-- BNIsFlowGraphLayoutComplete
-- -------------------------------------------------------

function core.BNIsFlowGraphLayoutComplete(
		graph
)
	return cdefs.C.BNIsFlowGraphLayoutComplete(graph)
end

-- -------------------------------------------------------
-- BNIsFlowGraphLayoutRequestComplete
-- -------------------------------------------------------

function core.BNIsFlowGraphLayoutRequestComplete(
		layout
)
	return cdefs.C.BNIsFlowGraphLayoutRequestComplete(layout)
end

-- -------------------------------------------------------
-- BNIsFlowGraphOptionSet
-- -------------------------------------------------------

function core.BNIsFlowGraphOptionSet(
		graph, 
		option
)
	return cdefs.C.BNIsFlowGraphOptionSet(graph, option)
end

-- -------------------------------------------------------
-- BNIsFunctionAnalysisSkipped
-- -------------------------------------------------------

function core.BNIsFunctionAnalysisSkipped(
		func
)
	return cdefs.C.BNIsFunctionAnalysisSkipped(func)
end

-- -------------------------------------------------------
-- BNIsFunctionInlinedDuringAnalysis
-- -------------------------------------------------------

function core.BNIsFunctionInlinedDuringAnalysis(
		func
)
	return cdefs.C.BNIsFunctionInlinedDuringAnalysis(func)
end

-- -------------------------------------------------------
-- BNIsFunctionTooLarge
-- -------------------------------------------------------

function core.BNIsFunctionTooLarge(
		func
)
	return cdefs.C.BNIsFunctionTooLarge(func)
end

-- -------------------------------------------------------
-- BNIsFunctionUpdateNeeded
-- -------------------------------------------------------

function core.BNIsFunctionUpdateNeeded(
		func
)
	return cdefs.C.BNIsFunctionUpdateNeeded(func)
end

-- -------------------------------------------------------
-- BNIsGNU3MangledString
-- -------------------------------------------------------

function core.BNIsGNU3MangledString(
		mangledName
)
	return cdefs.C.BNIsGNU3MangledString(mangledName)
end

-- -------------------------------------------------------
-- BNIsHighLevelILBasicBlock
-- -------------------------------------------------------

function core.BNIsHighLevelILBasicBlock(
		block
)
	return cdefs.C.BNIsHighLevelILBasicBlock(block)
end

-- -------------------------------------------------------
-- BNIsHighLevelILFlowGraph
-- -------------------------------------------------------

function core.BNIsHighLevelILFlowGraph(
		graph
)
	return cdefs.C.BNIsHighLevelILFlowGraph(graph)
end

-- -------------------------------------------------------
-- BNIsHighLevelILSSAVarLive
-- -------------------------------------------------------

function core.BNIsHighLevelILSSAVarLive(
		func, 
		var, 
		version
)
	return cdefs.C.BNIsHighLevelILSSAVarLive(func, var, version)
end

-- -------------------------------------------------------
-- BNIsHighLevelILSSAVarLiveAt
-- -------------------------------------------------------

function core.BNIsHighLevelILSSAVarLiveAt(
		func, 
		var, 
		version, 
		instr
)
	return cdefs.C.BNIsHighLevelILSSAVarLiveAt(func, var, version, instr)
end

-- -------------------------------------------------------
-- BNIsHighLevelILVarLiveAt
-- -------------------------------------------------------

function core.BNIsHighLevelILVarLiveAt(
		func, 
		var, 
		instr
)
	return cdefs.C.BNIsHighLevelILVarLiveAt(func, var, instr)
end

-- -------------------------------------------------------
-- BNIsILBasicBlock
-- -------------------------------------------------------

function core.BNIsILBasicBlock(
		block
)
	return cdefs.C.BNIsILBasicBlock(block)
end

-- -------------------------------------------------------
-- BNIsILDisassemblyTextRenderer
-- -------------------------------------------------------

function core.BNIsILDisassemblyTextRenderer(
		renderer
)
	return cdefs.C.BNIsILDisassemblyTextRenderer(renderer)
end

-- -------------------------------------------------------
-- BNIsILFlowGraph
-- -------------------------------------------------------

function core.BNIsILFlowGraph(
		graph
)
	return cdefs.C.BNIsILFlowGraph(graph)
end

-- -------------------------------------------------------
-- BNIsIntegerToken
-- -------------------------------------------------------

function core.BNIsIntegerToken(
		type
)
	return cdefs.C.BNIsIntegerToken(type)
end

-- -------------------------------------------------------
-- BNIsInvertBranchPatchAvailable
-- -------------------------------------------------------

function core.BNIsInvertBranchPatchAvailable(
		view, 
		arch, 
		addr
)
	return cdefs.C.BNIsInvertBranchPatchAvailable(view, arch, addr)
end

-- -------------------------------------------------------
-- BNIsKeyValueStoreEmpty
-- -------------------------------------------------------

function core.BNIsKeyValueStoreEmpty(
		store
)
	return cdefs.C.BNIsKeyValueStoreEmpty(store)
end

-- -------------------------------------------------------
-- BNIsLicenseValidated
-- -------------------------------------------------------

function core.BNIsLicenseValidated(
)
	return cdefs.C.BNIsLicenseValidated()
end

-- -------------------------------------------------------
-- BNIsLinearViewCursorAfterEnd
-- -------------------------------------------------------

function core.BNIsLinearViewCursorAfterEnd(
		cursor
)
	return cdefs.C.BNIsLinearViewCursorAfterEnd(cursor)
end

-- -------------------------------------------------------
-- BNIsLinearViewCursorBeforeBegin
-- -------------------------------------------------------

function core.BNIsLinearViewCursorBeforeBegin(
		cursor
)
	return cdefs.C.BNIsLinearViewCursorBeforeBegin(cursor)
end

-- -------------------------------------------------------
-- BNIsLowLevelILBasicBlock
-- -------------------------------------------------------

function core.BNIsLowLevelILBasicBlock(
		block
)
	return cdefs.C.BNIsLowLevelILBasicBlock(block)
end

-- -------------------------------------------------------
-- BNIsLowLevelILFlowGraph
-- -------------------------------------------------------

function core.BNIsLowLevelILFlowGraph(
		graph
)
	return cdefs.C.BNIsLowLevelILFlowGraph(graph)
end

-- -------------------------------------------------------
-- BNIsMainThread
-- -------------------------------------------------------

function core.BNIsMainThread(
)
	return cdefs.C.BNIsMainThread()
end

-- -------------------------------------------------------
-- BNIsMainThreadActionDone
-- -------------------------------------------------------

function core.BNIsMainThreadActionDone(
		action
)
	return cdefs.C.BNIsMainThreadActionDone(action)
end

-- -------------------------------------------------------
-- BNIsMediumLevelILBasicBlock
-- -------------------------------------------------------

function core.BNIsMediumLevelILBasicBlock(
		block
)
	return cdefs.C.BNIsMediumLevelILBasicBlock(block)
end

-- -------------------------------------------------------
-- BNIsMediumLevelILFlowGraph
-- -------------------------------------------------------

function core.BNIsMediumLevelILFlowGraph(
		graph
)
	return cdefs.C.BNIsMediumLevelILFlowGraph(graph)
end

-- -------------------------------------------------------
-- BNIsMediumLevelILSSAVarLive
-- -------------------------------------------------------

function core.BNIsMediumLevelILSSAVarLive(
		func, 
		var, 
		version
)
	return cdefs.C.BNIsMediumLevelILSSAVarLive(func, var, version)
end

-- -------------------------------------------------------
-- BNIsNeverBranchPatchAvailable
-- -------------------------------------------------------

function core.BNIsNeverBranchPatchAvailable(
		view, 
		arch, 
		addr
)
	return cdefs.C.BNIsNeverBranchPatchAvailable(view, arch, addr)
end

-- -------------------------------------------------------
-- BNIsNodeValidForFlowGraph
-- -------------------------------------------------------

function core.BNIsNodeValidForFlowGraph(
		graph, 
		node
)
	return cdefs.C.BNIsNodeValidForFlowGraph(graph, node)
end

-- -------------------------------------------------------
-- BNIsOffsetBackedByFile
-- -------------------------------------------------------

function core.BNIsOffsetBackedByFile(
		view, 
		offset
)
	return cdefs.C.BNIsOffsetBackedByFile(view, offset)
end

-- -------------------------------------------------------
-- BNIsOffsetCodeSemantics
-- -------------------------------------------------------

function core.BNIsOffsetCodeSemantics(
		view, 
		offset
)
	return cdefs.C.BNIsOffsetCodeSemantics(view, offset)
end

-- -------------------------------------------------------
-- BNIsOffsetExecutable
-- -------------------------------------------------------

function core.BNIsOffsetExecutable(
		view, 
		offset
)
	return cdefs.C.BNIsOffsetExecutable(view, offset)
end

-- -------------------------------------------------------
-- BNIsOffsetExternSemantics
-- -------------------------------------------------------

function core.BNIsOffsetExternSemantics(
		view, 
		offset
)
	return cdefs.C.BNIsOffsetExternSemantics(view, offset)
end

-- -------------------------------------------------------
-- BNIsOffsetReadable
-- -------------------------------------------------------

function core.BNIsOffsetReadable(
		view, 
		offset
)
	return cdefs.C.BNIsOffsetReadable(view, offset)
end

-- -------------------------------------------------------
-- BNIsOffsetWritable
-- -------------------------------------------------------

function core.BNIsOffsetWritable(
		view, 
		offset
)
	return cdefs.C.BNIsOffsetWritable(view, offset)
end

-- -------------------------------------------------------
-- BNIsOffsetWritableSemantics
-- -------------------------------------------------------

function core.BNIsOffsetWritableSemantics(
		view, 
		offset
)
	return cdefs.C.BNIsOffsetWritableSemantics(view, offset)
end

-- -------------------------------------------------------
-- BNIsPathDirectory
-- -------------------------------------------------------

function core.BNIsPathDirectory(
		path
)
	return cdefs.C.BNIsPathDirectory(path)
end

-- -------------------------------------------------------
-- BNIsPathRegularFile
-- -------------------------------------------------------

function core.BNIsPathRegularFile(
		path
)
	return cdefs.C.BNIsPathRegularFile(path)
end

-- -------------------------------------------------------
-- BNIsPluginsEnabled
-- -------------------------------------------------------

function core.BNIsPluginsEnabled(
)
	return cdefs.C.BNIsPluginsEnabled()
end

-- -------------------------------------------------------
-- BNIsProjectOpen
-- -------------------------------------------------------

function core.BNIsProjectOpen(
		file
)
	return cdefs.C.BNIsProjectOpen(file)
end

-- -------------------------------------------------------
-- BNIsRelocatable
-- -------------------------------------------------------

function core.BNIsRelocatable(
		view
)
	return cdefs.C.BNIsRelocatable(view)
end

-- -------------------------------------------------------
-- BNIsSaveSettingsOptionSet
-- -------------------------------------------------------

function core.BNIsSaveSettingsOptionSet(
		settings, 
		option
)
	return cdefs.C.BNIsSaveSettingsOptionSet(settings, option)
end

-- -------------------------------------------------------
-- BNIsShutdownRequested
-- -------------------------------------------------------

function core.BNIsShutdownRequested(
)
	return cdefs.C.BNIsShutdownRequested()
end

-- -------------------------------------------------------
-- BNIsSkipAndReturnValuePatchAvailable
-- -------------------------------------------------------

function core.BNIsSkipAndReturnValuePatchAvailable(
		view, 
		arch, 
		addr
)
	return cdefs.C.BNIsSkipAndReturnValuePatchAvailable(view, arch, addr)
end

-- -------------------------------------------------------
-- BNIsSkipAndReturnZeroPatchAvailable
-- -------------------------------------------------------

function core.BNIsSkipAndReturnZeroPatchAvailable(
		view, 
		arch, 
		addr
)
	return cdefs.C.BNIsSkipAndReturnZeroPatchAvailable(view, arch, addr)
end

-- -------------------------------------------------------
-- BNIsSnapshotAutoSave
-- -------------------------------------------------------

function core.BNIsSnapshotAutoSave(
		snapshot
)
	return cdefs.C.BNIsSnapshotAutoSave(snapshot)
end

-- -------------------------------------------------------
-- BNIsSnapshotDataAppliedWithoutError
-- -------------------------------------------------------

function core.BNIsSnapshotDataAppliedWithoutError(
		view
)
	return cdefs.C.BNIsSnapshotDataAppliedWithoutError(view)
end

-- -------------------------------------------------------
-- BNIsStackAdjustedOnReturn
-- -------------------------------------------------------

function core.BNIsStackAdjustedOnReturn(
		cc
)
	return cdefs.C.BNIsStackAdjustedOnReturn(cc)
end

-- -------------------------------------------------------
-- BNIsStackReservedForArgumentRegisters
-- -------------------------------------------------------

function core.BNIsStackReservedForArgumentRegisters(
		cc
)
	return cdefs.C.BNIsStackReservedForArgumentRegisters(cc)
end

-- -------------------------------------------------------
-- BNIsStructureBuilderPacked
-- -------------------------------------------------------

function core.BNIsStructureBuilderPacked(
		s
)
	return cdefs.C.BNIsStructureBuilderPacked(s)
end

-- -------------------------------------------------------
-- BNIsStructureBuilderUnion
-- -------------------------------------------------------

function core.BNIsStructureBuilderUnion(
		s
)
	return cdefs.C.BNIsStructureBuilderUnion(s)
end

-- -------------------------------------------------------
-- BNIsStructurePacked
-- -------------------------------------------------------

function core.BNIsStructurePacked(
		s
)
	return cdefs.C.BNIsStructurePacked(s)
end

-- -------------------------------------------------------
-- BNIsStructureUnion
-- -------------------------------------------------------

function core.BNIsStructureUnion(
		s
)
	return cdefs.C.BNIsStructureUnion(s)
end

-- -------------------------------------------------------
-- BNIsSymbolAutoDefined
-- -------------------------------------------------------

function core.BNIsSymbolAutoDefined(
		sym
)
	return cdefs.C.BNIsSymbolAutoDefined(sym)
end

-- -------------------------------------------------------
-- BNIsTypeBuilderConst
-- -------------------------------------------------------

function core.BNIsTypeBuilderConst(
		type
)
	return cdefs.C.BNIsTypeBuilderConst(type)
end

-- -------------------------------------------------------
-- BNIsTypeBuilderFloatingPoint
-- -------------------------------------------------------

function core.BNIsTypeBuilderFloatingPoint(
		type
)
	return cdefs.C.BNIsTypeBuilderFloatingPoint(type)
end

-- -------------------------------------------------------
-- BNIsTypeBuilderSigned
-- -------------------------------------------------------

function core.BNIsTypeBuilderSigned(
		type
)
	return cdefs.C.BNIsTypeBuilderSigned(type)
end

-- -------------------------------------------------------
-- BNIsTypeBuilderVolatile
-- -------------------------------------------------------

function core.BNIsTypeBuilderVolatile(
		type
)
	return cdefs.C.BNIsTypeBuilderVolatile(type)
end

-- -------------------------------------------------------
-- BNIsTypeConst
-- -------------------------------------------------------

function core.BNIsTypeConst(
		type
)
	return cdefs.C.BNIsTypeConst(type)
end

-- -------------------------------------------------------
-- BNIsTypeFloatingPoint
-- -------------------------------------------------------

function core.BNIsTypeFloatingPoint(
		type
)
	return cdefs.C.BNIsTypeFloatingPoint(type)
end

-- -------------------------------------------------------
-- BNIsTypeSigned
-- -------------------------------------------------------

function core.BNIsTypeSigned(
		type
)
	return cdefs.C.BNIsTypeSigned(type)
end

-- -------------------------------------------------------
-- BNIsTypeVolatile
-- -------------------------------------------------------

function core.BNIsTypeVolatile(
		type
)
	return cdefs.C.BNIsTypeVolatile(type)
end

-- -------------------------------------------------------
-- BNIsUIEnabled
-- -------------------------------------------------------

function core.BNIsUIEnabled(
)
	return cdefs.C.BNIsUIEnabled()
end

-- -------------------------------------------------------
-- BNIsUpdateInstallationPending
-- -------------------------------------------------------

function core.BNIsUpdateInstallationPending(
)
	return cdefs.C.BNIsUpdateInstallationPending()
end

-- -------------------------------------------------------
-- BNIsValidForData
-- -------------------------------------------------------

function core.BNIsValidForData(
		ctxt, 
		view, 
		addr, 
		type, 
		typeCtx, 
		ctxCount
)
	return cdefs.C.BNIsValidForData(ctxt, view, addr, type, typeCtx, ctxCount)
end

-- -------------------------------------------------------
-- BNIsValidOffset
-- -------------------------------------------------------

function core.BNIsValidOffset(
		view, 
		offset
)
	return cdefs.C.BNIsValidOffset(view, offset)
end

-- -------------------------------------------------------
-- BNIsVariableUserDefined
-- -------------------------------------------------------

function core.BNIsVariableUserDefined(
		func, 
		var
)
	return cdefs.C.BNIsVariableUserDefined(func, var)
end

-- -------------------------------------------------------
-- BNIsViewModified
-- -------------------------------------------------------

function core.BNIsViewModified(
		view
)
	return cdefs.C.BNIsViewModified(view)
end

-- -------------------------------------------------------
-- BNKeyValueStoreHasValue
-- -------------------------------------------------------

function core.BNKeyValueStoreHasValue(
		store, 
		name
)
	return cdefs.C.BNKeyValueStoreHasValue(store, name)
end

-- -------------------------------------------------------
-- BNLinearViewCursorNext
-- -------------------------------------------------------

function core.BNLinearViewCursorNext(
		cursor
)
	return cdefs.C.BNLinearViewCursorNext(cursor)
end

-- -------------------------------------------------------
-- BNLinearViewCursorPrevious
-- -------------------------------------------------------

function core.BNLinearViewCursorPrevious(
		cursor
)
	return cdefs.C.BNLinearViewCursorPrevious(cursor)
end

-- -------------------------------------------------------
-- BNLlvmServicesAssemble
-- -------------------------------------------------------

function core.BNLlvmServicesAssemble(
		src, 
		dialect, 
		triplet, 
		codeModel, 
		relocMode, 
		outBytes, 
		outBytesLen, 
		err, 
		errLen
)
	return cdefs.C.BNLlvmServicesAssemble(src, dialect, triplet, codeModel, relocMode, outBytes, outBytesLen, err, errLen)
end

-- -------------------------------------------------------
-- BNLlvmServicesAssembleFree
-- -------------------------------------------------------

function core.BNLlvmServicesAssembleFree(
		outBytes, 
		err
)
	return cdefs.C.BNLlvmServicesAssembleFree(outBytes, err)
end

-- -------------------------------------------------------
-- BNLlvmServicesInit
-- -------------------------------------------------------

function core.BNLlvmServicesInit(
)
	return cdefs.C.BNLlvmServicesInit()
end

-- -------------------------------------------------------
-- BNLoadScriptingProviderModule
-- -------------------------------------------------------

function core.BNLoadScriptingProviderModule(
		provider, 
		repository, 
		module, 
		force
)
	return cdefs.C.BNLoadScriptingProviderModule(provider, repository, module, force)
end

-- -------------------------------------------------------
-- BNLoadSettingsFile
-- -------------------------------------------------------

function core.BNLoadSettingsFile(
		settings, 
		fileName, 
		scope, 
		view
)
	return cdefs.C.BNLoadSettingsFile(settings, fileName, scope, view)
end

-- -------------------------------------------------------
-- BNLoadTypeLibraryFromFile
-- -------------------------------------------------------

function core.BNLoadTypeLibraryFromFile(
		path
)
	local result = cdefs.C.BNLoadTypeLibraryFromFile(path)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNLog
-- -------------------------------------------------------
function core.BNLog(level, ...)
	return cdefs.C.BNLog(level, ...)
end

-- -------------------------------------------------------
-- BNLogAlert
-- -------------------------------------------------------
function core.BNLogAlert(...)
	return cdefs.C.BNLogAlert(...)
end

-- -------------------------------------------------------
-- BNLogCreateLogger
-- -------------------------------------------------------

function core.BNLogCreateLogger(
		loggerName, 
		sessionId
)
	local result = cdefs.C.BNLogCreateLogger(loggerName, sessionId)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNLogDebug
-- -------------------------------------------------------
function core.BNLogDebug(...)
	return cdefs.C.BNLogDebug(...)
end

-- -------------------------------------------------------
-- BNLogError
-- -------------------------------------------------------
function core.BNLogError(...)
	return cdefs.C.BNLogError(...)
end

-- -------------------------------------------------------
-- BNLogGetLogger
-- -------------------------------------------------------

function core.BNLogGetLogger(
		loggerName, 
		sessionId
)
	local result = cdefs.C.BNLogGetLogger(loggerName, sessionId)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNLogGetLoggerNames
-- -------------------------------------------------------

function core.BNLogGetLoggerNames(
		count
)
	local result = cdefs.C.BNLogGetLoggerNames(count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNLogInfo
-- -------------------------------------------------------
function core.BNLogInfo(...)
	return cdefs.C.BNLogInfo(...)
end

-- -------------------------------------------------------
-- BNLogRegisterLoggerCallback
-- -------------------------------------------------------

function core.BNLogRegisterLoggerCallback(
		cb, 
		ctxt
)
	return cdefs.C.BNLogRegisterLoggerCallback(cb, ctxt)
end

-- -------------------------------------------------------
-- BNLogString
-- -------------------------------------------------------

function core.BNLogString(
		session, 
		level, 
		logger_name, 
		tid, 
		str
)
	return cdefs.C.BNLogString(session, level, logger_name, tid, str)
end

-- -------------------------------------------------------
-- BNLogToFile
-- -------------------------------------------------------

function core.BNLogToFile(
		minimumLevel, 
		path, 
		append
)
	return cdefs.C.BNLogToFile(minimumLevel, path, append)
end

-- -------------------------------------------------------
-- BNLogToStderr
-- -------------------------------------------------------

function core.BNLogToStderr(
		minimumLevel
)
	return cdefs.C.BNLogToStderr(minimumLevel)
end

-- -------------------------------------------------------
-- BNLogToStdout
-- -------------------------------------------------------

function core.BNLogToStdout(
		minimumLevel
)
	return cdefs.C.BNLogToStdout(minimumLevel)
end

-- -------------------------------------------------------
-- BNLogWarn
-- -------------------------------------------------------
function core.BNLogWarn(...)
	return cdefs.C.BNLogWarn(...)
end

-- -------------------------------------------------------
-- BNLoggerGetName
-- -------------------------------------------------------

function core.BNLoggerGetName(
		logger
)
	local result = cdefs.C.BNLoggerGetName(logger)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNLoggerGetSessionId
-- -------------------------------------------------------

function core.BNLoggerGetSessionId(
		logger
)
	return cdefs.C.BNLoggerGetSessionId(logger)
end

-- -------------------------------------------------------
-- BNLoggerLog
-- -------------------------------------------------------
function core.BNLoggerLog(...)
	return cdefs.C.BNLoggerLog(...)
end

-- -------------------------------------------------------
-- BNLoggerLogString
-- -------------------------------------------------------

function core.BNLoggerLogString(
		logger, 
		level, 
		msg
)
	return cdefs.C.BNLoggerLogString(logger, level, msg)
end

-- -------------------------------------------------------
-- BNLookupImportedTypePlatform
-- -------------------------------------------------------

function core.BNLookupImportedTypePlatform(
		view, 
		typeName, 
		platform, 
		resultName
)
	return cdefs.C.BNLookupImportedTypePlatform(view, typeName, platform, resultName)
end

-- -------------------------------------------------------
-- BNLookupTypeLibraryByGuid
-- -------------------------------------------------------

function core.BNLookupTypeLibraryByGuid(
		arch, 
		guid
)
	local result = cdefs.C.BNLookupTypeLibraryByGuid(arch, guid)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNLookupTypeLibraryByName
-- -------------------------------------------------------

function core.BNLookupTypeLibraryByName(
		arch, 
		name
)
	local result = cdefs.C.BNLookupTypeLibraryByName(arch, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNLowLevelILAddExpr
-- -------------------------------------------------------

function core.BNLowLevelILAddExpr(
		func, 
		operation, 
		size, 
		flags, 
		a, 
		b, 
		c, 
		d
)
	return cdefs.C.BNLowLevelILAddExpr(func, operation, size, flags, a, b, c, d)
end

-- -------------------------------------------------------
-- BNLowLevelILAddExprWithLocation
-- -------------------------------------------------------

function core.BNLowLevelILAddExprWithLocation(
		func, 
		addr, 
		sourceOperand, 
		operation, 
		size, 
		flags, 
		a, 
		b, 
		c, 
		d
)
	return cdefs.C.BNLowLevelILAddExprWithLocation(func, addr, sourceOperand, operation, size, flags, a, b, c, d)
end

-- -------------------------------------------------------
-- BNLowLevelILAddInstruction
-- -------------------------------------------------------

function core.BNLowLevelILAddInstruction(
		func, 
		expr
)
	return cdefs.C.BNLowLevelILAddInstruction(func, expr)
end

-- -------------------------------------------------------
-- BNLowLevelILAddLabelMap
-- -------------------------------------------------------

function core.BNLowLevelILAddLabelMap(
		func, 
		values, 
		labels, 
		count
)
	return cdefs.C.BNLowLevelILAddLabelMap(func, values, labels, count)
end

-- -------------------------------------------------------
-- BNLowLevelILAddOperandList
-- -------------------------------------------------------

function core.BNLowLevelILAddOperandList(
		func, 
		operands, 
		count
)
	return cdefs.C.BNLowLevelILAddOperandList(func, operands, count)
end

-- -------------------------------------------------------
-- BNLowLevelILClearIndirectBranches
-- -------------------------------------------------------

function core.BNLowLevelILClearIndirectBranches(
		func
)
	return cdefs.C.BNLowLevelILClearIndirectBranches(func)
end

-- -------------------------------------------------------
-- BNLowLevelILFreeOperandList
-- -------------------------------------------------------

function core.BNLowLevelILFreeOperandList(
		operands
)
	return cdefs.C.BNLowLevelILFreeOperandList(operands)
end

-- -------------------------------------------------------
-- BNLowLevelILGetCurrentAddress
-- -------------------------------------------------------

function core.BNLowLevelILGetCurrentAddress(
		func
)
	return cdefs.C.BNLowLevelILGetCurrentAddress(func)
end

-- -------------------------------------------------------
-- BNLowLevelILGetInstructionStart
-- -------------------------------------------------------

function core.BNLowLevelILGetInstructionStart(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNLowLevelILGetInstructionStart(func, arch, addr)
end

-- -------------------------------------------------------
-- BNLowLevelILGetOperandList
-- -------------------------------------------------------

function core.BNLowLevelILGetOperandList(
		func, 
		expr, 
		operand, 
		count
)
	local result = cdefs.C.BNLowLevelILGetOperandList(func, expr, operand, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNLowLevelILGoto
-- -------------------------------------------------------

function core.BNLowLevelILGoto(
		func, 
		label
)
	return cdefs.C.BNLowLevelILGoto(func, label)
end

-- -------------------------------------------------------
-- BNLowLevelILGotoWithLocation
-- -------------------------------------------------------

function core.BNLowLevelILGotoWithLocation(
		func, 
		label, 
		addr, 
		sourceOperand
)
	return cdefs.C.BNLowLevelILGotoWithLocation(func, label, addr, sourceOperand)
end

-- -------------------------------------------------------
-- BNLowLevelILIf
-- -------------------------------------------------------

function core.BNLowLevelILIf(
		func, 
		op, 
		t, 
		f
)
	return cdefs.C.BNLowLevelILIf(func, op, t, f)
end

-- -------------------------------------------------------
-- BNLowLevelILIfWithLocation
-- -------------------------------------------------------

function core.BNLowLevelILIfWithLocation(
		func, 
		op, 
		t, 
		f, 
		addr, 
		sourceOperand
)
	return cdefs.C.BNLowLevelILIfWithLocation(func, op, t, f, addr, sourceOperand)
end

-- -------------------------------------------------------
-- BNLowLevelILInitLabel
-- -------------------------------------------------------

function core.BNLowLevelILInitLabel(
		label
)
	return cdefs.C.BNLowLevelILInitLabel(label)
end

-- -------------------------------------------------------
-- BNLowLevelILMarkLabel
-- -------------------------------------------------------

function core.BNLowLevelILMarkLabel(
		func, 
		label
)
	return cdefs.C.BNLowLevelILMarkLabel(func, label)
end

-- -------------------------------------------------------
-- BNLowLevelILSetCurrentAddress
-- -------------------------------------------------------

function core.BNLowLevelILSetCurrentAddress(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNLowLevelILSetCurrentAddress(func, arch, addr)
end

-- -------------------------------------------------------
-- BNLowLevelILSetCurrentSourceBlock
-- -------------------------------------------------------

function core.BNLowLevelILSetCurrentSourceBlock(
		func, 
		source
)
	return cdefs.C.BNLowLevelILSetCurrentSourceBlock(func, source)
end

-- -------------------------------------------------------
-- BNLowLevelILSetExprSourceOperand
-- -------------------------------------------------------

function core.BNLowLevelILSetExprSourceOperand(
		func, 
		expr, 
		operand
)
	return cdefs.C.BNLowLevelILSetExprSourceOperand(func, expr, operand)
end

-- -------------------------------------------------------
-- BNLowLevelILSetIndirectBranches
-- -------------------------------------------------------

function core.BNLowLevelILSetIndirectBranches(
		func, 
		branches, 
		count
)
	return cdefs.C.BNLowLevelILSetIndirectBranches(func, branches, count)
end

-- -------------------------------------------------------
-- BNMarkBasicBlockAsRecentlyUsed
-- -------------------------------------------------------

function core.BNMarkBasicBlockAsRecentlyUsed(
		block
)
	return cdefs.C.BNMarkBasicBlockAsRecentlyUsed(block)
end

-- -------------------------------------------------------
-- BNMarkCallerUpdatesRequired
-- -------------------------------------------------------

function core.BNMarkCallerUpdatesRequired(
		func, 
		type
)
	return cdefs.C.BNMarkCallerUpdatesRequired(func, type)
end

-- -------------------------------------------------------
-- BNMarkFileModified
-- -------------------------------------------------------

function core.BNMarkFileModified(
		file
)
	return cdefs.C.BNMarkFileModified(file)
end

-- -------------------------------------------------------
-- BNMarkFileSaved
-- -------------------------------------------------------

function core.BNMarkFileSaved(
		file
)
	return cdefs.C.BNMarkFileSaved(file)
end

-- -------------------------------------------------------
-- BNMarkFunctionAsRecentlyUsed
-- -------------------------------------------------------

function core.BNMarkFunctionAsRecentlyUsed(
		func
)
	return cdefs.C.BNMarkFunctionAsRecentlyUsed(func)
end

-- -------------------------------------------------------
-- BNMarkMediumLevelILInstructionForRemoval
-- -------------------------------------------------------

function core.BNMarkMediumLevelILInstructionForRemoval(
		func, 
		instr
)
	return cdefs.C.BNMarkMediumLevelILInstructionForRemoval(func, instr)
end

-- -------------------------------------------------------
-- BNMarkUpdatesRequired
-- -------------------------------------------------------

function core.BNMarkUpdatesRequired(
		func, 
		type
)
	return cdefs.C.BNMarkUpdatesRequired(func, type)
end

-- -------------------------------------------------------
-- BNMarkdownToHTML
-- -------------------------------------------------------

function core.BNMarkdownToHTML(
		contents
)
	local result = cdefs.C.BNMarkdownToHTML(contents)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNMediumLevelILAddExpr
-- -------------------------------------------------------

function core.BNMediumLevelILAddExpr(
		func, 
		operation, 
		size, 
		a, 
		b, 
		c, 
		d, 
		e
)
	return cdefs.C.BNMediumLevelILAddExpr(func, operation, size, a, b, c, d, e)
end

-- -------------------------------------------------------
-- BNMediumLevelILAddExprWithLocation
-- -------------------------------------------------------

function core.BNMediumLevelILAddExprWithLocation(
		func, 
		operation, 
		addr, 
		sourceOperand, 
		size, 
		a, 
		b, 
		c, 
		d, 
		e
)
	return cdefs.C.BNMediumLevelILAddExprWithLocation(func, operation, addr, sourceOperand, size, a, b, c, d, e)
end

-- -------------------------------------------------------
-- BNMediumLevelILAddInstruction
-- -------------------------------------------------------

function core.BNMediumLevelILAddInstruction(
		func, 
		expr
)
	return cdefs.C.BNMediumLevelILAddInstruction(func, expr)
end

-- -------------------------------------------------------
-- BNMediumLevelILAddLabelMap
-- -------------------------------------------------------

function core.BNMediumLevelILAddLabelMap(
		func, 
		values, 
		labels, 
		count
)
	return cdefs.C.BNMediumLevelILAddLabelMap(func, values, labels, count)
end

-- -------------------------------------------------------
-- BNMediumLevelILAddOperandList
-- -------------------------------------------------------

function core.BNMediumLevelILAddOperandList(
		func, 
		operands, 
		count
)
	return cdefs.C.BNMediumLevelILAddOperandList(func, operands, count)
end

-- -------------------------------------------------------
-- BNMediumLevelILFreeOperandList
-- -------------------------------------------------------

function core.BNMediumLevelILFreeOperandList(
		operands
)
	return cdefs.C.BNMediumLevelILFreeOperandList(operands)
end

-- -------------------------------------------------------
-- BNMediumLevelILGetCurrentAddress
-- -------------------------------------------------------

function core.BNMediumLevelILGetCurrentAddress(
		func
)
	return cdefs.C.BNMediumLevelILGetCurrentAddress(func)
end

-- -------------------------------------------------------
-- BNMediumLevelILGetInstructionStart
-- -------------------------------------------------------

function core.BNMediumLevelILGetInstructionStart(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNMediumLevelILGetInstructionStart(func, arch, addr)
end

-- -------------------------------------------------------
-- BNMediumLevelILGetOperandList
-- -------------------------------------------------------

function core.BNMediumLevelILGetOperandList(
		func, 
		expr, 
		operand, 
		count
)
	local result = cdefs.C.BNMediumLevelILGetOperandList(func, expr, operand, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMediumLevelILGoto
-- -------------------------------------------------------

function core.BNMediumLevelILGoto(
		func, 
		label
)
	return cdefs.C.BNMediumLevelILGoto(func, label)
end

-- -------------------------------------------------------
-- BNMediumLevelILGotoWithLocation
-- -------------------------------------------------------

function core.BNMediumLevelILGotoWithLocation(
		func, 
		label, 
		addr, 
		sourceOperand
)
	return cdefs.C.BNMediumLevelILGotoWithLocation(func, label, addr, sourceOperand)
end

-- -------------------------------------------------------
-- BNMediumLevelILIf
-- -------------------------------------------------------

function core.BNMediumLevelILIf(
		func, 
		op, 
		t, 
		f
)
	return cdefs.C.BNMediumLevelILIf(func, op, t, f)
end

-- -------------------------------------------------------
-- BNMediumLevelILIfWithLocation
-- -------------------------------------------------------

function core.BNMediumLevelILIfWithLocation(
		func, 
		op, 
		t, 
		f, 
		addr, 
		sourceOperand
)
	return cdefs.C.BNMediumLevelILIfWithLocation(func, op, t, f, addr, sourceOperand)
end

-- -------------------------------------------------------
-- BNMediumLevelILInitLabel
-- -------------------------------------------------------

function core.BNMediumLevelILInitLabel(
		label
)
	return cdefs.C.BNMediumLevelILInitLabel(label)
end

-- -------------------------------------------------------
-- BNMediumLevelILMarkLabel
-- -------------------------------------------------------

function core.BNMediumLevelILMarkLabel(
		func, 
		label
)
	return cdefs.C.BNMediumLevelILMarkLabel(func, label)
end

-- -------------------------------------------------------
-- BNMediumLevelILSetCurrentAddress
-- -------------------------------------------------------

function core.BNMediumLevelILSetCurrentAddress(
		func, 
		arch, 
		addr
)
	return cdefs.C.BNMediumLevelILSetCurrentAddress(func, arch, addr)
end

-- -------------------------------------------------------
-- BNMergeVariables
-- -------------------------------------------------------

function core.BNMergeVariables(
		func, 
		target, 
		sources, 
		sourceCount
)
	return cdefs.C.BNMergeVariables(func, target, sources, sourceCount)
end

-- -------------------------------------------------------
-- BNMetadataArrayAppend
-- -------------------------------------------------------

function core.BNMetadataArrayAppend(
		data, 
		md
)
	return cdefs.C.BNMetadataArrayAppend(data, md)
end

-- -------------------------------------------------------
-- BNMetadataGetArray
-- -------------------------------------------------------

function core.BNMetadataGetArray(
		data, 
		size
)
	local result = cdefs.C.BNMetadataGetArray(data, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMetadataGetBoolean
-- -------------------------------------------------------

function core.BNMetadataGetBoolean(
		data
)
	return cdefs.C.BNMetadataGetBoolean(data)
end

-- -------------------------------------------------------
-- BNMetadataGetBooleanList
-- -------------------------------------------------------

function core.BNMetadataGetBooleanList(
		data, 
		arg1
)
	local result = cdefs.C.BNMetadataGetBooleanList(data, arg1)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNMetadataGetDouble
-- -------------------------------------------------------

function core.BNMetadataGetDouble(
		data
)
	return cdefs.C.BNMetadataGetDouble(data)
end

-- -------------------------------------------------------
-- BNMetadataGetDoubleList
-- -------------------------------------------------------

function core.BNMetadataGetDoubleList(
		data, 
		arg1
)
	local result = cdefs.C.BNMetadataGetDoubleList(data, arg1)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMetadataGetForIndex
-- -------------------------------------------------------

function core.BNMetadataGetForIndex(
		data, 
		index
)
	local result = cdefs.C.BNMetadataGetForIndex(data, index)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMetadataGetForKey
-- -------------------------------------------------------

function core.BNMetadataGetForKey(
		data, 
		key
)
	local result = cdefs.C.BNMetadataGetForKey(data, key)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMetadataGetRaw
-- -------------------------------------------------------

function core.BNMetadataGetRaw(
		data, 
		size
)
	local result = cdefs.C.BNMetadataGetRaw(data, size)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMetadataGetSignedInteger
-- -------------------------------------------------------

function core.BNMetadataGetSignedInteger(
		data
)
	return cdefs.C.BNMetadataGetSignedInteger(data)
end

-- -------------------------------------------------------
-- BNMetadataGetSignedIntegerList
-- -------------------------------------------------------

function core.BNMetadataGetSignedIntegerList(
		data, 
		arg1
)
	local result = cdefs.C.BNMetadataGetSignedIntegerList(data, arg1)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMetadataGetString
-- -------------------------------------------------------

function core.BNMetadataGetString(
		data
)
	local result = cdefs.C.BNMetadataGetString(data)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNMetadataGetStringList
-- -------------------------------------------------------

function core.BNMetadataGetStringList(
		data, 
		arg1
)
	local result = cdefs.C.BNMetadataGetStringList(data, arg1)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMetadataGetType
-- -------------------------------------------------------

function core.BNMetadataGetType(
		data
)
	return cdefs.C.BNMetadataGetType(data)
end

-- -------------------------------------------------------
-- BNMetadataGetUnsignedInteger
-- -------------------------------------------------------

function core.BNMetadataGetUnsignedInteger(
		data
)
	return cdefs.C.BNMetadataGetUnsignedInteger(data)
end

-- -------------------------------------------------------
-- BNMetadataGetUnsignedIntegerList
-- -------------------------------------------------------

function core.BNMetadataGetUnsignedIntegerList(
		data, 
		arg1
)
	local result = cdefs.C.BNMetadataGetUnsignedIntegerList(data, arg1)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMetadataGetValueStore
-- -------------------------------------------------------

function core.BNMetadataGetValueStore(
		data
)
	local result = cdefs.C.BNMetadataGetValueStore(data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNMetadataIsArray
-- -------------------------------------------------------

function core.BNMetadataIsArray(
		data
)
	return cdefs.C.BNMetadataIsArray(data)
end

-- -------------------------------------------------------
-- BNMetadataIsBoolean
-- -------------------------------------------------------

function core.BNMetadataIsBoolean(
		data
)
	return cdefs.C.BNMetadataIsBoolean(data)
end

-- -------------------------------------------------------
-- BNMetadataIsBooleanList
-- -------------------------------------------------------

function core.BNMetadataIsBooleanList(
		data
)
	return cdefs.C.BNMetadataIsBooleanList(data)
end

-- -------------------------------------------------------
-- BNMetadataIsDouble
-- -------------------------------------------------------

function core.BNMetadataIsDouble(
		data
)
	return cdefs.C.BNMetadataIsDouble(data)
end

-- -------------------------------------------------------
-- BNMetadataIsDoubleList
-- -------------------------------------------------------

function core.BNMetadataIsDoubleList(
		data
)
	return cdefs.C.BNMetadataIsDoubleList(data)
end

-- -------------------------------------------------------
-- BNMetadataIsEqual
-- -------------------------------------------------------

function core.BNMetadataIsEqual(
		lhs, 
		rhs
)
	return cdefs.C.BNMetadataIsEqual(lhs, rhs)
end

-- -------------------------------------------------------
-- BNMetadataIsKeyValueStore
-- -------------------------------------------------------

function core.BNMetadataIsKeyValueStore(
		data
)
	return cdefs.C.BNMetadataIsKeyValueStore(data)
end

-- -------------------------------------------------------
-- BNMetadataIsRaw
-- -------------------------------------------------------

function core.BNMetadataIsRaw(
		data
)
	return cdefs.C.BNMetadataIsRaw(data)
end

-- -------------------------------------------------------
-- BNMetadataIsSignedInteger
-- -------------------------------------------------------

function core.BNMetadataIsSignedInteger(
		data
)
	return cdefs.C.BNMetadataIsSignedInteger(data)
end

-- -------------------------------------------------------
-- BNMetadataIsSignedIntegerList
-- -------------------------------------------------------

function core.BNMetadataIsSignedIntegerList(
		data
)
	return cdefs.C.BNMetadataIsSignedIntegerList(data)
end

-- -------------------------------------------------------
-- BNMetadataIsString
-- -------------------------------------------------------

function core.BNMetadataIsString(
		data
)
	return cdefs.C.BNMetadataIsString(data)
end

-- -------------------------------------------------------
-- BNMetadataIsStringList
-- -------------------------------------------------------

function core.BNMetadataIsStringList(
		data
)
	return cdefs.C.BNMetadataIsStringList(data)
end

-- -------------------------------------------------------
-- BNMetadataIsUnsignedInteger
-- -------------------------------------------------------

function core.BNMetadataIsUnsignedInteger(
		data
)
	return cdefs.C.BNMetadataIsUnsignedInteger(data)
end

-- -------------------------------------------------------
-- BNMetadataIsUnsignedIntegerList
-- -------------------------------------------------------

function core.BNMetadataIsUnsignedIntegerList(
		data
)
	return cdefs.C.BNMetadataIsUnsignedIntegerList(data)
end

-- -------------------------------------------------------
-- BNMetadataRemoveIndex
-- -------------------------------------------------------

function core.BNMetadataRemoveIndex(
		data, 
		index
)
	return cdefs.C.BNMetadataRemoveIndex(data, index)
end

-- -------------------------------------------------------
-- BNMetadataRemoveKey
-- -------------------------------------------------------

function core.BNMetadataRemoveKey(
		data, 
		key
)
	return cdefs.C.BNMetadataRemoveKey(data, key)
end

-- -------------------------------------------------------
-- BNMetadataSetValueForKey
-- -------------------------------------------------------

function core.BNMetadataSetValueForKey(
		data, 
		key, 
		md
)
	return cdefs.C.BNMetadataSetValueForKey(data, key, md)
end

-- -------------------------------------------------------
-- BNMetadataSize
-- -------------------------------------------------------

function core.BNMetadataSize(
		data
)
	return cdefs.C.BNMetadataSize(data)
end

-- -------------------------------------------------------
-- BNNavigate
-- -------------------------------------------------------

function core.BNNavigate(
		file, 
		view, 
		offset
)
	return cdefs.C.BNNavigate(file, view, offset)
end

-- -------------------------------------------------------
-- BNNewActivityReference
-- -------------------------------------------------------

function core.BNNewActivityReference(
		activity
)
	local result = cdefs.C.BNNewActivityReference(activity)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewAnalysisCompletionEventReference
-- -------------------------------------------------------

function core.BNNewAnalysisCompletionEventReference(
		event
)
	local result = cdefs.C.BNNewAnalysisCompletionEventReference(event)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewAnalysisContextReference
-- -------------------------------------------------------

function core.BNNewAnalysisContextReference(
		analysisContext
)
	local result = cdefs.C.BNNewAnalysisContextReference(analysisContext)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewBackgroundTaskReference
-- -------------------------------------------------------

function core.BNNewBackgroundTaskReference(
		task
)
	local result = cdefs.C.BNNewBackgroundTaskReference(task)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewBasicBlockReference
-- -------------------------------------------------------

function core.BNNewBasicBlockReference(
		block
)
	local result = cdefs.C.BNNewBasicBlockReference(block)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewCallingConventionReference
-- -------------------------------------------------------

function core.BNNewCallingConventionReference(
		cc
)
	local result = cdefs.C.BNNewCallingConventionReference(cc)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewComponentReference
-- -------------------------------------------------------

function core.BNNewComponentReference(
		component
)
	local result = cdefs.C.BNNewComponentReference(component)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewDataRendererReference
-- -------------------------------------------------------

function core.BNNewDataRendererReference(
		renderer
)
	local result = cdefs.C.BNNewDataRendererReference(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewDatabaseReference
-- -------------------------------------------------------

function core.BNNewDatabaseReference(
		database
)
	local result = cdefs.C.BNNewDatabaseReference(database)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewDebugInfoParserReference
-- -------------------------------------------------------

function core.BNNewDebugInfoParserReference(
		parser
)
	local result = cdefs.C.BNNewDebugInfoParserReference(parser)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewDebugInfoReference
-- -------------------------------------------------------

function core.BNNewDebugInfoReference(
		debugInfo
)
	local result = cdefs.C.BNNewDebugInfoReference(debugInfo)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewDisassemblySettingsReference
-- -------------------------------------------------------

function core.BNNewDisassemblySettingsReference(
		settings
)
	local result = cdefs.C.BNNewDisassemblySettingsReference(settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewDisassemblyTextRendererReference
-- -------------------------------------------------------

function core.BNNewDisassemblyTextRendererReference(
		renderer
)
	local result = cdefs.C.BNNewDisassemblyTextRendererReference(renderer)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewDownloadInstanceReference
-- -------------------------------------------------------

function core.BNNewDownloadInstanceReference(
		instance
)
	local result = cdefs.C.BNNewDownloadInstanceReference(instance)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewEnumerationReference
-- -------------------------------------------------------

function core.BNNewEnumerationReference(
		e
)
	local result = cdefs.C.BNNewEnumerationReference(e)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewFileReference
-- -------------------------------------------------------

function core.BNNewFileReference(
		file
)
	local result = cdefs.C.BNNewFileReference(file)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewFlowGraphLayoutRequestReference
-- -------------------------------------------------------

function core.BNNewFlowGraphLayoutRequestReference(
		layout
)
	local result = cdefs.C.BNNewFlowGraphLayoutRequestReference(layout)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewFlowGraphNodeReference
-- -------------------------------------------------------

function core.BNNewFlowGraphNodeReference(
		node
)
	local result = cdefs.C.BNNewFlowGraphNodeReference(node)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewFlowGraphReference
-- -------------------------------------------------------

function core.BNNewFlowGraphReference(
		graph
)
	local result = cdefs.C.BNNewFlowGraphReference(graph)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewFunctionReference
-- -------------------------------------------------------

function core.BNNewFunctionReference(
		func
)
	local result = cdefs.C.BNNewFunctionReference(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewHighLevelILFunctionReference
-- -------------------------------------------------------

function core.BNNewHighLevelILFunctionReference(
		func
)
	local result = cdefs.C.BNNewHighLevelILFunctionReference(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewKeyValueStoreReference
-- -------------------------------------------------------

function core.BNNewKeyValueStoreReference(
		store
)
	local result = cdefs.C.BNNewKeyValueStoreReference(store)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewLanguageRepresentationFunctionReference
-- -------------------------------------------------------

function core.BNNewLanguageRepresentationFunctionReference(
		func
)
	local result = cdefs.C.BNNewLanguageRepresentationFunctionReference(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewLinearViewCursorReference
-- -------------------------------------------------------

function core.BNNewLinearViewCursorReference(
		cursor
)
	local result = cdefs.C.BNNewLinearViewCursorReference(cursor)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewLinearViewObjectReference
-- -------------------------------------------------------

function core.BNNewLinearViewObjectReference(
		obj
)
	local result = cdefs.C.BNNewLinearViewObjectReference(obj)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewLoggerReference
-- -------------------------------------------------------

function core.BNNewLoggerReference(
		logger
)
	local result = cdefs.C.BNNewLoggerReference(logger)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewLowLevelILFunctionReference
-- -------------------------------------------------------

function core.BNNewLowLevelILFunctionReference(
		func
)
	local result = cdefs.C.BNNewLowLevelILFunctionReference(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewMainThreadActionReference
-- -------------------------------------------------------

function core.BNNewMainThreadActionReference(
		action
)
	local result = cdefs.C.BNNewMainThreadActionReference(action)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewMediumLevelILFunctionReference
-- -------------------------------------------------------

function core.BNNewMediumLevelILFunctionReference(
		func
)
	local result = cdefs.C.BNNewMediumLevelILFunctionReference(func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewMetadataReference
-- -------------------------------------------------------

function core.BNNewMetadataReference(
		data
)
	local result = cdefs.C.BNNewMetadataReference(data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewNamedTypeReference
-- -------------------------------------------------------

function core.BNNewNamedTypeReference(
		nt
)
	local result = cdefs.C.BNNewNamedTypeReference(nt)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewPlatformReference
-- -------------------------------------------------------

function core.BNNewPlatformReference(
		platform
)
	local result = cdefs.C.BNNewPlatformReference(platform)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewPluginReference
-- -------------------------------------------------------

function core.BNNewPluginReference(
		r
)
	local result = cdefs.C.BNNewPluginReference(r)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewRelocationHandlerReference
-- -------------------------------------------------------

function core.BNNewRelocationHandlerReference(
		handler
)
	local result = cdefs.C.BNNewRelocationHandlerReference(handler)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewRelocationReference
-- -------------------------------------------------------

function core.BNNewRelocationReference(
		reloc
)
	local result = cdefs.C.BNNewRelocationReference(reloc)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewReportCollectionReference
-- -------------------------------------------------------

function core.BNNewReportCollectionReference(
		reports
)
	local result = cdefs.C.BNNewReportCollectionReference(reports)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewRepositoryManagerReference
-- -------------------------------------------------------

function core.BNNewRepositoryManagerReference(
		r
)
	local result = cdefs.C.BNNewRepositoryManagerReference(r)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewRepositoryReference
-- -------------------------------------------------------

function core.BNNewRepositoryReference(
		r
)
	local result = cdefs.C.BNNewRepositoryReference(r)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewSaveSettingsReference
-- -------------------------------------------------------

function core.BNNewSaveSettingsReference(
		settings
)
	local result = cdefs.C.BNNewSaveSettingsReference(settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewScriptingInstanceReference
-- -------------------------------------------------------

function core.BNNewScriptingInstanceReference(
		instance
)
	local result = cdefs.C.BNNewScriptingInstanceReference(instance)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewSectionReference
-- -------------------------------------------------------

function core.BNNewSectionReference(
		section
)
	local result = cdefs.C.BNNewSectionReference(section)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewSegmentReference
-- -------------------------------------------------------

function core.BNNewSegmentReference(
		seg
)
	local result = cdefs.C.BNNewSegmentReference(seg)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewSettingsReference
-- -------------------------------------------------------

function core.BNNewSettingsReference(
		settings
)
	local result = cdefs.C.BNNewSettingsReference(settings)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewSnapshotReference
-- -------------------------------------------------------

function core.BNNewSnapshotReference(
		snapshot
)
	local result = cdefs.C.BNNewSnapshotReference(snapshot)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewStructureReference
-- -------------------------------------------------------

function core.BNNewStructureReference(
		s
)
	local result = cdefs.C.BNNewStructureReference(s)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewSymbolReference
-- -------------------------------------------------------

function core.BNNewSymbolReference(
		sym
)
	local result = cdefs.C.BNNewSymbolReference(sym)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewTagReference
-- -------------------------------------------------------

function core.BNNewTagReference(
		tag
)
	local result = cdefs.C.BNNewTagReference(tag)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewTagTypeReference
-- -------------------------------------------------------

function core.BNNewTagTypeReference(
		tagType
)
	local result = cdefs.C.BNNewTagTypeReference(tagType)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewTemporaryFileReference
-- -------------------------------------------------------

function core.BNNewTemporaryFileReference(
		file
)
	local result = cdefs.C.BNNewTemporaryFileReference(file)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewTypeLibrary
-- -------------------------------------------------------

function core.BNNewTypeLibrary(
		arch, 
		name
)
	local result = cdefs.C.BNNewTypeLibrary(arch, name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewTypeLibraryReference
-- -------------------------------------------------------

function core.BNNewTypeLibraryReference(
		lib
)
	local result = cdefs.C.BNNewTypeLibraryReference(lib)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewTypeReference
-- -------------------------------------------------------

function core.BNNewTypeReference(
		type
)
	local result = cdefs.C.BNNewTypeReference(type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewUserReference
-- -------------------------------------------------------

function core.BNNewUserReference(
		user
)
	local result = cdefs.C.BNNewUserReference(user)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewViewReference
-- -------------------------------------------------------

function core.BNNewViewReference(
		view
)
	local result = cdefs.C.BNNewViewReference(view)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewWebsocketClientReference
-- -------------------------------------------------------

function core.BNNewWebsocketClientReference(
		client
)
	local result = cdefs.C.BNNewWebsocketClientReference(client)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNewWorkflowReference
-- -------------------------------------------------------

function core.BNNewWorkflowReference(
		workflow
)
	local result = cdefs.C.BNNewWorkflowReference(workflow)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNNotifyDataInserted
-- -------------------------------------------------------

function core.BNNotifyDataInserted(
		view, 
		offset, 
		len
)
	return cdefs.C.BNNotifyDataInserted(view, offset, len)
end

-- -------------------------------------------------------
-- BNNotifyDataRemoved
-- -------------------------------------------------------

function core.BNNotifyDataRemoved(
		view, 
		offset, 
		len
)
	return cdefs.C.BNNotifyDataRemoved(view, offset, len)
end

-- -------------------------------------------------------
-- BNNotifyDataWritten
-- -------------------------------------------------------

function core.BNNotifyDataWritten(
		view, 
		offset, 
		len
)
	return cdefs.C.BNNotifyDataWritten(view, offset, len)
end

-- -------------------------------------------------------
-- BNNotifyErrorForScriptingInstance
-- -------------------------------------------------------

function core.BNNotifyErrorForScriptingInstance(
		instance, 
		text
)
	return cdefs.C.BNNotifyErrorForScriptingInstance(instance, text)
end

-- -------------------------------------------------------
-- BNNotifyInputReadyStateForScriptingInstance
-- -------------------------------------------------------

function core.BNNotifyInputReadyStateForScriptingInstance(
		instance, 
		state
)
	return cdefs.C.BNNotifyInputReadyStateForScriptingInstance(instance, state)
end

-- -------------------------------------------------------
-- BNNotifyOutputForScriptingInstance
-- -------------------------------------------------------

function core.BNNotifyOutputForScriptingInstance(
		instance, 
		text
)
	return cdefs.C.BNNotifyOutputForScriptingInstance(instance, text)
end

-- -------------------------------------------------------
-- BNNotifyProgressForDownloadInstance
-- -------------------------------------------------------

function core.BNNotifyProgressForDownloadInstance(
		instance, 
		progress, 
		total
)
	return cdefs.C.BNNotifyProgressForDownloadInstance(instance, progress, total)
end

-- -------------------------------------------------------
-- BNNotifyWarningForScriptingInstance
-- -------------------------------------------------------

function core.BNNotifyWarningForScriptingInstance(
		instance, 
		text
)
	return cdefs.C.BNNotifyWarningForScriptingInstance(instance, text)
end

-- -------------------------------------------------------
-- BNNotifyWebsocketClientConnect
-- -------------------------------------------------------

function core.BNNotifyWebsocketClientConnect(
		client
)
	return cdefs.C.BNNotifyWebsocketClientConnect(client)
end

-- -------------------------------------------------------
-- BNNotifyWebsocketClientDisconnect
-- -------------------------------------------------------

function core.BNNotifyWebsocketClientDisconnect(
		client
)
	return cdefs.C.BNNotifyWebsocketClientDisconnect(client)
end

-- -------------------------------------------------------
-- BNNotifyWebsocketClientError
-- -------------------------------------------------------

function core.BNNotifyWebsocketClientError(
		client, 
		msg
)
	return cdefs.C.BNNotifyWebsocketClientError(client, msg)
end

-- -------------------------------------------------------
-- BNNotifyWebsocketClientReadData
-- -------------------------------------------------------

function core.BNNotifyWebsocketClientReadData(
		client, 
		data, 
		len
)
	return cdefs.C.BNNotifyWebsocketClientReadData(client, data, len)
end

-- -------------------------------------------------------
-- BNOpenDatabaseForConfiguration
-- -------------------------------------------------------

function core.BNOpenDatabaseForConfiguration(
		file, 
		path
)
	local result = cdefs.C.BNOpenDatabaseForConfiguration(file, path)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNOpenExistingDatabase
-- -------------------------------------------------------

function core.BNOpenExistingDatabase(
		file, 
		path
)
	local result = cdefs.C.BNOpenExistingDatabase(file, path)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNOpenExistingDatabaseWithProgress
-- -------------------------------------------------------

function core.BNOpenExistingDatabaseWithProgress(
		file, 
		path, 
		ctxt, 
		progress
)
	local result = cdefs.C.BNOpenExistingDatabaseWithProgress(file, path, ctxt, progress)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNOpenProject
-- -------------------------------------------------------

function core.BNOpenProject(
		file
)
	return cdefs.C.BNOpenProject(file)
end

-- -------------------------------------------------------
-- BNOpenUrl
-- -------------------------------------------------------

function core.BNOpenUrl(
		url
)
	return cdefs.C.BNOpenUrl(url)
end

-- -------------------------------------------------------
-- BNParseBinaryViewOfType
-- -------------------------------------------------------

function core.BNParseBinaryViewOfType(
		type, 
		data
)
	local result = cdefs.C.BNParseBinaryViewOfType(type, data)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNParseDebugInfo
-- -------------------------------------------------------

function core.BNParseDebugInfo(
		parser, 
		view, 
		existingDebugInfo, 
		progress, 
		progressCtxt
)
	local result = cdefs.C.BNParseDebugInfo(parser, view, existingDebugInfo, progress, progressCtxt)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNParseExpression
-- -------------------------------------------------------

function core.BNParseExpression(
		view, 
		expression, 
		offset, 
		here, 
		errorString
)
	return cdefs.C.BNParseExpression(view, expression, offset, here, errorString)
end

-- -------------------------------------------------------
-- BNParsePossibleValueSet
-- -------------------------------------------------------

function core.BNParsePossibleValueSet(
		view, 
		valueText, 
		state, 
		result, 
		here, 
		errors
)
	return cdefs.C.BNParsePossibleValueSet(view, valueText, state, result, here, errors)
end

-- -------------------------------------------------------
-- BNParseTypeParserOptionsText
-- -------------------------------------------------------

function core.BNParseTypeParserOptionsText(
		optionsText, 
		count
)
	local result = cdefs.C.BNParseTypeParserOptionsText(optionsText, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNParseTypeString
-- -------------------------------------------------------

function core.BNParseTypeString(
		view, 
		text, 
		result, 
		errors, 
		typesAllowRedefinition
)
	return cdefs.C.BNParseTypeString(view, text, result, errors, typesAllowRedefinition)
end

-- -------------------------------------------------------
-- BNParseTypesFromSource
-- -------------------------------------------------------

function core.BNParseTypesFromSource(
		platform, 
		source, 
		fileName, 
		result, 
		errors, 
		includeDirs, 
		includeDirCount, 
		autoTypeSource
)
	return cdefs.C.BNParseTypesFromSource(platform, source, fileName, result, errors, includeDirs, includeDirCount, autoTypeSource)
end

-- -------------------------------------------------------
-- BNParseTypesFromSourceFile
-- -------------------------------------------------------

function core.BNParseTypesFromSourceFile(
		platform, 
		fileName, 
		result, 
		errors, 
		includeDirs, 
		includeDirCount, 
		autoTypeSource
)
	return cdefs.C.BNParseTypesFromSourceFile(platform, fileName, result, errors, includeDirs, includeDirCount, autoTypeSource)
end

-- -------------------------------------------------------
-- BNParseTypesString
-- -------------------------------------------------------

function core.BNParseTypesString(
		view, 
		text, 
		options, 
		optionCount, 
		includeDirs, 
		includeDirCount, 
		result, 
		errors, 
		typesAllowRedefinition
)
	return cdefs.C.BNParseTypesString(view, text, options, optionCount, includeDirs, includeDirCount, result, errors, typesAllowRedefinition)
end

-- -------------------------------------------------------
-- BNPathExists
-- -------------------------------------------------------

function core.BNPathExists(
		path
)
	return cdefs.C.BNPathExists(path)
end

-- -------------------------------------------------------
-- BNPerformCustomRequest
-- -------------------------------------------------------

function core.BNPerformCustomRequest(
		instance, 
		method, 
		url, 
		headerCount, 
		headerKeys, 
		headerValues, 
		response, 
		callbacks
)
	return cdefs.C.BNPerformCustomRequest(instance, method, url, headerCount, headerKeys, headerValues, response, callbacks)
end

-- -------------------------------------------------------
-- BNPerformDownloadRequest
-- -------------------------------------------------------

function core.BNPerformDownloadRequest(
		instance, 
		url, 
		callbacks
)
	return cdefs.C.BNPerformDownloadRequest(instance, url, callbacks)
end

-- -------------------------------------------------------
-- BNPluginAreDependenciesBeingInstalled
-- -------------------------------------------------------

function core.BNPluginAreDependenciesBeingInstalled(
		p
)
	return cdefs.C.BNPluginAreDependenciesBeingInstalled(p)
end

-- -------------------------------------------------------
-- BNPluginDisable
-- -------------------------------------------------------

function core.BNPluginDisable(
		p
)
	return cdefs.C.BNPluginDisable(p)
end

-- -------------------------------------------------------
-- BNPluginEnable
-- -------------------------------------------------------

function core.BNPluginEnable(
		p, 
		force
)
	return cdefs.C.BNPluginEnable(p, force)
end

-- -------------------------------------------------------
-- BNPluginGetApis
-- -------------------------------------------------------

function core.BNPluginGetApis(
		p, 
		count
)
	local result = cdefs.C.BNPluginGetApis(p, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNPluginGetAuthor
-- -------------------------------------------------------

function core.BNPluginGetAuthor(
		p
)
	local result = cdefs.C.BNPluginGetAuthor(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetAuthorUrl
-- -------------------------------------------------------

function core.BNPluginGetAuthorUrl(
		p
)
	local result = cdefs.C.BNPluginGetAuthorUrl(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetCommit
-- -------------------------------------------------------

function core.BNPluginGetCommit(
		p
)
	local result = cdefs.C.BNPluginGetCommit(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetDependencies
-- -------------------------------------------------------

function core.BNPluginGetDependencies(
		p
)
	local result = cdefs.C.BNPluginGetDependencies(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetDescription
-- -------------------------------------------------------

function core.BNPluginGetDescription(
		p
)
	local result = cdefs.C.BNPluginGetDescription(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetInstallInstructions
-- -------------------------------------------------------

function core.BNPluginGetInstallInstructions(
		p, 
		platform
)
	local result = cdefs.C.BNPluginGetInstallInstructions(p, platform)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetLastUpdate
-- -------------------------------------------------------

function core.BNPluginGetLastUpdate(
		p
)
	return cdefs.C.BNPluginGetLastUpdate(p)
end

-- -------------------------------------------------------
-- BNPluginGetLicense
-- -------------------------------------------------------

function core.BNPluginGetLicense(
		p
)
	local result = cdefs.C.BNPluginGetLicense(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetLicenseText
-- -------------------------------------------------------

function core.BNPluginGetLicenseText(
		p
)
	local result = cdefs.C.BNPluginGetLicenseText(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetLongdescription
-- -------------------------------------------------------

function core.BNPluginGetLongdescription(
		p
)
	local result = cdefs.C.BNPluginGetLongdescription(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetMinimumVersion
-- -------------------------------------------------------

function core.BNPluginGetMinimumVersion(
		p
)
	return cdefs.C.BNPluginGetMinimumVersion(p)
end

-- -------------------------------------------------------
-- BNPluginGetName
-- -------------------------------------------------------

function core.BNPluginGetName(
		p
)
	local result = cdefs.C.BNPluginGetName(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetPackageUrl
-- -------------------------------------------------------

function core.BNPluginGetPackageUrl(
		p
)
	local result = cdefs.C.BNPluginGetPackageUrl(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetPath
-- -------------------------------------------------------

function core.BNPluginGetPath(
		p
)
	local result = cdefs.C.BNPluginGetPath(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetPlatforms
-- -------------------------------------------------------

function core.BNPluginGetPlatforms(
		p, 
		count
)
	local result = cdefs.C.BNPluginGetPlatforms(p, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNPluginGetPluginStatus
-- -------------------------------------------------------

function core.BNPluginGetPluginStatus(
		p
)
	return cdefs.C.BNPluginGetPluginStatus(p)
end

-- -------------------------------------------------------
-- BNPluginGetPluginTypes
-- -------------------------------------------------------

function core.BNPluginGetPluginTypes(
		p, 
		count
)
	local result = cdefs.C.BNPluginGetPluginTypes(p, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNPluginGetProjectData
-- -------------------------------------------------------

function core.BNPluginGetProjectData(
		p
)
	local result = cdefs.C.BNPluginGetProjectData(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetProjectUrl
-- -------------------------------------------------------

function core.BNPluginGetProjectUrl(
		p
)
	local result = cdefs.C.BNPluginGetProjectUrl(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetRepository
-- -------------------------------------------------------

function core.BNPluginGetRepository(
		p
)
	local result = cdefs.C.BNPluginGetRepository(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetSubdir
-- -------------------------------------------------------

function core.BNPluginGetSubdir(
		p
)
	local result = cdefs.C.BNPluginGetSubdir(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginGetVersion
-- -------------------------------------------------------

function core.BNPluginGetVersion(
		p
)
	local result = cdefs.C.BNPluginGetVersion(p)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNPluginInstall
-- -------------------------------------------------------

function core.BNPluginInstall(
		p
)
	return cdefs.C.BNPluginInstall(p)
end

-- -------------------------------------------------------
-- BNPluginInstallDependencies
-- -------------------------------------------------------

function core.BNPluginInstallDependencies(
		p
)
	return cdefs.C.BNPluginInstallDependencies(p)
end

-- -------------------------------------------------------
-- BNPluginIsBeingDeleted
-- -------------------------------------------------------

function core.BNPluginIsBeingDeleted(
		p
)
	return cdefs.C.BNPluginIsBeingDeleted(p)
end

-- -------------------------------------------------------
-- BNPluginIsBeingUpdated
-- -------------------------------------------------------

function core.BNPluginIsBeingUpdated(
		p
)
	return cdefs.C.BNPluginIsBeingUpdated(p)
end

-- -------------------------------------------------------
-- BNPluginIsDeletePending
-- -------------------------------------------------------

function core.BNPluginIsDeletePending(
		p
)
	return cdefs.C.BNPluginIsDeletePending(p)
end

-- -------------------------------------------------------
-- BNPluginIsDisablePending
-- -------------------------------------------------------

function core.BNPluginIsDisablePending(
		p
)
	return cdefs.C.BNPluginIsDisablePending(p)
end

-- -------------------------------------------------------
-- BNPluginIsEnabled
-- -------------------------------------------------------

function core.BNPluginIsEnabled(
		p
)
	return cdefs.C.BNPluginIsEnabled(p)
end

-- -------------------------------------------------------
-- BNPluginIsInstalled
-- -------------------------------------------------------

function core.BNPluginIsInstalled(
		p
)
	return cdefs.C.BNPluginIsInstalled(p)
end

-- -------------------------------------------------------
-- BNPluginIsRunning
-- -------------------------------------------------------

function core.BNPluginIsRunning(
		p
)
	return cdefs.C.BNPluginIsRunning(p)
end

-- -------------------------------------------------------
-- BNPluginIsUpdateAvailable
-- -------------------------------------------------------

function core.BNPluginIsUpdateAvailable(
		p
)
	return cdefs.C.BNPluginIsUpdateAvailable(p)
end

-- -------------------------------------------------------
-- BNPluginIsUpdatePending
-- -------------------------------------------------------

function core.BNPluginIsUpdatePending(
		p
)
	return cdefs.C.BNPluginIsUpdatePending(p)
end

-- -------------------------------------------------------
-- BNPluginUninstall
-- -------------------------------------------------------

function core.BNPluginUninstall(
		p
)
	return cdefs.C.BNPluginUninstall(p)
end

-- -------------------------------------------------------
-- BNPluginUpdate
-- -------------------------------------------------------

function core.BNPluginUpdate(
		p
)
	return cdefs.C.BNPluginUpdate(p)
end

-- -------------------------------------------------------
-- BNPostProcessDisassemblyTextRendererLines
-- -------------------------------------------------------

function core.BNPostProcessDisassemblyTextRendererLines(
		renderer, 
		addr, 
		len, 
		inLines, 
		inCount, 
		outCount, 
		indentSpaces
)
	local result = cdefs.C.BNPostProcessDisassemblyTextRendererLines(renderer, addr, len, inLines, inCount, outCount, indentSpaces)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNPrepareToCopyLowLevelILBasicBlock
-- -------------------------------------------------------

function core.BNPrepareToCopyLowLevelILBasicBlock(
		func, 
		block
)
	return cdefs.C.BNPrepareToCopyLowLevelILBasicBlock(func, block)
end

-- -------------------------------------------------------
-- BNPrepareToCopyLowLevelILFunction
-- -------------------------------------------------------

function core.BNPrepareToCopyLowLevelILFunction(
		func, 
		src
)
	return cdefs.C.BNPrepareToCopyLowLevelILFunction(func, src)
end

-- -------------------------------------------------------
-- BNPrepareToCopyMediumLevelILBasicBlock
-- -------------------------------------------------------

function core.BNPrepareToCopyMediumLevelILBasicBlock(
		func, 
		block
)
	return cdefs.C.BNPrepareToCopyMediumLevelILBasicBlock(func, block)
end

-- -------------------------------------------------------
-- BNPrepareToCopyMediumLevelILFunction
-- -------------------------------------------------------

function core.BNPrepareToCopyMediumLevelILFunction(
		func, 
		src
)
	return cdefs.C.BNPrepareToCopyMediumLevelILFunction(func, src)
end

-- -------------------------------------------------------
-- BNPreprocessSource
-- -------------------------------------------------------

function core.BNPreprocessSource(
		source, 
		fileName, 
		output, 
		errors, 
		includeDirs, 
		includeDirCount
)
	return cdefs.C.BNPreprocessSource(source, fileName, output, errors, includeDirs, includeDirCount)
end

-- -------------------------------------------------------
-- BNProcessSymbolQueue
-- -------------------------------------------------------

function core.BNProcessSymbolQueue(
		queue
)
	return cdefs.C.BNProcessSymbolQueue(queue)
end

-- -------------------------------------------------------
-- BNRangeContainsRelocation
-- -------------------------------------------------------

function core.BNRangeContainsRelocation(
		view, 
		addr, 
		size
)
	return cdefs.C.BNRangeContainsRelocation(view, addr, size)
end

-- -------------------------------------------------------
-- BNRead16
-- -------------------------------------------------------

function core.BNRead16(
		stream, 
		result
)
	return cdefs.C.BNRead16(stream, result)
end

-- -------------------------------------------------------
-- BNRead32
-- -------------------------------------------------------

function core.BNRead32(
		stream, 
		result
)
	return cdefs.C.BNRead32(stream, result)
end

-- -------------------------------------------------------
-- BNRead64
-- -------------------------------------------------------

function core.BNRead64(
		stream, 
		result
)
	return cdefs.C.BNRead64(stream, result)
end

-- -------------------------------------------------------
-- BNRead8
-- -------------------------------------------------------

function core.BNRead8(
		stream, 
		result
)
	return cdefs.C.BNRead8(stream, result)
end

-- -------------------------------------------------------
-- BNReadBE16
-- -------------------------------------------------------

function core.BNReadBE16(
		stream, 
		result
)
	return cdefs.C.BNReadBE16(stream, result)
end

-- -------------------------------------------------------
-- BNReadBE32
-- -------------------------------------------------------

function core.BNReadBE32(
		stream, 
		result
)
	return cdefs.C.BNReadBE32(stream, result)
end

-- -------------------------------------------------------
-- BNReadBE64
-- -------------------------------------------------------

function core.BNReadBE64(
		stream, 
		result
)
	return cdefs.C.BNReadBE64(stream, result)
end

-- -------------------------------------------------------
-- BNReadData
-- -------------------------------------------------------

function core.BNReadData(
		stream, 
		dest, 
		len
)
	return cdefs.C.BNReadData(stream, dest, len)
end

-- -------------------------------------------------------
-- BNReadDataForDownloadInstance
-- -------------------------------------------------------

function core.BNReadDataForDownloadInstance(
		instance, 
		data, 
		len
)
	return cdefs.C.BNReadDataForDownloadInstance(instance, data, len)
end

-- -------------------------------------------------------
-- BNReadDatabaseAnalysisCache
-- -------------------------------------------------------

function core.BNReadDatabaseAnalysisCache(
		database
)
	local result = cdefs.C.BNReadDatabaseAnalysisCache(database)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNReadDatabaseGlobal
-- -------------------------------------------------------

function core.BNReadDatabaseGlobal(
		database, 
		key
)
	local result = cdefs.C.BNReadDatabaseGlobal(database, key)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNReadDatabaseGlobalData
-- -------------------------------------------------------

function core.BNReadDatabaseGlobalData(
		database, 
		key
)
	local result = cdefs.C.BNReadDatabaseGlobalData(database, key)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNReadLE16
-- -------------------------------------------------------

function core.BNReadLE16(
		stream, 
		result
)
	return cdefs.C.BNReadLE16(stream, result)
end

-- -------------------------------------------------------
-- BNReadLE32
-- -------------------------------------------------------

function core.BNReadLE32(
		stream, 
		result
)
	return cdefs.C.BNReadLE32(stream, result)
end

-- -------------------------------------------------------
-- BNReadLE64
-- -------------------------------------------------------

function core.BNReadLE64(
		stream, 
		result
)
	return cdefs.C.BNReadLE64(stream, result)
end

-- -------------------------------------------------------
-- BNReadSnapshotData
-- -------------------------------------------------------

function core.BNReadSnapshotData(
		snapshot
)
	local result = cdefs.C.BNReadSnapshotData(snapshot)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNReadSnapshotDataWithProgress
-- -------------------------------------------------------

function core.BNReadSnapshotDataWithProgress(
		snapshot, 
		ctxt, 
		progress
)
	local result = cdefs.C.BNReadSnapshotDataWithProgress(snapshot, ctxt, progress)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNReadViewBuffer
-- -------------------------------------------------------

function core.BNReadViewBuffer(
		view, 
		offset, 
		len
)
	local result = cdefs.C.BNReadViewBuffer(view, offset, len)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNReadViewData
-- -------------------------------------------------------

function core.BNReadViewData(
		view, 
		dest, 
		offset, 
		len
)
	return cdefs.C.BNReadViewData(view, dest, offset, len)
end

-- -------------------------------------------------------
-- BNReanalyzeAllFunctions
-- -------------------------------------------------------

function core.BNReanalyzeAllFunctions(
		view
)
	return cdefs.C.BNReanalyzeAllFunctions(view)
end

-- -------------------------------------------------------
-- BNReanalyzeFunction
-- -------------------------------------------------------

function core.BNReanalyzeFunction(
		func, 
		type
)
	return cdefs.C.BNReanalyzeFunction(func, type)
end

-- -------------------------------------------------------
-- BNRebase
-- -------------------------------------------------------

function core.BNRebase(
		data, 
		address
)
	return cdefs.C.BNRebase(data, address)
end

-- -------------------------------------------------------
-- BNRebaseWithProgress
-- -------------------------------------------------------

function core.BNRebaseWithProgress(
		data, 
		address, 
		ctxt, 
		progress
)
	return cdefs.C.BNRebaseWithProgress(data, address, ctxt, progress)
end

-- -------------------------------------------------------
-- BNRecognizePlatformForViewType
-- -------------------------------------------------------

function core.BNRecognizePlatformForViewType(
		type, 
		id, 
		endian, 
		view, 
		metadata
)
	local result = cdefs.C.BNRecognizePlatformForViewType(type, id, endian, view, metadata)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRedo
-- -------------------------------------------------------

function core.BNRedo(
		file
)
	return cdefs.C.BNRedo(file)
end

-- -------------------------------------------------------
-- BNRegisterArchitecture
-- -------------------------------------------------------

function core.BNRegisterArchitecture(
		name, 
		arch
)
	local result = cdefs.C.BNRegisterArchitecture(name, arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterArchitectureExtension
-- -------------------------------------------------------

function core.BNRegisterArchitectureExtension(
		name, 
		base, 
		arch
)
	local result = cdefs.C.BNRegisterArchitectureExtension(name, base, arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterArchitectureForViewType
-- -------------------------------------------------------

function core.BNRegisterArchitectureForViewType(
		type, 
		id, 
		endian, 
		arch
)
	return cdefs.C.BNRegisterArchitectureForViewType(type, id, endian, arch)
end

-- -------------------------------------------------------
-- BNRegisterArchitectureFunctionRecognizer
-- -------------------------------------------------------

function core.BNRegisterArchitectureFunctionRecognizer(
		arch, 
		rec
)
	return cdefs.C.BNRegisterArchitectureFunctionRecognizer(arch, rec)
end

-- -------------------------------------------------------
-- BNRegisterArchitectureHook
-- -------------------------------------------------------

function core.BNRegisterArchitectureHook(
		base, 
		arch
)
	local result = cdefs.C.BNRegisterArchitectureHook(base, arch)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterBinaryViewEvent
-- -------------------------------------------------------

function core.BNRegisterBinaryViewEvent(
		type, 
		callback, 
		ctx
)
	return cdefs.C.BNRegisterBinaryViewEvent(type, callback, ctx)
end

-- -------------------------------------------------------
-- BNRegisterBinaryViewType
-- -------------------------------------------------------

function core.BNRegisterBinaryViewType(
		name, 
		longName, 
		type
)
	local result = cdefs.C.BNRegisterBinaryViewType(name, longName, type)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterCallingConvention
-- -------------------------------------------------------

function core.BNRegisterCallingConvention(
		arch, 
		cc
)
	return cdefs.C.BNRegisterCallingConvention(arch, cc)
end

-- -------------------------------------------------------
-- BNRegisterDataNotification
-- -------------------------------------------------------

function core.BNRegisterDataNotification(
		view, 
		notify
)
	return cdefs.C.BNRegisterDataNotification(view, notify)
end

-- -------------------------------------------------------
-- BNRegisterDebugInfoParser
-- -------------------------------------------------------

function core.BNRegisterDebugInfoParser(
		name, 
		isValid, 
		parseInfo, 
		context
)
	local result = cdefs.C.BNRegisterDebugInfoParser(name, isValid, parseInfo, context)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterDefaultPlatformForViewType
-- -------------------------------------------------------

function core.BNRegisterDefaultPlatformForViewType(
		type, 
		arch, 
		platform
)
	return cdefs.C.BNRegisterDefaultPlatformForViewType(type, arch, platform)
end

-- -------------------------------------------------------
-- BNRegisterDownloadProvider
-- -------------------------------------------------------

function core.BNRegisterDownloadProvider(
		name, 
		callbacks
)
	local result = cdefs.C.BNRegisterDownloadProvider(name, callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterEnterpriseServerNotification
-- -------------------------------------------------------

function core.BNRegisterEnterpriseServerNotification(
		notify
)
	return cdefs.C.BNRegisterEnterpriseServerNotification(notify)
end

-- -------------------------------------------------------
-- BNRegisterGenericDataRenderer
-- -------------------------------------------------------

function core.BNRegisterGenericDataRenderer(
		container, 
		renderer
)
	return cdefs.C.BNRegisterGenericDataRenderer(container, renderer)
end

-- -------------------------------------------------------
-- BNRegisterGlobalFunctionRecognizer
-- -------------------------------------------------------

function core.BNRegisterGlobalFunctionRecognizer(
		rec
)
	return cdefs.C.BNRegisterGlobalFunctionRecognizer(rec)
end

-- -------------------------------------------------------
-- BNRegisterInteractionHandler
-- -------------------------------------------------------

function core.BNRegisterInteractionHandler(
		callbacks
)
	return cdefs.C.BNRegisterInteractionHandler(callbacks)
end

-- -------------------------------------------------------
-- BNRegisterLogListener
-- -------------------------------------------------------

function core.BNRegisterLogListener(
		listener
)
	return cdefs.C.BNRegisterLogListener(listener)
end

-- -------------------------------------------------------
-- BNRegisterMainThread
-- -------------------------------------------------------

function core.BNRegisterMainThread(
		callbacks
)
	return cdefs.C.BNRegisterMainThread(callbacks)
end

-- -------------------------------------------------------
-- BNRegisterObjectDestructionCallbacks
-- -------------------------------------------------------

function core.BNRegisterObjectDestructionCallbacks(
		callbacks
)
	return cdefs.C.BNRegisterObjectDestructionCallbacks(callbacks)
end

-- -------------------------------------------------------
-- BNRegisterObjectRefDebugTrace
-- -------------------------------------------------------

function core.BNRegisterObjectRefDebugTrace(
		typeName
)
	local result = cdefs.C.BNRegisterObjectRefDebugTrace(typeName)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterPlatform
-- -------------------------------------------------------

function core.BNRegisterPlatform(
		os, 
		platform
)
	return cdefs.C.BNRegisterPlatform(os, platform)
end

-- -------------------------------------------------------
-- BNRegisterPlatformCallingConvention
-- -------------------------------------------------------

function core.BNRegisterPlatformCallingConvention(
		platform, 
		cc
)
	return cdefs.C.BNRegisterPlatformCallingConvention(platform, cc)
end

-- -------------------------------------------------------
-- BNRegisterPlatformCdeclCallingConvention
-- -------------------------------------------------------

function core.BNRegisterPlatformCdeclCallingConvention(
		platform, 
		cc
)
	return cdefs.C.BNRegisterPlatformCdeclCallingConvention(platform, cc)
end

-- -------------------------------------------------------
-- BNRegisterPlatformDefaultCallingConvention
-- -------------------------------------------------------

function core.BNRegisterPlatformDefaultCallingConvention(
		platform, 
		cc
)
	return cdefs.C.BNRegisterPlatformDefaultCallingConvention(platform, cc)
end

-- -------------------------------------------------------
-- BNRegisterPlatformFastcallCallingConvention
-- -------------------------------------------------------

function core.BNRegisterPlatformFastcallCallingConvention(
		platform, 
		cc
)
	return cdefs.C.BNRegisterPlatformFastcallCallingConvention(platform, cc)
end

-- -------------------------------------------------------
-- BNRegisterPlatformForViewType
-- -------------------------------------------------------

function core.BNRegisterPlatformForViewType(
		type, 
		id, 
		arch, 
		platform
)
	return cdefs.C.BNRegisterPlatformForViewType(type, id, arch, platform)
end

-- -------------------------------------------------------
-- BNRegisterPlatformRecognizerForViewType
-- -------------------------------------------------------

function core.BNRegisterPlatformRecognizerForViewType(
		type, 
		id, 
		endian, 
		callback, 
		ctx
)
	return cdefs.C.BNRegisterPlatformRecognizerForViewType(type, id, endian, callback, ctx)
end

-- -------------------------------------------------------
-- BNRegisterPlatformStdcallCallingConvention
-- -------------------------------------------------------

function core.BNRegisterPlatformStdcallCallingConvention(
		platform, 
		cc
)
	return cdefs.C.BNRegisterPlatformStdcallCallingConvention(platform, cc)
end

-- -------------------------------------------------------
-- BNRegisterPlatformTypes
-- -------------------------------------------------------

function core.BNRegisterPlatformTypes(
		view, 
		platform
)
	return cdefs.C.BNRegisterPlatformTypes(view, platform)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommand
-- -------------------------------------------------------

function core.BNRegisterPluginCommand(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommand(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommandForAddress
-- -------------------------------------------------------

function core.BNRegisterPluginCommandForAddress(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommandForAddress(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommandForFunction
-- -------------------------------------------------------

function core.BNRegisterPluginCommandForFunction(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommandForFunction(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommandForHighLevelILFunction
-- -------------------------------------------------------

function core.BNRegisterPluginCommandForHighLevelILFunction(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommandForHighLevelILFunction(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommandForHighLevelILInstruction
-- -------------------------------------------------------

function core.BNRegisterPluginCommandForHighLevelILInstruction(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommandForHighLevelILInstruction(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommandForLowLevelILFunction
-- -------------------------------------------------------

function core.BNRegisterPluginCommandForLowLevelILFunction(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommandForLowLevelILFunction(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommandForLowLevelILInstruction
-- -------------------------------------------------------

function core.BNRegisterPluginCommandForLowLevelILInstruction(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommandForLowLevelILInstruction(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommandForMediumLevelILFunction
-- -------------------------------------------------------

function core.BNRegisterPluginCommandForMediumLevelILFunction(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommandForMediumLevelILFunction(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommandForMediumLevelILInstruction
-- -------------------------------------------------------

function core.BNRegisterPluginCommandForMediumLevelILInstruction(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommandForMediumLevelILInstruction(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterPluginCommandForRange
-- -------------------------------------------------------

function core.BNRegisterPluginCommandForRange(
		name, 
		description, 
		action, 
		isValid, 
		context
)
	return cdefs.C.BNRegisterPluginCommandForRange(name, description, action, isValid, context)
end

-- -------------------------------------------------------
-- BNRegisterScriptingInstanceOutputListener
-- -------------------------------------------------------

function core.BNRegisterScriptingInstanceOutputListener(
		instance, 
		callbacks
)
	return cdefs.C.BNRegisterScriptingInstanceOutputListener(instance, callbacks)
end

-- -------------------------------------------------------
-- BNRegisterScriptingProvider
-- -------------------------------------------------------

function core.BNRegisterScriptingProvider(
		name, 
		apiName, 
		callbacks
)
	local result = cdefs.C.BNRegisterScriptingProvider(name, apiName, callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterSecretsProvider
-- -------------------------------------------------------

function core.BNRegisterSecretsProvider(
		name, 
		callbacks
)
	local result = cdefs.C.BNRegisterSecretsProvider(name, callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterTransformType
-- -------------------------------------------------------

function core.BNRegisterTransformType(
		type, 
		name, 
		longName, 
		group, 
		xform
)
	local result = cdefs.C.BNRegisterTransformType(type, name, longName, group, xform)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterTypeParser
-- -------------------------------------------------------

function core.BNRegisterTypeParser(
		name, 
		callbacks
)
	local result = cdefs.C.BNRegisterTypeParser(name, callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterTypePrinter
-- -------------------------------------------------------

function core.BNRegisterTypePrinter(
		name, 
		callbacks
)
	local result = cdefs.C.BNRegisterTypePrinter(name, callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterTypeSpecificDataRenderer
-- -------------------------------------------------------

function core.BNRegisterTypeSpecificDataRenderer(
		container, 
		renderer
)
	return cdefs.C.BNRegisterTypeSpecificDataRenderer(container, renderer)
end

-- -------------------------------------------------------
-- BNRegisterWebsocketProvider
-- -------------------------------------------------------

function core.BNRegisterWebsocketProvider(
		name, 
		callbacks
)
	local result = cdefs.C.BNRegisterWebsocketProvider(name, callbacks)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRegisterWorkflow
-- -------------------------------------------------------

function core.BNRegisterWorkflow(
		workflow, 
		description
)
	return cdefs.C.BNRegisterWorkflow(workflow, description)
end

-- -------------------------------------------------------
-- BNReleaseAdvancedFunctionAnalysisData
-- -------------------------------------------------------

function core.BNReleaseAdvancedFunctionAnalysisData(
		func
)
	return cdefs.C.BNReleaseAdvancedFunctionAnalysisData(func)
end

-- -------------------------------------------------------
-- BNReleaseAdvancedFunctionAnalysisDataMultiple
-- -------------------------------------------------------

function core.BNReleaseAdvancedFunctionAnalysisDataMultiple(
		func, 
		count
)
	return cdefs.C.BNReleaseAdvancedFunctionAnalysisDataMultiple(func, count)
end

-- -------------------------------------------------------
-- BNReleaseEnterpriseServerLicense
-- -------------------------------------------------------

function core.BNReleaseEnterpriseServerLicense(
)
	return cdefs.C.BNReleaseEnterpriseServerLicense()
end

-- -------------------------------------------------------
-- BNRelocationGetArchitecture
-- -------------------------------------------------------

function core.BNRelocationGetArchitecture(
		reloc
)
	local result = cdefs.C.BNRelocationGetArchitecture(reloc)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRelocationGetInfo
-- -------------------------------------------------------

function core.BNRelocationGetInfo(
		reloc
)
	return cdefs.C.BNRelocationGetInfo(reloc)
end

-- -------------------------------------------------------
-- BNRelocationGetReloc
-- -------------------------------------------------------

function core.BNRelocationGetReloc(
		reloc
)
	return cdefs.C.BNRelocationGetReloc(reloc)
end

-- -------------------------------------------------------
-- BNRelocationGetSymbol
-- -------------------------------------------------------

function core.BNRelocationGetSymbol(
		reloc
)
	local result = cdefs.C.BNRelocationGetSymbol(reloc)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRelocationGetTarget
-- -------------------------------------------------------

function core.BNRelocationGetTarget(
		reloc
)
	return cdefs.C.BNRelocationGetTarget(reloc)
end

-- -------------------------------------------------------
-- BNRelocationHandlerApplyRelocation
-- -------------------------------------------------------

function core.BNRelocationHandlerApplyRelocation(
		handler, 
		view, 
		arch, 
		reloc, 
		dest, 
		len
)
	return cdefs.C.BNRelocationHandlerApplyRelocation(handler, view, arch, reloc, dest, len)
end

-- -------------------------------------------------------
-- BNRelocationHandlerDefaultApplyRelocation
-- -------------------------------------------------------

function core.BNRelocationHandlerDefaultApplyRelocation(
		handler, 
		view, 
		arch, 
		reloc, 
		dest, 
		len
)
	return cdefs.C.BNRelocationHandlerDefaultApplyRelocation(handler, view, arch, reloc, dest, len)
end

-- -------------------------------------------------------
-- BNRelocationHandlerGetOperandForExternalRelocation
-- -------------------------------------------------------

function core.BNRelocationHandlerGetOperandForExternalRelocation(
		handler, 
		data, 
		addr, 
		length, 
		il, 
		relocation
)
	return cdefs.C.BNRelocationHandlerGetOperandForExternalRelocation(handler, data, addr, length, il, relocation)
end

-- -------------------------------------------------------
-- BNRelocationHandlerGetRelocationInfo
-- -------------------------------------------------------

function core.BNRelocationHandlerGetRelocationInfo(
		handler, 
		data, 
		arch, 
		info, 
		infoCount
)
	return cdefs.C.BNRelocationHandlerGetRelocationInfo(handler, data, arch, info, infoCount)
end

-- -------------------------------------------------------
-- BNRemoveAnalysisFunction
-- -------------------------------------------------------

function core.BNRemoveAnalysisFunction(
		view, 
		func, 
		updateRefs
)
	return cdefs.C.BNRemoveAnalysisFunction(view, func, updateRefs)
end

-- -------------------------------------------------------
-- BNRemoveAutoAddressTag
-- -------------------------------------------------------

function core.BNRemoveAutoAddressTag(
		func, 
		arch, 
		addr, 
		tag
)
	return cdefs.C.BNRemoveAutoAddressTag(func, arch, addr, tag)
end

-- -------------------------------------------------------
-- BNRemoveAutoAddressTagsOfType
-- -------------------------------------------------------

function core.BNRemoveAutoAddressTagsOfType(
		func, 
		arch, 
		addr, 
		tagType
)
	return cdefs.C.BNRemoveAutoAddressTagsOfType(func, arch, addr, tagType)
end

-- -------------------------------------------------------
-- BNRemoveAutoDataTag
-- -------------------------------------------------------

function core.BNRemoveAutoDataTag(
		view, 
		addr, 
		tag
)
	return cdefs.C.BNRemoveAutoDataTag(view, addr, tag)
end

-- -------------------------------------------------------
-- BNRemoveAutoDataTagsOfType
-- -------------------------------------------------------

function core.BNRemoveAutoDataTagsOfType(
		view, 
		addr, 
		tagType
)
	return cdefs.C.BNRemoveAutoDataTagsOfType(view, addr, tagType)
end

-- -------------------------------------------------------
-- BNRemoveAutoFunctionTag
-- -------------------------------------------------------

function core.BNRemoveAutoFunctionTag(
		func, 
		tag
)
	return cdefs.C.BNRemoveAutoFunctionTag(func, tag)
end

-- -------------------------------------------------------
-- BNRemoveAutoFunctionTagsOfType
-- -------------------------------------------------------

function core.BNRemoveAutoFunctionTagsOfType(
		func, 
		tagType
)
	return cdefs.C.BNRemoveAutoFunctionTagsOfType(func, tagType)
end

-- -------------------------------------------------------
-- BNRemoveAutoSection
-- -------------------------------------------------------

function core.BNRemoveAutoSection(
		view, 
		name
)
	return cdefs.C.BNRemoveAutoSection(view, name)
end

-- -------------------------------------------------------
-- BNRemoveAutoSegment
-- -------------------------------------------------------

function core.BNRemoveAutoSegment(
		view, 
		start, 
		length
)
	return cdefs.C.BNRemoveAutoSegment(view, start, length)
end

-- -------------------------------------------------------
-- BNRemoveComponent
-- -------------------------------------------------------

function core.BNRemoveComponent(
		view, 
		component
)
	return cdefs.C.BNRemoveComponent(view, component)
end

-- -------------------------------------------------------
-- BNRemoveComponentByGuid
-- -------------------------------------------------------

function core.BNRemoveComponentByGuid(
		view, 
		guid
)
	return cdefs.C.BNRemoveComponentByGuid(view, guid)
end

-- -------------------------------------------------------
-- BNRemoveDatabaseSnapshot
-- -------------------------------------------------------

function core.BNRemoveDatabaseSnapshot(
		database, 
		id
)
	return cdefs.C.BNRemoveDatabaseSnapshot(database, id)
end

-- -------------------------------------------------------
-- BNRemoveDebugDataVariableByAddress
-- -------------------------------------------------------

function core.BNRemoveDebugDataVariableByAddress(
		debugInfo, 
		parserName, 
		address
)
	return cdefs.C.BNRemoveDebugDataVariableByAddress(debugInfo, parserName, address)
end

-- -------------------------------------------------------
-- BNRemoveDebugFunctionByIndex
-- -------------------------------------------------------

function core.BNRemoveDebugFunctionByIndex(
		debugInfo, 
		parserName, 
		index
)
	return cdefs.C.BNRemoveDebugFunctionByIndex(debugInfo, parserName, index)
end

-- -------------------------------------------------------
-- BNRemoveDebugParserDataVariables
-- -------------------------------------------------------

function core.BNRemoveDebugParserDataVariables(
		debugInfo, 
		parserName
)
	return cdefs.C.BNRemoveDebugParserDataVariables(debugInfo, parserName)
end

-- -------------------------------------------------------
-- BNRemoveDebugParserFunctions
-- -------------------------------------------------------

function core.BNRemoveDebugParserFunctions(
		debugInfo, 
		parserName
)
	return cdefs.C.BNRemoveDebugParserFunctions(debugInfo, parserName)
end

-- -------------------------------------------------------
-- BNRemoveDebugParserInfo
-- -------------------------------------------------------

function core.BNRemoveDebugParserInfo(
		debugInfo, 
		parserName
)
	return cdefs.C.BNRemoveDebugParserInfo(debugInfo, parserName)
end

-- -------------------------------------------------------
-- BNRemoveDebugParserTypes
-- -------------------------------------------------------

function core.BNRemoveDebugParserTypes(
		debugInfo, 
		parserName
)
	return cdefs.C.BNRemoveDebugParserTypes(debugInfo, parserName)
end

-- -------------------------------------------------------
-- BNRemoveDebugTypeByName
-- -------------------------------------------------------

function core.BNRemoveDebugTypeByName(
		debugInfo, 
		parserName, 
		typeName
)
	return cdefs.C.BNRemoveDebugTypeByName(debugInfo, parserName, typeName)
end

-- -------------------------------------------------------
-- BNRemoveEnumerationBuilderMember
-- -------------------------------------------------------

function core.BNRemoveEnumerationBuilderMember(
		e, 
		idx
)
	return cdefs.C.BNRemoveEnumerationBuilderMember(e, idx)
end

-- -------------------------------------------------------
-- BNRemoveExpressionParserMagicValue
-- -------------------------------------------------------

function core.BNRemoveExpressionParserMagicValue(
		view, 
		name
)
	return cdefs.C.BNRemoveExpressionParserMagicValue(view, name)
end

-- -------------------------------------------------------
-- BNRemoveExpressionParserMagicValues
-- -------------------------------------------------------

function core.BNRemoveExpressionParserMagicValues(
		view, 
		names, 
		count
)
	return cdefs.C.BNRemoveExpressionParserMagicValues(view, names, count)
end

-- -------------------------------------------------------
-- BNRemoveStructureBuilderMember
-- -------------------------------------------------------

function core.BNRemoveStructureBuilderMember(
		s, 
		idx
)
	return cdefs.C.BNRemoveStructureBuilderMember(s, idx)
end

-- -------------------------------------------------------
-- BNRemoveTag
-- -------------------------------------------------------

function core.BNRemoveTag(
		view, 
		tag, 
		user
)
	return cdefs.C.BNRemoveTag(view, tag, user)
end

-- -------------------------------------------------------
-- BNRemoveTagReference
-- -------------------------------------------------------

function core.BNRemoveTagReference(
		view, 
		ref
)
	return cdefs.C.BNRemoveTagReference(view, ref)
end

-- -------------------------------------------------------
-- BNRemoveTagType
-- -------------------------------------------------------

function core.BNRemoveTagType(
		view, 
		tagType
)
	return cdefs.C.BNRemoveTagType(view, tagType)
end

-- -------------------------------------------------------
-- BNRemoveUserAddressTag
-- -------------------------------------------------------

function core.BNRemoveUserAddressTag(
		func, 
		arch, 
		addr, 
		tag
)
	return cdefs.C.BNRemoveUserAddressTag(func, arch, addr, tag)
end

-- -------------------------------------------------------
-- BNRemoveUserAddressTagsOfType
-- -------------------------------------------------------

function core.BNRemoveUserAddressTagsOfType(
		func, 
		arch, 
		addr, 
		tagType
)
	return cdefs.C.BNRemoveUserAddressTagsOfType(func, arch, addr, tagType)
end

-- -------------------------------------------------------
-- BNRemoveUserCodeReference
-- -------------------------------------------------------

function core.BNRemoveUserCodeReference(
		func, 
		fromArch, 
		fromAddr, 
		toAddr
)
	return cdefs.C.BNRemoveUserCodeReference(func, fromArch, fromAddr, toAddr)
end

-- -------------------------------------------------------
-- BNRemoveUserDataReference
-- -------------------------------------------------------

function core.BNRemoveUserDataReference(
		view, 
		fromAddr, 
		toAddr
)
	return cdefs.C.BNRemoveUserDataReference(view, fromAddr, toAddr)
end

-- -------------------------------------------------------
-- BNRemoveUserDataTag
-- -------------------------------------------------------

function core.BNRemoveUserDataTag(
		view, 
		addr, 
		tag
)
	return cdefs.C.BNRemoveUserDataTag(view, addr, tag)
end

-- -------------------------------------------------------
-- BNRemoveUserDataTagsOfType
-- -------------------------------------------------------

function core.BNRemoveUserDataTagsOfType(
		view, 
		addr, 
		tagType
)
	return cdefs.C.BNRemoveUserDataTagsOfType(view, addr, tagType)
end

-- -------------------------------------------------------
-- BNRemoveUserFunction
-- -------------------------------------------------------

function core.BNRemoveUserFunction(
		view, 
		func
)
	return cdefs.C.BNRemoveUserFunction(view, func)
end

-- -------------------------------------------------------
-- BNRemoveUserFunctionTag
-- -------------------------------------------------------

function core.BNRemoveUserFunctionTag(
		func, 
		tag
)
	return cdefs.C.BNRemoveUserFunctionTag(func, tag)
end

-- -------------------------------------------------------
-- BNRemoveUserFunctionTagsOfType
-- -------------------------------------------------------

function core.BNRemoveUserFunctionTagsOfType(
		func, 
		tagType
)
	return cdefs.C.BNRemoveUserFunctionTagsOfType(func, tagType)
end

-- -------------------------------------------------------
-- BNRemoveUserSection
-- -------------------------------------------------------

function core.BNRemoveUserSection(
		view, 
		name
)
	return cdefs.C.BNRemoveUserSection(view, name)
end

-- -------------------------------------------------------
-- BNRemoveUserSegment
-- -------------------------------------------------------

function core.BNRemoveUserSegment(
		view, 
		start, 
		length
)
	return cdefs.C.BNRemoveUserSegment(view, start, length)
end

-- -------------------------------------------------------
-- BNRemoveUserTypeFieldReference
-- -------------------------------------------------------

function core.BNRemoveUserTypeFieldReference(
		func, 
		fromArch, 
		fromAddr, 
		name, 
		offset, 
		size
)
	return cdefs.C.BNRemoveUserTypeFieldReference(func, fromArch, fromAddr, name, offset, size)
end

-- -------------------------------------------------------
-- BNRemoveUserTypeReference
-- -------------------------------------------------------

function core.BNRemoveUserTypeReference(
		func, 
		fromArch, 
		fromAddr, 
		name
)
	return cdefs.C.BNRemoveUserTypeReference(func, fromArch, fromAddr, name)
end

-- -------------------------------------------------------
-- BNRemoveViewData
-- -------------------------------------------------------

function core.BNRemoveViewData(
		view, 
		offset, 
		len
)
	return cdefs.C.BNRemoveViewData(view, offset, len)
end

-- -------------------------------------------------------
-- BNRenameAnalysisType
-- -------------------------------------------------------

function core.BNRenameAnalysisType(
		view, 
		oldName, 
		newName
)
	return cdefs.C.BNRenameAnalysisType(view, oldName, newName)
end

-- -------------------------------------------------------
-- BNRenameFile
-- -------------------------------------------------------

function core.BNRenameFile(
		source, 
		dest
)
	return cdefs.C.BNRenameFile(source, dest)
end

-- -------------------------------------------------------
-- BNRenderLinesForData
-- -------------------------------------------------------

function core.BNRenderLinesForData(
		data, 
		addr, 
		type, 
		prefix, 
		prefixCount, 
		width, 
		count, 
		typeCtx, 
		ctxCount
)
	local result = cdefs.C.BNRenderLinesForData(data, addr, type, prefix, prefixCount, width, count, typeCtx, ctxCount)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNReplaceEnumerationBuilderMember
-- -------------------------------------------------------

function core.BNReplaceEnumerationBuilderMember(
		e, 
		idx, 
		name, 
		value
)
	return cdefs.C.BNReplaceEnumerationBuilderMember(e, idx, name, value)
end

-- -------------------------------------------------------
-- BNReplaceHighLevelILExpr
-- -------------------------------------------------------

function core.BNReplaceHighLevelILExpr(
		func, 
		expr, 
		newExpr
)
	return cdefs.C.BNReplaceHighLevelILExpr(func, expr, newExpr)
end

-- -------------------------------------------------------
-- BNReplaceLowLevelILExpr
-- -------------------------------------------------------

function core.BNReplaceLowLevelILExpr(
		func, 
		expr, 
		newExpr
)
	return cdefs.C.BNReplaceLowLevelILExpr(func, expr, newExpr)
end

-- -------------------------------------------------------
-- BNReplaceMediumLevelILExpr
-- -------------------------------------------------------

function core.BNReplaceMediumLevelILExpr(
		func, 
		expr, 
		newExpr
)
	return cdefs.C.BNReplaceMediumLevelILExpr(func, expr, newExpr)
end

-- -------------------------------------------------------
-- BNReplaceMediumLevelILInstruction
-- -------------------------------------------------------

function core.BNReplaceMediumLevelILInstruction(
		func, 
		instr, 
		expr
)
	return cdefs.C.BNReplaceMediumLevelILInstruction(func, instr, expr)
end

-- -------------------------------------------------------
-- BNReplaceStructureBuilderMember
-- -------------------------------------------------------

function core.BNReplaceStructureBuilderMember(
		s, 
		idx, 
		type, 
		name, 
		overwriteExisting
)
	return cdefs.C.BNReplaceStructureBuilderMember(s, idx, type, name, overwriteExisting)
end

-- -------------------------------------------------------
-- BNRepositoryFreePluginDirectoryList
-- -------------------------------------------------------

function core.BNRepositoryFreePluginDirectoryList(
		list, 
		count
)
	return cdefs.C.BNRepositoryFreePluginDirectoryList(list, count)
end

-- -------------------------------------------------------
-- BNRepositoryGetPluginByPath
-- -------------------------------------------------------

function core.BNRepositoryGetPluginByPath(
		r, 
		pluginPath
)
	local result = cdefs.C.BNRepositoryGetPluginByPath(r, pluginPath)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRepositoryGetPlugins
-- -------------------------------------------------------

function core.BNRepositoryGetPlugins(
		r, 
		count
)
	local result = cdefs.C.BNRepositoryGetPlugins(r, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRepositoryGetPluginsPath
-- -------------------------------------------------------

function core.BNRepositoryGetPluginsPath(
		r
)
	local result = cdefs.C.BNRepositoryGetPluginsPath(r)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNRepositoryGetRepoPath
-- -------------------------------------------------------

function core.BNRepositoryGetRepoPath(
		r
)
	local result = cdefs.C.BNRepositoryGetRepoPath(r)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNRepositoryGetRepositoryByPath
-- -------------------------------------------------------

function core.BNRepositoryGetRepositoryByPath(
		r, 
		repoPath
)
	local result = cdefs.C.BNRepositoryGetRepositoryByPath(r, repoPath)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRepositoryGetUrl
-- -------------------------------------------------------

function core.BNRepositoryGetUrl(
		r
)
	local result = cdefs.C.BNRepositoryGetUrl(r)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNRepositoryManagerAddRepository
-- -------------------------------------------------------

function core.BNRepositoryManagerAddRepository(
		r, 
		url, 
		repoPath
)
	return cdefs.C.BNRepositoryManagerAddRepository(r, url, repoPath)
end

-- -------------------------------------------------------
-- BNRepositoryManagerCheckForUpdates
-- -------------------------------------------------------

function core.BNRepositoryManagerCheckForUpdates(
		r
)
	return cdefs.C.BNRepositoryManagerCheckForUpdates(r)
end

-- -------------------------------------------------------
-- BNRepositoryManagerGetDefaultRepository
-- -------------------------------------------------------

function core.BNRepositoryManagerGetDefaultRepository(
		r
)
	local result = cdefs.C.BNRepositoryManagerGetDefaultRepository(r)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRepositoryManagerGetRepositories
-- -------------------------------------------------------

function core.BNRepositoryManagerGetRepositories(
		r, 
		count
)
	local result = cdefs.C.BNRepositoryManagerGetRepositories(r, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRequestAdvancedFunctionAnalysisData
-- -------------------------------------------------------

function core.BNRequestAdvancedFunctionAnalysisData(
		func
)
	return cdefs.C.BNRequestAdvancedFunctionAnalysisData(func)
end

-- -------------------------------------------------------
-- BNRequestFunctionDebugReport
-- -------------------------------------------------------

function core.BNRequestFunctionDebugReport(
		func, 
		name
)
	return cdefs.C.BNRequestFunctionDebugReport(func, name)
end

-- -------------------------------------------------------
-- BNResetDisassemblyTextRendererDeduplicatedComments
-- -------------------------------------------------------

function core.BNResetDisassemblyTextRendererDeduplicatedComments(
		renderer
)
	return cdefs.C.BNResetDisassemblyTextRendererDeduplicatedComments(renderer)
end

-- -------------------------------------------------------
-- BNRunProgressDialog
-- -------------------------------------------------------

function core.BNRunProgressDialog(
		title, 
		canCancel, 
		task, 
		taskCtxt
)
	return cdefs.C.BNRunProgressDialog(title, canCancel, task, taskCtxt)
end

-- -------------------------------------------------------
-- BNRustFreeString
-- -------------------------------------------------------

function core.BNRustFreeString(
		arg0
)
	return cdefs.C.BNRustFreeString(arg0)
end

-- -------------------------------------------------------
-- BNRustFreeStringArray
-- -------------------------------------------------------

function core.BNRustFreeStringArray(
		arg0, 
		arg1
)
	return cdefs.C.BNRustFreeStringArray(arg0, arg1)
end

-- -------------------------------------------------------
-- BNRustSimplifyStrToFQN
-- -------------------------------------------------------

function core.BNRustSimplifyStrToFQN(
		arg0, 
		arg1
)
	local result = cdefs.C.BNRustSimplifyStrToFQN(arg0, arg1)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNRustSimplifyStrToStr
-- -------------------------------------------------------

function core.BNRustSimplifyStrToStr(
		arg0
)
	local result = cdefs.C.BNRustSimplifyStrToStr(arg0)
	local string = cdefs.string(result)
	core.BNRustFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSaveAutoSnapshot
-- -------------------------------------------------------

function core.BNSaveAutoSnapshot(
		data, 
		settings
)
	return cdefs.C.BNSaveAutoSnapshot(data, settings)
end

-- -------------------------------------------------------
-- BNSaveAutoSnapshotWithProgress
-- -------------------------------------------------------

function core.BNSaveAutoSnapshotWithProgress(
		data, 
		ctxt, 
		progress, 
		settings
)
	return cdefs.C.BNSaveAutoSnapshotWithProgress(data, ctxt, progress, settings)
end

-- -------------------------------------------------------
-- BNSaveLastRun
-- -------------------------------------------------------

function core.BNSaveLastRun(
)
	return cdefs.C.BNSaveLastRun()
end

-- -------------------------------------------------------
-- BNSaveToFile
-- -------------------------------------------------------

function core.BNSaveToFile(
		view, 
		file
)
	return cdefs.C.BNSaveToFile(view, file)
end

-- -------------------------------------------------------
-- BNSaveToFilename
-- -------------------------------------------------------

function core.BNSaveToFilename(
		view, 
		filename
)
	return cdefs.C.BNSaveToFilename(view, filename)
end

-- -------------------------------------------------------
-- BNScriptingInstanceCompleteInput
-- -------------------------------------------------------

function core.BNScriptingInstanceCompleteInput(
		instance, 
		text, 
		state
)
	local result = cdefs.C.BNScriptingInstanceCompleteInput(instance, text, state)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSecretsProviderHasData
-- -------------------------------------------------------

function core.BNSecretsProviderHasData(
		provider, 
		key
)
	return cdefs.C.BNSecretsProviderHasData(provider, key)
end

-- -------------------------------------------------------
-- BNSectionGetAlign
-- -------------------------------------------------------

function core.BNSectionGetAlign(
		section
)
	return cdefs.C.BNSectionGetAlign(section)
end

-- -------------------------------------------------------
-- BNSectionGetEnd
-- -------------------------------------------------------

function core.BNSectionGetEnd(
		section
)
	return cdefs.C.BNSectionGetEnd(section)
end

-- -------------------------------------------------------
-- BNSectionGetEntrySize
-- -------------------------------------------------------

function core.BNSectionGetEntrySize(
		section
)
	return cdefs.C.BNSectionGetEntrySize(section)
end

-- -------------------------------------------------------
-- BNSectionGetInfoData
-- -------------------------------------------------------

function core.BNSectionGetInfoData(
		section
)
	return cdefs.C.BNSectionGetInfoData(section)
end

-- -------------------------------------------------------
-- BNSectionGetInfoSection
-- -------------------------------------------------------

function core.BNSectionGetInfoSection(
		section
)
	local result = cdefs.C.BNSectionGetInfoSection(section)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSectionGetLength
-- -------------------------------------------------------

function core.BNSectionGetLength(
		section
)
	return cdefs.C.BNSectionGetLength(section)
end

-- -------------------------------------------------------
-- BNSectionGetLinkedSection
-- -------------------------------------------------------

function core.BNSectionGetLinkedSection(
		section
)
	local result = cdefs.C.BNSectionGetLinkedSection(section)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSectionGetName
-- -------------------------------------------------------

function core.BNSectionGetName(
		section
)
	local result = cdefs.C.BNSectionGetName(section)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSectionGetSemantics
-- -------------------------------------------------------

function core.BNSectionGetSemantics(
		section
)
	return cdefs.C.BNSectionGetSemantics(section)
end

-- -------------------------------------------------------
-- BNSectionGetStart
-- -------------------------------------------------------

function core.BNSectionGetStart(
		section
)
	return cdefs.C.BNSectionGetStart(section)
end

-- -------------------------------------------------------
-- BNSectionGetType
-- -------------------------------------------------------

function core.BNSectionGetType(
		section
)
	local result = cdefs.C.BNSectionGetType(section)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSectionIsAutoDefined
-- -------------------------------------------------------

function core.BNSectionIsAutoDefined(
		section
)
	return cdefs.C.BNSectionIsAutoDefined(section)
end

-- -------------------------------------------------------
-- BNSeekBinaryReader
-- -------------------------------------------------------

function core.BNSeekBinaryReader(
		stream, 
		offset
)
	return cdefs.C.BNSeekBinaryReader(stream, offset)
end

-- -------------------------------------------------------
-- BNSeekBinaryReaderRelative
-- -------------------------------------------------------

function core.BNSeekBinaryReaderRelative(
		stream, 
		offset
)
	return cdefs.C.BNSeekBinaryReaderRelative(stream, offset)
end

-- -------------------------------------------------------
-- BNSeekBinaryWriter
-- -------------------------------------------------------

function core.BNSeekBinaryWriter(
		stream, 
		offset
)
	return cdefs.C.BNSeekBinaryWriter(stream, offset)
end

-- -------------------------------------------------------
-- BNSeekBinaryWriterRelative
-- -------------------------------------------------------

function core.BNSeekBinaryWriterRelative(
		stream, 
		offset
)
	return cdefs.C.BNSeekBinaryWriterRelative(stream, offset)
end

-- -------------------------------------------------------
-- BNSeekLinearViewCursorToAddress
-- -------------------------------------------------------

function core.BNSeekLinearViewCursorToAddress(
		cursor, 
		addr
)
	return cdefs.C.BNSeekLinearViewCursorToAddress(cursor, addr)
end

-- -------------------------------------------------------
-- BNSeekLinearViewCursorToBegin
-- -------------------------------------------------------

function core.BNSeekLinearViewCursorToBegin(
		cursor
)
	return cdefs.C.BNSeekLinearViewCursorToBegin(cursor)
end

-- -------------------------------------------------------
-- BNSeekLinearViewCursorToCursorPath
-- -------------------------------------------------------

function core.BNSeekLinearViewCursorToCursorPath(
		cursor, 
		path
)
	return cdefs.C.BNSeekLinearViewCursorToCursorPath(cursor, path)
end

-- -------------------------------------------------------
-- BNSeekLinearViewCursorToCursorPathAndAddress
-- -------------------------------------------------------

function core.BNSeekLinearViewCursorToCursorPathAndAddress(
		cursor, 
		path, 
		addr
)
	return cdefs.C.BNSeekLinearViewCursorToCursorPathAndAddress(cursor, path, addr)
end

-- -------------------------------------------------------
-- BNSeekLinearViewCursorToEnd
-- -------------------------------------------------------

function core.BNSeekLinearViewCursorToEnd(
		cursor
)
	return cdefs.C.BNSeekLinearViewCursorToEnd(cursor)
end

-- -------------------------------------------------------
-- BNSeekLinearViewCursorToOrderingIndex
-- -------------------------------------------------------

function core.BNSeekLinearViewCursorToOrderingIndex(
		cursor, 
		idx
)
	return cdefs.C.BNSeekLinearViewCursorToOrderingIndex(cursor, idx)
end

-- -------------------------------------------------------
-- BNSeekLinearViewCursorToPath
-- -------------------------------------------------------

function core.BNSeekLinearViewCursorToPath(
		cursor, 
		ids, 
		count
)
	return cdefs.C.BNSeekLinearViewCursorToPath(cursor, ids, count)
end

-- -------------------------------------------------------
-- BNSeekLinearViewCursorToPathAndAddress
-- -------------------------------------------------------

function core.BNSeekLinearViewCursorToPathAndAddress(
		cursor, 
		ids, 
		count, 
		addr
)
	return cdefs.C.BNSeekLinearViewCursorToPathAndAddress(cursor, ids, count, addr)
end

-- -------------------------------------------------------
-- BNSegmentGetDataEnd
-- -------------------------------------------------------

function core.BNSegmentGetDataEnd(
		segment
)
	return cdefs.C.BNSegmentGetDataEnd(segment)
end

-- -------------------------------------------------------
-- BNSegmentGetDataLength
-- -------------------------------------------------------

function core.BNSegmentGetDataLength(
		segment
)
	return cdefs.C.BNSegmentGetDataLength(segment)
end

-- -------------------------------------------------------
-- BNSegmentGetDataOffset
-- -------------------------------------------------------

function core.BNSegmentGetDataOffset(
		segment
)
	return cdefs.C.BNSegmentGetDataOffset(segment)
end

-- -------------------------------------------------------
-- BNSegmentGetEnd
-- -------------------------------------------------------

function core.BNSegmentGetEnd(
		segment
)
	return cdefs.C.BNSegmentGetEnd(segment)
end

-- -------------------------------------------------------
-- BNSegmentGetFlags
-- -------------------------------------------------------

function core.BNSegmentGetFlags(
		segment
)
	return cdefs.C.BNSegmentGetFlags(segment)
end

-- -------------------------------------------------------
-- BNSegmentGetLength
-- -------------------------------------------------------

function core.BNSegmentGetLength(
		segment
)
	return cdefs.C.BNSegmentGetLength(segment)
end

-- -------------------------------------------------------
-- BNSegmentGetRelocationRanges
-- -------------------------------------------------------

function core.BNSegmentGetRelocationRanges(
		segment, 
		count
)
	local result = cdefs.C.BNSegmentGetRelocationRanges(segment, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNSegmentGetRelocationRangesAtAddress
-- -------------------------------------------------------

function core.BNSegmentGetRelocationRangesAtAddress(
		segment, 
		addr, 
		count
)
	local result = cdefs.C.BNSegmentGetRelocationRangesAtAddress(segment, addr, count)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNSegmentGetRelocationsCount
-- -------------------------------------------------------

function core.BNSegmentGetRelocationsCount(
		segment
)
	return cdefs.C.BNSegmentGetRelocationsCount(segment)
end

-- -------------------------------------------------------
-- BNSegmentGetStart
-- -------------------------------------------------------

function core.BNSegmentGetStart(
		segment
)
	return cdefs.C.BNSegmentGetStart(segment)
end

-- -------------------------------------------------------
-- BNSegmentIsAutoDefined
-- -------------------------------------------------------

function core.BNSegmentIsAutoDefined(
		segment
)
	return cdefs.C.BNSegmentIsAutoDefined(segment)
end

-- -------------------------------------------------------
-- BNSegmentRangeContainsRelocation
-- -------------------------------------------------------

function core.BNSegmentRangeContainsRelocation(
		segment, 
		addr, 
		size
)
	return cdefs.C.BNSegmentRangeContainsRelocation(segment, addr, size)
end

-- -------------------------------------------------------
-- BNSegmentSetDataLength
-- -------------------------------------------------------

function core.BNSegmentSetDataLength(
		segment, 
		dataLength
)
	return cdefs.C.BNSegmentSetDataLength(segment, dataLength)
end

-- -------------------------------------------------------
-- BNSegmentSetDataOffset
-- -------------------------------------------------------

function core.BNSegmentSetDataOffset(
		segment, 
		dataOffset
)
	return cdefs.C.BNSegmentSetDataOffset(segment, dataOffset)
end

-- -------------------------------------------------------
-- BNSegmentSetFlags
-- -------------------------------------------------------

function core.BNSegmentSetFlags(
		segment, 
		flags
)
	return cdefs.C.BNSegmentSetFlags(segment, flags)
end

-- -------------------------------------------------------
-- BNSegmentSetLength
-- -------------------------------------------------------

function core.BNSegmentSetLength(
		segment, 
		length
)
	return cdefs.C.BNSegmentSetLength(segment, length)
end

-- -------------------------------------------------------
-- BNSerializeSettings
-- -------------------------------------------------------

function core.BNSerializeSettings(
		settings, 
		view, 
		scope
)
	local result = cdefs.C.BNSerializeSettings(settings, view, scope)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSetActiveUpdateChannel
-- -------------------------------------------------------

function core.BNSetActiveUpdateChannel(
		channel
)
	return cdefs.C.BNSetActiveUpdateChannel(channel)
end

-- -------------------------------------------------------
-- BNSetAnalysisHold
-- -------------------------------------------------------

function core.BNSetAnalysisHold(
		view, 
		enable
)
	return cdefs.C.BNSetAnalysisHold(view, enable)
end

-- -------------------------------------------------------
-- BNSetArchitectureCdeclCallingConvention
-- -------------------------------------------------------

function core.BNSetArchitectureCdeclCallingConvention(
		arch, 
		cc
)
	return cdefs.C.BNSetArchitectureCdeclCallingConvention(arch, cc)
end

-- -------------------------------------------------------
-- BNSetArchitectureDefaultCallingConvention
-- -------------------------------------------------------

function core.BNSetArchitectureDefaultCallingConvention(
		arch, 
		cc
)
	return cdefs.C.BNSetArchitectureDefaultCallingConvention(arch, cc)
end

-- -------------------------------------------------------
-- BNSetArchitectureFastcallCallingConvention
-- -------------------------------------------------------

function core.BNSetArchitectureFastcallCallingConvention(
		arch, 
		cc
)
	return cdefs.C.BNSetArchitectureFastcallCallingConvention(arch, cc)
end

-- -------------------------------------------------------
-- BNSetArchitectureStdcallCallingConvention
-- -------------------------------------------------------

function core.BNSetArchitectureStdcallCallingConvention(
		arch, 
		cc
)
	return cdefs.C.BNSetArchitectureStdcallCallingConvention(arch, cc)
end

-- -------------------------------------------------------
-- BNSetAutoBasicBlockHighlight
-- -------------------------------------------------------

function core.BNSetAutoBasicBlockHighlight(
		block, 
		color
)
	return cdefs.C.BNSetAutoBasicBlockHighlight(block, color)
end

-- -------------------------------------------------------
-- BNSetAutoCallRegisterStackAdjustment
-- -------------------------------------------------------

function core.BNSetAutoCallRegisterStackAdjustment(
		func, 
		arch, 
		addr, 
		adjust, 
		count
)
	return cdefs.C.BNSetAutoCallRegisterStackAdjustment(func, arch, addr, adjust, count)
end

-- -------------------------------------------------------
-- BNSetAutoCallRegisterStackAdjustmentForRegisterStack
-- -------------------------------------------------------

function core.BNSetAutoCallRegisterStackAdjustmentForRegisterStack(
		func, 
		arch, 
		addr, 
		regStack, 
		adjust, 
		confidence
)
	return cdefs.C.BNSetAutoCallRegisterStackAdjustmentForRegisterStack(func, arch, addr, regStack, adjust, confidence)
end

-- -------------------------------------------------------
-- BNSetAutoCallStackAdjustment
-- -------------------------------------------------------

function core.BNSetAutoCallStackAdjustment(
		func, 
		arch, 
		addr, 
		adjust, 
		confidence
)
	return cdefs.C.BNSetAutoCallStackAdjustment(func, arch, addr, adjust, confidence)
end

-- -------------------------------------------------------
-- BNSetAutoCallTypeAdjustment
-- -------------------------------------------------------

function core.BNSetAutoCallTypeAdjustment(
		func, 
		arch, 
		addr, 
		type
)
	return cdefs.C.BNSetAutoCallTypeAdjustment(func, arch, addr, type)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionCallingConvention
-- -------------------------------------------------------

function core.BNSetAutoFunctionCallingConvention(
		func, 
		convention
)
	return cdefs.C.BNSetAutoFunctionCallingConvention(func, convention)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionCanReturn
-- -------------------------------------------------------

function core.BNSetAutoFunctionCanReturn(
		func, 
		returns
)
	return cdefs.C.BNSetAutoFunctionCanReturn(func, returns)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionClobberedRegisters
-- -------------------------------------------------------

function core.BNSetAutoFunctionClobberedRegisters(
		func, 
		regs
)
	return cdefs.C.BNSetAutoFunctionClobberedRegisters(func, regs)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionHasVariableArguments
-- -------------------------------------------------------

function core.BNSetAutoFunctionHasVariableArguments(
		func, 
		varArgs
)
	return cdefs.C.BNSetAutoFunctionHasVariableArguments(func, varArgs)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionInlinedDuringAnalysis
-- -------------------------------------------------------

function core.BNSetAutoFunctionInlinedDuringAnalysis(
		func, 
		inlined
)
	return cdefs.C.BNSetAutoFunctionInlinedDuringAnalysis(func, inlined)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionParameterVariables
-- -------------------------------------------------------

function core.BNSetAutoFunctionParameterVariables(
		func, 
		vars
)
	return cdefs.C.BNSetAutoFunctionParameterVariables(func, vars)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionRegisterStackAdjustments
-- -------------------------------------------------------

function core.BNSetAutoFunctionRegisterStackAdjustments(
		func, 
		adjustments, 
		count
)
	return cdefs.C.BNSetAutoFunctionRegisterStackAdjustments(func, adjustments, count)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionReturnRegisters
-- -------------------------------------------------------

function core.BNSetAutoFunctionReturnRegisters(
		func, 
		regs
)
	return cdefs.C.BNSetAutoFunctionReturnRegisters(func, regs)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionReturnType
-- -------------------------------------------------------

function core.BNSetAutoFunctionReturnType(
		func, 
		type
)
	return cdefs.C.BNSetAutoFunctionReturnType(func, type)
end

-- -------------------------------------------------------
-- BNSetAutoFunctionStackAdjustment
-- -------------------------------------------------------

function core.BNSetAutoFunctionStackAdjustment(
		func, 
		stackAdjust
)
	return cdefs.C.BNSetAutoFunctionStackAdjustment(func, stackAdjust)
end

-- -------------------------------------------------------
-- BNSetAutoIndirectBranches
-- -------------------------------------------------------

function core.BNSetAutoIndirectBranches(
		func, 
		sourceArch, 
		source, 
		branches, 
		count
)
	return cdefs.C.BNSetAutoIndirectBranches(func, sourceArch, source, branches, count)
end

-- -------------------------------------------------------
-- BNSetAutoInstructionHighlight
-- -------------------------------------------------------

function core.BNSetAutoInstructionHighlight(
		func, 
		arch, 
		addr, 
		color
)
	return cdefs.C.BNSetAutoInstructionHighlight(func, arch, addr, color)
end

-- -------------------------------------------------------
-- BNSetAutoUpdatesEnabled
-- -------------------------------------------------------

function core.BNSetAutoUpdatesEnabled(
		enabled
)
	return cdefs.C.BNSetAutoUpdatesEnabled(enabled)
end

-- -------------------------------------------------------
-- BNSetBackgroundTaskProgressText
-- -------------------------------------------------------

function core.BNSetBackgroundTaskProgressText(
		task, 
		text
)
	return cdefs.C.BNSetBackgroundTaskProgressText(task, text)
end

-- -------------------------------------------------------
-- BNSetBaseStructuresForStructureBuilder
-- -------------------------------------------------------

function core.BNSetBaseStructuresForStructureBuilder(
		s, 
		bases, 
		count
)
	return cdefs.C.BNSetBaseStructuresForStructureBuilder(s, bases, count)
end

-- -------------------------------------------------------
-- BNSetBasicBlockList
-- -------------------------------------------------------

function core.BNSetBasicBlockList(
		analysisContext, 
		basicBlocks, 
		count
)
	return cdefs.C.BNSetBasicBlockList(analysisContext, basicBlocks, count)
end

-- -------------------------------------------------------
-- BNSetBinaryReaderEndianness
-- -------------------------------------------------------

function core.BNSetBinaryReaderEndianness(
		stream, 
		endian
)
	return cdefs.C.BNSetBinaryReaderEndianness(stream, endian)
end

-- -------------------------------------------------------
-- BNSetBinaryReaderVirtualBase
-- -------------------------------------------------------

function core.BNSetBinaryReaderVirtualBase(
		stream, 
		base
)
	return cdefs.C.BNSetBinaryReaderVirtualBase(stream, base)
end

-- -------------------------------------------------------
-- BNSetBinaryWriterEndianness
-- -------------------------------------------------------

function core.BNSetBinaryWriterEndianness(
		stream, 
		endian
)
	return cdefs.C.BNSetBinaryWriterEndianness(stream, endian)
end

-- -------------------------------------------------------
-- BNSetBundledPluginDirectory
-- -------------------------------------------------------

function core.BNSetBundledPluginDirectory(
		path
)
	return cdefs.C.BNSetBundledPluginDirectory(path)
end

-- -------------------------------------------------------
-- BNSetCommentForAddress
-- -------------------------------------------------------

function core.BNSetCommentForAddress(
		func, 
		addr, 
		comment
)
	return cdefs.C.BNSetCommentForAddress(func, addr, comment)
end

-- -------------------------------------------------------
-- BNSetCurrentPluginLoadOrder
-- -------------------------------------------------------

function core.BNSetCurrentPluginLoadOrder(
		order
)
	return cdefs.C.BNSetCurrentPluginLoadOrder(order)
end

-- -------------------------------------------------------
-- BNSetDataBufferByte
-- -------------------------------------------------------

function core.BNSetDataBufferByte(
		buf, 
		offset, 
		val
)
	return cdefs.C.BNSetDataBufferByte(buf, offset, val)
end

-- -------------------------------------------------------
-- BNSetDataBufferContents
-- -------------------------------------------------------

function core.BNSetDataBufferContents(
		buf, 
		data, 
		len
)
	return cdefs.C.BNSetDataBufferContents(buf, data, len)
end

-- -------------------------------------------------------
-- BNSetDataBufferLength
-- -------------------------------------------------------

function core.BNSetDataBufferLength(
		buf, 
		len
)
	return cdefs.C.BNSetDataBufferLength(buf, len)
end

-- -------------------------------------------------------
-- BNSetDatabaseCurrentSnapshot
-- -------------------------------------------------------

function core.BNSetDatabaseCurrentSnapshot(
		database, 
		id
)
	return cdefs.C.BNSetDatabaseCurrentSnapshot(database, id)
end

-- -------------------------------------------------------
-- BNSetDebugInfo
-- -------------------------------------------------------

function core.BNSetDebugInfo(
		view, 
		newDebugInfo
)
	return cdefs.C.BNSetDebugInfo(view, newDebugInfo)
end

-- -------------------------------------------------------
-- BNSetDefaultArchitecture
-- -------------------------------------------------------

function core.BNSetDefaultArchitecture(
		view, 
		arch
)
	return cdefs.C.BNSetDefaultArchitecture(view, arch)
end

-- -------------------------------------------------------
-- BNSetDefaultPlatform
-- -------------------------------------------------------

function core.BNSetDefaultPlatform(
		view, 
		platform
)
	return cdefs.C.BNSetDefaultPlatform(view, platform)
end

-- -------------------------------------------------------
-- BNSetDisassemblyGutterWidth
-- -------------------------------------------------------

function core.BNSetDisassemblyGutterWidth(
		settings, 
		width
)
	return cdefs.C.BNSetDisassemblyGutterWidth(settings, width)
end

-- -------------------------------------------------------
-- BNSetDisassemblyMaximumSymbolWidth
-- -------------------------------------------------------

function core.BNSetDisassemblyMaximumSymbolWidth(
		settings, 
		width
)
	return cdefs.C.BNSetDisassemblyMaximumSymbolWidth(settings, width)
end

-- -------------------------------------------------------
-- BNSetDisassemblySettingsOption
-- -------------------------------------------------------

function core.BNSetDisassemblySettingsOption(
		settings, 
		option, 
		state
)
	return cdefs.C.BNSetDisassemblySettingsOption(settings, option, state)
end

-- -------------------------------------------------------
-- BNSetDisassemblyTextRendererArchitecture
-- -------------------------------------------------------

function core.BNSetDisassemblyTextRendererArchitecture(
		renderer, 
		arch
)
	return cdefs.C.BNSetDisassemblyTextRendererArchitecture(renderer, arch)
end

-- -------------------------------------------------------
-- BNSetDisassemblyTextRendererBasicBlock
-- -------------------------------------------------------

function core.BNSetDisassemblyTextRendererBasicBlock(
		renderer, 
		block
)
	return cdefs.C.BNSetDisassemblyTextRendererBasicBlock(renderer, block)
end

-- -------------------------------------------------------
-- BNSetDisassemblyTextRendererSettings
-- -------------------------------------------------------

function core.BNSetDisassemblyTextRendererSettings(
		renderer, 
		settings
)
	return cdefs.C.BNSetDisassemblyTextRendererSettings(renderer, settings)
end

-- -------------------------------------------------------
-- BNSetDisassemblyWidth
-- -------------------------------------------------------

function core.BNSetDisassemblyWidth(
		settings, 
		width
)
	return cdefs.C.BNSetDisassemblyWidth(settings, width)
end

-- -------------------------------------------------------
-- BNSetEnterpriseServerUrl
-- -------------------------------------------------------

function core.BNSetEnterpriseServerUrl(
		url
)
	return cdefs.C.BNSetEnterpriseServerUrl(url)
end

-- -------------------------------------------------------
-- BNSetErrorForDownloadInstance
-- -------------------------------------------------------

function core.BNSetErrorForDownloadInstance(
		instance, 
		error
)
	return cdefs.C.BNSetErrorForDownloadInstance(instance, error)
end

-- -------------------------------------------------------
-- BNSetFileMetadataNavigationHandler
-- -------------------------------------------------------

function core.BNSetFileMetadataNavigationHandler(
		file, 
		handler
)
	return cdefs.C.BNSetFileMetadataNavigationHandler(file, handler)
end

-- -------------------------------------------------------
-- BNSetFilename
-- -------------------------------------------------------

function core.BNSetFilename(
		file, 
		name
)
	return cdefs.C.BNSetFilename(file, name)
end

-- -------------------------------------------------------
-- BNSetFlowGraphBasicBlock
-- -------------------------------------------------------

function core.BNSetFlowGraphBasicBlock(
		node, 
		block
)
	return cdefs.C.BNSetFlowGraphBasicBlock(node, block)
end

-- -------------------------------------------------------
-- BNSetFlowGraphHighLevelILFunction
-- -------------------------------------------------------

function core.BNSetFlowGraphHighLevelILFunction(
		graph, 
		func
)
	return cdefs.C.BNSetFlowGraphHighLevelILFunction(graph, func)
end

-- -------------------------------------------------------
-- BNSetFlowGraphLowLevelILFunction
-- -------------------------------------------------------

function core.BNSetFlowGraphLowLevelILFunction(
		graph, 
		func
)
	return cdefs.C.BNSetFlowGraphLowLevelILFunction(graph, func)
end

-- -------------------------------------------------------
-- BNSetFlowGraphMediumLevelILFunction
-- -------------------------------------------------------

function core.BNSetFlowGraphMediumLevelILFunction(
		graph, 
		func
)
	return cdefs.C.BNSetFlowGraphMediumLevelILFunction(graph, func)
end

-- -------------------------------------------------------
-- BNSetFlowGraphNodeHighlight
-- -------------------------------------------------------

function core.BNSetFlowGraphNodeHighlight(
		node, 
		color
)
	return cdefs.C.BNSetFlowGraphNodeHighlight(node, color)
end

-- -------------------------------------------------------
-- BNSetFlowGraphNodeLines
-- -------------------------------------------------------

function core.BNSetFlowGraphNodeLines(
		node, 
		lines, 
		count
)
	return cdefs.C.BNSetFlowGraphNodeLines(node, lines, count)
end

-- -------------------------------------------------------
-- BNSetFlowGraphNodeMargins
-- -------------------------------------------------------

function core.BNSetFlowGraphNodeMargins(
		graph, 
		horiz, 
		vert
)
	return cdefs.C.BNSetFlowGraphNodeMargins(graph, horiz, vert)
end

-- -------------------------------------------------------
-- BNSetFlowGraphOption
-- -------------------------------------------------------

function core.BNSetFlowGraphOption(
		graph, 
		option, 
		value
)
	return cdefs.C.BNSetFlowGraphOption(graph, option, value)
end

-- -------------------------------------------------------
-- BNSetFunctionAnalysisSkipOverride
-- -------------------------------------------------------

function core.BNSetFunctionAnalysisSkipOverride(
		func, 
		skip
)
	return cdefs.C.BNSetFunctionAnalysisSkipOverride(func, skip)
end

-- -------------------------------------------------------
-- BNSetFunctionAutoType
-- -------------------------------------------------------

function core.BNSetFunctionAutoType(
		func, 
		type
)
	return cdefs.C.BNSetFunctionAutoType(func, type)
end

-- -------------------------------------------------------
-- BNSetFunctionComment
-- -------------------------------------------------------

function core.BNSetFunctionComment(
		func, 
		comment
)
	return cdefs.C.BNSetFunctionComment(func, comment)
end

-- -------------------------------------------------------
-- BNSetFunctionForFlowGraph
-- -------------------------------------------------------

function core.BNSetFunctionForFlowGraph(
		graph, 
		func
)
	return cdefs.C.BNSetFunctionForFlowGraph(graph, func)
end

-- -------------------------------------------------------
-- BNSetFunctionTypeBuilderCanReturn
-- -------------------------------------------------------

function core.BNSetFunctionTypeBuilderCanReturn(
		type, 
		canReturn
)
	return cdefs.C.BNSetFunctionTypeBuilderCanReturn(type, canReturn)
end

-- -------------------------------------------------------
-- BNSetFunctionTypeBuilderParameters
-- -------------------------------------------------------

function core.BNSetFunctionTypeBuilderParameters(
		type, 
		params, 
		paramCount
)
	return cdefs.C.BNSetFunctionTypeBuilderParameters(type, params, paramCount)
end

-- -------------------------------------------------------
-- BNSetFunctionUserType
-- -------------------------------------------------------

function core.BNSetFunctionUserType(
		func, 
		type
)
	return cdefs.C.BNSetFunctionUserType(func, type)
end

-- -------------------------------------------------------
-- BNSetFunctionVariableDeadStoreElimination
-- -------------------------------------------------------

function core.BNSetFunctionVariableDeadStoreElimination(
		func, 
		var, 
		mode
)
	return cdefs.C.BNSetFunctionVariableDeadStoreElimination(func, var, mode)
end

-- -------------------------------------------------------
-- BNSetGlobalCommentForAddress
-- -------------------------------------------------------

function core.BNSetGlobalCommentForAddress(
		view, 
		addr, 
		comment
)
	return cdefs.C.BNSetGlobalCommentForAddress(view, addr, comment)
end

-- -------------------------------------------------------
-- BNSetHighLevelILExprAttributes
-- -------------------------------------------------------

function core.BNSetHighLevelILExprAttributes(
		func, 
		expr, 
		attributes
)
	return cdefs.C.BNSetHighLevelILExprAttributes(func, expr, attributes)
end

-- -------------------------------------------------------
-- BNSetHighLevelILExprType
-- -------------------------------------------------------

function core.BNSetHighLevelILExprType(
		func, 
		expr, 
		type
)
	return cdefs.C.BNSetHighLevelILExprType(func, expr, type)
end

-- -------------------------------------------------------
-- BNSetHighLevelILFunction
-- -------------------------------------------------------

function core.BNSetHighLevelILFunction(
		analysisContext, 
		highLevelIL
)
	return cdefs.C.BNSetHighLevelILFunction(analysisContext, highLevelIL)
end

-- -------------------------------------------------------
-- BNSetHighLevelILRootExpr
-- -------------------------------------------------------

function core.BNSetHighLevelILRootExpr(
		func, 
		expr
)
	return cdefs.C.BNSetHighLevelILRootExpr(func, expr)
end

-- -------------------------------------------------------
-- BNSetIntegerConstantDisplayType
-- -------------------------------------------------------

function core.BNSetIntegerConstantDisplayType(
		func, 
		arch, 
		instrAddr, 
		value, 
		operand, 
		type
)
	return cdefs.C.BNSetIntegerConstantDisplayType(func, arch, instrAddr, value, operand, type)
end

-- -------------------------------------------------------
-- BNSetIntegerConstantDisplayTypeEnumerationType
-- -------------------------------------------------------

function core.BNSetIntegerConstantDisplayTypeEnumerationType(
		func, 
		arch, 
		instrAddr, 
		value, 
		operand, 
		type
)
	return cdefs.C.BNSetIntegerConstantDisplayTypeEnumerationType(func, arch, instrAddr, value, operand, type)
end

-- -------------------------------------------------------
-- BNSetIntegerTypeDisplayType
-- -------------------------------------------------------

function core.BNSetIntegerTypeDisplayType(
		type, 
		displayType
)
	return cdefs.C.BNSetIntegerTypeDisplayType(type, displayType)
end

-- -------------------------------------------------------
-- BNSetKeyValueStoreBuffer
-- -------------------------------------------------------

function core.BNSetKeyValueStoreBuffer(
		store, 
		name, 
		value
)
	return cdefs.C.BNSetKeyValueStoreBuffer(store, name, value)
end

-- -------------------------------------------------------
-- BNSetKeyValueStoreValue
-- -------------------------------------------------------

function core.BNSetKeyValueStoreValue(
		store, 
		name, 
		value
)
	return cdefs.C.BNSetKeyValueStoreValue(store, name, value)
end

-- -------------------------------------------------------
-- BNSetLicense
-- -------------------------------------------------------

function core.BNSetLicense(
		licenseData
)
	return cdefs.C.BNSetLicense(licenseData)
end

-- -------------------------------------------------------
-- BNSetLiftedILFunction
-- -------------------------------------------------------

function core.BNSetLiftedILFunction(
		analysisContext, 
		liftedIL
)
	return cdefs.C.BNSetLiftedILFunction(analysisContext, liftedIL)
end

-- -------------------------------------------------------
-- BNSetLowLevelILExprAttributes
-- -------------------------------------------------------

function core.BNSetLowLevelILExprAttributes(
		func, 
		expr, 
		attributes
)
	return cdefs.C.BNSetLowLevelILExprAttributes(func, expr, attributes)
end

-- -------------------------------------------------------
-- BNSetLowLevelILFunction
-- -------------------------------------------------------

function core.BNSetLowLevelILFunction(
		analysisContext, 
		lowLevelIL
)
	return cdefs.C.BNSetLowLevelILFunction(analysisContext, lowLevelIL)
end

-- -------------------------------------------------------
-- BNSetMaxFunctionSizeForAnalysis
-- -------------------------------------------------------

function core.BNSetMaxFunctionSizeForAnalysis(
		view, 
		size
)
	return cdefs.C.BNSetMaxFunctionSizeForAnalysis(view, size)
end

-- -------------------------------------------------------
-- BNSetMediumLevelILExprAttributes
-- -------------------------------------------------------

function core.BNSetMediumLevelILExprAttributes(
		func, 
		expr, 
		attributes
)
	return cdefs.C.BNSetMediumLevelILExprAttributes(func, expr, attributes)
end

-- -------------------------------------------------------
-- BNSetMediumLevelILExprType
-- -------------------------------------------------------

function core.BNSetMediumLevelILExprType(
		func, 
		expr, 
		type
)
	return cdefs.C.BNSetMediumLevelILExprType(func, expr, type)
end

-- -------------------------------------------------------
-- BNSetMediumLevelILFunction
-- -------------------------------------------------------

function core.BNSetMediumLevelILFunction(
		analysisContext, 
		mediumLevelIL
)
	return cdefs.C.BNSetMediumLevelILFunction(analysisContext, mediumLevelIL)
end

-- -------------------------------------------------------
-- BNSetNamedTypeReferenceBuilderName
-- -------------------------------------------------------

function core.BNSetNamedTypeReferenceBuilderName(
		s, 
		name
)
	return cdefs.C.BNSetNamedTypeReferenceBuilderName(s, name)
end

-- -------------------------------------------------------
-- BNSetNamedTypeReferenceBuilderTypeClass
-- -------------------------------------------------------

function core.BNSetNamedTypeReferenceBuilderTypeClass(
		s, 
		type
)
	return cdefs.C.BNSetNamedTypeReferenceBuilderTypeClass(s, type)
end

-- -------------------------------------------------------
-- BNSetNamedTypeReferenceBuilderTypeId
-- -------------------------------------------------------

function core.BNSetNamedTypeReferenceBuilderTypeId(
		s, 
		id
)
	return cdefs.C.BNSetNamedTypeReferenceBuilderTypeId(s, id)
end

-- -------------------------------------------------------
-- BNSetNewAutoFunctionAnalysisSuppressed
-- -------------------------------------------------------

function core.BNSetNewAutoFunctionAnalysisSuppressed(
		view, 
		suppress
)
	return cdefs.C.BNSetNewAutoFunctionAnalysisSuppressed(view, suppress)
end

-- -------------------------------------------------------
-- BNSetOriginalFilename
-- -------------------------------------------------------

function core.BNSetOriginalFilename(
		file, 
		name
)
	return cdefs.C.BNSetOriginalFilename(file, name)
end

-- -------------------------------------------------------
-- BNSetParametersForAnalysis
-- -------------------------------------------------------

function core.BNSetParametersForAnalysis(
		view, 
		params
)
	return cdefs.C.BNSetParametersForAnalysis(view, params)
end

-- -------------------------------------------------------
-- BNSetPlatformSystemCallConvention
-- -------------------------------------------------------

function core.BNSetPlatformSystemCallConvention(
		platform, 
		cc
)
	return cdefs.C.BNSetPlatformSystemCallConvention(platform, cc)
end

-- -------------------------------------------------------
-- BNSetSaveSettingsName
-- -------------------------------------------------------

function core.BNSetSaveSettingsName(
		settings, 
		name
)
	return cdefs.C.BNSetSaveSettingsName(settings, name)
end

-- -------------------------------------------------------
-- BNSetSaveSettingsOption
-- -------------------------------------------------------

function core.BNSetSaveSettingsOption(
		settings, 
		option, 
		state
)
	return cdefs.C.BNSetSaveSettingsOption(settings, option, state)
end

-- -------------------------------------------------------
-- BNSetScriptingInstanceCurrentAddress
-- -------------------------------------------------------

function core.BNSetScriptingInstanceCurrentAddress(
		instance, 
		addr
)
	return cdefs.C.BNSetScriptingInstanceCurrentAddress(instance, addr)
end

-- -------------------------------------------------------
-- BNSetScriptingInstanceCurrentBasicBlock
-- -------------------------------------------------------

function core.BNSetScriptingInstanceCurrentBasicBlock(
		instance, 
		block
)
	return cdefs.C.BNSetScriptingInstanceCurrentBasicBlock(instance, block)
end

-- -------------------------------------------------------
-- BNSetScriptingInstanceCurrentBinaryView
-- -------------------------------------------------------

function core.BNSetScriptingInstanceCurrentBinaryView(
		instance, 
		view
)
	return cdefs.C.BNSetScriptingInstanceCurrentBinaryView(instance, view)
end

-- -------------------------------------------------------
-- BNSetScriptingInstanceCurrentFunction
-- -------------------------------------------------------

function core.BNSetScriptingInstanceCurrentFunction(
		instance, 
		func
)
	return cdefs.C.BNSetScriptingInstanceCurrentFunction(instance, func)
end

-- -------------------------------------------------------
-- BNSetScriptingInstanceCurrentSelection
-- -------------------------------------------------------

function core.BNSetScriptingInstanceCurrentSelection(
		instance, 
		begin, 
		end_
)
	return cdefs.C.BNSetScriptingInstanceCurrentSelection(instance, begin, end_)
end

-- -------------------------------------------------------
-- BNSetScriptingInstanceDelimiters
-- -------------------------------------------------------

function core.BNSetScriptingInstanceDelimiters(
		instance, 
		delimiters
)
	return cdefs.C.BNSetScriptingInstanceDelimiters(instance, delimiters)
end

-- -------------------------------------------------------
-- BNSetSnapshotName
-- -------------------------------------------------------

function core.BNSetSnapshotName(
		snapshot, 
		name
)
	return cdefs.C.BNSetSnapshotName(snapshot, name)
end

-- -------------------------------------------------------
-- BNSetStructureBuilderAlignment
-- -------------------------------------------------------

function core.BNSetStructureBuilderAlignment(
		s, 
		align
)
	return cdefs.C.BNSetStructureBuilderAlignment(s, align)
end

-- -------------------------------------------------------
-- BNSetStructureBuilderPacked
-- -------------------------------------------------------

function core.BNSetStructureBuilderPacked(
		s, 
		packed
)
	return cdefs.C.BNSetStructureBuilderPacked(s, packed)
end

-- -------------------------------------------------------
-- BNSetStructureBuilderPointerOffset
-- -------------------------------------------------------

function core.BNSetStructureBuilderPointerOffset(
		s, 
		offset
)
	return cdefs.C.BNSetStructureBuilderPointerOffset(s, offset)
end

-- -------------------------------------------------------
-- BNSetStructureBuilderPropagatesDataVariableReferences
-- -------------------------------------------------------

function core.BNSetStructureBuilderPropagatesDataVariableReferences(
		s, 
		value
)
	return cdefs.C.BNSetStructureBuilderPropagatesDataVariableReferences(s, value)
end

-- -------------------------------------------------------
-- BNSetStructureBuilderType
-- -------------------------------------------------------

function core.BNSetStructureBuilderType(
		s, 
		type
)
	return cdefs.C.BNSetStructureBuilderType(s, type)
end

-- -------------------------------------------------------
-- BNSetStructureBuilderWidth
-- -------------------------------------------------------

function core.BNSetStructureBuilderWidth(
		s, 
		width
)
	return cdefs.C.BNSetStructureBuilderWidth(s, width)
end

-- -------------------------------------------------------
-- BNSetTypeBuilderNamedTypeReference
-- -------------------------------------------------------

function core.BNSetTypeBuilderNamedTypeReference(
		type, 
		ntr
)
	return cdefs.C.BNSetTypeBuilderNamedTypeReference(type, ntr)
end

-- -------------------------------------------------------
-- BNSetTypeBuilderOffset
-- -------------------------------------------------------

function core.BNSetTypeBuilderOffset(
		type, 
		offset
)
	return cdefs.C.BNSetTypeBuilderOffset(type, offset)
end

-- -------------------------------------------------------
-- BNSetTypeLibraryDependencyName
-- -------------------------------------------------------

function core.BNSetTypeLibraryDependencyName(
		lib, 
		name
)
	return cdefs.C.BNSetTypeLibraryDependencyName(lib, name)
end

-- -------------------------------------------------------
-- BNSetTypeLibraryGuid
-- -------------------------------------------------------

function core.BNSetTypeLibraryGuid(
		lib, 
		name
)
	return cdefs.C.BNSetTypeLibraryGuid(lib, name)
end

-- -------------------------------------------------------
-- BNSetTypeLibraryName
-- -------------------------------------------------------

function core.BNSetTypeLibraryName(
		lib, 
		name
)
	return cdefs.C.BNSetTypeLibraryName(lib, name)
end

-- -------------------------------------------------------
-- BNSetUserBasicBlockHighlight
-- -------------------------------------------------------

function core.BNSetUserBasicBlockHighlight(
		block, 
		color
)
	return cdefs.C.BNSetUserBasicBlockHighlight(block, color)
end

-- -------------------------------------------------------
-- BNSetUserCallRegisterStackAdjustment
-- -------------------------------------------------------

function core.BNSetUserCallRegisterStackAdjustment(
		func, 
		arch, 
		addr, 
		adjust, 
		count
)
	return cdefs.C.BNSetUserCallRegisterStackAdjustment(func, arch, addr, adjust, count)
end

-- -------------------------------------------------------
-- BNSetUserCallRegisterStackAdjustmentForRegisterStack
-- -------------------------------------------------------

function core.BNSetUserCallRegisterStackAdjustmentForRegisterStack(
		func, 
		arch, 
		addr, 
		regStack, 
		adjust, 
		confidence
)
	return cdefs.C.BNSetUserCallRegisterStackAdjustmentForRegisterStack(func, arch, addr, regStack, adjust, confidence)
end

-- -------------------------------------------------------
-- BNSetUserCallStackAdjustment
-- -------------------------------------------------------

function core.BNSetUserCallStackAdjustment(
		func, 
		arch, 
		addr, 
		adjust, 
		confidence
)
	return cdefs.C.BNSetUserCallStackAdjustment(func, arch, addr, adjust, confidence)
end

-- -------------------------------------------------------
-- BNSetUserCallTypeAdjustment
-- -------------------------------------------------------

function core.BNSetUserCallTypeAdjustment(
		func, 
		arch, 
		addr, 
		type
)
	return cdefs.C.BNSetUserCallTypeAdjustment(func, arch, addr, type)
end

-- -------------------------------------------------------
-- BNSetUserFunctionCallingConvention
-- -------------------------------------------------------

function core.BNSetUserFunctionCallingConvention(
		func, 
		convention
)
	return cdefs.C.BNSetUserFunctionCallingConvention(func, convention)
end

-- -------------------------------------------------------
-- BNSetUserFunctionCanReturn
-- -------------------------------------------------------

function core.BNSetUserFunctionCanReturn(
		func, 
		returns
)
	return cdefs.C.BNSetUserFunctionCanReturn(func, returns)
end

-- -------------------------------------------------------
-- BNSetUserFunctionClobberedRegisters
-- -------------------------------------------------------

function core.BNSetUserFunctionClobberedRegisters(
		func, 
		regs
)
	return cdefs.C.BNSetUserFunctionClobberedRegisters(func, regs)
end

-- -------------------------------------------------------
-- BNSetUserFunctionHasVariableArguments
-- -------------------------------------------------------

function core.BNSetUserFunctionHasVariableArguments(
		func, 
		varArgs
)
	return cdefs.C.BNSetUserFunctionHasVariableArguments(func, varArgs)
end

-- -------------------------------------------------------
-- BNSetUserFunctionInlinedDuringAnalysis
-- -------------------------------------------------------

function core.BNSetUserFunctionInlinedDuringAnalysis(
		func, 
		inlined
)
	return cdefs.C.BNSetUserFunctionInlinedDuringAnalysis(func, inlined)
end

-- -------------------------------------------------------
-- BNSetUserFunctionParameterVariables
-- -------------------------------------------------------

function core.BNSetUserFunctionParameterVariables(
		func, 
		vars
)
	return cdefs.C.BNSetUserFunctionParameterVariables(func, vars)
end

-- -------------------------------------------------------
-- BNSetUserFunctionRegisterStackAdjustments
-- -------------------------------------------------------

function core.BNSetUserFunctionRegisterStackAdjustments(
		func, 
		adjustments, 
		count
)
	return cdefs.C.BNSetUserFunctionRegisterStackAdjustments(func, adjustments, count)
end

-- -------------------------------------------------------
-- BNSetUserFunctionReturnRegisters
-- -------------------------------------------------------

function core.BNSetUserFunctionReturnRegisters(
		func, 
		regs
)
	return cdefs.C.BNSetUserFunctionReturnRegisters(func, regs)
end

-- -------------------------------------------------------
-- BNSetUserFunctionReturnType
-- -------------------------------------------------------

function core.BNSetUserFunctionReturnType(
		func, 
		type
)
	return cdefs.C.BNSetUserFunctionReturnType(func, type)
end

-- -------------------------------------------------------
-- BNSetUserFunctionStackAdjustment
-- -------------------------------------------------------

function core.BNSetUserFunctionStackAdjustment(
		func, 
		stackAdjust
)
	return cdefs.C.BNSetUserFunctionStackAdjustment(func, stackAdjust)
end

-- -------------------------------------------------------
-- BNSetUserGotoLabelName
-- -------------------------------------------------------

function core.BNSetUserGotoLabelName(
		func, 
		labelId, 
		name
)
	return cdefs.C.BNSetUserGotoLabelName(func, labelId, name)
end

-- -------------------------------------------------------
-- BNSetUserIndirectBranches
-- -------------------------------------------------------

function core.BNSetUserIndirectBranches(
		func, 
		sourceArch, 
		source, 
		branches, 
		count
)
	return cdefs.C.BNSetUserIndirectBranches(func, sourceArch, source, branches, count)
end

-- -------------------------------------------------------
-- BNSetUserInstructionHighlight
-- -------------------------------------------------------

function core.BNSetUserInstructionHighlight(
		func, 
		arch, 
		addr, 
		color
)
	return cdefs.C.BNSetUserInstructionHighlight(func, arch, addr, color)
end

-- -------------------------------------------------------
-- BNSetUserVariableValue
-- -------------------------------------------------------

function core.BNSetUserVariableValue(
		func, 
		var, 
		defSite, 
		value
)
	return cdefs.C.BNSetUserVariableValue(func, var, defSite, value)
end

-- -------------------------------------------------------
-- BNSetViewForFlowGraph
-- -------------------------------------------------------

function core.BNSetViewForFlowGraph(
		graph, 
		view
)
	return cdefs.C.BNSetViewForFlowGraph(graph, view)
end

-- -------------------------------------------------------
-- BNSetWorkerThreadCount
-- -------------------------------------------------------

function core.BNSetWorkerThreadCount(
		count
)
	return cdefs.C.BNSetWorkerThreadCount(count)
end

-- -------------------------------------------------------
-- BNSettingsContains
-- -------------------------------------------------------

function core.BNSettingsContains(
		settings, 
		key
)
	return cdefs.C.BNSettingsContains(settings, key)
end

-- -------------------------------------------------------
-- BNSettingsDeserializeSchema
-- -------------------------------------------------------

function core.BNSettingsDeserializeSchema(
		settings, 
		schema, 
		scope, 
		merge
)
	return cdefs.C.BNSettingsDeserializeSchema(settings, schema, scope, merge)
end

-- -------------------------------------------------------
-- BNSettingsGetBool
-- -------------------------------------------------------

function core.BNSettingsGetBool(
		settings, 
		key, 
		view, 
		scope
)
	return cdefs.C.BNSettingsGetBool(settings, key, view, scope)
end

-- -------------------------------------------------------
-- BNSettingsGetDouble
-- -------------------------------------------------------

function core.BNSettingsGetDouble(
		settings, 
		key, 
		view, 
		scope
)
	return cdefs.C.BNSettingsGetDouble(settings, key, view, scope)
end

-- -------------------------------------------------------
-- BNSettingsGetInt64
-- -------------------------------------------------------

function core.BNSettingsGetInt64(
		settings, 
		key, 
		view, 
		scope
)
	return cdefs.C.BNSettingsGetInt64(settings, key, view, scope)
end

-- -------------------------------------------------------
-- BNSettingsGetJson
-- -------------------------------------------------------

function core.BNSettingsGetJson(
		settings, 
		key, 
		view, 
		scope
)
	local result = cdefs.C.BNSettingsGetJson(settings, key, view, scope)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSettingsGetString
-- -------------------------------------------------------

function core.BNSettingsGetString(
		settings, 
		key, 
		view, 
		scope
)
	local result = cdefs.C.BNSettingsGetString(settings, key, view, scope)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSettingsGetStringList
-- -------------------------------------------------------

function core.BNSettingsGetStringList(
		settings, 
		key, 
		view, 
		scope, 
		inoutSize
)
	local result = cdefs.C.BNSettingsGetStringList(settings, key, view, scope, inoutSize)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNSettingsGetUInt64
-- -------------------------------------------------------

function core.BNSettingsGetUInt64(
		settings, 
		key, 
		view, 
		scope
)
	return cdefs.C.BNSettingsGetUInt64(settings, key, view, scope)
end

-- -------------------------------------------------------
-- BNSettingsIsEmpty
-- -------------------------------------------------------

function core.BNSettingsIsEmpty(
		settings
)
	return cdefs.C.BNSettingsIsEmpty(settings)
end

-- -------------------------------------------------------
-- BNSettingsKeysList
-- -------------------------------------------------------

function core.BNSettingsKeysList(
		settings, 
		inoutSize
)
	local result = cdefs.C.BNSettingsKeysList(settings, inoutSize)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNSettingsQueryPropertyStringList
-- -------------------------------------------------------

function core.BNSettingsQueryPropertyStringList(
		settings, 
		key, 
		property, 
		inoutSize
)
	local result = cdefs.C.BNSettingsQueryPropertyStringList(settings, key, property, inoutSize)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNSettingsRegisterGroup
-- -------------------------------------------------------

function core.BNSettingsRegisterGroup(
		settings, 
		group, 
		title
)
	return cdefs.C.BNSettingsRegisterGroup(settings, group, title)
end

-- -------------------------------------------------------
-- BNSettingsRegisterSetting
-- -------------------------------------------------------

function core.BNSettingsRegisterSetting(
		settings, 
		key, 
		properties
)
	return cdefs.C.BNSettingsRegisterSetting(settings, key, properties)
end

-- -------------------------------------------------------
-- BNSettingsReset
-- -------------------------------------------------------

function core.BNSettingsReset(
		settings, 
		key, 
		view, 
		scope
)
	return cdefs.C.BNSettingsReset(settings, key, view, scope)
end

-- -------------------------------------------------------
-- BNSettingsResetAll
-- -------------------------------------------------------

function core.BNSettingsResetAll(
		settings, 
		view, 
		scope, 
		schemaOnly
)
	return cdefs.C.BNSettingsResetAll(settings, view, scope, schemaOnly)
end

-- -------------------------------------------------------
-- BNSettingsSerializeSchema
-- -------------------------------------------------------

function core.BNSettingsSerializeSchema(
		settings
)
	local result = cdefs.C.BNSettingsSerializeSchema(settings)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNSettingsSetBool
-- -------------------------------------------------------

function core.BNSettingsSetBool(
		settings, 
		view, 
		scope, 
		key, 
		value
)
	return cdefs.C.BNSettingsSetBool(settings, view, scope, key, value)
end

-- -------------------------------------------------------
-- BNSettingsSetDouble
-- -------------------------------------------------------

function core.BNSettingsSetDouble(
		settings, 
		view, 
		scope, 
		key, 
		value
)
	return cdefs.C.BNSettingsSetDouble(settings, view, scope, key, value)
end

-- -------------------------------------------------------
-- BNSettingsSetInt64
-- -------------------------------------------------------

function core.BNSettingsSetInt64(
		settings, 
		view, 
		scope, 
		key, 
		value
)
	return cdefs.C.BNSettingsSetInt64(settings, view, scope, key, value)
end

-- -------------------------------------------------------
-- BNSettingsSetJson
-- -------------------------------------------------------

function core.BNSettingsSetJson(
		settings, 
		view, 
		scope, 
		key, 
		value
)
	return cdefs.C.BNSettingsSetJson(settings, view, scope, key, value)
end

-- -------------------------------------------------------
-- BNSettingsSetResourceId
-- -------------------------------------------------------

function core.BNSettingsSetResourceId(
		settings, 
		resourceId
)
	return cdefs.C.BNSettingsSetResourceId(settings, resourceId)
end

-- -------------------------------------------------------
-- BNSettingsSetString
-- -------------------------------------------------------

function core.BNSettingsSetString(
		settings, 
		view, 
		scope, 
		key, 
		value
)
	return cdefs.C.BNSettingsSetString(settings, view, scope, key, value)
end

-- -------------------------------------------------------
-- BNSettingsSetStringList
-- -------------------------------------------------------

function core.BNSettingsSetStringList(
		settings, 
		view, 
		scope, 
		key, 
		value, 
		size
)
	return cdefs.C.BNSettingsSetStringList(settings, view, scope, key, value, size)
end

-- -------------------------------------------------------
-- BNSettingsSetUInt64
-- -------------------------------------------------------

function core.BNSettingsSetUInt64(
		settings, 
		view, 
		scope, 
		key, 
		value
)
	return cdefs.C.BNSettingsSetUInt64(settings, view, scope, key, value)
end

-- -------------------------------------------------------
-- BNSettingsUpdateBoolProperty
-- -------------------------------------------------------

function core.BNSettingsUpdateBoolProperty(
		settings, 
		key, 
		property, 
		value
)
	return cdefs.C.BNSettingsUpdateBoolProperty(settings, key, property, value)
end

-- -------------------------------------------------------
-- BNSettingsUpdateDoubleProperty
-- -------------------------------------------------------

function core.BNSettingsUpdateDoubleProperty(
		settings, 
		key, 
		property, 
		value
)
	return cdefs.C.BNSettingsUpdateDoubleProperty(settings, key, property, value)
end

-- -------------------------------------------------------
-- BNSettingsUpdateInt64Property
-- -------------------------------------------------------

function core.BNSettingsUpdateInt64Property(
		settings, 
		key, 
		property, 
		value
)
	return cdefs.C.BNSettingsUpdateInt64Property(settings, key, property, value)
end

-- -------------------------------------------------------
-- BNSettingsUpdateProperty
-- -------------------------------------------------------

function core.BNSettingsUpdateProperty(
		settings, 
		key, 
		property
)
	return cdefs.C.BNSettingsUpdateProperty(settings, key, property)
end

-- -------------------------------------------------------
-- BNSettingsUpdateStringListProperty
-- -------------------------------------------------------

function core.BNSettingsUpdateStringListProperty(
		settings, 
		key, 
		property, 
		value, 
		size
)
	return cdefs.C.BNSettingsUpdateStringListProperty(settings, key, property, value, size)
end

-- -------------------------------------------------------
-- BNSettingsUpdateStringProperty
-- -------------------------------------------------------

function core.BNSettingsUpdateStringProperty(
		settings, 
		key, 
		property, 
		value
)
	return cdefs.C.BNSettingsUpdateStringProperty(settings, key, property, value)
end

-- -------------------------------------------------------
-- BNSettingsUpdateUInt64Property
-- -------------------------------------------------------

function core.BNSettingsUpdateUInt64Property(
		settings, 
		key, 
		property, 
		value
)
	return cdefs.C.BNSettingsUpdateUInt64Property(settings, key, property, value)
end

-- -------------------------------------------------------
-- BNShowGraphReport
-- -------------------------------------------------------

function core.BNShowGraphReport(
		view, 
		title, 
		graph
)
	return cdefs.C.BNShowGraphReport(view, title, graph)
end

-- -------------------------------------------------------
-- BNShowHTMLReport
-- -------------------------------------------------------

function core.BNShowHTMLReport(
		view, 
		title, 
		contents, 
		plaintext
)
	return cdefs.C.BNShowHTMLReport(view, title, contents, plaintext)
end

-- -------------------------------------------------------
-- BNShowMarkdownReport
-- -------------------------------------------------------

function core.BNShowMarkdownReport(
		view, 
		title, 
		contents, 
		plaintext
)
	return cdefs.C.BNShowMarkdownReport(view, title, contents, plaintext)
end

-- -------------------------------------------------------
-- BNShowMessageBox
-- -------------------------------------------------------

function core.BNShowMessageBox(
		title, 
		text, 
		buttons, 
		icon
)
	return cdefs.C.BNShowMessageBox(title, text, buttons, icon)
end

-- -------------------------------------------------------
-- BNShowPlainTextReport
-- -------------------------------------------------------

function core.BNShowPlainTextReport(
		view, 
		title, 
		contents
)
	return cdefs.C.BNShowPlainTextReport(view, title, contents)
end

-- -------------------------------------------------------
-- BNShowReportCollection
-- -------------------------------------------------------

function core.BNShowReportCollection(
		title, 
		reports
)
	return cdefs.C.BNShowReportCollection(title, reports)
end

-- -------------------------------------------------------
-- BNShutdown
-- -------------------------------------------------------

function core.BNShutdown(
)
	return cdefs.C.BNShutdown()
end

-- -------------------------------------------------------
-- BNSkipAndReturnValue
-- -------------------------------------------------------

function core.BNSkipAndReturnValue(
		view, 
		arch, 
		addr, 
		value
)
	return cdefs.C.BNSkipAndReturnValue(view, arch, addr, value)
end

-- -------------------------------------------------------
-- BNSnapshotHasAncestor
-- -------------------------------------------------------

function core.BNSnapshotHasAncestor(
		snapshot, 
		other
)
	return cdefs.C.BNSnapshotHasAncestor(snapshot, other)
end

-- -------------------------------------------------------
-- BNSnapshotHasContents
-- -------------------------------------------------------

function core.BNSnapshotHasContents(
		snapshot
)
	return cdefs.C.BNSnapshotHasContents(snapshot)
end

-- -------------------------------------------------------
-- BNSnapshotHasData
-- -------------------------------------------------------

function core.BNSnapshotHasData(
		db, 
		id
)
	return cdefs.C.BNSnapshotHasData(db, id)
end

-- -------------------------------------------------------
-- BNSnapshotHasUndo
-- -------------------------------------------------------

function core.BNSnapshotHasUndo(
		snapshot
)
	return cdefs.C.BNSnapshotHasUndo(snapshot)
end

-- -------------------------------------------------------
-- BNSnapshotStoreData
-- -------------------------------------------------------

function core.BNSnapshotStoreData(
		snapshot, 
		data, 
		ctxt, 
		progress
)
	return cdefs.C.BNSnapshotStoreData(snapshot, data, ctxt, progress)
end

-- -------------------------------------------------------
-- BNSplitVariable
-- -------------------------------------------------------

function core.BNSplitVariable(
		func, 
		var
)
	return cdefs.C.BNSplitVariable(func, var)
end

-- -------------------------------------------------------
-- BNStartFlowGraphLayout
-- -------------------------------------------------------

function core.BNStartFlowGraphLayout(
		graph, 
		ctxt, 
		func
)
	local result = cdefs.C.BNStartFlowGraphLayout(graph, ctxt, func)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNStopScriptingInstance
-- -------------------------------------------------------

function core.BNStopScriptingInstance(
		instance
)
	return cdefs.C.BNStopScriptingInstance(instance)
end

-- -------------------------------------------------------
-- BNStoreSecretsProviderData
-- -------------------------------------------------------

function core.BNStoreSecretsProviderData(
		provider, 
		key, 
		data
)
	return cdefs.C.BNStoreSecretsProviderData(provider, key, data)
end

-- -------------------------------------------------------
-- BNStructureBuilderPropagatesDataVariableReferences
-- -------------------------------------------------------

function core.BNStructureBuilderPropagatesDataVariableReferences(
		s
)
	return cdefs.C.BNStructureBuilderPropagatesDataVariableReferences(s)
end

-- -------------------------------------------------------
-- BNStructurePropagatesDataVariableReferences
-- -------------------------------------------------------

function core.BNStructurePropagatesDataVariableReferences(
		s
)
	return cdefs.C.BNStructurePropagatesDataVariableReferences(s)
end

-- -------------------------------------------------------
-- BNStructureWithReplacedEnumeration
-- -------------------------------------------------------

function core.BNStructureWithReplacedEnumeration(
		s, 
		from, 
		to
)
	local result = cdefs.C.BNStructureWithReplacedEnumeration(s, from, to)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNStructureWithReplacedNamedTypeReference
-- -------------------------------------------------------

function core.BNStructureWithReplacedNamedTypeReference(
		s, 
		from, 
		to
)
	local result = cdefs.C.BNStructureWithReplacedNamedTypeReference(s, from, to)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNStructureWithReplacedStructure
-- -------------------------------------------------------

function core.BNStructureWithReplacedStructure(
		s, 
		from, 
		to
)
	local result = cdefs.C.BNStructureWithReplacedStructure(s, from, to)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNTagGetData
-- -------------------------------------------------------

function core.BNTagGetData(
		tag
)
	local result = cdefs.C.BNTagGetData(tag)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNTagGetId
-- -------------------------------------------------------

function core.BNTagGetId(
		tag
)
	local result = cdefs.C.BNTagGetId(tag)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNTagGetType
-- -------------------------------------------------------

function core.BNTagGetType(
		tag
)
	local result = cdefs.C.BNTagGetType(tag)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNTagSetData
-- -------------------------------------------------------

function core.BNTagSetData(
		tag, 
		data
)
	return cdefs.C.BNTagSetData(tag, data)
end

-- -------------------------------------------------------
-- BNTagTypeGetIcon
-- -------------------------------------------------------

function core.BNTagTypeGetIcon(
		tagType
)
	local result = cdefs.C.BNTagTypeGetIcon(tagType)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNTagTypeGetId
-- -------------------------------------------------------

function core.BNTagTypeGetId(
		tagType
)
	local result = cdefs.C.BNTagTypeGetId(tagType)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNTagTypeGetName
-- -------------------------------------------------------

function core.BNTagTypeGetName(
		tagType
)
	local result = cdefs.C.BNTagTypeGetName(tagType)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNTagTypeGetType
-- -------------------------------------------------------

function core.BNTagTypeGetType(
		tagType
)
	return cdefs.C.BNTagTypeGetType(tagType)
end

-- -------------------------------------------------------
-- BNTagTypeGetView
-- -------------------------------------------------------

function core.BNTagTypeGetView(
		tagType
)
	local result = cdefs.C.BNTagTypeGetView(tagType)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNTagTypeGetVisible
-- -------------------------------------------------------

function core.BNTagTypeGetVisible(
		tagType
)
	return cdefs.C.BNTagTypeGetVisible(tagType)
end

-- -------------------------------------------------------
-- BNTagTypeSetIcon
-- -------------------------------------------------------

function core.BNTagTypeSetIcon(
		tagType, 
		icon
)
	return cdefs.C.BNTagTypeSetIcon(tagType, icon)
end

-- -------------------------------------------------------
-- BNTagTypeSetName
-- -------------------------------------------------------

function core.BNTagTypeSetName(
		tagType, 
		name
)
	return cdefs.C.BNTagTypeSetName(tagType, name)
end

-- -------------------------------------------------------
-- BNTagTypeSetType
-- -------------------------------------------------------

function core.BNTagTypeSetType(
		tagType, 
		type
)
	return cdefs.C.BNTagTypeSetType(tagType, type)
end

-- -------------------------------------------------------
-- BNTagTypeSetVisible
-- -------------------------------------------------------

function core.BNTagTypeSetVisible(
		tagType, 
		visible
)
	return cdefs.C.BNTagTypeSetVisible(tagType, visible)
end

-- -------------------------------------------------------
-- BNToVariableIdentifier
-- -------------------------------------------------------

function core.BNToVariableIdentifier(
		var
)
	return cdefs.C.BNToVariableIdentifier(var)
end

-- -------------------------------------------------------
-- BNTrimDatabaseSnapshot
-- -------------------------------------------------------

function core.BNTrimDatabaseSnapshot(
		database, 
		id
)
	return cdefs.C.BNTrimDatabaseSnapshot(database, id)
end

-- -------------------------------------------------------
-- BNTypeBuilderGetReferenceType
-- -------------------------------------------------------

function core.BNTypeBuilderGetReferenceType(
		type
)
	return cdefs.C.BNTypeBuilderGetReferenceType(type)
end

-- -------------------------------------------------------
-- BNTypeBuilderGetStructureName
-- -------------------------------------------------------

function core.BNTypeBuilderGetStructureName(
		type
)
	return cdefs.C.BNTypeBuilderGetStructureName(type)
end

-- -------------------------------------------------------
-- BNTypeBuilderGetSystemCallNumber
-- -------------------------------------------------------

function core.BNTypeBuilderGetSystemCallNumber(
		type
)
	return cdefs.C.BNTypeBuilderGetSystemCallNumber(type)
end

-- -------------------------------------------------------
-- BNTypeBuilderGetTypeName
-- -------------------------------------------------------

function core.BNTypeBuilderGetTypeName(
		nt
)
	return cdefs.C.BNTypeBuilderGetTypeName(nt)
end

-- -------------------------------------------------------
-- BNTypeBuilderHasVariableArguments
-- -------------------------------------------------------

function core.BNTypeBuilderHasVariableArguments(
		type
)
	return cdefs.C.BNTypeBuilderHasVariableArguments(type)
end

-- -------------------------------------------------------
-- BNTypeBuilderIsSystemCall
-- -------------------------------------------------------

function core.BNTypeBuilderIsSystemCall(
		type
)
	return cdefs.C.BNTypeBuilderIsSystemCall(type)
end

-- -------------------------------------------------------
-- BNTypeBuilderSetAlternateName
-- -------------------------------------------------------

function core.BNTypeBuilderSetAlternateName(
		type, 
		name
)
	return cdefs.C.BNTypeBuilderSetAlternateName(type, name)
end

-- -------------------------------------------------------
-- BNTypeBuilderSetChildType
-- -------------------------------------------------------

function core.BNTypeBuilderSetChildType(
		type, 
		child
)
	return cdefs.C.BNTypeBuilderSetChildType(type, child)
end

-- -------------------------------------------------------
-- BNTypeBuilderSetConst
-- -------------------------------------------------------

function core.BNTypeBuilderSetConst(
		type, 
		cnst
)
	return cdefs.C.BNTypeBuilderSetConst(type, cnst)
end

-- -------------------------------------------------------
-- BNTypeBuilderSetSigned
-- -------------------------------------------------------

function core.BNTypeBuilderSetSigned(
		type, 
		sign
)
	return cdefs.C.BNTypeBuilderSetSigned(type, sign)
end

-- -------------------------------------------------------
-- BNTypeBuilderSetStackAdjustment
-- -------------------------------------------------------

function core.BNTypeBuilderSetStackAdjustment(
		type, 
		adjust
)
	return cdefs.C.BNTypeBuilderSetStackAdjustment(type, adjust)
end

-- -------------------------------------------------------
-- BNTypeBuilderSetSystemCallNumber
-- -------------------------------------------------------

function core.BNTypeBuilderSetSystemCallNumber(
		type, 
		v, 
		n
)
	return cdefs.C.BNTypeBuilderSetSystemCallNumber(type, v, n)
end

-- -------------------------------------------------------
-- BNTypeBuilderSetTypeName
-- -------------------------------------------------------

function core.BNTypeBuilderSetTypeName(
		type, 
		name
)
	return cdefs.C.BNTypeBuilderSetTypeName(type, name)
end

-- -------------------------------------------------------
-- BNTypeBuilderSetVolatile
-- -------------------------------------------------------

function core.BNTypeBuilderSetVolatile(
		type, 
		vltl
)
	return cdefs.C.BNTypeBuilderSetVolatile(type, vltl)
end

-- -------------------------------------------------------
-- BNTypeGetReferenceType
-- -------------------------------------------------------

function core.BNTypeGetReferenceType(
		type
)
	return cdefs.C.BNTypeGetReferenceType(type)
end

-- -------------------------------------------------------
-- BNTypeGetStructureName
-- -------------------------------------------------------

function core.BNTypeGetStructureName(
		type
)
	return cdefs.C.BNTypeGetStructureName(type)
end

-- -------------------------------------------------------
-- BNTypeGetSystemCallNumber
-- -------------------------------------------------------

function core.BNTypeGetSystemCallNumber(
		type
)
	return cdefs.C.BNTypeGetSystemCallNumber(type)
end

-- -------------------------------------------------------
-- BNTypeGetTypeName
-- -------------------------------------------------------

function core.BNTypeGetTypeName(
		nt
)
	return cdefs.C.BNTypeGetTypeName(nt)
end

-- -------------------------------------------------------
-- BNTypeHasVariableArguments
-- -------------------------------------------------------

function core.BNTypeHasVariableArguments(
		type
)
	return cdefs.C.BNTypeHasVariableArguments(type)
end

-- -------------------------------------------------------
-- BNTypeIsSystemCall
-- -------------------------------------------------------

function core.BNTypeIsSystemCall(
		type
)
	return cdefs.C.BNTypeIsSystemCall(type)
end

-- -------------------------------------------------------
-- BNTypeLibraryDecompressToFile
-- -------------------------------------------------------

function core.BNTypeLibraryDecompressToFile(
		file, 
		output
)
	return cdefs.C.BNTypeLibraryDecompressToFile(file, output)
end

-- -------------------------------------------------------
-- BNTypeLibraryDecompressToString
-- -------------------------------------------------------

function core.BNTypeLibraryDecompressToString(
		file
)
	local result = cdefs.C.BNTypeLibraryDecompressToString(file)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNTypeLibraryQueryMetadata
-- -------------------------------------------------------

function core.BNTypeLibraryQueryMetadata(
		lib, 
		key
)
	local result = cdefs.C.BNTypeLibraryQueryMetadata(lib, key)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNTypeLibraryRemoveMetadata
-- -------------------------------------------------------

function core.BNTypeLibraryRemoveMetadata(
		lib, 
		key
)
	return cdefs.C.BNTypeLibraryRemoveMetadata(lib, key)
end

-- -------------------------------------------------------
-- BNTypeLibraryStoreMetadata
-- -------------------------------------------------------

function core.BNTypeLibraryStoreMetadata(
		lib, 
		key, 
		value
)
	return cdefs.C.BNTypeLibraryStoreMetadata(lib, key, value)
end

-- -------------------------------------------------------
-- BNTypeParserParseTypeString
-- -------------------------------------------------------

function core.BNTypeParserParseTypeString(
		parser, 
		source, 
		platform, 
		existingTypes, 
		existingTypeCount, 
		result, 
		errors, 
		errorCount
)
	return cdefs.C.BNTypeParserParseTypeString(parser, source, platform, existingTypes, existingTypeCount, result, errors, errorCount)
end

-- -------------------------------------------------------
-- BNTypeParserParseTypesFromSource
-- -------------------------------------------------------

function core.BNTypeParserParseTypesFromSource(
		parser, 
		source, 
		fileName, 
		platform, 
		existingTypes, 
		existingTypeCount, 
		options, 
		optionCount, 
		includeDirs, 
		includeDirCount, 
		autoTypeSource, 
		result, 
		errors, 
		errorCount
)
	return cdefs.C.BNTypeParserParseTypesFromSource(parser, source, fileName, platform, existingTypes, existingTypeCount, options, optionCount, includeDirs, includeDirCount, autoTypeSource, result, errors, errorCount)
end

-- -------------------------------------------------------
-- BNTypeParserPreprocessSource
-- -------------------------------------------------------

function core.BNTypeParserPreprocessSource(
		parser, 
		source, 
		fileName, 
		platform, 
		existingTypes, 
		existingTypeCount, 
		options, 
		optionCount, 
		includeDirs, 
		includeDirCount, 
		output, 
		errors, 
		errorCount
)
	return cdefs.C.BNTypeParserPreprocessSource(parser, source, fileName, platform, existingTypes, existingTypeCount, options, optionCount, includeDirs, includeDirCount, output, errors, errorCount)
end

-- -------------------------------------------------------
-- BNTypePrinterDefaultPrintAllTypes
-- -------------------------------------------------------

function core.BNTypePrinterDefaultPrintAllTypes(
		printer, 
		names, 
		types, 
		typeCount, 
		data, 
		lineWidth, 
		escaping, 
		result
)
	return cdefs.C.BNTypePrinterDefaultPrintAllTypes(printer, names, types, typeCount, data, lineWidth, escaping, result)
end

-- -------------------------------------------------------
-- BNTypePrinterPrintAllTypes
-- -------------------------------------------------------

function core.BNTypePrinterPrintAllTypes(
		printer, 
		names, 
		types, 
		typeCount, 
		data, 
		lineWidth, 
		escaping, 
		result
)
	return cdefs.C.BNTypePrinterPrintAllTypes(printer, names, types, typeCount, data, lineWidth, escaping, result)
end

-- -------------------------------------------------------
-- BNTypeWithReplacedEnumeration
-- -------------------------------------------------------

function core.BNTypeWithReplacedEnumeration(
		type, 
		from, 
		to
)
	local result = cdefs.C.BNTypeWithReplacedEnumeration(type, from, to)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNTypeWithReplacedNamedTypeReference
-- -------------------------------------------------------

function core.BNTypeWithReplacedNamedTypeReference(
		type, 
		from, 
		to
)
	local result = cdefs.C.BNTypeWithReplacedNamedTypeReference(type, from, to)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNTypeWithReplacedStructure
-- -------------------------------------------------------

function core.BNTypeWithReplacedStructure(
		type, 
		from, 
		to
)
	local result = cdefs.C.BNTypeWithReplacedStructure(type, from, to)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNTypesEqual
-- -------------------------------------------------------

function core.BNTypesEqual(
		a, 
		b
)
	return cdefs.C.BNTypesEqual(a, b)
end

-- -------------------------------------------------------
-- BNTypesNotEqual
-- -------------------------------------------------------

function core.BNTypesNotEqual(
		a, 
		b
)
	return cdefs.C.BNTypesNotEqual(a, b)
end

-- -------------------------------------------------------
-- BNUndefineAnalysisType
-- -------------------------------------------------------

function core.BNUndefineAnalysisType(
		view, 
		id
)
	return cdefs.C.BNUndefineAnalysisType(view, id)
end

-- -------------------------------------------------------
-- BNUndefineAutoSymbol
-- -------------------------------------------------------

function core.BNUndefineAutoSymbol(
		view, 
		sym
)
	return cdefs.C.BNUndefineAutoSymbol(view, sym)
end

-- -------------------------------------------------------
-- BNUndefineDataVariable
-- -------------------------------------------------------

function core.BNUndefineDataVariable(
		view, 
		addr
)
	return cdefs.C.BNUndefineDataVariable(view, addr)
end

-- -------------------------------------------------------
-- BNUndefineUserAnalysisType
-- -------------------------------------------------------

function core.BNUndefineUserAnalysisType(
		view, 
		name
)
	return cdefs.C.BNUndefineUserAnalysisType(view, name)
end

-- -------------------------------------------------------
-- BNUndefineUserDataVariable
-- -------------------------------------------------------

function core.BNUndefineUserDataVariable(
		view, 
		addr
)
	return cdefs.C.BNUndefineUserDataVariable(view, addr)
end

-- -------------------------------------------------------
-- BNUndefineUserSymbol
-- -------------------------------------------------------

function core.BNUndefineUserSymbol(
		view, 
		sym
)
	return cdefs.C.BNUndefineUserSymbol(view, sym)
end

-- -------------------------------------------------------
-- BNUndo
-- -------------------------------------------------------

function core.BNUndo(
		file
)
	return cdefs.C.BNUndo(file)
end

-- -------------------------------------------------------
-- BNUnescapeTypeName
-- -------------------------------------------------------

function core.BNUnescapeTypeName(
		name, 
		escaping
)
	local result = cdefs.C.BNUnescapeTypeName(name, escaping)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNUnmergeVariables
-- -------------------------------------------------------

function core.BNUnmergeVariables(
		func, 
		target, 
		sources, 
		sourceCount
)
	return cdefs.C.BNUnmergeVariables(func, target, sources, sourceCount)
end

-- -------------------------------------------------------
-- BNUnregisterDataNotification
-- -------------------------------------------------------

function core.BNUnregisterDataNotification(
		view, 
		notify
)
	return cdefs.C.BNUnregisterDataNotification(view, notify)
end

-- -------------------------------------------------------
-- BNUnregisterDebugInfoParser
-- -------------------------------------------------------

function core.BNUnregisterDebugInfoParser(
		rawName
)
	return cdefs.C.BNUnregisterDebugInfoParser(rawName)
end

-- -------------------------------------------------------
-- BNUnregisterEnterpriseServerNotification
-- -------------------------------------------------------

function core.BNUnregisterEnterpriseServerNotification(
		notify
)
	return cdefs.C.BNUnregisterEnterpriseServerNotification(notify)
end

-- -------------------------------------------------------
-- BNUnregisterLogListener
-- -------------------------------------------------------

function core.BNUnregisterLogListener(
		listener
)
	return cdefs.C.BNUnregisterLogListener(listener)
end

-- -------------------------------------------------------
-- BNUnregisterObjectDestructionCallbacks
-- -------------------------------------------------------

function core.BNUnregisterObjectDestructionCallbacks(
		callbacks
)
	return cdefs.C.BNUnregisterObjectDestructionCallbacks(callbacks)
end

-- -------------------------------------------------------
-- BNUnregisterObjectRefDebugTrace
-- -------------------------------------------------------

function core.BNUnregisterObjectRefDebugTrace(
		typeName, 
		trace
)
	return cdefs.C.BNUnregisterObjectRefDebugTrace(typeName, trace)
end

-- -------------------------------------------------------
-- BNUnregisterScriptingInstanceOutputListener
-- -------------------------------------------------------

function core.BNUnregisterScriptingInstanceOutputListener(
		instance, 
		callbacks
)
	return cdefs.C.BNUnregisterScriptingInstanceOutputListener(instance, callbacks)
end

-- -------------------------------------------------------
-- BNUnregisterViewOfType
-- -------------------------------------------------------

function core.BNUnregisterViewOfType(
		file, 
		type, 
		view
)
	return cdefs.C.BNUnregisterViewOfType(file, type, view)
end

-- -------------------------------------------------------
-- BNUnsplitVariable
-- -------------------------------------------------------

function core.BNUnsplitVariable(
		func, 
		var
)
	return cdefs.C.BNUnsplitVariable(func, var)
end

-- -------------------------------------------------------
-- BNUpdateAnalysis
-- -------------------------------------------------------

function core.BNUpdateAnalysis(
		view
)
	return cdefs.C.BNUpdateAnalysis(view)
end

-- -------------------------------------------------------
-- BNUpdateAnalysisAndWait
-- -------------------------------------------------------

function core.BNUpdateAnalysisAndWait(
		view
)
	return cdefs.C.BNUpdateAnalysisAndWait(view)
end

-- -------------------------------------------------------
-- BNUpdateEnterpriseServerLicense
-- -------------------------------------------------------

function core.BNUpdateEnterpriseServerLicense(
		timeout
)
	return cdefs.C.BNUpdateEnterpriseServerLicense(timeout)
end

-- -------------------------------------------------------
-- BNUpdateFlowGraph
-- -------------------------------------------------------

function core.BNUpdateFlowGraph(
		graph
)
	local result = cdefs.C.BNUpdateFlowGraph(graph)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNUpdateHighLevelILOperand
-- -------------------------------------------------------

function core.BNUpdateHighLevelILOperand(
		func, 
		instr, 
		operandIndex, 
		value
)
	return cdefs.C.BNUpdateHighLevelILOperand(func, instr, operandIndex, value)
end

-- -------------------------------------------------------
-- BNUpdateLogListeners
-- -------------------------------------------------------

function core.BNUpdateLogListeners(
)
	return cdefs.C.BNUpdateLogListeners()
end

-- -------------------------------------------------------
-- BNUpdateLowLevelILOperand
-- -------------------------------------------------------

function core.BNUpdateLowLevelILOperand(
		func, 
		instr, 
		operandIndex, 
		value
)
	return cdefs.C.BNUpdateLowLevelILOperand(func, instr, operandIndex, value)
end

-- -------------------------------------------------------
-- BNUpdateMediumLevelILOperand
-- -------------------------------------------------------

function core.BNUpdateMediumLevelILOperand(
		func, 
		instr, 
		operandIndex, 
		value
)
	return cdefs.C.BNUpdateMediumLevelILOperand(func, instr, operandIndex, value)
end

-- -------------------------------------------------------
-- BNUpdateReportFlowGraph
-- -------------------------------------------------------

function core.BNUpdateReportFlowGraph(
		reports, 
		i, 
		graph
)
	return cdefs.C.BNUpdateReportFlowGraph(reports, i, graph)
end

-- -------------------------------------------------------
-- BNUpdateToLatestVersion
-- -------------------------------------------------------

function core.BNUpdateToLatestVersion(
		channel, 
		errors, 
		progress, 
		context
)
	return cdefs.C.BNUpdateToLatestVersion(channel, errors, progress, context)
end

-- -------------------------------------------------------
-- BNUpdateToVersion
-- -------------------------------------------------------

function core.BNUpdateToVersion(
		channel, 
		version, 
		errors, 
		progress, 
		context
)
	return cdefs.C.BNUpdateToVersion(channel, version, errors, progress, context)
end

-- -------------------------------------------------------
-- BNUpdatesChecked
-- -------------------------------------------------------

function core.BNUpdatesChecked(
)
	return cdefs.C.BNUpdatesChecked()
end

-- -------------------------------------------------------
-- BNWaitForMainThreadAction
-- -------------------------------------------------------

function core.BNWaitForMainThreadAction(
		action
)
	return cdefs.C.BNWaitForMainThreadAction(action)
end

-- -------------------------------------------------------
-- BNWasFunctionAutomaticallyDiscovered
-- -------------------------------------------------------

function core.BNWasFunctionAutomaticallyDiscovered(
		func
)
	return cdefs.C.BNWasFunctionAutomaticallyDiscovered(func)
end

-- -------------------------------------------------------
-- BNWorkerEnqueue
-- -------------------------------------------------------

function core.BNWorkerEnqueue(
		ctxt, 
		action
)
	return cdefs.C.BNWorkerEnqueue(ctxt, action)
end

-- -------------------------------------------------------
-- BNWorkerInteractiveEnqueue
-- -------------------------------------------------------

function core.BNWorkerInteractiveEnqueue(
		ctxt, 
		action
)
	return cdefs.C.BNWorkerInteractiveEnqueue(ctxt, action)
end

-- -------------------------------------------------------
-- BNWorkerPriorityEnqueue
-- -------------------------------------------------------

function core.BNWorkerPriorityEnqueue(
		ctxt, 
		action
)
	return cdefs.C.BNWorkerPriorityEnqueue(ctxt, action)
end

-- -------------------------------------------------------
-- BNWorkflowAssignSubactivities
-- -------------------------------------------------------

function core.BNWorkflowAssignSubactivities(
		workflow, 
		activity, 
		activities, 
		size
)
	return cdefs.C.BNWorkflowAssignSubactivities(workflow, activity, activities, size)
end

-- -------------------------------------------------------
-- BNWorkflowClear
-- -------------------------------------------------------

function core.BNWorkflowClear(
		workflow
)
	return cdefs.C.BNWorkflowClear(workflow)
end

-- -------------------------------------------------------
-- BNWorkflowClone
-- -------------------------------------------------------

function core.BNWorkflowClone(
		workflow, 
		name, 
		activity
)
	local result = cdefs.C.BNWorkflowClone(workflow, name, activity)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNWorkflowContains
-- -------------------------------------------------------

function core.BNWorkflowContains(
		workflow, 
		activity
)
	return cdefs.C.BNWorkflowContains(workflow, activity)
end

-- -------------------------------------------------------
-- BNWorkflowGetActivity
-- -------------------------------------------------------

function core.BNWorkflowGetActivity(
		workflow, 
		activity
)
	local result = cdefs.C.BNWorkflowGetActivity(workflow, activity)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNWorkflowGetActivityRoots
-- -------------------------------------------------------

function core.BNWorkflowGetActivityRoots(
		workflow, 
		activity, 
		inoutSize
)
	local result = cdefs.C.BNWorkflowGetActivityRoots(workflow, activity, inoutSize)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNWorkflowGetConfiguration
-- -------------------------------------------------------

function core.BNWorkflowGetConfiguration(
		workflow, 
		activity
)
	local result = cdefs.C.BNWorkflowGetConfiguration(workflow, activity)
	local string = cdefs.string(result)
	core.BNFreeString(result)
	return string
end

-- -------------------------------------------------------
-- BNWorkflowGetGraph
-- -------------------------------------------------------

function core.BNWorkflowGetGraph(
		workflow, 
		activity, 
		sequential
)
	local result = cdefs.C.BNWorkflowGetGraph(workflow, activity, sequential)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNWorkflowGetSubactivities
-- -------------------------------------------------------

function core.BNWorkflowGetSubactivities(
		workflow, 
		activity, 
		immediate, 
		inoutSize
)
	local result = cdefs.C.BNWorkflowGetSubactivities(workflow, activity, immediate, inoutSize)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNWorkflowInsert
-- -------------------------------------------------------

function core.BNWorkflowInsert(
		workflow, 
		activity, 
		activities, 
		size
)
	return cdefs.C.BNWorkflowInsert(workflow, activity, activities, size)
end

-- -------------------------------------------------------
-- BNWorkflowInstance
-- -------------------------------------------------------

function core.BNWorkflowInstance(
		name
)
	local result = cdefs.C.BNWorkflowInstance(name)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNWorkflowIsRegistered
-- -------------------------------------------------------

function core.BNWorkflowIsRegistered(
		workflow
)
	return cdefs.C.BNWorkflowIsRegistered(workflow)
end

-- -------------------------------------------------------
-- BNWorkflowRegisterActivity
-- -------------------------------------------------------

function core.BNWorkflowRegisterActivity(
		workflow, 
		activity, 
		subactivities, 
		size, 
		description
)
	return cdefs.C.BNWorkflowRegisterActivity(workflow, activity, subactivities, size, description)
end

-- -------------------------------------------------------
-- BNWorkflowRemove
-- -------------------------------------------------------

function core.BNWorkflowRemove(
		workflow, 
		activity
)
	return cdefs.C.BNWorkflowRemove(workflow, activity)
end

-- -------------------------------------------------------
-- BNWorkflowReplace
-- -------------------------------------------------------

function core.BNWorkflowReplace(
		workflow, 
		activity, 
		newActivity
)
	return cdefs.C.BNWorkflowReplace(workflow, activity, newActivity)
end

-- -------------------------------------------------------
-- BNWorkflowShowReport
-- -------------------------------------------------------

function core.BNWorkflowShowReport(
		workflow, 
		name
)
	return cdefs.C.BNWorkflowShowReport(workflow, name)
end

-- -------------------------------------------------------
-- BNWorkflowSize
-- -------------------------------------------------------

function core.BNWorkflowSize(
		workflow
)
	return cdefs.C.BNWorkflowSize(workflow)
end

-- -------------------------------------------------------
-- BNWrite16
-- -------------------------------------------------------

function core.BNWrite16(
		stream, 
		val
)
	return cdefs.C.BNWrite16(stream, val)
end

-- -------------------------------------------------------
-- BNWrite32
-- -------------------------------------------------------

function core.BNWrite32(
		stream, 
		val
)
	return cdefs.C.BNWrite32(stream, val)
end

-- -------------------------------------------------------
-- BNWrite64
-- -------------------------------------------------------

function core.BNWrite64(
		stream, 
		val
)
	return cdefs.C.BNWrite64(stream, val)
end

-- -------------------------------------------------------
-- BNWrite8
-- -------------------------------------------------------

function core.BNWrite8(
		stream, 
		val
)
	return cdefs.C.BNWrite8(stream, val)
end

-- -------------------------------------------------------
-- BNWriteBE16
-- -------------------------------------------------------

function core.BNWriteBE16(
		stream, 
		val
)
	return cdefs.C.BNWriteBE16(stream, val)
end

-- -------------------------------------------------------
-- BNWriteBE32
-- -------------------------------------------------------

function core.BNWriteBE32(
		stream, 
		val
)
	return cdefs.C.BNWriteBE32(stream, val)
end

-- -------------------------------------------------------
-- BNWriteBE64
-- -------------------------------------------------------

function core.BNWriteBE64(
		stream, 
		val
)
	return cdefs.C.BNWriteBE64(stream, val)
end

-- -------------------------------------------------------
-- BNWriteData
-- -------------------------------------------------------

function core.BNWriteData(
		stream, 
		src, 
		len
)
	return cdefs.C.BNWriteData(stream, src, len)
end

-- -------------------------------------------------------
-- BNWriteDataForDownloadInstance
-- -------------------------------------------------------

function core.BNWriteDataForDownloadInstance(
		instance, 
		data, 
		len
)
	return cdefs.C.BNWriteDataForDownloadInstance(instance, data, len)
end

-- -------------------------------------------------------
-- BNWriteDatabaseAnalysisCache
-- -------------------------------------------------------

function core.BNWriteDatabaseAnalysisCache(
		database, 
		val
)
	return cdefs.C.BNWriteDatabaseAnalysisCache(database, val)
end

-- -------------------------------------------------------
-- BNWriteDatabaseGlobal
-- -------------------------------------------------------

function core.BNWriteDatabaseGlobal(
		database, 
		key, 
		val
)
	return cdefs.C.BNWriteDatabaseGlobal(database, key, val)
end

-- -------------------------------------------------------
-- BNWriteDatabaseGlobalData
-- -------------------------------------------------------

function core.BNWriteDatabaseGlobalData(
		database, 
		key, 
		val
)
	return cdefs.C.BNWriteDatabaseGlobalData(database, key, val)
end

-- -------------------------------------------------------
-- BNWriteDatabaseSnapshotData
-- -------------------------------------------------------

function core.BNWriteDatabaseSnapshotData(
		database, 
		parents, 
		parentCount, 
		file, 
		name, 
		data, 
		autoSave, 
		ctxt, 
		progress
)
	return cdefs.C.BNWriteDatabaseSnapshotData(database, parents, parentCount, file, name, data, autoSave, ctxt, progress)
end

-- -------------------------------------------------------
-- BNWriteLE16
-- -------------------------------------------------------

function core.BNWriteLE16(
		stream, 
		val
)
	return cdefs.C.BNWriteLE16(stream, val)
end

-- -------------------------------------------------------
-- BNWriteLE32
-- -------------------------------------------------------

function core.BNWriteLE32(
		stream, 
		val
)
	return cdefs.C.BNWriteLE32(stream, val)
end

-- -------------------------------------------------------
-- BNWriteLE64
-- -------------------------------------------------------

function core.BNWriteLE64(
		stream, 
		val
)
	return cdefs.C.BNWriteLE64(stream, val)
end

-- -------------------------------------------------------
-- BNWriteTypeLibraryToFile
-- -------------------------------------------------------

function core.BNWriteTypeLibraryToFile(
		lib, 
		path
)
	return cdefs.C.BNWriteTypeLibraryToFile(lib, path)
end

-- -------------------------------------------------------
-- BNWriteViewBuffer
-- -------------------------------------------------------

function core.BNWriteViewBuffer(
		view, 
		offset, 
		data
)
	return cdefs.C.BNWriteViewBuffer(view, offset, data)
end

-- -------------------------------------------------------
-- BNWriteViewData
-- -------------------------------------------------------

function core.BNWriteViewData(
		view, 
		offset, 
		data, 
		len
)
	return cdefs.C.BNWriteViewData(view, offset, data, len)
end

-- -------------------------------------------------------
-- BNWriteWebsocketClientData
-- -------------------------------------------------------

function core.BNWriteWebsocketClientData(
		client, 
		data, 
		len
)
	return cdefs.C.BNWriteWebsocketClientData(client, data, len)
end

-- -------------------------------------------------------
-- BNZlibCompress
-- -------------------------------------------------------

function core.BNZlibCompress(
		buf
)
	local result = cdefs.C.BNZlibCompress(buf)
	if not result then 
		return nil
	end

	return result
end

-- -------------------------------------------------------
-- BNZlibDecompress
-- -------------------------------------------------------

function core.BNZlibDecompress(
		buf
)
	local result = cdefs.C.BNZlibDecompress(buf)
	if not result then 
		return nil
	end

	return result
end
core.max_confidence = 255


-- Helper functions

-- Set path for core plugins
-- BNSetBundledPluginDirectory(os.path.join(_base_path, 'plugins'))

return core
