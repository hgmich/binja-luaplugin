local ffi = require('ffi')

ffi.cdef [[
	typedef enum ActionType {
		TemporaryAction = 0,
		DataModificationAction = 1,
		AnalysisAction = 2,
		DataModificationAndAnalysisAction = 3,
} BNActionType;

struct BNActiveAnalysisInfo {
	struct BNFunction* func;
	uint64_t analysisTime;
	uint64_t updateCount;
	uint64_t submitCount;
};

struct BNActivity {
};

struct BNAddressRange {
	uint64_t start;
	uint64_t end;
};

struct BNAnalysisCompletionEvent {
};

struct BNAnalysisContext {
};


	typedef enum AnalysisState {
		InitialState = 0,
		HoldState = 1,
		IdleState = 2,
		DisassembleState = 3,
		AnalyzeState = 4,
		ExtendedAnalyzeState = 5,
} BNAnalysisState;

struct BNAnalysisInfo {
	BNAnalysisState state;
	uint64_t analysisTime;
	struct BNActiveAnalysisInfo* activeInfo;
	uint64_t count;
};


	typedef enum AnalysisMode {
		FullAnalysisMode = 0,
		IntermediateAnalysisMode = 1,
		BasicAnalysisMode = 2,
		ControlFlowAnalysisMode = 3,
} BNAnalysisMode;

struct BNAnalysisParameters {
	uint64_t maxAnalysisTime;
	uint64_t maxFunctionSize;
	uint64_t maxFunctionAnalysisTime;
	uint64_t maxFunctionUpdateCount;
	uint64_t maxFunctionSubmitCount;
	bool suppressNewAutoFunctionAnalysis;
	BNAnalysisMode mode;
	bool alwaysAnalyzeIndirectBranches;
	uint64_t advancedAnalysisCacheSize;
};

struct BNAnalysisProgress {
	BNAnalysisState state;
	uint64_t count;
	uint64_t total;
};


	typedef enum AnalysisSkipReason {
		NoSkipReason = 0,
		AlwaysSkipReason = 1,
		ExceedFunctionSizeSkipReason = 2,
		ExceedFunctionAnalysisTimeSkipReason = 3,
		ExceedFunctionUpdateCountSkipReason = 4,
		NewAutoFunctionAnalysisSuppressedReason = 5,
		BasicAnalysisSkipReason = 6,
		IntermediateAnalysisSkipReason = 7,
} BNAnalysisSkipReason;


	typedef enum AnalysisWarningActionType {
		NoAnalysisWarningAction = 0,
		ForceAnalysisWarningAction = 1,
		ShowStackGraphWarningAction = 2,
} BNAnalysisWarningActionType;

struct BNArchitecture {
};

struct BNArchitectureAndAddress {
	struct BNArchitecture* arch;
	uint64_t address;
};

struct BNBackgroundTask {
};

struct BNBaseStructure {
	struct BNNamedTypeReference* type;
	uint64_t offset;
	uint64_t width;
};

struct BNBasicBlock {
};


	typedef enum BranchType {
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
} BNBranchType;

struct BNBasicBlockEdge {
	BNBranchType type;
	struct BNBasicBlock* target;
	bool backEdge;
	bool fallThrough;
};

struct BNBinaryDataNotification {
	void* context;
	void (* dataWritten)(void* ctxt, struct BNBinaryView* view, uint64_t offset, uint64_t len);
	void (* dataInserted)(void* ctxt, struct BNBinaryView* view, uint64_t offset, uint64_t len);
	void (* dataRemoved)(void* ctxt, struct BNBinaryView* view, uint64_t offset, uint64_t len);
	void (* functionAdded)(void* ctxt, struct BNBinaryView* view, struct BNFunction* func);
	void (* functionRemoved)(void* ctxt, struct BNBinaryView* view, struct BNFunction* func);
	void (* functionUpdated)(void* ctxt, struct BNBinaryView* view, struct BNFunction* func);
	void (* functionUpdateRequested)(void* ctxt, struct BNBinaryView* view, struct BNFunction* func);
	void (* dataVariableAdded)(void* ctxt, struct BNBinaryView* view, struct BNDataVariable* var);
	void (* dataVariableRemoved)(void* ctxt, struct BNBinaryView* view, struct BNDataVariable* var);
	void (* dataVariableUpdated)(void* ctxt, struct BNBinaryView* view, struct BNDataVariable* var);
	void (* dataMetadataUpdated)(void* ctxt, struct BNBinaryView* view, uint64_t offset);
	void (* tagTypeUpdated)(void* ctxt, struct BNBinaryView* view, struct BNTagType* tagType);
	void (* tagAdded)(void* ctxt, struct BNBinaryView* view, struct BNTagReference* tagRef);
	void (* tagUpdated)(void* ctxt, struct BNBinaryView* view, struct BNTagReference* tagRef);
	void (* tagRemoved)(void* ctxt, struct BNBinaryView* view, struct BNTagReference* tagRef);
	void (* symbolAdded)(void* ctxt, struct BNBinaryView* view, struct BNSymbol* sym);
	void (* symbolUpdated)(void* ctxt, struct BNBinaryView* view, struct BNSymbol* sym);
	void (* symbolRemoved)(void* ctxt, struct BNBinaryView* view, struct BNSymbol* sym);
	void (* stringFound)(void* ctxt, struct BNBinaryView* view, enum BNStringType type, uint64_t offset, uint64_t len);
	void (* stringRemoved)(void* ctxt, struct BNBinaryView* view, enum BNStringType type, uint64_t offset, uint64_t len);
	void (* typeDefined)(void* ctxt, struct BNBinaryView* view, struct BNQualifiedName* name, struct BNType* type);
	void (* typeUndefined)(void* ctxt, struct BNBinaryView* view, struct BNQualifiedName* name, struct BNType* type);
	void (* typeReferenceChanged)(void* ctxt, struct BNBinaryView* view, struct BNQualifiedName* name, struct BNType* type);
	void (* typeFieldReferenceChanged)(void* ctxt, struct BNBinaryView* view, struct BNQualifiedName* name, uint64_t offset);
	void (* segmentAdded)(void* ctxt, struct BNBinaryView* view, struct BNSegment* segment);
	void (* segmentUpdated)(void* ctxt, struct BNBinaryView* view, struct BNSegment* segment);
	void (* segmentRemoved)(void* ctxt, struct BNBinaryView* view, struct BNSegment* segment);
	void (* sectionAdded)(void* ctxt, struct BNBinaryView* view, struct BNSection* section);
	void (* sectionUpdated)(void* ctxt, struct BNBinaryView* view, struct BNSection* section);
	void (* sectionRemoved)(void* ctxt, struct BNBinaryView* view, struct BNSection* section);
	void (* componentNameUpdated)(void* ctxt, struct BNBinaryView* view, char* previousName, struct BNComponent* component);
	void (* componentAdded)(void* ctxt, struct BNBinaryView* view, struct BNComponent* component);
	void (* componentMoved)(void* ctxt, struct BNBinaryView* view, struct BNComponent* formerParent, struct BNComponent* newParent, struct BNComponent* component);
	void (* componentRemoved)(void* ctxt, struct BNBinaryView* view, struct BNComponent* formerParent, struct BNComponent* component);
	void (* componentFunctionAdded)(void* ctxt, struct BNBinaryView* view, struct BNComponent* component, struct BNFunction* function);
	void (* componentFunctionRemoved)(void* ctxt, struct BNBinaryView* view, struct BNComponent* component, struct BNFunction* function);
	void (* componentDataVariableAdded)(void* ctxt, struct BNBinaryView* view, struct BNComponent* component, struct BNDataVariable* var);
	void (* componentDataVariableRemoved)(void* ctxt, struct BNBinaryView* view, struct BNComponent* component, struct BNDataVariable* var);
};

struct BNBinaryReader {
};

struct BNBinaryView {
};


	typedef enum BinaryViewEventType {
		BinaryViewFinalizationEvent = 0,
		BinaryViewInitialAnalysisCompletionEvent = 1,
} BNBinaryViewEventType;

struct BNBinaryViewEvent {
	BNBinaryViewEventType type;
	void (* callback)(void* ctxt, struct BNBinaryView* view);
	void* ctx;
};

struct BNBinaryViewType {
};

struct BNBinaryWriter {
};

struct BNBoolWithConfidence {
	bool value;
	uint8_t confidence;
};

struct BNCallingConvention {
};


	typedef enum CallingConventionName {
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
} BNCallingConventionName;

struct BNCallingConventionWithConfidence {
	struct BNCallingConvention* convention;
	uint8_t confidence;
};

struct BNComponent {
};

struct BNConstantReference {
	int64_t value;
	uint64_t size;
	bool pointer;
	bool intermediate;
};

struct BNCustomArchitecture {
	void* context;
	void (* init)(void* context, struct BNArchitecture* obj);
	enum BNEndianness (* getEndianness)(void* ctxt);
	uint64_t (* getAddressSize)(void* ctxt);
	uint64_t (* getDefaultIntegerSize)(void* ctxt);
	uint64_t (* getInstructionAlignment)(void* ctxt);
	uint64_t (* getMaxInstructionLength)(void* ctxt);
	uint64_t (* getOpcodeDisplayLength)(void* ctxt);
	struct BNArchitecture* (* getAssociatedArchitectureByAddress)(void* ctxt, uint64_t* addr);
	bool (* getInstructionInfo)(void* ctxt, uint8_t const* data, uint64_t addr, uint64_t maxLen, struct BNInstructionInfo* result);
	bool (* getInstructionText)(void* ctxt, uint8_t const* data, uint64_t addr, uint64_t* len, struct BNInstructionTextToken** result, uint64_t* count);
	void (* freeInstructionText)(struct BNInstructionTextToken* tokens, uint64_t count);
	bool (* getInstructionLowLevelIL)(void* ctxt, uint8_t const* data, uint64_t addr, uint64_t* len, struct BNLowLevelILFunction* il);
	char* (* getRegisterName)(void* ctxt, uint32_t reg);
	char* (* getFlagName)(void* ctxt, uint32_t flag);
	char* (* getFlagWriteTypeName)(void* ctxt, uint32_t flags);
	char* (* getSemanticFlagClassName)(void* ctxt, uint32_t semClass);
	char* (* getSemanticFlagGroupName)(void* ctxt, uint32_t semGroup);
	uint32_t* (* getFullWidthRegisters)(void* ctxt, uint64_t* count);
	uint32_t* (* getAllRegisters)(void* ctxt, uint64_t* count);
	uint32_t* (* getAllFlags)(void* ctxt, uint64_t* count);
	uint32_t* (* getAllFlagWriteTypes)(void* ctxt, uint64_t* count);
	uint32_t* (* getAllSemanticFlagClasses)(void* ctxt, uint64_t* count);
	uint32_t* (* getAllSemanticFlagGroups)(void* ctxt, uint64_t* count);
	enum BNFlagRole (* getFlagRole)(void* ctxt, uint32_t flag, uint32_t semClass);
	uint32_t* (* getFlagsRequiredForFlagCondition)(void* ctxt, enum BNLowLevelILFlagCondition cond, uint32_t semClass, uint64_t* count);
	uint32_t* (* getFlagsRequiredForSemanticFlagGroup)(void* ctxt, uint32_t semGroup, uint64_t* count);
	struct BNFlagConditionForSemanticClass* (* getFlagConditionsForSemanticFlagGroup)(void* ctxt, uint32_t semGroup, uint64_t* count);
	void (* freeFlagConditionsForSemanticFlagGroup)(void* ctxt, struct BNFlagConditionForSemanticClass* conditions);
	uint32_t* (* getFlagsWrittenByFlagWriteType)(void* ctxt, uint32_t writeType, uint64_t* count);
	uint32_t (* getSemanticClassForFlagWriteType)(void* ctxt, uint32_t writeType);
	uint64_t (* getFlagWriteLowLevelIL)(void* ctxt, enum BNLowLevelILOperation op, uint64_t size, uint32_t flagWriteType, uint32_t flag, struct BNRegisterOrConstant* operands, uint64_t operandCount, struct BNLowLevelILFunction* il);
	uint64_t (* getFlagConditionLowLevelIL)(void* ctxt, enum BNLowLevelILFlagCondition cond, uint32_t semClass, struct BNLowLevelILFunction* il);
	uint64_t (* getSemanticFlagGroupLowLevelIL)(void* ctxt, uint32_t semGroup, struct BNLowLevelILFunction* il);
	void (* freeRegisterList)(void* ctxt, uint32_t* regs);
	void (* getRegisterInfo)(void* ctxt, uint32_t reg, struct BNRegisterInfo* result);
	uint32_t (* getStackPointerRegister)(void* ctxt);
	uint32_t (* getLinkRegister)(void* ctxt);
	uint32_t* (* getGlobalRegisters)(void* ctxt, uint64_t* count);
	uint32_t* (* getSystemRegisters)(void* ctxt, uint64_t* count);
	char* (* getRegisterStackName)(void* ctxt, uint32_t regStack);
	uint32_t* (* getAllRegisterStacks)(void* ctxt, uint64_t* count);
	void (* getRegisterStackInfo)(void* ctxt, uint32_t regStack, struct BNRegisterStackInfo* result);
	char* (* getIntrinsicName)(void* ctxt, uint32_t intrinsic);
	uint32_t* (* getAllIntrinsics)(void* ctxt, uint64_t* count);
	struct BNNameAndType* (* getIntrinsicInputs)(void* ctxt, uint32_t intrinsic, uint64_t* count);
	void (* freeNameAndTypeList)(void* ctxt, struct BNNameAndType* nt, uint64_t count);
	struct BNTypeWithConfidence* (* getIntrinsicOutputs)(void* ctxt, uint32_t intrinsic, uint64_t* count);
	void (* freeTypeList)(void* ctxt, struct BNTypeWithConfidence* types, uint64_t count);
	bool (* canAssemble)(void* ctxt);
	bool (* assemble)(void* ctxt, char const* code, uint64_t addr, struct BNDataBuffer* result, char** errors);
	bool (* isNeverBranchPatchAvailable)(void* ctxt, uint8_t const* data, uint64_t addr, uint64_t len);
	bool (* isAlwaysBranchPatchAvailable)(void* ctxt, uint8_t const* data, uint64_t addr, uint64_t len);
	bool (* isInvertBranchPatchAvailable)(void* ctxt, uint8_t const* data, uint64_t addr, uint64_t len);
	bool (* isSkipAndReturnZeroPatchAvailable)(void* ctxt, uint8_t const* data, uint64_t addr, uint64_t len);
	bool (* isSkipAndReturnValuePatchAvailable)(void* ctxt, uint8_t const* data, uint64_t addr, uint64_t len);
	bool (* convertToNop)(void* ctxt, uint8_t* data, uint64_t addr, uint64_t len);
	bool (* alwaysBranch)(void* ctxt, uint8_t* data, uint64_t addr, uint64_t len);
	bool (* invertBranch)(void* ctxt, uint8_t* data, uint64_t addr, uint64_t len);
	bool (* skipAndReturnValue)(void* ctxt, uint8_t* data, uint64_t addr, uint64_t len, uint64_t value);
};

struct BNCustomBinaryView {
	void* context;
	bool (* init)(void* ctxt);
	void (* freeObject)(void* ctxt);
	void (* externalRefTaken)(void* ctxt);
	void (* externalRefReleased)(void* ctxt);
	uint64_t (* read)(void* ctxt, void* dest, uint64_t offset, uint64_t len);
	uint64_t (* write)(void* ctxt, uint64_t offset, void const* src, uint64_t len);
	uint64_t (* insert)(void* ctxt, uint64_t offset, void const* src, uint64_t len);
	uint64_t (* remove)(void* ctxt, uint64_t offset, uint64_t len);
	enum BNModificationStatus (* getModification)(void* ctxt, uint64_t offset);
	bool (* isValidOffset)(void* ctxt, uint64_t offset);
	bool (* isOffsetReadable)(void* ctxt, uint64_t offset);
	bool (* isOffsetWritable)(void* ctxt, uint64_t offset);
	bool (* isOffsetExecutable)(void* ctxt, uint64_t offset);
	bool (* isOffsetBackedByFile)(void* ctxt, uint64_t offset);
	uint64_t (* getNextValidOffset)(void* ctxt, uint64_t offset);
	uint64_t (* getStart)(void* ctxt);
	uint64_t (* getLength)(void* ctxt);
	uint64_t (* getEntryPoint)(void* ctxt);
	bool (* isExecutable)(void* ctxt);
	enum BNEndianness (* getDefaultEndianness)(void* ctxt);
	bool (* isRelocatable)(void* ctxt);
	uint64_t (* getAddressSize)(void* ctxt);
	bool (* save)(void* ctxt, struct BNFileAccessor* accessor);
};

struct BNCustomBinaryViewType {
	void* context;
	struct BNBinaryView* (* create)(void* ctxt, struct BNBinaryView* data);
	struct BNBinaryView* (* parse)(void* ctxt, struct BNBinaryView* data);
	bool (* isValidForData)(void* ctxt, struct BNBinaryView* data);
	bool (* isDeprecated)(void* ctxt);
	struct BNSettings* (* getLoadSettingsForData)(void* ctxt, struct BNBinaryView* data);
};

struct BNCustomCallingConvention {
	void* context;
	void (* freeObject)(void* ctxt);
	uint32_t* (* getCallerSavedRegisters)(void* ctxt, uint64_t* count);
	uint32_t* (* getCalleeSavedRegisters)(void* ctxt, uint64_t* count);
	uint32_t* (* getIntegerArgumentRegisters)(void* ctxt, uint64_t* count);
	uint32_t* (* getFloatArgumentRegisters)(void* ctxt, uint64_t* count);
	void (* freeRegisterList)(void* ctxt, uint32_t* regs);
	bool (* areArgumentRegistersSharedIndex)(void* ctxt);
	bool (* isStackReservedForArgumentRegisters)(void* ctxt);
	bool (* isStackAdjustedOnReturn)(void* ctxt);
	bool (* isEligibleForHeuristics)(void* ctxt);
	uint32_t (* getIntegerReturnValueRegister)(void* ctxt);
	uint32_t (* getHighIntegerReturnValueRegister)(void* ctxt);
	uint32_t (* getFloatReturnValueRegister)(void* ctxt);
	uint32_t (* getGlobalPointerRegister)(void* ctxt);
	uint32_t* (* getImplicitlyDefinedRegisters)(void* ctxt, uint64_t* count);
	void (* getIncomingRegisterValue)(void* ctxt, uint32_t reg, struct BNFunction* func, struct BNRegisterValue* result);
	void (* getIncomingFlagValue)(void* ctxt, uint32_t flag, struct BNFunction* func, struct BNRegisterValue* result);
	void (* getIncomingVariableForParameterVariable)(void* ctxt, struct BNVariable* var, struct BNFunction* func, struct BNVariable* result);
	void (* getParameterVariableForIncomingVariable)(void* ctxt, struct BNVariable* var, struct BNFunction* func, struct BNVariable* result);
	bool (* areArgumentRegistersUsedForVarArgs)(void* ctxt);
};

struct BNCustomDataRenderer {
	void* context;
	void (* freeObject)(void* ctxt);
	bool (* isValidForData)(void* ctxt, struct BNBinaryView* view, uint64_t addr, struct BNType* type, struct BNTypeContext* typeCtx, uint64_t ctxCount);
	struct BNDisassemblyTextLine* (* getLinesForData)(void* ctxt, struct BNBinaryView* view, uint64_t addr, struct BNType* type, struct BNInstructionTextToken* prefix, uint64_t prefixCount, uint64_t width, uint64_t* count, struct BNTypeContext* typeCtx, uint64_t ctxCount);
};

struct BNCustomFlowGraph {
	void* context;
	void (* prepareForLayout)(void* ctxt);
	void (* populateNodes)(void* ctxt);
	void (* completeLayout)(void* ctxt);
	struct BNFlowGraph* (* update)(void* ctxt);
	void (* freeObject)(void* ctxt);
	void (* externalRefTaken)(void* ctxt);
	void (* externalRefReleased)(void* ctxt);
};

struct BNCustomRelocationHandler {
	void* context;
	void (* freeObject)(void* ctxt);
	bool (* getRelocationInfo)(void* ctxt, struct BNBinaryView* view, struct BNArchitecture* arch, struct BNRelocationInfo* result, uint64_t resultCount);
	bool (* applyRelocation)(void* ctxt, struct BNBinaryView* view, struct BNArchitecture* arch, struct BNRelocation* reloc, uint8_t* dest, uint64_t len);
	uint64_t (* getOperandForExternalRelocation)(void* ctxt, uint8_t const* data, uint64_t addr, uint64_t length, struct BNLowLevelILFunction* il, struct BNRelocation* relocation);
};

struct BNCustomTransform {
	void* context;
	struct BNTransformParameterInfo* (* getParameters)(void* ctxt, uint64_t* count);
	void (* freeParameters)(struct BNTransformParameterInfo* params, uint64_t count);
	bool (* decode)(void* ctxt, struct BNDataBuffer* input, struct BNDataBuffer* output, struct BNTransformParameter* params, uint64_t paramCount);
	bool (* encode)(void* ctxt, struct BNDataBuffer* input, struct BNDataBuffer* output, struct BNTransformParameter* params, uint64_t paramCount);
};

struct BNDataBuffer {
};


	typedef enum DataFlowQueryOption {
		FromAddressesInLookupTableQueryOption = 0,
} BNDataFlowQueryOption;

struct BNDataRenderer {
};

struct BNDataRendererContainer {
};

struct BNDataVariable {
	uint64_t address;
	struct BNType* type;
	bool autoDiscovered;
	uint8_t typeConfidence;
};

struct BNDataVariableAndName {
	uint64_t address;
	struct BNType* type;
	char* name;
	bool autoDiscovered;
	uint8_t typeConfidence;
};

struct BNDataVariableAndNameAndDebugParser {
	uint64_t address;
	struct BNType* type;
	char* name;
	char* parser;
	bool autoDiscovered;
	uint8_t typeConfidence;
};

struct BNDatabase {
};


	typedef enum DeadStoreElimination {
		DefaultDeadStoreElimination = 0,
		PreventDeadStoreElimination = 1,
		AllowDeadStoreElimination = 2,
} BNDeadStoreElimination;

struct BNDebugFunctionInfo {
	char* shortName;
	char* fullName;
	char* rawName;
	uint64_t address;
	struct BNType* type;
	struct BNPlatform* platform;
};

struct BNDebugInfo {
};

struct BNDebugInfoParser {
};


	typedef enum DisassemblyOption {
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
} BNDisassemblyOption;

struct BNDisassemblySettings {
};


	typedef enum HighlightColorStyle {
		StandardHighlightColor = 0,
		MixedHighlightColor = 1,
		CustomHighlightColor = 2,
} BNHighlightColorStyle;


	typedef enum HighlightStandardColor {
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
} BNHighlightStandardColor;

struct BNHighlightColor {
	BNHighlightColorStyle style;
	BNHighlightStandardColor color;
	BNHighlightStandardColor mixColor;
	uint8_t mix;
	uint8_t r;
	uint8_t g;
	uint8_t b;
	uint8_t alpha;
};

struct BNDisassemblyTextLineTypeInfo {
	bool hasTypeInfo;
	struct BNType* parentType;
	uint64_t fieldIndex;
	uint64_t offset;
};

struct BNDisassemblyTextLine {
	uint64_t addr;
	uint64_t instrIndex;
	struct BNInstructionTextToken* tokens;
	uint64_t count;
	struct BNHighlightColor highlight;
	struct BNTag** tags;
	uint64_t tagCount;
	struct BNDisassemblyTextLineTypeInfo typeInfo;
};

struct BNDisassemblyTextRenderer {
};

struct BNDownloadInstance {
};

struct BNDownloadInstanceCallbacks {
	void* context;
	void (* destroyInstance)(void* ctxt);
	int32_t (* performRequest)(void* ctxt, char const* url);
	int32_t (* performCustomRequest)(void* ctxt, char const* method, char const* url, uint64_t headerCount, char const* const* headerKeys, char const* const* headerValues, struct BNDownloadInstanceResponse** response);
	void (* freeResponse)(void* ctxt, struct BNDownloadInstanceResponse* response);
};

struct BNDownloadInstanceInputOutputCallbacks {
	int64_t (* readCallback)(uint8_t* data, uint64_t len, void* ctxt);
	void* readContext;
	uint64_t (* writeCallback)(uint8_t* data, uint64_t len, void* ctxt);
	void* writeContext;
	bool (* progressCallback)(void* ctxt, uint64_t progress, uint64_t total);
	void* progressContext;
};

struct BNDownloadInstanceOutputCallbacks {
	uint64_t (* writeCallback)(uint8_t* data, uint64_t len, void* ctxt);
	void* writeContext;
	bool (* progressCallback)(void* ctxt, uint64_t progress, uint64_t total);
	void* progressContext;
};

struct BNDownloadInstanceResponse {
	uint16_t statusCode;
	uint64_t headerCount;
	char** headerKeys;
	char** headerValues;
};

struct BNDownloadProvider {
};

struct BNDownloadProviderCallbacks {
	void* context;
	struct BNDownloadInstance* (* createInstance)(void* ctxt);
};


	typedef enum EdgePenStyle {
		NoPen = 0,
		SolidLine = 1,
		DashLine = 2,
		DotLine = 3,
		DashDotLine = 4,
		DashDotDotLine = 5,
} BNEdgePenStyle;


	typedef enum ThemeColor {
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
} BNThemeColor;

struct BNEdgeStyle {
	BNEdgePenStyle style;
	uint64_t width;
	BNThemeColor color;
};


	typedef enum Endianness {
		LittleEndian = 0,
		BigEndian = 1,
} BNEndianness;

struct BNEnterpriseServerCallbacks {
	void* context;
	void (* licenseStatusChanged)(void* ctxt, bool stillValid);
};

struct BNEnumeration {
};

struct BNEnumerationBuilder {
};

struct BNEnumerationMember {
	char* name;
	uint64_t value;
	bool isDefault;
};

struct BNFileAccessor {
	void* context;
	uint64_t (* getLength)(void* ctxt);
	uint64_t (* read)(void* ctxt, void* dest, uint64_t offset, uint64_t len);
	uint64_t (* write)(void* ctxt, uint64_t offset, void const* src, uint64_t len);
};

struct BNFileMetadata {
};


	typedef enum FindFlag {
		FindCaseSensitive = 0,
		FindCaseInsensitive = 1,
} BNFindFlag;


	typedef enum FindRangeType {
		AllRangeType = 0,
		CustomRangeType = 1,
		CurrentFunctionRangeType = 2,
} BNFindRangeType;


	typedef enum FindType {
		FindTypeRawString = 0,
		FindTypeEscapedString = 1,
		FindTypeText = 2,
		FindTypeConstant = 3,
		FindTypeBytes = 4,
} BNFindType;


	typedef enum LowLevelILFlagCondition {
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
} BNLowLevelILFlagCondition;

struct BNFlagConditionForSemanticClass {
	uint32_t semanticClass;
	BNLowLevelILFlagCondition condition;
};


	typedef enum FlagRole {
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
} BNFlagRole;

struct BNFlowGraph {
};

struct BNFlowGraphEdge {
	BNBranchType type;
	struct BNFlowGraphNode* target;
	struct BNPoint* points;
	uint64_t pointCount;
	bool backEdge;
	struct BNEdgeStyle style;
};

struct BNFlowGraphLayoutRequest {
};

struct BNFlowGraphNode {
};


	typedef enum FlowGraphOption {
		FlowGraphUsesBlockHighlights = 0,
		FlowGraphUsesInstructionHighlights = 1,
		FlowGraphIncludesUserComments = 2,
		FlowGraphAllowsPatching = 3,
		FlowGraphAllowsInlineInstructionEditing = 4,
		FlowGraphShowsSecondaryRegisterHighlighting = 5,
} BNFlowGraphOption;


	typedef enum FormInputFieldType {
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
} BNFormInputFieldType;

struct BNFormInputField {
	BNFormInputFieldType type;
	char const* prompt;
	struct BNBinaryView* view;
	uint64_t currentAddress;
	char const** choices;
	uint64_t count;
	char const* ext;
	char const* defaultName;
	int64_t intResult;
	uint64_t addressResult;
	char* stringResult;
	uint64_t indexResult;
	bool hasDefault;
	int64_t intDefault;
	uint64_t addressDefault;
	char const* stringDefault;
	uint64_t indexDefault;
};

struct BNFunction {
};


	typedef enum FunctionAnalysisSkipOverride {
		DefaultFunctionAnalysisSkip = 0,
		NeverSkipFunctionAnalysis = 1,
		AlwaysSkipFunctionAnalysis = 2,
} BNFunctionAnalysisSkipOverride;


	typedef enum FunctionGraphType {
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
} BNFunctionGraphType;


	typedef enum VariableSourceType {
		StackVariableSourceType = 0,
		RegisterVariableSourceType = 1,
		FlagVariableSourceType = 2,
} BNVariableSourceType;

struct BNVariable {
	BNVariableSourceType type;
	uint32_t index;
	int64_t storage;
};

struct BNFunctionParameter {
	char* name;
	struct BNType* type;
	uint8_t typeConfidence;
	bool defaultLocation;
	struct BNVariable location;
};

struct BNFunctionRecognizer {
	void* context;
	bool (* recognizeLowLevelIL)(void* ctxt, struct BNBinaryView* data, struct BNFunction* func, struct BNLowLevelILFunction* il);
	bool (* recognizeMediumLevelIL)(void* ctxt, struct BNBinaryView* data, struct BNFunction* func, struct BNMediumLevelILFunction* il);
};


	typedef enum FunctionUpdateType {
		UserFunctionUpdate = 0,
		FullAutoFunctionUpdate = 1,
		IncrementalAutoFunctionUpdate = 2,
} BNFunctionUpdateType;

struct BNHighLevelILFunction {
};


	typedef enum HighLevelILOperation {
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
} BNHighLevelILOperation;

struct BNHighLevelILInstruction {
	BNHighLevelILOperation operation;
	uint32_t attributes;
	uint32_t sourceOperand;
	uint64_t size;
	uint64_t operands[0x5];
	uint64_t address;
	uint64_t parent;
};


	typedef enum ILBranchDependence {
		NotBranchDependent = 0,
		TrueBranchDependent = 1,
		FalseBranchDependent = 2,
} BNILBranchDependence;

struct BNILBranchInstructionAndDependence {
	uint64_t branch;
	BNILBranchDependence dependence;
};


	typedef enum ILInstructionAttribute {
		ILAllowDeadStoreElimination = 1,
		ILPreventDeadStoreElimination = 2,
		MLILAssumePossibleUse = 4,
} BNILInstructionAttribute;

struct BNILReferenceSource {
	struct BNFunction* func;
	struct BNArchitecture* arch;
	uint64_t addr;
	BNFunctionGraphType type;
	uint64_t exprId;
};


	typedef enum ImplicitRegisterExtend {
		NoExtend = 0,
		ZeroExtendToFullWidth = 1,
		SignExtendToFullWidth = 2,
} BNImplicitRegisterExtend;

struct BNIndirectBranchInfo {
	struct BNArchitecture* sourceArch;
	uint64_t sourceAddr;
	struct BNArchitecture* destArch;
	uint64_t destAddr;
	bool autoDefined;
};


	typedef enum MemberAccess {
		NoAccess = 0,
		PrivateAccess = 1,
		ProtectedAccess = 2,
		PublicAccess = 3,
} BNMemberAccess;


	typedef enum MemberScope {
		NoScope = 0,
		StaticScope = 1,
		VirtualScope = 2,
		ThunkScope = 3,
		FriendScope = 4,
} BNMemberScope;

struct BNStructureMember {
	struct BNType* type;
	char* name;
	uint64_t offset;
	uint8_t typeConfidence;
	BNMemberAccess access;
	BNMemberScope scope;
};

struct BNInheritedStructureMember {
	struct BNNamedTypeReference* base;
	uint64_t baseOffset;
	struct BNStructureMember member;
	uint64_t memberIndex;
};

struct BNInstructionInfo {
	uint64_t length;
	uint64_t branchCount;
	bool archTransitionByTargetAddr;
	bool branchDelay;
	BNBranchType branchType[0x3];
	uint64_t branchTarget[0x3];
	struct BNArchitecture* branchArch[0x3];
};

struct BNInstructionTextLine {
	struct BNInstructionTextToken* tokens;
	uint64_t count;
};


	typedef enum InstructionTextTokenType {
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
} BNInstructionTextTokenType;


	typedef enum InstructionTextTokenContext {
		NoTokenContext = 0,
		LocalVariableTokenContext = 1,
		DataVariableTokenContext = 2,
		FunctionReturnTokenContext = 3,
		InstructionAddressTokenContext = 4,
		ILInstructionIndexTokenContext = 5,
} BNInstructionTextTokenContext;

struct BNInstructionTextToken {
	BNInstructionTextTokenType type;
	char* text;
	uint64_t value;
	uint64_t width;
	uint64_t size;
	uint64_t operand;
	BNInstructionTextTokenContext context;
	uint8_t confidence;
	uint64_t address;
	char** typeNames;
	uint64_t namesCount;
};


	typedef enum IntegerDisplayType {
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
} BNIntegerDisplayType;

struct BNInteractionHandlerCallbacks {
	void* context;
	void (* showPlainTextReport)(void* ctxt, struct BNBinaryView* view, char const* title, char const* contents);
	void (* showMarkdownReport)(void* ctxt, struct BNBinaryView* view, char const* title, char const* contents, char const* plaintext);
	void (* showHTMLReport)(void* ctxt, struct BNBinaryView* view, char const* title, char const* contents, char const* plaintext);
	void (* showGraphReport)(void* ctxt, struct BNBinaryView* view, char const* title, struct BNFlowGraph* graph);
	void (* showReportCollection)(void* ctxt, char const* title, struct BNReportCollection* reports);
	bool (* getTextLineInput)(void* ctxt, char** result, char const* prompt, char const* title);
	bool (* getIntegerInput)(void* ctxt, int64_t* result, char const* prompt, char const* title);
	bool (* getAddressInput)(void* ctxt, uint64_t* result, char const* prompt, char const* title, struct BNBinaryView* view, uint64_t currentAddr);
	bool (* getChoiceInput)(void* ctxt, uint64_t* result, char const* prompt, char const* title, char const** choices, uint64_t count);
	bool (* getOpenFileNameInput)(void* ctxt, char** result, char const* prompt, char const* title);
	bool (* getSaveFileNameInput)(void* ctxt, char** result, char const* prompt, char const* ext, char const* defaultName);
	bool (* getDirectoryNameInput)(void* ctxt, char** result, char const* prompt, char const* title);
	bool (* getFormInput)(void* ctxt, struct BNFormInputField* fields, uint64_t count, char const* title);
	enum BNMessageBoxButtonResult (* showMessageBox)(void* ctxt, char const* title, char const* text, enum BNMessageBoxButtonSet buttons, enum BNMessageBoxIcon icon);
	bool (* openUrl)(void* ctxt, char const* modules);
	bool (* runProgressDialog)(void* ctxt, char const* title, bool canCancel, void (* task)(void* taskCtxt, bool (* progress)(void* progressCtxt, uint64_t cur, uint64_t max), void* progressCtxt), void* taskCtxt);
};

struct BNKeyValueStore {
};

struct BNLanguageRepresentationFunction {
};


	typedef enum LinearDisassemblyLineType {
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
} BNLinearDisassemblyLineType;

struct BNLinearDisassemblyLine {
	BNLinearDisassemblyLineType type;
	struct BNFunction* function;
	struct BNBasicBlock* block;
	struct BNDisassemblyTextLine contents;
};

struct BNLinearViewCursor {
};

struct BNLinearViewObject {
};


	typedef enum LinearViewObjectIdentifierType {
		SingleLinearViewObject = 0,
		AddressLinearViewObject = 1,
		AddressRangeLinearViewObject = 2,
} BNLinearViewObjectIdentifierType;

struct BNLinearViewObjectIdentifier {
	char* name;
	BNLinearViewObjectIdentifierType type;
	uint64_t start;
	uint64_t end;
};


	typedef enum LogLevel {
		DebugLog = 0,
		InfoLog = 1,
		WarningLog = 2,
		ErrorLog = 3,
		AlertLog = 4,
} BNLogLevel;

struct BNLogListener {
	void* context;
	void (* log)(void* ctxt, uint64_t sessionId, enum BNLogLevel level, char const* msg, char const* logger_name, uint64_t tid);
	void (* close)(void* ctxt);
	enum BNLogLevel (* getLogLevel)(void* ctxt);
};

struct BNLogger {
};

struct BNLookupTableEntry {
	int64_t* fromValues;
	uint64_t fromCount;
	int64_t toValue;
};

struct BNLowLevelILFunction {
};


	typedef enum LowLevelILOperation {
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
} BNLowLevelILOperation;

struct BNLowLevelILInstruction {
	BNLowLevelILOperation operation;
	uint32_t attributes;
	uint64_t size;
	uint32_t flags;
	uint32_t sourceOperand;
	uint64_t operands[0x4];
	uint64_t address;
};

struct BNLowLevelILLabel {
	bool resolved;
	uint64_t ref;
	uint64_t operand;
};

struct BNMainThreadAction {
};

struct BNMainThreadCallbacks {
	void* context;
	void (* addAction)(void* ctxt, struct BNMainThreadAction* action);
};

struct BNMediumLevelILFunction {
};


	typedef enum MediumLevelILOperation {
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
} BNMediumLevelILOperation;

struct BNMediumLevelILInstruction {
	BNMediumLevelILOperation operation;
	uint32_t attributes;
	uint32_t sourceOperand;
	uint64_t size;
	uint64_t operands[0x5];
	uint64_t address;
};

struct BNMediumLevelILLabel {
	bool resolved;
	uint64_t ref;
	uint64_t operand;
};

struct BNMemoryUsageInfo {
	char* name;
	uint64_t value;
};

struct BNMergedVariable {
	struct BNVariable target;
	struct BNVariable* sources;
	uint64_t sourceCount;
};


	typedef enum MessageBoxButtonResult {
		NoButton = 0,
		YesButton = 1,
		OKButton = 2,
		CancelButton = 3,
} BNMessageBoxButtonResult;


	typedef enum MessageBoxButtonSet {
		OKButtonSet = 0,
		YesNoButtonSet = 1,
		YesNoCancelButtonSet = 2,
} BNMessageBoxButtonSet;


	typedef enum MessageBoxIcon {
		InformationIcon = 0,
		QuestionIcon = 1,
		WarningIcon = 2,
		ErrorIcon = 3,
} BNMessageBoxIcon;

struct BNMetadata {
};


	typedef enum MetadataType {
		InvalidDataType = 0,
		BooleanDataType = 1,
		StringDataType = 2,
		UnsignedIntegerDataType = 3,
		SignedIntegerDataType = 4,
		DoubleDataType = 5,
		RawDataType = 6,
		KeyValueDataType = 7,
		ArrayDataType = 8,
} BNMetadataType;

struct BNMetadataValueStore {
	uint64_t size;
	char** keys;
	struct BNMetadata** values;
};


	typedef enum ModificationStatus {
		Original = 0,
		Changed = 1,
		Inserted = 2,
} BNModificationStatus;

struct BNNameAndType {
	char* name;
	struct BNType* type;
	uint8_t typeConfidence;
};

struct BNNameList {
	char** name;
	char* join;
	uint64_t nameCount;
};

struct BNNameSpace {
	char** name;
	char* join;
	uint64_t nameCount;
};


	typedef enum NameType {
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
} BNNameType;

struct BNNamedTypeReference {
};

struct BNNamedTypeReferenceBuilder {
};


	typedef enum NamedTypeReferenceClass {
		UnknownNamedTypeClass = 0,
		TypedefNamedTypeClass = 1,
		ClassNamedTypeClass = 2,
		StructNamedTypeClass = 3,
		UnionNamedTypeClass = 4,
		EnumNamedTypeClass = 5,
} BNNamedTypeReferenceClass;

struct BNNavigationHandler {
	void* context;
	char* (* getCurrentView)(void* ctxt);
	uint64_t (* getCurrentOffset)(void* ctxt);
	bool (* navigate)(void* ctxt, char const* view, uint64_t offset);
};

struct BNObjectDestructionCallbacks {
	void* context;
	void (* destructBinaryView)(void* ctxt, struct BNBinaryView* view);
	void (* destructFileMetadata)(void* ctxt, struct BNFileMetadata* file);
	void (* destructFunction)(void* ctxt, struct BNFunction* func);
};

struct BNOffsetWithConfidence {
	int64_t value;
	uint8_t confidence;
};

struct BNParameterVariablesWithConfidence {
	struct BNVariable* vars;
	uint64_t count;
	uint8_t confidence;
};

struct BNQualifiedName {
	char** name;
	char* join;
	uint64_t nameCount;
};

struct BNParsedType {
	struct BNQualifiedName name;
	struct BNType* type;
	bool isUser;
};

struct BNPerformanceInfo {
	char* name;
	double seconds;
};

struct BNPlatform {
};


	typedef enum PluginCommandType {
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
} BNPluginCommandType;

struct BNPluginCommand {
	char* name;
	char* description;
	BNPluginCommandType type;
	void* context;
	void (* defaultCommand)(void* ctxt, struct BNBinaryView* view);
	void (* addressCommand)(void* ctxt, struct BNBinaryView* view, uint64_t addr);
	void (* rangeCommand)(void* ctxt, struct BNBinaryView* view, uint64_t addr, uint64_t len);
	void (* functionCommand)(void* ctxt, struct BNBinaryView* view, struct BNFunction* func);
	void (* lowLevelILFunctionCommand)(void* ctxt, struct BNBinaryView* view, struct BNLowLevelILFunction* func);
	void (* lowLevelILInstructionCommand)(void* ctxt, struct BNBinaryView* view, struct BNLowLevelILFunction* func, uint64_t instr);
	void (* mediumLevelILFunctionCommand)(void* ctxt, struct BNBinaryView* view, struct BNMediumLevelILFunction* func);
	void (* mediumLevelILInstructionCommand)(void* ctxt, struct BNBinaryView* view, struct BNMediumLevelILFunction* func, uint64_t instr);
	void (* highLevelILFunctionCommand)(void* ctxt, struct BNBinaryView* view, struct BNHighLevelILFunction* func);
	void (* highLevelILInstructionCommand)(void* ctxt, struct BNBinaryView* view, struct BNHighLevelILFunction* func, uint64_t instr);
	bool (* defaultIsValid)(void* ctxt, struct BNBinaryView* data);
	bool (* addressIsValid)(void* ctxt, struct BNBinaryView* view, uint64_t addr);
	bool (* rangeIsValid)(void* ctxt, struct BNBinaryView* view, uint64_t addr, uint64_t len);
	bool (* functionIsValid)(void* ctxt, struct BNBinaryView* view, struct BNFunction* func);
	bool (* lowLevelILFunctionIsValid)(void* ctxt, struct BNBinaryView* view, struct BNLowLevelILFunction* func);
	bool (* lowLevelILInstructionIsValid)(void* ctxt, struct BNBinaryView* view, struct BNLowLevelILFunction* func, uint64_t instr);
	bool (* mediumLevelILFunctionIsValid)(void* ctxt, struct BNBinaryView* view, struct BNMediumLevelILFunction* func);
	bool (* mediumLevelILInstructionIsValid)(void* ctxt, struct BNBinaryView* view, struct BNMediumLevelILFunction* func, uint64_t instr);
	bool (* highLevelILFunctionIsValid)(void* ctxt, struct BNBinaryView* view, struct BNHighLevelILFunction* func);
	bool (* highLevelILInstructionIsValid)(void* ctxt, struct BNBinaryView* view, struct BNHighLevelILFunction* func, uint64_t instr);
};


	typedef enum PluginLoadOrder {
		EarlyPluginLoadOrder = 0,
		NormalPluginLoadOrder = 1,
		LatePluginLoadOrder = 2,
} BNPluginLoadOrder;


	typedef enum PluginOrigin {
		OfficialPluginOrigin = 0,
		CommunityPluginOrigin = 1,
		OtherPluginOrigin = 2,
} BNPluginOrigin;


	typedef enum PluginStatus {
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
} BNPluginStatus;


	typedef enum PluginType {
		CorePluginType = 0,
		UiPluginType = 1,
		ArchitecturePluginType = 2,
		BinaryViewPluginType = 3,
		HelperPluginType = 4,
} BNPluginType;

struct BNPoint {
	float x;
	float y;
};


	typedef enum PointerSuffix {
		Ptr64Suffix = 0,
		UnalignedSuffix = 1,
		RestrictSuffix = 2,
		ReferenceSuffix = 3,
		LvalueSuffix = 4,
} BNPointerSuffix;


	typedef enum RegisterValueType {
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
} BNRegisterValueType;

struct BNPossibleValueSet {
	BNRegisterValueType state;
	int64_t value;
	int64_t offset;
	uint64_t size;
	struct BNValueRange* ranges;
	int64_t* valueSet;
	struct BNLookupTableEntry* table;
	uint64_t count;
};

struct BNQualifiedNameAndType {
	struct BNQualifiedName name;
	struct BNType* type;
};

struct BNQualifiedNameList {
	struct BNQualifiedName* names;
	uint64_t count;
};

struct BNQualifiedNameTypeAndId {
	struct BNQualifiedName name;
	char* id;
	struct BNType* type;
};

struct BNRange {
	uint64_t start;
	uint64_t end;
};

struct BNReferenceSource {
	struct BNFunction* func;
	struct BNArchitecture* arch;
	uint64_t addr;
};


	typedef enum ReferenceType {
		PointerReferenceType = 0,
		ReferenceReferenceType = 1,
		RValueReferenceType = 2,
		NoReference = 3,
} BNReferenceType;

struct BNRegisterInfo {
	uint32_t fullWidthRegister;
	uint64_t offset;
	uint64_t size;
	BNImplicitRegisterExtend extend;
};

struct BNRegisterOrConstant {
	bool constant;
	uint32_t reg;
	uint64_t value;
};

struct BNRegisterSetWithConfidence {
	uint32_t* regs;
	uint64_t count;
	uint8_t confidence;
};

struct BNRegisterStackAdjustment {
	uint32_t regStack;
	int32_t adjustment;
	uint8_t confidence;
};

struct BNRegisterStackInfo {
	uint32_t firstStorageReg;
	uint32_t firstTopRelativeReg;
	uint32_t storageCount;
	uint32_t topRelativeCount;
	uint32_t stackTopReg;
};

struct BNRegisterValue {
	BNRegisterValueType state;
	int64_t value;
	int64_t offset;
	uint64_t size;
};

struct BNRegisterValueWithConfidence {
	struct BNRegisterValue value;
	uint8_t confidence;
};

struct BNRelocation {
};

struct BNRelocationHandler {
};


	typedef enum RelocationType {
		ELFGlobalRelocationType = 0,
		ELFCopyRelocationType = 1,
		ELFJumpSlotRelocationType = 2,
		StandardRelocationType = 3,
		IgnoredRelocation = 4,
		UnhandledRelocation = 5,
} BNRelocationType;

struct BNRelocationInfo {
	BNRelocationType type;
	bool pcRelative;
	bool baseRelative;
	uint64_t base;
	uint64_t size;
	uint64_t truncateSize;
	uint64_t nativeType;
	uint64_t addend;
	bool hasSign;
	bool implicitAddend;
	bool external;
	uint64_t symbolIndex;
	uint64_t sectionIndex;
	uint64_t address;
	uint64_t target;
	bool dataRelocation;
	uint8_t relocationDataCache[0x8];
	struct BNRelocationInfo* prev;
	struct BNRelocationInfo* next;
};

struct BNRepoPlugin {
};

struct BNReportCollection {
};


	typedef enum ReportType {
		PlainTextReportType = 0,
		MarkdownReportType = 1,
		HTMLReportType = 2,
		FlowGraphReportType = 3,
} BNReportType;

struct BNRepository {
};

struct BNRepositoryManager {
};


	typedef enum SaveOption {
		RemoveUndoData = 0,
		TrimSnapshots = 1,
		PurgeOriginalFilenamePath = 2,
} BNSaveOption;

struct BNSaveSettings {
};

struct BNScriptingInstance {
};

struct BNScriptingInstanceCallbacks {
	void* context;
	void (* destroyInstance)(void* ctxt);
	void (* externalRefTaken)(void* ctxt);
	void (* externalRefReleased)(void* ctxt);
	enum BNScriptingProviderExecuteResult (* executeScriptInput)(void* ctxt, char const* input);
	enum BNScriptingProviderExecuteResult (* executeScriptInputFromFilename)(void* ctxt, char const* input);
	void (* cancelScriptInput)(void* ctxt);
	void (* setCurrentBinaryView)(void* ctxt, struct BNBinaryView* view);
	void (* setCurrentFunction)(void* ctxt, struct BNFunction* func);
	void (* setCurrentBasicBlock)(void* ctxt, struct BNBasicBlock* block);
	void (* setCurrentAddress)(void* ctxt, uint64_t addr);
	void (* setCurrentSelection)(void* ctxt, uint64_t begin, uint64_t end);
	char* (* completeInput)(void* ctxt, char const* text, uint64_t state);
	void (* stop)(void* ctxt);
};

struct BNScriptingOutputListener {
	void* context;
	void (* output)(void* ctxt, char const* text);
	void (* warning)(void* ctxt, char const* text);
	void (* error)(void* ctxt, char const* text);
	void (* inputReadyStateChanged)(void* ctxt, enum BNScriptingProviderInputReadyState state);
};

struct BNScriptingProvider {
};

struct BNScriptingProviderCallbacks {
	void* context;
	struct BNScriptingInstance* (* createInstance)(void* ctxt);
	bool (* loadModule)(void* ctxt, char const* repoPath, char const* pluginPath, bool force);
	bool (* installModules)(void* ctxt, char const* modules);
};


	typedef enum ScriptingProviderExecuteResult {
		InvalidScriptInput = 0,
		IncompleteScriptInput = 1,
		SuccessfulScriptExecution = 2,
		ScriptExecutionCancelled = 3,
} BNScriptingProviderExecuteResult;


	typedef enum ScriptingProviderInputReadyState {
		NotReadyForInput = 0,
		ReadyForScriptExecution = 1,
		ReadyForScriptProgramInput = 2,
} BNScriptingProviderInputReadyState;

struct BNSecretsProvider {
};

struct BNSecretsProviderCallbacks {
	void* context;
	bool (* hasData)(void* ctxt, char const* modules);
	char* (* getData)(void* ctxt, char const* key);
	bool (* storeData)(void* ctxt, char const* key, char const* data);
	bool (* deleteData)(void* ctxt, char const* modules);
};

struct BNSection {
};


	typedef enum SectionSemantics {
		DefaultSectionSemantics = 0,
		ReadOnlyCodeSectionSemantics = 1,
		ReadOnlyDataSectionSemantics = 2,
		ReadWriteDataSectionSemantics = 3,
		ExternalSectionSemantics = 4,
} BNSectionSemantics;

struct BNSegment {
};


	typedef enum SegmentFlag {
		SegmentExecutable = 1,
		SegmentWritable = 2,
		SegmentReadable = 4,
		SegmentContainsData = 8,
		SegmentContainsCode = 16,
		SegmentDenyWrite = 32,
		SegmentDenyExecute = 64,
} BNSegmentFlag;

struct BNSettings {
};


	typedef enum SettingsScope {
		SettingsInvalidScope = 0,
		SettingsAutoScope = 1,
		SettingsDefaultScope = 2,
		SettingsUserScope = 4,
		SettingsProjectScope = 8,
		SettingsResourceScope = 16,
} BNSettingsScope;

struct BNSnapshot {
};

struct BNStackVariableReference {
	uint32_t sourceOperand;
	uint8_t typeConfidence;
	struct BNType* type;
	char* name;
	uint64_t varIdentifier;
	int64_t referencedOffset;
	uint64_t size;
};


	typedef enum StringType {
		AsciiString = 0,
		Utf16String = 1,
		Utf32String = 2,
		Utf8String = 3,
} BNStringType;

struct BNStringReference {
	BNStringType type;
	uint64_t start;
	uint64_t length;
};

struct BNStructure {
};

struct BNStructureBuilder {
};


	typedef enum StructureVariant {
		ClassStructureType = 0,
		StructStructureType = 1,
		UnionStructureType = 2,
} BNStructureVariant;

struct BNSymbol {
};


	typedef enum SymbolBinding {
		NoBinding = 0,
		LocalBinding = 1,
		GlobalBinding = 2,
		WeakBinding = 3,
} BNSymbolBinding;

struct BNSymbolQueue {
};


	typedef enum SymbolType {
		FunctionSymbol = 0,
		ImportAddressSymbol = 1,
		ImportedFunctionSymbol = 2,
		DataSymbol = 3,
		ImportedDataSymbol = 4,
		ExternalSymbol = 5,
		LibraryFunctionSymbol = 6,
} BNSymbolType;

struct BNSystemCallInfo {
	uint32_t number;
	struct BNQualifiedName name;
	struct BNType* type;
};

struct BNTag {
};


	typedef enum TagReferenceType {
		AddressTagReference = 0,
		FunctionTagReference = 1,
		DataTagReference = 2,
} BNTagReferenceType;

struct BNTagReference {
	BNTagReferenceType refType;
	bool autoDefined;
	struct BNTag* tag;
	struct BNArchitecture* arch;
	struct BNFunction* func;
	uint64_t addr;
};

struct BNTagType {
};


	typedef enum TagTypeType {
		UserTagType = 0,
		NotificationTagType = 1,
		BookmarksTagType = 2,
} BNTagTypeType;

struct BNTemporaryFile {
};


	typedef enum TokenEscapingType {
		NoTokenEscapingType = 0,
		BackticksTokenEscapingType = 1,
		QuotedStringEscapingType = 2,
		ReplaceInvalidCharsEscapingType = 3,
} BNTokenEscapingType;

struct BNTransform {
};

struct BNTransformParameter {
	char const* name;
	struct BNDataBuffer* value;
};

struct BNTransformParameterInfo {
	char* name;
	char* longName;
	uint64_t fixedLength;
};


	typedef enum TransformType {
		BinaryCodecTransform = 0,
		TextCodecTransform = 1,
		UnicodeCodecTransform = 2,
		DecodeTransform = 3,
		BinaryEncodeTransform = 4,
		TextEncodeTransform = 5,
		EncryptTransform = 6,
		InvertingTransform = 7,
		HashTransform = 8,
} BNTransformType;

struct BNType {
};

struct BNTypeBuilder {
};


	typedef enum TypeClass {
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
} BNTypeClass;

struct BNTypeContext {
	struct BNType* type;
	uint64_t offset;
};


	typedef enum TypeDefinitionLineType {
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
} BNTypeDefinitionLineType;

struct BNTypeDefinitionLine {
	BNTypeDefinitionLineType lineType;
	struct BNInstructionTextToken* tokens;
	uint64_t count;
	struct BNType* type;
	struct BNType* rootType;
	char* rootTypeName;
	struct BNNamedTypeReference* baseType;
	uint64_t baseOffset;
	uint64_t offset;
	uint64_t fieldIndex;
};

struct BNTypeField {
	struct BNQualifiedName name;
	uint64_t offset;
};

struct BNTypeWithConfidence {
	struct BNType* type;
	uint8_t confidence;
};

struct BNTypeFieldReference {
	struct BNFunction* func;
	struct BNArchitecture* arch;
	uint64_t addr;
	uint64_t size;
	struct BNTypeWithConfidence incomingType;
};

struct BNTypeFieldReferenceSizeInfo {
	uint64_t offset;
	uint64_t* sizes;
	uint64_t count;
};

struct BNTypeFieldReferenceTypeInfo {
	uint64_t offset;
	struct BNTypeWithConfidence* types;
	uint64_t count;
};

struct BNTypeLibrary {
};

struct BNTypeLibraryMapping {
};

struct BNTypeParser {
};

struct BNTypeParserCallbacks {
	void* context;
	bool (* getOptionText)(void* ctxt, enum BNTypeParserOption option, char const* value, char** result);
	bool (* preprocessSource)(void* ctxt, char const* source, char const* fileName, struct BNPlatform* platform, struct BNQualifiedNameTypeAndId* existingTypes, uint64_t existingTypeCount, char const* const* options, uint64_t optionCount, char const* const* includeDirs, uint64_t includeDirCount, char** output, struct BNTypeParserError** errors, uint64_t* errorCount);
	bool (* parseTypesFromSource)(void* ctxt, char const* source, char const* fileName, struct BNPlatform* platform, struct BNQualifiedNameTypeAndId* existingTypes, uint64_t existingTypeCount, char const* const* options, uint64_t optionCount, char const* const* includeDirs, uint64_t includeDirCount, char const* autoTypeSource, struct BNTypeParserResult* result, struct BNTypeParserError** errors, uint64_t* errorCount);
	bool (* parseTypeString)(void* ctxt, char const* source, struct BNPlatform* platform, struct BNQualifiedNameTypeAndId* existingTypes, uint64_t existingTypeCount, struct BNQualifiedNameAndType* result, struct BNTypeParserError** errors, uint64_t* errorCount);
	void (* freeString)(void* ctxt, char* string);
	void (* freeResult)(void* ctxt, struct BNTypeParserResult* result);
	void (* freeErrorList)(void* ctxt, struct BNTypeParserError* errors, uint64_t errorCount);
};


	typedef enum TypeParserErrorSeverity {
		IgnoredSeverity = 0,
		NoteSeverity = 1,
		RemarkSeverity = 2,
		WarningSeverity = 3,
		ErrorSeverity = 4,
		FatalSeverity = 5,
} BNTypeParserErrorSeverity;

struct BNTypeParserError {
	BNTypeParserErrorSeverity severity;
	char* message;
	char* fileName;
	uint64_t line;
	uint64_t column;
};


	typedef enum TypeParserOption {
		IncludeSystemTypes = 0,
		BuiltinMacros = 1,
} BNTypeParserOption;

struct BNTypeParserResult {
	struct BNParsedType* types;
	struct BNParsedType* variables;
	struct BNParsedType* functions;
	uint64_t typeCount;
	uint64_t variableCount;
	uint64_t functionCount;
};

struct BNTypePrinter {
};

struct BNTypePrinterCallbacks {
	void* context;
	bool (* getTypeTokens)(void* ctxt, struct BNType* type, struct BNPlatform* platform, struct BNQualifiedName* name, uint8_t baseConfidence, enum BNTokenEscapingType escaping, struct BNInstructionTextToken** result, uint64_t* resultCount);
	bool (* getTypeTokensBeforeName)(void* ctxt, struct BNType* type, struct BNPlatform* platform, uint8_t baseConfidence, struct BNType* parentType, enum BNTokenEscapingType escaping, struct BNInstructionTextToken** result, uint64_t* resultCount);
	bool (* getTypeTokensAfterName)(void* ctxt, struct BNType* type, struct BNPlatform* platform, uint8_t baseConfidence, struct BNType* parentType, enum BNTokenEscapingType escaping, struct BNInstructionTextToken** result, uint64_t* resultCount);
	bool (* getTypeString)(void* ctxt, struct BNType* type, struct BNPlatform* platform, struct BNQualifiedName* name, enum BNTokenEscapingType escaping, char** result);
	bool (* getTypeStringBeforeName)(void* ctxt, struct BNType* type, struct BNPlatform* platform, enum BNTokenEscapingType escaping, char** result);
	bool (* getTypeStringAfterName)(void* ctxt, struct BNType* type, struct BNPlatform* platform, enum BNTokenEscapingType escaping, char** result);
	bool (* getTypeLines)(void* ctxt, struct BNType* type, struct BNBinaryView* data, struct BNQualifiedName* name, int32_t lineWidth, bool collapsed, enum BNTokenEscapingType escaping, struct BNTypeDefinitionLine** result, uint64_t* resultCount);
	bool (* printAllTypes)(void* ctxt, struct BNQualifiedName* names, struct BNType** types, uint64_t typeCount, struct BNBinaryView* data, int32_t lineWidth, enum BNTokenEscapingType escaping, char** result);
	void (* freeTokens)(void* ctxt, struct BNInstructionTextToken* tokens, uint64_t count);
	void (* freeString)(void* ctxt, char* string);
	void (* freeLines)(void* ctxt, struct BNTypeDefinitionLine* lines, uint64_t count);
};


	typedef enum TypeReferenceType {
		DirectTypeReferenceType = 0,
		IndirectTypeReferenceType = 1,
		UnknownTypeReferenceType = 2,
} BNTypeReferenceType;

struct BNTypeReferenceSource {
	struct BNQualifiedName name;
	uint64_t offset;
	BNTypeReferenceType type;
};

struct BNUndoAction {
	BNActionType actionType;
	char* summaryText;
	struct BNInstructionTextToken* summaryTokens;
	uint64_t summaryTokenCount;
};

struct BNUndoEntry {
	bool valid;
	struct BNUser* user;
	char* id;
	struct BNUndoAction* actions;
	uint64_t actionCount;
	uint64_t timestamp;
};

struct BNUpdateChannel {
	char* name;
	char* description;
	char* latestVersion;
};


	typedef enum UpdateResult {
		UpdateFailed = 0,
		UpdateSuccess = 1,
		AlreadyUpToDate = 2,
		UpdateAvailable = 3,
} BNUpdateResult;

struct BNUpdateVersion {
	char* version;
	char* notes;
	uint64_t time;
};

struct BNUser {
};

struct BNUserVariableValue {
	struct BNVariable var;
	struct BNArchitectureAndAddress defSite;
	struct BNPossibleValueSet value;
};

struct BNValueRange {
	uint64_t start;
	uint64_t end;
	uint64_t step;
};

struct BNVariableNameAndType {
	struct BNVariable var;
	struct BNType* type;
	char* name;
	bool autoDefined;
	uint8_t typeConfidence;
};

struct BNVariableReferenceSource {
	struct BNVariable var;
	struct BNILReferenceSource source;
};

struct BNVersionInfo {
	uint32_t major;
	uint32_t minor;
	uint32_t build;
	char const* channel;
};

struct BNWebsocketClient {
};

struct BNWebsocketClientCallbacks {
	void* context;
	void (* destroyClient)(void* ctxt);
	bool (* connect)(void* ctxt, char const* host, uint64_t headerCount, char const* const* headerKeys, char const* const* headerValues);
	bool (* write)(uint8_t const* data, uint64_t len, void* ctxt);
	bool (* disconnect)(void* ctxt);
};

struct BNWebsocketClientOutputCallbacks {
	void* context;
	bool (* connectedCallback)(void* ctxt);
	void (* disconnectedCallback)(void* ctxt);
	void (* errorCallback)(char const* msg, void* ctxt);
	bool (* readCallback)(uint8_t* data, uint64_t len, void* ctxt);
};

struct BNWebsocketProvider {
};

struct BNWebsocketProviderCallbacks {
	void* context;
	struct BNWebsocketClient* (* createClient)(void* ctxt);
};

struct BNWorkflow {
};


	typedef enum WorkflowState {
		WorkflowInitial = 0,
		WorkflowIdle = 1,
		WorkflowRun = 2,
		WorkflowHalt = 3,
		WorkflowHold = 4,
		WorkflowInvalid = 5,
} BNWorkflowState;


	typedef enum PluginLoadStatus {
		NotAttemptedStatus = 0,
		LoadSucceededStatus = 1,
		LoadFailedStatus = 2,
} BNPluginLoadStatus;

void BNAbortAnalysis(
	struct BNBinaryView* view
);

void BNAbortFlowGraphLayoutRequest(
	struct BNFlowGraphLayoutRequest* graph
);

char* BNActivityGetName(
	struct BNActivity* activity
);

struct BNAnalysisCompletionEvent* BNAddAnalysisCompletionEvent(
	struct BNBinaryView* view,
	void* ctxt,
	void (* callback)(void* ctxt)
);

void BNAddAnalysisOption(
	struct BNBinaryView* view,
	char const* name
);

void BNAddArchitectureRedirection(
	struct BNArchitecture* arch,
	struct BNArchitecture* from,
	struct BNArchitecture* to
);

void BNAddAutoAddressTag(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTag* tag
);

void BNAddAutoDataTag(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTag* tag
);

void BNAddAutoFunctionTag(
	struct BNFunction* func,
	struct BNTag* tag
);

void BNAddAutoSection(
	struct BNBinaryView* view,
	char const* name,
	uint64_t start,
	uint64_t length,
	BNSectionSemantics semantics,
	char const* type,
	uint64_t align,
	uint64_t entrySize,
	char const* linkedSection,
	char const* infoSection,
	uint64_t infoData
);

void BNAddAutoSegment(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t length,
	uint64_t dataOffset,
	uint64_t dataLength,
	uint32_t flags
);

void BNAddBinaryViewTypeLibrary(
	struct BNBinaryView* view,
	struct BNTypeLibrary* lib
);

bool BNAddDebugDataVariable(
	struct BNDebugInfo* const debugInfo,
	uint64_t address,
	struct BNType* const type,
	char const* name
);

bool BNAddDebugDataVariableInfo(
	struct BNDebugInfo* const debugInfo,
	struct BNDataVariableAndName* var
);

bool BNAddDebugFunction(
	struct BNDebugInfo* const debugInfo,
	struct BNDebugFunctionInfo* func
);

bool BNAddDebugType(
	struct BNDebugInfo* const debugInfo,
	char const* const name,
	struct BNType* const type
);

void BNAddEntryPointForAnalysis(
	struct BNBinaryView* view,
	struct BNPlatform* platform,
	uint64_t addr
);

void BNAddEnumerationBuilderMember(
	struct BNEnumerationBuilder* e,
	char const* name
);

void BNAddEnumerationBuilderMemberWithValue(
	struct BNEnumerationBuilder* e,
	char const* name,
	uint64_t value
);

void BNAddExpressionParserMagicValue(
	struct BNBinaryView* view,
	char const* name,
	uint64_t value
);

void BNAddExpressionParserMagicValues(
	struct BNBinaryView* view,
	char const** names,
	uint64_t* values,
	uint64_t count
);

uint64_t BNAddFlowGraphNode(
	struct BNFlowGraph* graph,
	struct BNFlowGraphNode* node
);

void BNAddFlowGraphNodeOutgoingEdge(
	struct BNFlowGraphNode* node,
	BNBranchType type,
	struct BNFlowGraphNode* target,
	struct BNEdgeStyle edgeStyle
);

struct BNFunction* BNAddFunctionForAnalysis(
	struct BNBinaryView* view,
	struct BNPlatform* platform,
	uint64_t addr,
	bool autoDiscovered,
	struct BNType* type
);

void BNAddGraphReportToCollection(
	struct BNReportCollection* reports,
	struct BNBinaryView* view,
	char const* title,
	struct BNFlowGraph* graph
);

void BNAddHTMLReportToCollection(
	struct BNReportCollection* reports,
	struct BNBinaryView* view,
	char const* title,
	char const* contents,
	char const* plaintext
);

void BNAddLowLevelILLabelForAddress(
	struct BNLowLevelILFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

void BNAddMarkdownReportToCollection(
	struct BNReportCollection* reports,
	struct BNBinaryView* view,
	char const* title,
	char const* contents,
	char const* plaintext
);

void BNAddOptionalPluginDependency(
	char const* name
);

void BNAddPlainTextReportToCollection(
	struct BNReportCollection* reports,
	struct BNBinaryView* view,
	char const* title,
	char const* contents
);

void BNAddRelatedPlatform(
	struct BNPlatform* platform,
	struct BNArchitecture* arch,
	struct BNPlatform* related
);

void BNAddRequiredPluginDependency(
	char const* name
);

void BNAddStructureBuilderMember(
	struct BNStructureBuilder* s,
	struct BNTypeWithConfidence* const type,
	char const* name,
	BNMemberAccess access,
	BNMemberScope scope
);

void BNAddStructureBuilderMemberAtOffset(
	struct BNStructureBuilder* s,
	struct BNTypeWithConfidence* const type,
	char const* name,
	uint64_t offset,
	bool overwriteExisting,
	BNMemberAccess access,
	BNMemberScope scope
);

void BNAddTag(
	struct BNBinaryView* view,
	struct BNTag* tag,
	bool user
);

void BNAddTagType(
	struct BNBinaryView* view,
	struct BNTagType* tagType
);

void BNAddTypeLibraryAlternateName(
	struct BNTypeLibrary* lib,
	char const* name
);

void BNAddTypeLibraryNamedObject(
	struct BNTypeLibrary* lib,
	struct BNQualifiedName* name,
	struct BNType* type
);

void BNAddTypeLibraryNamedType(
	struct BNTypeLibrary* lib,
	struct BNQualifiedName* name,
	struct BNType* type
);

void BNAddTypeLibraryNamedTypeSource(
	struct BNTypeLibrary* lib,
	struct BNQualifiedName* name,
	char const* source
);

void BNAddTypeLibraryPlatform(
	struct BNTypeLibrary* lib,
	struct BNPlatform* platform
);

bool BNAddTypeMemberTokens(
	struct BNType* type,
	struct BNBinaryView* data,
	struct BNInstructionTextToken** tokens,
	uint64_t* tokenCount,
	int64_t offset,
	char*** nameList,
	uint64_t* nameCount,
	uint64_t size,
	bool indirect
);

void BNAddUserAddressTag(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTag* tag
);

void BNAddUserCodeReference(
	struct BNFunction* func,
	struct BNArchitecture* fromArch,
	uint64_t fromAddr,
	uint64_t toAddr
);

void BNAddUserDataReference(
	struct BNBinaryView* view,
	uint64_t fromAddr,
	uint64_t toAddr
);

void BNAddUserDataTag(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTag* tag
);

void BNAddUserFunctionTag(
	struct BNFunction* func,
	struct BNTag* tag
);

void BNAddUserSection(
	struct BNBinaryView* view,
	char const* name,
	uint64_t start,
	uint64_t length,
	BNSectionSemantics semantics,
	char const* type,
	uint64_t align,
	uint64_t entrySize,
	char const* linkedSection,
	char const* infoSection,
	uint64_t infoData
);

void BNAddUserSegment(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t length,
	uint64_t dataOffset,
	uint64_t dataLength,
	uint32_t flags
);

void BNAddUserTypeFieldReference(
	struct BNFunction* func,
	struct BNArchitecture* fromArch,
	uint64_t fromAddr,
	struct BNQualifiedName* name,
	uint64_t offset,
	uint64_t size
);

void BNAddUserTypeReference(
	struct BNFunction* func,
	struct BNArchitecture* fromArch,
	uint64_t fromAddr,
	struct BNQualifiedName* name
);

char* BNAllocString(
	char const* contents
);

char** BNAllocStringList(
	char const** contents,
	uint64_t size
);

bool BNAlwaysBranch(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr
);

struct BNFunction* BNAnalysisContextGetFunction(
	struct BNAnalysisContext* analysisContext
);

struct BNHighLevelILFunction* BNAnalysisContextGetHighLevelILFunction(
	struct BNAnalysisContext* analysisContext
);

struct BNLowLevelILFunction* BNAnalysisContextGetLowLevelILFunction(
	struct BNAnalysisContext* analysisContext
);

struct BNMediumLevelILFunction* BNAnalysisContextGetMediumLevelILFunction(
	struct BNAnalysisContext* analysisContext
);

bool BNAnalysisContextInform(
	struct BNAnalysisContext* analysisContext,
	char const* request
);

void BNAppendDataBuffer(
	struct BNDataBuffer* dest,
	struct BNDataBuffer* src
);

void BNAppendDataBufferContents(
	struct BNDataBuffer* dest,
	void const* src,
	uint64_t len
);

char* BNAppendPath(
	char const* path,
	char const* part
);

void BNAppendSymbolQueue(
	struct BNSymbolQueue* queue,
	void (* resolve)(void* ctxt, struct BNSymbol** symbol, struct BNType** type),
	void* resolveContext,
	void (* add)(void* ctxt, struct BNSymbol* symbol, struct BNType* type),
	void* addContext
);

void BNApplyAutoDiscoveredFunctionType(
	struct BNFunction* func,
	struct BNType* type
);

void BNApplyDebugInfo(
	struct BNBinaryView* view,
	struct BNDebugInfo* newDebugInfo
);

void BNApplyImportedTypes(
	struct BNFunction* func,
	struct BNSymbol* sym,
	struct BNType* type
);

void BNApplySnapshotData(
	struct BNFileMetadata* file,
	struct BNBinaryView* view,
	struct BNKeyValueStore* data,
	struct BNKeyValueStore* cache,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t current, uint64_t total),
	bool openForConfiguration,
	bool restoreRawView
);

bool BNArchitectureAlwaysBranch(
	struct BNArchitecture* arch,
	uint8_t* data,
	uint64_t addr,
	uint64_t len
);

bool BNArchitectureConvertToNop(
	struct BNArchitecture* arch,
	uint8_t* data,
	uint64_t addr,
	uint64_t len
);

struct BNRelocationHandler* BNArchitectureGetRelocationHandler(
	struct BNArchitecture* arch,
	char const* viewName
);

bool BNArchitectureInvertBranch(
	struct BNArchitecture* arch,
	uint8_t* data,
	uint64_t addr,
	uint64_t len
);

void BNArchitectureRegisterRelocationHandler(
	struct BNArchitecture* arch,
	char const* viewName,
	struct BNRelocationHandler* handler
);

bool BNArchitectureSkipAndReturnValue(
	struct BNArchitecture* arch,
	uint8_t* data,
	uint64_t addr,
	uint64_t len,
	uint64_t value
);

bool BNAreArgumentRegistersSharedIndex(
	struct BNCallingConvention* cc
);

bool BNAreArgumentRegistersUsedForVarArgs(
	struct BNCallingConvention* cc
);

bool BNAreAutoUpdatesEnabled(

);

bool BNAreUpdatesAvailable(
	char const* channel,
	uint64_t* expireTime,
	uint64_t* serverTime,
	char** errors
);

bool BNAssemble(
	struct BNArchitecture* arch,
	char const* code,
	uint64_t addr,
	struct BNDataBuffer* result,
	char** errors
);

void BNAssignDataBuffer(
	struct BNDataBuffer* dest,
	struct BNDataBuffer* src
);

bool BNAuthenticateEnterpriseServerWithCredentials(
	char const* username,
	char const* password,
	bool remember
);

bool BNAuthenticateEnterpriseServerWithMethod(
	char const* method,
	bool remember
);

bool BNBasicBlockCanExit(
	struct BNBasicBlock* block
);

bool BNBasicBlockHasInvalidInstructions(
	struct BNBasicBlock* block
);

bool BNBasicBlockHasUndeterminedOutgoingEdges(
	struct BNBasicBlock* block
);

void BNBasicBlockSetCanExit(
	struct BNBasicBlock* block,
	bool value
);

struct BNBackgroundTask* BNBeginBackgroundTask(
	char const* initialText,
	bool canCancel
);

void BNBeginBulkModifySymbols(
	struct BNBinaryView* view
);

void BNBeginKeyValueStoreNamespace(
	struct BNKeyValueStore* store,
	char const* name
);

void BNBeginUndoActions(
	struct BNFileMetadata* file
);

void BNBinaryViewExportObjectToTypeLibrary(
	struct BNBinaryView* view,
	struct BNTypeLibrary* lib,
	struct BNQualifiedName* name,
	struct BNType* type
);

void BNBinaryViewExportTypeToTypeLibrary(
	struct BNBinaryView* view,
	struct BNTypeLibrary* lib,
	struct BNQualifiedName* name,
	struct BNType* type
);

struct BNSettings* BNBinaryViewGetLoadSettings(
	struct BNBinaryView* view,
	char const* typeName
);

char** BNBinaryViewGetLoadSettingsTypeNames(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNType* BNBinaryViewImportTypeLibraryObject(
	struct BNBinaryView* view,
	struct BNTypeLibrary** lib,
	struct BNQualifiedName* name
);

struct BNType* BNBinaryViewImportTypeLibraryType(
	struct BNBinaryView* view,
	struct BNTypeLibrary** lib,
	struct BNQualifiedName* name
);

bool BNBinaryViewLookupImportedObjectLibrary(
	struct BNBinaryView* view,
	struct BNPlatform* tgtPlatform,
	uint64_t tgtAddr,
	struct BNTypeLibrary** lib,
	struct BNQualifiedName* name
);

bool BNBinaryViewLookupImportedTypeLibrary(
	struct BNBinaryView* view,
	struct BNQualifiedName* typeName,
	struct BNTypeLibrary** lib,
	struct BNQualifiedName* resultName
);

struct BNMetadata* BNBinaryViewQueryMetadata(
	struct BNBinaryView* view,
	char const* key
);

void BNBinaryViewRecordImportedObjectLibrary(
	struct BNBinaryView* view,
	struct BNPlatform* tgtPlatform,
	uint64_t tgtAddr,
	struct BNTypeLibrary* lib,
	struct BNQualifiedName* name
);

void BNBinaryViewRemoveMetadata(
	struct BNBinaryView* view,
	char const* key
);

void BNBinaryViewSetLoadSettings(
	struct BNBinaryView* view,
	char const* typeName,
	struct BNSettings* settings
);

void BNBinaryViewStoreMetadata(
	struct BNBinaryView* view,
	char const* key,
	struct BNMetadata* value,
	bool isAuto
);

bool BNCanArchitectureAssemble(
	struct BNArchitecture* arch
);

bool BNCanAssemble(
	struct BNBinaryView* view,
	struct BNArchitecture* arch
);

bool BNCanCancelBackgroundTask(
	struct BNBackgroundTask* task
);

struct BNBoolWithConfidence BNCanFunctionReturn(
	struct BNFunction* func
);

bool BNCanRedo(
	struct BNFileMetadata* file
);

bool BNCanUndo(
	struct BNFileMetadata* file
);

void BNCancelAnalysisCompletionEvent(
	struct BNAnalysisCompletionEvent* event
);

void BNCancelBackgroundTask(
	struct BNBackgroundTask* task
);

void BNCancelEnterpriseServerAuthentication(

);

void BNCancelScriptInput(
	struct BNScriptingInstance* instance
);

void BNClearDataBuffer(
	struct BNDataBuffer* buf
);

void BNClearTypeLibraryPlatforms(
	struct BNTypeLibrary* lib
);

void BNClearUndoEntries(
	struct BNFileMetadata* file
);

void BNClearUserVariableValue(
	struct BNFunction* func,
	struct BNVariable* var,
	struct BNArchitectureAndAddress* defSite
);

void BNCloseFile(
	struct BNFileMetadata* file
);

void BNCloseLogs(

);

void BNCloseProject(
	struct BNFileMetadata* file
);

void BNCommitUndoActions(
	struct BNFileMetadata* file
);

int32_t BNCompareLinearViewCursors(
	struct BNLinearViewCursor* a,
	struct BNLinearViewCursor* b
);

int32_t BNCompareLinearViewObjectChildren(
	struct BNLinearViewObject* obj,
	struct BNLinearViewObject* a,
	struct BNLinearViewObject* b
);

void BNComponentAddAllMembersFromComponent(
	struct BNComponent* component,
	struct BNComponent* fromComponent
);

bool BNComponentAddComponent(
	struct BNComponent* parent,
	struct BNComponent* component
);

bool BNComponentAddDataVariable(
	struct BNComponent* component,
	uint64_t address
);

bool BNComponentAddFunctionReference(
	struct BNComponent* component,
	struct BNFunction* function
);

bool BNComponentContainsComponent(
	struct BNComponent* parent,
	struct BNComponent* component
);

bool BNComponentContainsDataVariable(
	struct BNComponent* component,
	uint64_t address
);

bool BNComponentContainsFunction(
	struct BNComponent* component,
	struct BNFunction* function
);

void BNComponentFreeReferencedTypes(
	struct BNType** types,
	uint64_t count
);

struct BNComponent** BNComponentGetContainedComponents(
	struct BNComponent* component,
	uint64_t* count
);

struct BNDataVariable* BNComponentGetContainedDataVariables(
	struct BNComponent* component,
	uint64_t* count
);

struct BNFunction** BNComponentGetContainedFunctions(
	struct BNComponent* component,
	uint64_t* count
);

char* BNComponentGetDisplayName(
	struct BNComponent* component
);

char* BNComponentGetGuid(
	struct BNComponent* component
);

char* BNComponentGetOriginalName(
	struct BNComponent* component
);

struct BNComponent* BNComponentGetParent(
	struct BNComponent* component
);

struct BNDataVariable* BNComponentGetReferencedDataVariables(
	struct BNComponent* component,
	uint64_t* count
);

struct BNDataVariable* BNComponentGetReferencedDataVariablesRecursive(
	struct BNComponent* component,
	uint64_t* count
);

struct BNType** BNComponentGetReferencedTypes(
	struct BNComponent* component,
	uint64_t* count
);

struct BNType** BNComponentGetReferencedTypesRecursive(
	struct BNComponent* component,
	uint64_t* count
);

struct BNBinaryView* BNComponentGetView(
	struct BNComponent* component
);

void BNComponentRemoveAllFunctions(
	struct BNComponent* component
);

bool BNComponentRemoveComponent(
	struct BNComponent* component
);

bool BNComponentRemoveDataVariable(
	struct BNComponent* component,
	uint64_t address
);

bool BNComponentRemoveFunctionReference(
	struct BNComponent* component,
	struct BNFunction* function
);

void BNComponentSetName(
	struct BNComponent* component,
	char const* name
);

bool BNComponentsEqual(
	struct BNComponent* a,
	struct BNComponent* b
);

bool BNComponentsNotEqual(
	struct BNComponent* a,
	struct BNComponent* b
);

bool BNConnectEnterpriseServer(

);

bool BNConnectWebsocketClient(
	struct BNWebsocketClient* client,
	char const* url,
	uint64_t headerCount,
	char const* const* headerKeys,
	char const* const* headerValues,
	struct BNWebsocketClientOutputCallbacks* callbacks
);

bool BNConvertToNop(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNCopyFile(
	char const* source,
	char const* dest
);

struct BNActivity* BNCreateActivity(
	char const* name,
	void* ctxt,
	void (* action)(void*, struct BNAnalysisContext*)
);

struct BNAnalysisContext* BNCreateAnalysisContext(

);

struct BNType* BNCreateArrayType(
	struct BNTypeWithConfidence* const type,
	uint64_t elem
);

struct BNTypeBuilder* BNCreateArrayTypeBuilder(
	struct BNTypeWithConfidence* const type,
	uint64_t elem
);

void BNCreateAutoStackVariable(
	struct BNFunction* func,
	int64_t offset,
	struct BNTypeWithConfidence* type,
	char const* name
);

void BNCreateAutoVariable(
	struct BNFunction* func,
	struct BNVariable* var,
	struct BNTypeWithConfidence* type,
	char const* name,
	bool ignoreDisjointUses
);

struct BNBinaryView* BNCreateBinaryDataView(
	struct BNFileMetadata* file
);

struct BNBinaryView* BNCreateBinaryDataViewFromBuffer(
	struct BNFileMetadata* file,
	struct BNDataBuffer* buf
);

struct BNBinaryView* BNCreateBinaryDataViewFromData(
	struct BNFileMetadata* file,
	void const* data,
	uint64_t len
);

struct BNBinaryView* BNCreateBinaryDataViewFromFile(
	struct BNFileMetadata* file,
	struct BNFileAccessor* accessor
);

struct BNBinaryView* BNCreateBinaryDataViewFromFilename(
	struct BNFileMetadata* file,
	char const* filename
);

struct BNBinaryReader* BNCreateBinaryReader(
	struct BNBinaryView* view
);

struct BNBinaryView* BNCreateBinaryViewOfType(
	struct BNBinaryViewType* type,
	struct BNBinaryView* data
);

struct BNBinaryWriter* BNCreateBinaryWriter(
	struct BNBinaryView* view
);

struct BNType* BNCreateBoolType(

);

struct BNTypeBuilder* BNCreateBoolTypeBuilder(

);

struct BNCallingConvention* BNCreateCallingConvention(
	struct BNArchitecture* arch,
	char const* name,
	struct BNCustomCallingConvention* cc
);

struct BNComponent* BNCreateComponent(
	struct BNBinaryView* view
);

struct BNComponent* BNCreateComponentWithName(
	struct BNBinaryView* view,
	char const* name
);

struct BNComponent* BNCreateComponentWithParent(
	struct BNBinaryView* view,
	char const* parentGUID
);

struct BNComponent* BNCreateComponentWithParentAndName(
	struct BNBinaryView* view,
	char const* parentGUID,
	char const* name
);

struct BNBinaryView* BNCreateCustomBinaryView(
	char const* name,
	struct BNFileMetadata* file,
	struct BNBinaryView* parent,
	struct BNCustomBinaryView* view
);

struct BNFlowGraph* BNCreateCustomFlowGraph(
	struct BNCustomFlowGraph* callbacks
);

struct BNDataBuffer* BNCreateDataBuffer(
	void const* data,
	uint64_t len
);

struct BNDataRenderer* BNCreateDataRenderer(
	struct BNCustomDataRenderer* renderer
);

bool BNCreateDatabase(
	struct BNBinaryView* data,
	char const* path,
	struct BNSaveSettings* settings
);

bool BNCreateDatabaseWithProgress(
	struct BNBinaryView* data,
	char const* path,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t progress, uint64_t total),
	struct BNSaveSettings* settings
);

bool BNCreateDirectory(
	char const* path,
	bool createSubdirectories
);

struct BNDisassemblySettings* BNCreateDisassemblySettings(

);

struct BNDisassemblyTextRenderer* BNCreateDisassemblyTextRenderer(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNDownloadInstance* BNCreateDownloadProviderInstance(
	struct BNDownloadProvider* provider
);

struct BNEnumerationBuilder* BNCreateEnumerationBuilder(

);

struct BNEnumerationBuilder* BNCreateEnumerationBuilderFromEnumeration(
	struct BNEnumeration* e
);

struct BNType* BNCreateEnumerationType(
	struct BNArchitecture* arch,
	struct BNEnumeration* e,
	uint64_t width,
	struct BNBoolWithConfidence* isSigned
);

struct BNTypeBuilder* BNCreateEnumerationTypeBuilder(
	struct BNArchitecture* arch,
	struct BNEnumeration* e,
	uint64_t width,
	struct BNBoolWithConfidence* isSigned
);

struct BNTypeBuilder* BNCreateEnumerationTypeBuilderWithBuilder(
	struct BNArchitecture* arch,
	struct BNEnumerationBuilder* e,
	uint64_t width,
	struct BNBoolWithConfidence* isSigned
);

struct BNType* BNCreateEnumerationTypeOfWidth(
	struct BNEnumeration* e,
	uint64_t width,
	struct BNBoolWithConfidence* isSigned
);

struct BNFileMetadata* BNCreateFileMetadata(

);

struct BNType* BNCreateFloatType(
	uint64_t width,
	char const* altName
);

struct BNTypeBuilder* BNCreateFloatTypeBuilder(
	uint64_t width,
	char const* altName
);

struct BNFlowGraph* BNCreateFlowGraph(

);

struct BNFlowGraphNode* BNCreateFlowGraphNode(
	struct BNFlowGraph* graph
);

struct BNFlowGraph* BNCreateFunctionGraph(
	struct BNFunction* func,
	BNFunctionGraphType type,
	struct BNDisassemblySettings* settings
);

struct BNType* BNCreateFunctionType(
	struct BNTypeWithConfidence* returnValue,
	struct BNCallingConventionWithConfidence* callingConvention,
	struct BNFunctionParameter* params,
	uint64_t paramCount,
	struct BNBoolWithConfidence* varArg,
	struct BNBoolWithConfidence* canReturn,
	struct BNOffsetWithConfidence* stackAdjust,
	uint32_t* regStackAdjustRegs,
	struct BNOffsetWithConfidence* regStackAdjustValues,
	uint64_t regStackAdjustCount,
	struct BNRegisterSetWithConfidence* returnRegs,
	BNNameType ft
);

struct BNTypeBuilder* BNCreateFunctionTypeBuilder(
	struct BNTypeWithConfidence* returnValue,
	struct BNCallingConventionWithConfidence* callingConvention,
	struct BNFunctionParameter* params,
	uint64_t paramCount,
	struct BNBoolWithConfidence* varArg,
	struct BNBoolWithConfidence* canReturn,
	struct BNOffsetWithConfidence* stackAdjust,
	uint32_t* regStackAdjustRegs,
	struct BNOffsetWithConfidence* regStackAdjustValues,
	uint64_t regStackAdjustCount,
	struct BNRegisterSetWithConfidence* returnRegs,
	BNNameType ft
);

struct BNDisassemblyTextRenderer* BNCreateHighLevelILDisassemblyTextRenderer(
	struct BNHighLevelILFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNHighLevelILFunction* BNCreateHighLevelILFunction(
	struct BNArchitecture* arch,
	struct BNFunction* func
);

struct BNFlowGraph* BNCreateHighLevelILFunctionGraph(
	struct BNHighLevelILFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNType* BNCreateIntegerType(
	uint64_t width,
	struct BNBoolWithConfidence* sign,
	char const* altName
);

struct BNTypeBuilder* BNCreateIntegerTypeBuilder(
	uint64_t width,
	struct BNBoolWithConfidence* sign,
	char const* altName
);

struct BNKeyValueStore* BNCreateKeyValueStore(

);

struct BNKeyValueStore* BNCreateKeyValueStoreFromDataBuffer(
	struct BNDataBuffer* buffer
);

struct BNLanguageRepresentationFunction* BNCreateLanguageRepresentationFunction(
	struct BNArchitecture* arch,
	struct BNFunction* func
);

struct BNLinearViewCursor* BNCreateLinearViewCursor(
	struct BNLinearViewObject* root
);

struct BNLinearViewObject* BNCreateLinearViewDataOnly(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewDisassembly(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewHighLevelIL(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewHighLevelILSSAForm(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewLanguageRepresentation(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewLiftedIL(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewLowLevelIL(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewLowLevelILSSAForm(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewMappedMediumLevelIL(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewMappedMediumLevelILSSAForm(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewMediumLevelIL(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewMediumLevelILSSAForm(
	struct BNBinaryView* view,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionDisassembly(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionHighLevelIL(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionHighLevelILSSAForm(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionLanguageRepresentation(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionLiftedIL(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionLowLevelIL(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionLowLevelILSSAForm(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionMappedMediumLevelIL(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionMappedMediumLevelILSSAForm(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionMediumLevelIL(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLinearViewObject* BNCreateLinearViewSingleFunctionMediumLevelILSSAForm(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNDisassemblyTextRenderer* BNCreateLowLevelILDisassemblyTextRenderer(
	struct BNLowLevelILFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNLowLevelILFunction* BNCreateLowLevelILFunction(
	struct BNArchitecture* arch,
	struct BNFunction* func
);

struct BNFlowGraph* BNCreateLowLevelILFunctionGraph(
	struct BNLowLevelILFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNDisassemblyTextRenderer* BNCreateMediumLevelILDisassemblyTextRenderer(
	struct BNMediumLevelILFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNMediumLevelILFunction* BNCreateMediumLevelILFunction(
	struct BNArchitecture* arch,
	struct BNFunction* func
);

struct BNFlowGraph* BNCreateMediumLevelILFunctionGraph(
	struct BNMediumLevelILFunction* func,
	struct BNDisassemblySettings* settings
);

struct BNMetadata* BNCreateMetadataArray(
	struct BNMetadata** data,
	uint64_t size
);

struct BNMetadata* BNCreateMetadataBooleanData(
	bool data
);

struct BNMetadata* BNCreateMetadataBooleanListData(
	bool* data,
	uint64_t size
);

struct BNMetadata* BNCreateMetadataDoubleData(
	double data
);

struct BNMetadata* BNCreateMetadataDoubleListData(
	double* data,
	uint64_t size
);

struct BNMetadata* BNCreateMetadataOfType(
	BNMetadataType type
);

struct BNMetadata* BNCreateMetadataRawData(
	uint8_t const* data,
	uint64_t size
);

struct BNMetadata* BNCreateMetadataSignedIntegerData(
	int64_t data
);

struct BNMetadata* BNCreateMetadataSignedIntegerListData(
	int64_t* data,
	uint64_t size
);

struct BNMetadata* BNCreateMetadataStringData(
	char const* data
);

struct BNMetadata* BNCreateMetadataStringListData(
	char const** data,
	uint64_t size
);

struct BNMetadata* BNCreateMetadataUnsignedIntegerData(
	uint64_t data
);

struct BNMetadata* BNCreateMetadataUnsignedIntegerListData(
	uint64_t* data,
	uint64_t size
);

struct BNMetadata* BNCreateMetadataValueStore(
	char const** keys,
	struct BNMetadata** values,
	uint64_t size
);

struct BNNamedTypeReference* BNCreateNamedType(
	BNNamedTypeReferenceClass cls,
	char const* id,
	struct BNQualifiedName* name
);

struct BNNamedTypeReferenceBuilder* BNCreateNamedTypeBuilder(
	BNNamedTypeReferenceClass cls,
	char const* id,
	struct BNQualifiedName* name
);

struct BNType* BNCreateNamedTypeReference(
	struct BNNamedTypeReference* nt,
	uint64_t width,
	uint64_t align,
	struct BNBoolWithConfidence* cnst,
	struct BNBoolWithConfidence* vltl
);

struct BNTypeBuilder* BNCreateNamedTypeReferenceBuilder(
	struct BNNamedTypeReference* nt,
	uint64_t width,
	uint64_t align,
	struct BNBoolWithConfidence* cnst,
	struct BNBoolWithConfidence* vltl
);

struct BNTypeBuilder* BNCreateNamedTypeReferenceBuilderFromType(
	struct BNBinaryView* view,
	struct BNQualifiedName* name
);

struct BNTypeBuilder* BNCreateNamedTypeReferenceBuilderFromTypeAndId(
	char const* id,
	struct BNQualifiedName* name,
	struct BNType* type
);

struct BNTypeBuilder* BNCreateNamedTypeReferenceBuilderWithBuilder(
	struct BNNamedTypeReferenceBuilder* nt,
	uint64_t width,
	uint64_t align,
	struct BNBoolWithConfidence* cnst,
	struct BNBoolWithConfidence* vltl
);

struct BNType* BNCreateNamedTypeReferenceFromType(
	struct BNBinaryView* view,
	struct BNQualifiedName* name
);

struct BNType* BNCreateNamedTypeReferenceFromTypeAndId(
	char const* id,
	struct BNQualifiedName* name,
	struct BNType* type
);

struct BNPlatform* BNCreatePlatform(
	struct BNArchitecture* arch,
	char const* name
);

struct BNPlatform* BNCreatePlatformWithTypes(
	struct BNArchitecture* arch,
	char const* name,
	char const* typeFile,
	char const** includeDirs,
	uint64_t includeDirCount
);

struct BNType* BNCreatePointerType(
	struct BNArchitecture* arch,
	struct BNTypeWithConfidence* const type,
	struct BNBoolWithConfidence* cnst,
	struct BNBoolWithConfidence* vltl,
	BNReferenceType refType
);

struct BNTypeBuilder* BNCreatePointerTypeBuilder(
	struct BNArchitecture* arch,
	struct BNTypeWithConfidence* const type,
	struct BNBoolWithConfidence* cnst,
	struct BNBoolWithConfidence* vltl,
	BNReferenceType refType
);

struct BNTypeBuilder* BNCreatePointerTypeBuilderOfWidth(
	uint64_t width,
	struct BNTypeWithConfidence* const type,
	struct BNBoolWithConfidence* cnst,
	struct BNBoolWithConfidence* vltl,
	BNReferenceType refType
);

struct BNType* BNCreatePointerTypeOfWidth(
	uint64_t width,
	struct BNTypeWithConfidence* const type,
	struct BNBoolWithConfidence* cnst,
	struct BNBoolWithConfidence* vltl,
	BNReferenceType refType
);

struct BNRelocationHandler* BNCreateRelocationHandler(
	struct BNCustomRelocationHandler* handler
);

struct BNReportCollection* BNCreateReportCollection(

);

struct BNRepositoryManager* BNCreateRepositoryManager(
	char const* enabledPluginsPath
);

struct BNSaveSettings* BNCreateSaveSettings(

);

struct BNScriptingInstance* BNCreateScriptingProviderInstance(
	struct BNScriptingProvider* provider
);

struct BNSegment* BNCreateSegment(
	uint64_t start,
	uint64_t length,
	uint64_t dataOffset,
	uint64_t dataLength,
	uint32_t flags,
	bool autoDefined
);

struct BNSettings* BNCreateSettings(
	char const* schemaId
);

bool BNCreateSnapshotedView(
	struct BNBinaryView* data,
	char const* viewName
);

bool BNCreateSnapshotedViewWithProgress(
	struct BNBinaryView* data,
	char const* viewName,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t progress, uint64_t total)
);

struct BNStructureBuilder* BNCreateStructureBuilder(

);

struct BNStructureBuilder* BNCreateStructureBuilderFromStructure(
	struct BNStructure* s
);

struct BNStructureBuilder* BNCreateStructureBuilderWithOptions(
	BNStructureVariant type,
	bool packed
);

struct BNStructure* BNCreateStructureFromOffsetAccess(
	struct BNBinaryView* view,
	struct BNQualifiedName* name,
	bool* newMember
);

struct BNTypeWithConfidence BNCreateStructureMemberFromAccess(
	struct BNBinaryView* view,
	struct BNQualifiedName* name,
	uint64_t offset
);

struct BNType* BNCreateStructureType(
	struct BNStructure* s
);

struct BNTypeBuilder* BNCreateStructureTypeBuilder(
	struct BNStructure* s
);

struct BNTypeBuilder* BNCreateStructureTypeBuilderWithBuilder(
	struct BNStructureBuilder* s
);

struct BNSymbol* BNCreateSymbol(
	BNSymbolType type,
	char const* shortName,
	char const* fullName,
	char const* rawName,
	uint64_t addr,
	BNSymbolBinding binding,
	struct BNNameSpace* nameSpace,
	uint64_t ordinal
);

struct BNSymbolQueue* BNCreateSymbolQueue(

);

struct BNTag* BNCreateTag(
	struct BNTagType* type,
	char const* data
);

struct BNTagType* BNCreateTagType(
	struct BNBinaryView* view
);

struct BNTemporaryFile* BNCreateTemporaryFile(

);

struct BNTemporaryFile* BNCreateTemporaryFileWithContents(
	struct BNDataBuffer* data
);

struct BNTypeBuilder* BNCreateTypeBuilderFromType(
	struct BNType* type
);

struct BNFunction* BNCreateUserFunction(
	struct BNBinaryView* view,
	struct BNPlatform* platform,
	uint64_t addr
);

void BNCreateUserStackVariable(
	struct BNFunction* func,
	int64_t offset,
	struct BNTypeWithConfidence* type,
	char const* name
);

void BNCreateUserVariable(
	struct BNFunction* func,
	struct BNVariable* var,
	struct BNTypeWithConfidence* type,
	char const* name,
	bool ignoreDisjointUses
);

struct BNType* BNCreateVoidType(

);

struct BNTypeBuilder* BNCreateVoidTypeBuilder(

);

struct BNWebsocketClient* BNCreateWebsocketProviderClient(
	struct BNWebsocketProvider* provider
);

struct BNType* BNCreateWideCharType(
	uint64_t width,
	char const* altName
);

struct BNTypeBuilder* BNCreateWideCharTypeBuilder(
	uint64_t width,
	char const* altName
);

struct BNWorkflow* BNCreateWorkflow(
	char const* name
);

char* BNDataBufferToBase64(
	struct BNDataBuffer* buf
);

char* BNDataBufferToEscapedString(
	struct BNDataBuffer* buf,
	bool nullTerminates
);

int32_t BNDatabaseHasGlobal(
	struct BNDatabase* database,
	char const* key
);

bool BNDeauthenticateEnterpriseServer(

);

bool BNDecode(
	struct BNTransform* xform,
	struct BNDataBuffer* input,
	struct BNDataBuffer* output,
	struct BNTransformParameter* params,
	uint64_t paramCount
);

struct BNDataBuffer* BNDecodeBase64(
	char const* str
);

struct BNDataBuffer* BNDecodeEscapedString(
	char const* str
);

struct BNQualifiedName BNDefineAnalysisType(
	struct BNBinaryView* view,
	char const* id,
	struct BNQualifiedName* defaultName,
	struct BNType* type
);

void BNDefineAnalysisTypes(
	struct BNBinaryView* view,
	struct BNQualifiedNameTypeAndId* types,
	uint64_t count,
	bool (* progress)(void*, uint64_t, uint64_t),
	void* progressContext
);

void BNDefineAutoSymbol(
	struct BNBinaryView* view,
	struct BNSymbol* sym
);

struct BNSymbol* BNDefineAutoSymbolAndVariableOrFunction(
	struct BNBinaryView* view,
	struct BNPlatform* platform,
	struct BNSymbol* sym,
	struct BNType* type
);

void BNDefineDataVariable(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTypeWithConfidence* type
);

void BNDefineImportedFunction(
	struct BNBinaryView* view,
	struct BNSymbol* importAddressSym,
	struct BNFunction* func,
	struct BNType* type
);

void BNDefineRelocation(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	struct BNRelocationInfo* info,
	uint64_t target,
	uint64_t reloc
);

void BNDefineSymbolRelocation(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	struct BNRelocationInfo* info,
	struct BNSymbol* target,
	uint64_t reloc
);

void BNDefineUserAnalysisType(
	struct BNBinaryView* view,
	struct BNQualifiedName* name,
	struct BNType* type
);

void BNDefineUserAnalysisTypes(
	struct BNBinaryView* view,
	struct BNQualifiedNameAndType* types,
	uint64_t count,
	bool (* progress)(void*, uint64_t, uint64_t),
	void* progressContext
);

void BNDefineUserDataVariable(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTypeWithConfidence* type
);

void BNDefineUserSymbol(
	struct BNBinaryView* view,
	struct BNSymbol* sym
);

void BNDeleteAutoStackVariable(
	struct BNFunction* func,
	int64_t offset
);

int32_t BNDeleteDirectory(
	char const* path,
	int32_t contentsOnly
);

int32_t BNDeleteFile(
	char const* path
);

bool BNDeleteSecretsProviderData(
	struct BNSecretsProvider* provider,
	char const* key
);

void BNDeleteUserStackVariable(
	struct BNFunction* func,
	int64_t offset
);

void BNDeleteUserVariable(
	struct BNFunction* func,
	struct BNVariable* var
);

bool BNDemangleGNU3(
	struct BNArchitecture* arch,
	char const* mangledName,
	struct BNType** outType,
	char*** outVarName,
	uint64_t* outVarNameElements,
	bool const simplify
);

bool BNDemangleGNU3WithOptions(
	struct BNArchitecture* arch,
	char const* mangledName,
	struct BNType** outType,
	char*** outVarName,
	uint64_t* outVarNameElements,
	struct BNBinaryView* const view
);

bool BNDemangleMS(
	struct BNArchitecture* arch,
	char const* mangledName,
	struct BNType** outType,
	char*** outVarName,
	uint64_t* outVarNameElements,
	bool const simplify
);

bool BNDemangleMSPlatform(
	struct BNPlatform* platform,
	char const* mangledName,
	struct BNType** outType,
	char*** outVarName,
	uint64_t* outVarNameElements,
	bool const simplify
);

bool BNDemangleMSWithOptions(
	struct BNArchitecture* arch,
	char const* mangledName,
	struct BNType** outType,
	char*** outVarName,
	uint64_t* outVarNameElements,
	struct BNBinaryView* const view
);

bool BNDeserializeSettings(
	struct BNSettings* settings,
	char const* contents,
	struct BNBinaryView* view,
	BNSettingsScope scope
);

void BNDestroySymbolQueue(
	struct BNSymbolQueue* queue
);

void BNDisablePlugins(

);

bool BNDisassemblyTextRendererHasDataFlow(
	struct BNDisassemblyTextRenderer* renderer
);

struct BNDisassemblyTextLine* BNDisassemblyTextRendererWrapComment(
	struct BNDisassemblyTextRenderer* renderer,
	struct BNDisassemblyTextLine* inLine,
	uint64_t* outLineCount,
	char const* comment,
	bool hasAutoAnnotations,
	char const* leadingSpaces,
	char const* indentSpaces
);

bool BNDisconnectWebsocketClient(
	struct BNWebsocketClient* client
);

struct BNDataBuffer* BNDuplicateDataBuffer(
	struct BNDataBuffer* buf
);

struct BNDisassemblySettings* BNDuplicateDisassemblySettings(
	struct BNDisassemblySettings* settings
);

struct BNEnumerationBuilder* BNDuplicateEnumerationBuilder(
	struct BNEnumerationBuilder* e
);

struct BNLinearViewCursor* BNDuplicateLinearViewCursor(
	struct BNLinearViewCursor* cursor
);

struct BNStructureBuilder* BNDuplicateStructureBuilder(
	struct BNStructureBuilder* s
);

struct BNType* BNDuplicateType(
	struct BNType* type
);

struct BNTypeBuilder* BNDuplicateTypeBuilder(
	struct BNTypeBuilder* type
);

struct BNTypeLibrary* BNDuplicateTypeLibrary(
	struct BNTypeLibrary* lib
);

bool BNEncode(
	struct BNTransform* xform,
	struct BNDataBuffer* input,
	struct BNDataBuffer* output,
	struct BNTransformParameter* params,
	uint64_t paramCount
);

void BNEndBulkModifySymbols(
	struct BNBinaryView* view
);

void BNEndKeyValueStoreNamespace(
	struct BNKeyValueStore* store
);

char* BNEscapeTypeName(
	char const* name,
	BNTokenEscapingType escaping
);

void BNExecuteMainThreadAction(
	struct BNMainThreadAction* action
);

struct BNMainThreadAction* BNExecuteOnMainThread(
	void* ctxt,
	void (* func)(void* ctxt)
);

void BNExecuteOnMainThreadAndWait(
	void* ctxt,
	void (* func)(void* ctxt)
);

enum BNScriptingProviderExecuteResult BNExecuteScriptInput(
	struct BNScriptingInstance* instance,
	char const* input
);

enum BNScriptingProviderExecuteResult BNExecuteScriptInputFromFilename(
	struct BNScriptingInstance* instance,
	char const* filename
);

bool BNExecuteWorkerProcess(
	char const* path,
	char const** args,
	struct BNDataBuffer* input,
	char** output,
	char** error,
	bool stdoutIsText,
	bool stderrIsText
);

uint64_t BNFileMetadataGetSessionId(
	struct BNFileMetadata* file
);

bool BNFileSize(
	char const* path,
	uint64_t* size
);

void BNFinalizeArchitectureHook(
	struct BNArchitecture* base
);

struct BNEnumeration* BNFinalizeEnumerationBuilder(
	struct BNEnumerationBuilder* e
);

void BNFinalizeHighLevelILFunction(
	struct BNHighLevelILFunction* func
);

void BNFinalizeLowLevelILFunction(
	struct BNLowLevelILFunction* func
);

void BNFinalizeMediumLevelILFunction(
	struct BNMediumLevelILFunction* func
);

struct BNNamedTypeReference* BNFinalizeNamedTypeReferenceBuilder(
	struct BNNamedTypeReferenceBuilder* s
);

struct BNStructure* BNFinalizeStructureBuilder(
	struct BNStructureBuilder* s
);

struct BNType* BNFinalizeTypeBuilder(
	struct BNTypeBuilder* type
);

bool BNFinalizeTypeLibrary(
	struct BNTypeLibrary* lib
);

bool BNFindAllConstantWithProgress(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t end,
	uint64_t constant,
	struct BNDisassemblySettings* settings,
	BNFunctionGraphType graph,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t current, uint64_t total),
	void* matchCtxt,
	bool (* matchCallback)(void* matchCtxt, uint64_t addr, struct BNLinearDisassemblyLine* line)
);

bool BNFindAllDataWithProgress(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t end,
	struct BNDataBuffer* data,
	BNFindFlag flags,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t current, uint64_t total),
	void* matchCtxt,
	bool (* matchCallback)(void* matchCtxt, uint64_t addr, struct BNDataBuffer* match)
);

bool BNFindAllTextWithProgress(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t end,
	char const* data,
	struct BNDisassemblySettings* settings,
	BNFindFlag flags,
	BNFunctionGraphType graph,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t current, uint64_t total),
	void* matchCtxt,
	bool (* matchCallback)(void* matchCtxt, uint64_t addr, char const* match, struct BNLinearDisassemblyLine* line)
);

bool BNFindNextConstant(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t constant,
	uint64_t* result,
	struct BNDisassemblySettings* settings,
	BNFunctionGraphType graph
);

bool BNFindNextConstantWithProgress(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t end,
	uint64_t constant,
	uint64_t* result,
	struct BNDisassemblySettings* settings,
	BNFunctionGraphType graph,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t current, uint64_t total)
);

bool BNFindNextData(
	struct BNBinaryView* view,
	uint64_t start,
	struct BNDataBuffer* data,
	uint64_t* result,
	BNFindFlag flags
);

bool BNFindNextDataWithProgress(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t end,
	struct BNDataBuffer* data,
	uint64_t* result,
	BNFindFlag flags,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t current, uint64_t total)
);

bool BNFindNextText(
	struct BNBinaryView* view,
	uint64_t start,
	char const* data,
	uint64_t* result,
	struct BNDisassemblySettings* settings,
	BNFindFlag flags,
	BNFunctionGraphType graph
);

bool BNFindNextTextWithProgress(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t end,
	char const* data,
	uint64_t* result,
	struct BNDisassemblySettings* settings,
	BNFindFlag flags,
	BNFunctionGraphType graph,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t current, uint64_t total)
);

void BNFinishBackgroundTask(
	struct BNBackgroundTask* task
);

void BNFinishPrepareForLayout(
	struct BNFlowGraph* graph
);

bool BNFlowGraphHasNodes(
	struct BNFlowGraph* graph
);

bool BNFlowGraphHasUpdates(
	struct BNFlowGraph* graph
);

bool BNFlowGraphUpdateQueryMode(
	struct BNFlowGraph* graph
);

char* BNFormatTypeParserParseErrors(
	struct BNTypeParserError* errors,
	uint64_t count
);

void BNFreeActivity(
	struct BNActivity* activity
);

void BNFreeAddressList(
	uint64_t* addrs
);

void BNFreeAddressRanges(
	struct BNAddressRange* ranges
);

void BNFreeAnalysisCompletionEvent(
	struct BNAnalysisCompletionEvent* event
);

void BNFreeAnalysisContext(
	struct BNAnalysisContext* analysisContext
);

void BNFreeAnalysisInfo(
	struct BNAnalysisInfo* info
);

void BNFreeAnalysisPerformanceInfo(
	struct BNPerformanceInfo* info,
	uint64_t count
);

void BNFreeArchitectureList(
	struct BNArchitecture** archs
);

void BNFreeBackgroundTask(
	struct BNBackgroundTask* task
);

void BNFreeBackgroundTaskList(
	struct BNBackgroundTask** tasks,
	uint64_t count
);

void BNFreeBaseStructureList(
	struct BNBaseStructure* bases,
	uint64_t count
);

void BNFreeBasicBlock(
	struct BNBasicBlock* block
);

void BNFreeBasicBlockEdgeList(
	struct BNBasicBlockEdge* edges,
	uint64_t count
);

void BNFreeBasicBlockList(
	struct BNBasicBlock** blocks,
	uint64_t count
);

void BNFreeBinaryReader(
	struct BNBinaryReader* stream
);

void BNFreeBinaryView(
	struct BNBinaryView* view
);

void BNFreeBinaryViewTypeList(
	struct BNBinaryViewType** types
);

void BNFreeBinaryWriter(
	struct BNBinaryWriter* stream
);

void BNFreeCallingConvention(
	struct BNCallingConvention* cc
);

void BNFreeCallingConventionList(
	struct BNCallingConvention** list,
	uint64_t count
);

void BNFreeCodeReferences(
	struct BNReferenceSource* refs,
	uint64_t count
);

void BNFreeComponent(
	struct BNComponent* component
);

void BNFreeComponents(
	struct BNComponent** components,
	uint64_t count
);

void BNFreeConstantReferenceList(
	struct BNConstantReference* refs
);

void BNFreeDataBuffer(
	struct BNDataBuffer* buf
);

void BNFreeDataReferences(
	uint64_t* refs
);

void BNFreeDataRenderer(
	struct BNDataRenderer* renderer
);

void BNFreeDataVariable(
	struct BNDataVariable* var
);

void BNFreeDataVariableAndName(
	struct BNDataVariableAndName* var
);

void BNFreeDataVariableAndNameAndDebugParserList(
	struct BNDataVariableAndNameAndDebugParser* vars,
	uint64_t count
);

void BNFreeDataVariables(
	struct BNDataVariable* vars,
	uint64_t count
);

void BNFreeDataVariablesAndName(
	struct BNDataVariableAndName* vars,
	uint64_t count
);

void BNFreeDatabase(
	struct BNDatabase* database
);

void BNFreeDebugFunctions(
	struct BNDebugFunctionInfo* functions,
	uint64_t count
);

void BNFreeDebugInfoParserList(
	struct BNDebugInfoParser** parsers,
	uint64_t count
);

void BNFreeDebugInfoParserReference(
	struct BNDebugInfoParser* parser
);

void BNFreeDebugInfoReference(
	struct BNDebugInfo* debugInfo
);

void BNFreeDebugTypes(
	struct BNNameAndType* types,
	uint64_t count
);

void BNFreeDemangledName(
	char*** name,
	uint64_t nameElements
);

void BNFreeDisassemblySettings(
	struct BNDisassemblySettings* settings
);

void BNFreeDisassemblyTextLines(
	struct BNDisassemblyTextLine* lines,
	uint64_t count
);

void BNFreeDisassemblyTextRenderer(
	struct BNDisassemblyTextRenderer* renderer
);

void BNFreeDownloadInstance(
	struct BNDownloadInstance* instance
);

void BNFreeDownloadInstanceResponse(
	struct BNDownloadInstanceResponse* response
);

void BNFreeDownloadProviderList(
	struct BNDownloadProvider** providers
);

void BNFreeEnumeration(
	struct BNEnumeration* e
);

void BNFreeEnumerationBuilder(
	struct BNEnumerationBuilder* e
);

void BNFreeEnumerationMemberList(
	struct BNEnumerationMember* members,
	uint64_t count
);

void BNFreeFileMetadata(
	struct BNFileMetadata* file
);

void BNFreeFlagConditionsForSemanticFlagGroup(
	struct BNFlagConditionForSemanticClass* conditions
);

void BNFreeFlowGraph(
	struct BNFlowGraph* graph
);

void BNFreeFlowGraphLayoutRequest(
	struct BNFlowGraphLayoutRequest* layout
);

void BNFreeFlowGraphNode(
	struct BNFlowGraphNode* node
);

void BNFreeFlowGraphNodeEdgeList(
	struct BNFlowGraphEdge* edges,
	uint64_t count
);

void BNFreeFlowGraphNodeList(
	struct BNFlowGraphNode** nodes,
	uint64_t count
);

void BNFreeFormInputResults(
	struct BNFormInputField* fields,
	uint64_t count
);

void BNFreeFunction(
	struct BNFunction* func
);

void BNFreeFunctionList(
	struct BNFunction** funcs,
	uint64_t count
);

void BNFreeHighLevelILFunction(
	struct BNHighLevelILFunction* func
);

void BNFreeILBranchDependenceList(
	struct BNILBranchInstructionAndDependence* branches
);

void BNFreeILInstructionList(
	uint64_t* list
);

void BNFreeILReferences(
	struct BNILReferenceSource* refs,
	uint64_t count
);

void BNFreeIndirectBranchList(
	struct BNIndirectBranchInfo* branches
);

void BNFreeInheritedStructureMemberList(
	struct BNInheritedStructureMember* members,
	uint64_t count
);

void BNFreeInstructionText(
	struct BNInstructionTextToken* tokens,
	uint64_t count
);

void BNFreeInstructionTextLines(
	struct BNInstructionTextLine* lines,
	uint64_t count
);

void BNFreeKeyValueStore(
	struct BNKeyValueStore* store
);

void BNFreeLLILVariableVersionList(
	uint64_t* versions
);

void BNFreeLLILVariablesList(
	uint32_t* vars
);

void BNFreeLanguageRepresentationFunction(
	struct BNLanguageRepresentationFunction* func
);

void BNFreeLinearDisassemblyLines(
	struct BNLinearDisassemblyLine* lines,
	uint64_t count
);

void BNFreeLinearViewCursor(
	struct BNLinearViewCursor* cursor
);

void BNFreeLinearViewCursorPath(
	struct BNLinearViewObjectIdentifier* objs,
	uint64_t count
);

void BNFreeLinearViewCursorPathObjects(
	struct BNLinearViewObject** objs,
	uint64_t count
);

void BNFreeLinearViewObject(
	struct BNLinearViewObject* obj
);

void BNFreeLinearViewObjectIdentifier(
	struct BNLinearViewObjectIdentifier* id
);

void BNFreeLogger(
	struct BNLogger* logger
);

void BNFreeLowLevelILFunction(
	struct BNLowLevelILFunction* func
);

void BNFreeMainThreadAction(
	struct BNMainThreadAction* action
);

void BNFreeMediumLevelILFunction(
	struct BNMediumLevelILFunction* func
);

void BNFreeMemoryUsageInfo(
	struct BNMemoryUsageInfo* info,
	uint64_t count
);

void BNFreeMergedVariableList(
	struct BNMergedVariable* vars,
	uint64_t count
);

void BNFreeMetadata(
	struct BNMetadata* data
);

void BNFreeMetadataArray(
	struct BNMetadata** data
);

void BNFreeMetadataBooleanList(
	bool* ,
	uint64_t 
);

void BNFreeMetadataDoubleList(
	double* ,
	uint64_t 
);

void BNFreeMetadataRaw(
	uint8_t* data
);

void BNFreeMetadataSignedIntegerList(
	int64_t* ,
	uint64_t 
);

void BNFreeMetadataStringList(
	char** ,
	uint64_t 
);

void BNFreeMetadataUnsignedIntegerList(
	uint64_t* ,
	uint64_t 
);

void BNFreeMetadataValueStore(
	struct BNMetadataValueStore* data
);

void BNFreeNameAndTypeList(
	struct BNNameAndType* nt,
	uint64_t count
);

void BNFreeNameSpace(
	struct BNNameSpace* name
);

void BNFreeNameSpaceList(
	struct BNNameSpace* nameSpace,
	uint64_t count
);

void BNFreeNamedTypeReference(
	struct BNNamedTypeReference* nt
);

void BNFreeNamedTypeReferenceBuilder(
	struct BNNamedTypeReferenceBuilder* s
);

void BNFreeOutputTypeList(
	struct BNTypeWithConfidence* types,
	uint64_t count
);

void BNFreeParameterVariables(
	struct BNParameterVariablesWithConfidence* vars
);

void BNFreeParseError(
	char* errorString
);

void BNFreePath(
	char* path
);

void BNFreePlatform(
	struct BNPlatform* platform
);

void BNFreePlatformList(
	struct BNPlatform** platform,
	uint64_t count
);

void BNFreePlatformOSList(
	char** list,
	uint64_t count
);

void BNFreePlugin(
	struct BNRepoPlugin* plugin
);

void BNFreePluginCommandList(
	struct BNPluginCommand* commands
);

void BNFreePluginPlatforms(
	char** platforms,
	uint64_t count
);

void BNFreePluginTypes(
	enum BNPluginType* r
);

void BNFreePossibleValueSet(
	struct BNPossibleValueSet* value
);

void BNFreeQualifiedName(
	struct BNQualifiedName* name
);

void BNFreeQualifiedNameAndType(
	struct BNQualifiedNameAndType* obj
);

void BNFreeQualifiedNameAndTypeArray(
	struct BNQualifiedNameAndType* obj,
	uint64_t count
);

void BNFreeRegisterList(
	uint32_t* regs
);

void BNFreeRegisterSet(
	struct BNRegisterSetWithConfidence* regs
);

void BNFreeRegisterStackAdjustments(
	struct BNRegisterStackAdjustment* adjustments
);

void BNFreeRelocation(
	struct BNRelocation* reloc
);

void BNFreeRelocationHandler(
	struct BNRelocationHandler* handler
);

void BNFreeRelocationRanges(
	struct BNRange* ranges
);

void BNFreeReportCollection(
	struct BNReportCollection* reports
);

void BNFreeRepository(
	struct BNRepository* r
);

void BNFreeRepositoryManager(
	struct BNRepositoryManager* r
);

void BNFreeRepositoryManagerRepositoriesList(
	struct BNRepository** r
);

void BNFreeRepositoryPluginList(
	struct BNRepoPlugin** r
);

void BNFreeSaveSettings(
	struct BNSaveSettings* settings
);

void BNFreeScriptingInstance(
	struct BNScriptingInstance* instance
);

void BNFreeScriptingProviderList(
	struct BNScriptingProvider** providers
);

void BNFreeSecretsProviderList(
	struct BNSecretsProvider** providers
);

void BNFreeSection(
	struct BNSection* section
);

void BNFreeSectionList(
	struct BNSection** sections,
	uint64_t count
);

void BNFreeSegment(
	struct BNSegment* seg
);

void BNFreeSegmentList(
	struct BNSegment** segments,
	uint64_t count
);

void BNFreeSettings(
	struct BNSettings* settings
);

void BNFreeSnapshot(
	struct BNSnapshot* snapshot
);

void BNFreeSnapshotList(
	struct BNSnapshot** snapshots,
	uint64_t count
);

void BNFreeStackVariableReferenceList(
	struct BNStackVariableReference* refs,
	uint64_t count
);

void BNFreeString(
	char* str
);

void BNFreeStringList(
	char** strs,
	uint64_t count
);

void BNFreeStringReferenceList(
	struct BNStringReference* strings
);

void BNFreeStructure(
	struct BNStructure* s
);

void BNFreeStructureBuilder(
	struct BNStructureBuilder* s
);

void BNFreeStructureMember(
	struct BNStructureMember* s
);

void BNFreeStructureMemberList(
	struct BNStructureMember* members,
	uint64_t count
);

void BNFreeSymbol(
	struct BNSymbol* sym
);

void BNFreeSymbolList(
	struct BNSymbol** syms,
	uint64_t count
);

void BNFreeSymbolRawBytes(
	void* bytes
);

void BNFreeSystemCallList(
	struct BNSystemCallInfo* syscalls,
	uint64_t count
);

void BNFreeTag(
	struct BNTag* tag
);

void BNFreeTagList(
	struct BNTag** tags,
	uint64_t count
);

void BNFreeTagReferenceTypeCounts(
	struct BNTagType** tagTypes,
	uint64_t* counts
);

void BNFreeTagReferences(
	struct BNTagReference* refs,
	uint64_t count
);

void BNFreeTagType(
	struct BNTagType* tagType
);

void BNFreeTagTypeList(
	struct BNTagType** tagTypes,
	uint64_t count
);

void BNFreeTemporaryFile(
	struct BNTemporaryFile* file
);

void BNFreeTransformParameterList(
	struct BNTransformParameterInfo* params,
	uint64_t count
);

void BNFreeTransformTypeList(
	struct BNTransform** xforms
);

void BNFreeType(
	struct BNType* type
);

void BNFreeTypeBuilder(
	struct BNTypeBuilder* type
);

void BNFreeTypeDefinitionLineList(
	struct BNTypeDefinitionLine* list,
	uint64_t count
);

void BNFreeTypeFieldReferenceSizeInfo(
	struct BNTypeFieldReferenceSizeInfo* refs,
	uint64_t count
);

void BNFreeTypeFieldReferenceSizes(
	uint64_t* refs,
	uint64_t count
);

void BNFreeTypeFieldReferenceTypeInfo(
	struct BNTypeFieldReferenceTypeInfo* refs,
	uint64_t count
);

void BNFreeTypeFieldReferenceTypes(
	struct BNTypeWithConfidence* refs,
	uint64_t count
);

void BNFreeTypeFieldReferences(
	struct BNTypeFieldReference* refs,
	uint64_t count
);

void BNFreeTypeIdList(
	struct BNQualifiedNameTypeAndId* types,
	uint64_t count
);

void BNFreeTypeLibrary(
	struct BNTypeLibrary* lib
);

void BNFreeTypeLibraryList(
	struct BNTypeLibrary** lib,
	uint64_t count
);

void BNFreeTypeList(
	struct BNQualifiedNameAndType* types,
	uint64_t count
);

void BNFreeTypeNameList(
	struct BNQualifiedName* names,
	uint64_t count
);

void BNFreeTypeParameterList(
	struct BNFunctionParameter* types,
	uint64_t count
);

void BNFreeTypeParserErrors(
	struct BNTypeParserError* errors,
	uint64_t count
);

void BNFreeTypeParserList(
	struct BNTypeParser** parsers
);

void BNFreeTypeParserResult(
	struct BNTypeParserResult* result
);

void BNFreeTypePrinterList(
	struct BNTypePrinter** printers
);

void BNFreeTypeReferences(
	struct BNTypeReferenceSource* refs,
	uint64_t count
);

void BNFreeUndoEntries(
	struct BNUndoEntry* entries,
	uint64_t count
);

void BNFreeUpdateChannelList(
	struct BNUpdateChannel* list,
	uint64_t count
);

void BNFreeUpdateChannelVersionList(
	struct BNUpdateVersion* list,
	uint64_t count
);

void BNFreeUser(
	struct BNUser* user
);

void BNFreeUserList(
	struct BNUser** users,
	uint64_t count
);

void BNFreeUserVariableValues(
	struct BNUserVariableValue* result
);

void BNFreeVariableList(
	struct BNVariable* vars
);

void BNFreeVariableNameAndType(
	struct BNVariableNameAndType* var
);

void BNFreeVariableNameAndTypeList(
	struct BNVariableNameAndType* vars,
	uint64_t count
);

void BNFreeVariableReferenceSourceList(
	struct BNVariableReferenceSource* vars,
	uint64_t count
);

void BNFreeWebsocketClient(
	struct BNWebsocketClient* client
);

void BNFreeWebsocketProviderList(
	struct BNWebsocketProvider** providers
);

void BNFreeWorkflow(
	struct BNWorkflow* workflow
);

void BNFreeWorkflowList(
	struct BNWorkflow** workflows,
	uint64_t count
);

struct BNVariable BNFromVariableIdentifier(
	uint64_t id
);

bool BNFunctionHasExplicitlyDefinedType(
	struct BNFunction* func
);

bool BNFunctionHasUserAnnotations(
	struct BNFunction* func
);

bool BNFunctionHasUserType(
	struct BNFunction* func
);

struct BNBoolWithConfidence BNFunctionHasVariableArguments(
	struct BNFunction* func
);

struct BNBoolWithConfidence BNFunctionTypeBuilderCanReturn(
	struct BNTypeBuilder* type
);

struct BNBoolWithConfidence BNFunctionTypeCanReturn(
	struct BNType* type
);

char* BNGenerateAutoDebugTypeId(
	struct BNQualifiedName* name
);

char* BNGenerateAutoDemangledTypeId(
	struct BNQualifiedName* name
);

char* BNGenerateAutoPlatformTypeId(
	struct BNPlatform* platform,
	struct BNQualifiedName* name
);

char* BNGenerateAutoTypeId(
	char const* source,
	struct BNQualifiedName* name
);

void BNGenerateHighLevelILSSAForm(
	struct BNHighLevelILFunction* func,
	struct BNVariable* aliases,
	uint64_t aliasCount
);

void BNGenerateLowLevelILSSAForm(
	struct BNLowLevelILFunction* func
);

void BNGenerateMediumLevelILSSAForm(
	struct BNMediumLevelILFunction* func,
	bool analyzeConditionals,
	bool handleAliases,
	struct BNVariable* knownNotAliases,
	uint64_t knownNotAliasCount,
	struct BNVariable* knownAliases,
	uint64_t knownAliasCount
);

char* BNGetActiveUpdateChannel(

);

bool BNGetAddressForDataOffset(
	struct BNBinaryView* view,
	uint64_t offset,
	uint64_t* addr
);

bool BNGetAddressInput(
	uint64_t* result,
	char const* prompt,
	char const* title,
	struct BNBinaryView* view,
	uint64_t currentAddr
);

uint32_t BNGetAddressRenderedWidth(
	uint64_t addr
);

struct BNTagReference* BNGetAddressTagReferences(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTag** BNGetAddressTags(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNTagReference* BNGetAddressTagsInRange(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t start,
	uint64_t end,
	uint64_t* count
);

struct BNTag** BNGetAddressTagsOfType(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTagType* tagType,
	uint64_t* count
);

struct BNTagReference* BNGetAllAddressTagReferences(
	struct BNBinaryView* view,
	uint64_t* count
);

uint32_t* BNGetAllArchitectureFlagWriteTypes(
	struct BNArchitecture* arch,
	uint64_t* count
);

uint32_t* BNGetAllArchitectureFlags(
	struct BNArchitecture* arch,
	uint64_t* count
);

uint32_t* BNGetAllArchitectureIntrinsics(
	struct BNArchitecture* arch,
	uint64_t* count
);

uint32_t* BNGetAllArchitectureRegisterStacks(
	struct BNArchitecture* arch,
	uint64_t* count
);

uint32_t* BNGetAllArchitectureRegisters(
	struct BNArchitecture* arch,
	uint64_t* count
);

uint32_t* BNGetAllArchitectureSemanticFlagClasses(
	struct BNArchitecture* arch,
	uint64_t* count
);

uint32_t* BNGetAllArchitectureSemanticFlagGroups(
	struct BNArchitecture* arch,
	uint64_t* count
);

uint64_t* BNGetAllFieldsReferenced(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t* count
);

struct BNTagReference* BNGetAllFunctionTagReferences(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNILBranchInstructionAndDependence* BNGetAllMediumLevelILBranchDependence(
	struct BNMediumLevelILFunction* func,
	uint64_t instr,
	uint64_t* count
);

struct BNPluginCommand* BNGetAllPluginCommands(
	uint64_t* count
);

struct BNTypeFieldReferenceSizeInfo* BNGetAllSizesReferenced(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t* count
);

void BNGetAllTagReferenceTypeCounts(
	struct BNBinaryView* view,
	struct BNTagType*** tagTypes,
	uint64_t** counts,
	uint64_t* count
);

struct BNTagReference* BNGetAllTagReferences(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNTagReference* BNGetAllTagReferencesOfType(
	struct BNBinaryView* view,
	struct BNTagType* tagType,
	uint64_t* count
);

uint64_t BNGetAllTagReferencesOfTypeCount(
	struct BNBinaryView* view,
	struct BNTagType* tagType
);

struct BNTypeFieldReferenceTypeInfo* BNGetAllTypesReferenced(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t* count
);

struct BNUserVariableValue* BNGetAllUserVariableValues(
	struct BNFunction* func,
	uint64_t* count
);

struct BNAddressRange* BNGetAllocatedRanges(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNQualifiedNameAndType* BNGetAnalysisDependencySortedTypeList(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNFunction* BNGetAnalysisEntryPoint(
	struct BNBinaryView* view
);

struct BNFunction* BNGetAnalysisFunction(
	struct BNBinaryView* view,
	struct BNPlatform* platform,
	uint64_t addr
);

struct BNFunction** BNGetAnalysisFunctionList(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNFunction** BNGetAnalysisFunctionsContainingAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

struct BNFunction** BNGetAnalysisFunctionsForAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

struct BNAnalysisInfo* BNGetAnalysisInfo(
	struct BNBinaryView* view
);

struct BNAnalysisProgress BNGetAnalysisProgress(
	struct BNBinaryView* view
);

enum BNAnalysisSkipReason BNGetAnalysisSkipReason(
	struct BNFunction* func
);

struct BNType* BNGetAnalysisTypeById(
	struct BNBinaryView* view,
	char const* id
);

struct BNType* BNGetAnalysisTypeByName(
	struct BNBinaryView* view,
	struct BNQualifiedName* name
);

struct BNType* BNGetAnalysisTypeByRef(
	struct BNBinaryView* view,
	struct BNNamedTypeReference* ref
);

char* BNGetAnalysisTypeId(
	struct BNBinaryView* view,
	struct BNQualifiedName* name
);

struct BNQualifiedNameAndType* BNGetAnalysisTypeList(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNQualifiedName BNGetAnalysisTypeNameById(
	struct BNBinaryView* view,
	char const* id
);

struct BNQualifiedName* BNGetAnalysisTypeNames(
	struct BNBinaryView* view,
	uint64_t* count,
	char const* matching
);

uint64_t BNGetArchitectureAddressSize(
	struct BNArchitecture* arch
);

struct BNArchitecture* BNGetArchitectureByName(
	char const* name
);

struct BNCallingConvention* BNGetArchitectureCallingConventionByName(
	struct BNArchitecture* arch,
	char const* name
);

struct BNCallingConvention** BNGetArchitectureCallingConventions(
	struct BNArchitecture* arch,
	uint64_t* count
);

struct BNCallingConvention* BNGetArchitectureCdeclCallingConvention(
	struct BNArchitecture* arch
);

struct BNCallingConvention* BNGetArchitectureDefaultCallingConvention(
	struct BNArchitecture* arch
);

uint64_t BNGetArchitectureDefaultIntegerSize(
	struct BNArchitecture* arch
);

enum BNEndianness BNGetArchitectureEndianness(
	struct BNArchitecture* arch
);

struct BNCallingConvention* BNGetArchitectureFastcallCallingConvention(
	struct BNArchitecture* arch
);

uint64_t BNGetArchitectureFlagConditionLowLevelIL(
	struct BNArchitecture* arch,
	BNLowLevelILFlagCondition cond,
	uint32_t semClass,
	struct BNLowLevelILFunction* il
);

struct BNFlagConditionForSemanticClass* BNGetArchitectureFlagConditionsForSemanticFlagGroup(
	struct BNArchitecture* arch,
	uint32_t semGroup,
	uint64_t* count
);

char* BNGetArchitectureFlagName(
	struct BNArchitecture* arch,
	uint32_t flag
);

enum BNFlagRole BNGetArchitectureFlagRole(
	struct BNArchitecture* arch,
	uint32_t flag,
	uint32_t semClass
);

uint64_t BNGetArchitectureFlagWriteLowLevelIL(
	struct BNArchitecture* arch,
	BNLowLevelILOperation op,
	uint64_t size,
	uint32_t flagWriteType,
	uint32_t flag,
	struct BNRegisterOrConstant* operands,
	uint64_t operandCount,
	struct BNLowLevelILFunction* il
);

char* BNGetArchitectureFlagWriteTypeName(
	struct BNArchitecture* arch,
	uint32_t flags
);

uint32_t* BNGetArchitectureFlagsRequiredForFlagCondition(
	struct BNArchitecture* arch,
	BNLowLevelILFlagCondition cond,
	uint32_t semClass,
	uint64_t* count
);

uint32_t* BNGetArchitectureFlagsRequiredForSemanticFlagGroup(
	struct BNArchitecture* arch,
	uint32_t semGroup,
	uint64_t* count
);

uint32_t* BNGetArchitectureFlagsWrittenByFlagWriteType(
	struct BNArchitecture* arch,
	uint32_t writeType,
	uint64_t* count
);

struct BNArchitecture* BNGetArchitectureForViewType(
	struct BNBinaryViewType* type,
	uint32_t id,
	BNEndianness endian
);

uint32_t* BNGetArchitectureGlobalRegisters(
	struct BNArchitecture* arch,
	uint64_t* count
);

uint64_t BNGetArchitectureInstructionAlignment(
	struct BNArchitecture* arch
);

struct BNNameAndType* BNGetArchitectureIntrinsicInputs(
	struct BNArchitecture* arch,
	uint32_t intrinsic,
	uint64_t* count
);

char* BNGetArchitectureIntrinsicName(
	struct BNArchitecture* arch,
	uint32_t intrinsic
);

struct BNTypeWithConfidence* BNGetArchitectureIntrinsicOutputs(
	struct BNArchitecture* arch,
	uint32_t intrinsic,
	uint64_t* count
);

uint32_t BNGetArchitectureLinkRegister(
	struct BNArchitecture* arch
);

struct BNArchitecture** BNGetArchitectureList(
	uint64_t* count
);

uint64_t BNGetArchitectureMaxInstructionLength(
	struct BNArchitecture* arch
);

char* BNGetArchitectureName(
	struct BNArchitecture* arch
);

uint64_t BNGetArchitectureOpcodeDisplayLength(
	struct BNArchitecture* arch
);

uint32_t BNGetArchitectureRegisterByName(
	struct BNArchitecture* arch,
	char const* name
);

struct BNRegisterInfo BNGetArchitectureRegisterInfo(
	struct BNArchitecture* arch,
	uint32_t reg
);

char* BNGetArchitectureRegisterName(
	struct BNArchitecture* arch,
	uint32_t reg
);

uint32_t BNGetArchitectureRegisterStackForRegister(
	struct BNArchitecture* arch,
	uint32_t reg
);

struct BNRegisterStackInfo BNGetArchitectureRegisterStackInfo(
	struct BNArchitecture* arch,
	uint32_t regStack
);

char* BNGetArchitectureRegisterStackName(
	struct BNArchitecture* arch,
	uint32_t regStack
);

uint32_t BNGetArchitectureSemanticClassForFlagWriteType(
	struct BNArchitecture* arch,
	uint32_t writeType
);

char* BNGetArchitectureSemanticFlagClassName(
	struct BNArchitecture* arch,
	uint32_t semClass
);

uint64_t BNGetArchitectureSemanticFlagGroupLowLevelIL(
	struct BNArchitecture* arch,
	uint32_t semGroup,
	struct BNLowLevelILFunction* il
);

char* BNGetArchitectureSemanticFlagGroupName(
	struct BNArchitecture* arch,
	uint32_t semGroup
);

uint32_t BNGetArchitectureStackPointerRegister(
	struct BNArchitecture* arch
);

struct BNPlatform* BNGetArchitectureStandalonePlatform(
	struct BNArchitecture* arch
);

struct BNCallingConvention* BNGetArchitectureStdcallCallingConvention(
	struct BNArchitecture* arch
);

uint32_t* BNGetArchitectureSystemRegisters(
	struct BNArchitecture* arch,
	uint64_t* count
);

struct BNTypeLibrary** BNGetArchitectureTypeLibraries(
	struct BNArchitecture* arch,
	uint64_t* count
);

struct BNArchitecture* BNGetAssociatedArchitectureByAddress(
	struct BNArchitecture* arch,
	uint64_t* addr
);

struct BNPlatform* BNGetAssociatedPlatformByAddress(
	struct BNPlatform* platform,
	uint64_t* addr
);

struct BNTagReference* BNGetAutoAddressTagReferences(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTag** BNGetAutoAddressTags(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNTagReference* BNGetAutoAddressTagsInRange(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t start,
	uint64_t end,
	uint64_t* count
);

struct BNTag** BNGetAutoAddressTagsOfType(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTagType* tagType,
	uint64_t* count
);

struct BNTagReference* BNGetAutoDataTagReferences(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNTag** BNGetAutoDataTags(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

struct BNTagReference* BNGetAutoDataTagsInRange(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t end,
	uint64_t* count
);

struct BNTag** BNGetAutoDataTagsOfType(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTagType* tagType,
	uint64_t* count
);

char* BNGetAutoDebugTypeIdSource(

);

char* BNGetAutoDemangledTypeIdSource(

);

struct BNTagReference* BNGetAutoFunctionTagReferences(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTag** BNGetAutoFunctionTags(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTag** BNGetAutoFunctionTagsOfType(
	struct BNFunction* func,
	struct BNTagType* tagType,
	uint64_t* count
);

char* BNGetAutoPlatformTypeIdSource(
	struct BNPlatform* platform
);

struct BNBackgroundTask* BNGetBackgroundAnalysisTask(
	struct BNBinaryView* view
);

char* BNGetBackgroundTaskProgressText(
	struct BNBackgroundTask* task
);

struct BNBaseStructure* BNGetBaseStructuresForStructure(
	struct BNStructure* s,
	uint64_t* count
);

struct BNBaseStructure* BNGetBaseStructuresForStructureBuilder(
	struct BNStructureBuilder* s,
	uint64_t* count
);

struct BNArchitecture* BNGetBasicBlockArchitecture(
	struct BNBasicBlock* block
);

struct BNDisassemblyTextLine* BNGetBasicBlockDisassemblyText(
	struct BNBasicBlock* block,
	struct BNDisassemblySettings* settings,
	uint64_t* count
);

struct BNBasicBlock** BNGetBasicBlockDominanceFrontier(
	struct BNBasicBlock* block,
	uint64_t* count,
	bool post
);

struct BNBasicBlock** BNGetBasicBlockDominatorTreeChildren(
	struct BNBasicBlock* block,
	uint64_t* count,
	bool post
);

struct BNBasicBlock** BNGetBasicBlockDominators(
	struct BNBasicBlock* block,
	uint64_t* count,
	bool post
);

uint64_t BNGetBasicBlockEnd(
	struct BNBasicBlock* block
);

struct BNFunction* BNGetBasicBlockFunction(
	struct BNBasicBlock* block
);

enum BNFunctionGraphType BNGetBasicBlockFunctionGraphType(
	struct BNBasicBlock* block
);

struct BNHighLevelILFunction* BNGetBasicBlockHighLevelILFunction(
	struct BNBasicBlock* block
);

struct BNHighlightColor BNGetBasicBlockHighlight(
	struct BNBasicBlock* block
);

struct BNBasicBlock* BNGetBasicBlockImmediateDominator(
	struct BNBasicBlock* block,
	bool post
);

struct BNBasicBlockEdge* BNGetBasicBlockIncomingEdges(
	struct BNBasicBlock* block,
	uint64_t* count
);

uint64_t BNGetBasicBlockIndex(
	struct BNBasicBlock* block
);

bool BNGetBasicBlockInstructionContainingAddress(
	struct BNBasicBlock* block,
	uint64_t addr,
	uint64_t* start
);

struct BNBasicBlock** BNGetBasicBlockIteratedDominanceFrontier(
	struct BNBasicBlock** blocks,
	uint64_t incomingCount,
	uint64_t* outputCount
);

uint64_t BNGetBasicBlockLength(
	struct BNBasicBlock* block
);

struct BNLowLevelILFunction* BNGetBasicBlockLowLevelILFunction(
	struct BNBasicBlock* block
);

struct BNMediumLevelILFunction* BNGetBasicBlockMediumLevelILFunction(
	struct BNBasicBlock* block
);

struct BNBasicBlockEdge* BNGetBasicBlockOutgoingEdges(
	struct BNBasicBlock* block,
	uint64_t* count
);

struct BNBasicBlock* BNGetBasicBlockSource(
	struct BNBasicBlock* block
);

struct BNBasicBlock* BNGetBasicBlockSourceBlock(
	struct BNBasicBlock* block
);

uint64_t BNGetBasicBlockStart(
	struct BNBasicBlock* block
);

struct BNBasicBlock** BNGetBasicBlockStrictDominators(
	struct BNBasicBlock* block,
	uint64_t* count,
	bool post
);

struct BNBasicBlock** BNGetBasicBlocksForAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

struct BNBasicBlock** BNGetBasicBlocksStartingAtAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

enum BNEndianness BNGetBinaryReaderEndianness(
	struct BNBinaryReader* stream
);

uint64_t BNGetBinaryReaderVirtualBase(
	struct BNBinaryReader* stream
);

struct BNSettings* BNGetBinaryViewDefaultLoadSettingsForData(
	struct BNBinaryViewType* type,
	struct BNBinaryView* data
);

struct BNSettings* BNGetBinaryViewLoadSettingsForData(
	struct BNBinaryViewType* type,
	struct BNBinaryView* data
);

struct BNBinaryViewType* BNGetBinaryViewTypeByName(
	char const* name
);

struct BNTypeLibrary** BNGetBinaryViewTypeLibraries(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNTypeLibrary* BNGetBinaryViewTypeLibrary(
	struct BNBinaryView* view,
	char const* name
);

char* BNGetBinaryViewTypeLongName(
	struct BNBinaryViewType* type
);

char* BNGetBinaryViewTypeName(
	struct BNBinaryViewType* type
);

struct BNBinaryViewType** BNGetBinaryViewTypes(
	uint64_t* count
);

struct BNBinaryViewType** BNGetBinaryViewTypesForData(
	struct BNBinaryView* data,
	uint64_t* count
);

enum BNEndianness BNGetBinaryWriterEndianness(
	struct BNBinaryWriter* stream
);

uint32_t BNGetBuildId(

);

char* BNGetBundledPluginDirectory(

);

struct BNRegisterStackAdjustment* BNGetCallRegisterStackAdjustment(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNRegisterStackAdjustment BNGetCallRegisterStackAdjustmentForRegisterStack(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint32_t regStack
);

struct BNOffsetWithConfidence BNGetCallStackAdjustment(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

struct BNTypeWithConfidence BNGetCallTypeAdjustment(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

uint32_t* BNGetCalleeSavedRegisters(
	struct BNCallingConvention* cc,
	uint64_t* count
);

uint64_t* BNGetCallees(
	struct BNBinaryView* view,
	struct BNReferenceSource* callSite,
	uint64_t* count
);

uint32_t* BNGetCallerSavedRegisters(
	struct BNCallingConvention* cc,
	uint64_t* count
);

struct BNReferenceSource* BNGetCallers(
	struct BNBinaryView* view,
	uint64_t callee,
	uint64_t* count
);

struct BNArchitecture* BNGetCallingConventionArchitecture(
	struct BNCallingConvention* cc
);

char* BNGetCallingConventionName(
	struct BNCallingConvention* cc
);

struct BNTypeWithConfidence BNGetChildType(
	struct BNType* type
);

bool BNGetChoiceInput(
	uint64_t* result,
	char const* prompt,
	char const* title,
	char const** choices,
	uint64_t count
);

struct BNReferenceSource* BNGetCodeReferences(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

struct BNReferenceSource* BNGetCodeReferencesForType(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t* count
);

struct BNTypeFieldReference* BNGetCodeReferencesForTypeField(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t offset,
	uint64_t* count
);

struct BNTypeReferenceSource* BNGetCodeReferencesForTypeFieldsFrom(
	struct BNBinaryView* view,
	struct BNReferenceSource* addr,
	uint64_t* count
);

struct BNTypeReferenceSource* BNGetCodeReferencesForTypeFieldsFromInRange(
	struct BNBinaryView* view,
	struct BNReferenceSource* addr,
	uint64_t len,
	uint64_t* count
);

struct BNTypeReferenceSource* BNGetCodeReferencesForTypeFrom(
	struct BNBinaryView* view,
	struct BNReferenceSource* addr,
	uint64_t* count
);

struct BNTypeReferenceSource* BNGetCodeReferencesForTypeFromInRange(
	struct BNBinaryView* view,
	struct BNReferenceSource* addr,
	uint64_t len,
	uint64_t* count
);

uint64_t* BNGetCodeReferencesFrom(
	struct BNBinaryView* view,
	struct BNReferenceSource* src,
	uint64_t* count
);

uint64_t* BNGetCodeReferencesFromInRange(
	struct BNBinaryView* view,
	struct BNReferenceSource* src,
	uint64_t len,
	uint64_t* count
);

struct BNReferenceSource* BNGetCodeReferencesInRange(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t len,
	uint64_t* count
);

char* BNGetCommentForAddress(
	struct BNFunction* func,
	uint64_t addr
);

uint64_t* BNGetCommentedAddresses(
	struct BNFunction* func,
	uint64_t* count
);

struct BNComponent* BNGetComponentByGuid(
	struct BNBinaryView* view,
	char const* guid
);

struct BNComponent* BNGetComponentByPath(
	struct BNBinaryView* view,
	char const* path
);

struct BNDataBuffer* BNGetConstantData(
	struct BNFunction* func,
	BNRegisterValueType state,
	uint64_t value,
	uint64_t size
);

struct BNConstantReference* BNGetConstantsReferencedByInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNConstantReference* BNGetConstantsReferencedByInstructionIfAvailable(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

uint32_t BNGetCurrentCoreABIVersion(

);

uint64_t BNGetCurrentOffset(
	struct BNFileMetadata* file
);

char* BNGetCurrentStackTraceString(

);

char* BNGetCurrentView(
	struct BNFileMetadata* file
);

uint8_t BNGetDataBufferByte(
	struct BNDataBuffer* buf,
	uint64_t offset
);

void* BNGetDataBufferContents(
	struct BNDataBuffer* buf
);

void* BNGetDataBufferContentsAt(
	struct BNDataBuffer* buf,
	uint64_t offset
);

uint64_t BNGetDataBufferLength(
	struct BNDataBuffer* buf
);

struct BNDataBuffer* BNGetDataBufferSlice(
	struct BNDataBuffer* buf,
	uint64_t start,
	uint64_t len
);

uint64_t* BNGetDataReferences(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

uint64_t* BNGetDataReferencesForType(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t* count
);

uint64_t* BNGetDataReferencesForTypeField(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t offset,
	uint64_t* count
);

uint64_t* BNGetDataReferencesFrom(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

uint64_t* BNGetDataReferencesFromForTypeField(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t offset,
	uint64_t* count
);

uint64_t* BNGetDataReferencesFromInRange(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t len,
	uint64_t* count
);

uint64_t* BNGetDataReferencesInRange(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t len,
	uint64_t* count
);

struct BNDataRendererContainer* BNGetDataRendererContainer(

);

struct BNTagReference* BNGetDataTagReferences(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNTag** BNGetDataTags(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

struct BNTagReference* BNGetDataTagsInRange(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t end,
	uint64_t* count
);

struct BNTag** BNGetDataTagsOfType(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTagType* tagType,
	uint64_t* count
);

bool BNGetDataVariableAtAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNDataVariable* var
);

struct BNComponent** BNGetDataVariableParentComponents(
	struct BNBinaryView* view,
	uint64_t dataVariable,
	uint64_t* count
);

struct BNDataVariable* BNGetDataVariables(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNSnapshot* BNGetDatabaseCurrentSnapshot(
	struct BNDatabase* database
);

struct BNFileMetadata* BNGetDatabaseFile(
	struct BNDatabase* database
);

char** BNGetDatabaseGlobalKeys(
	struct BNDatabase* database,
	uint64_t* count
);

struct BNSnapshot* BNGetDatabaseSnapshot(
	struct BNDatabase* database,
	int64_t id
);

struct BNSnapshot** BNGetDatabaseSnapshots(
	struct BNDatabase* database,
	uint64_t* count
);

struct BNDataVariableAndName* BNGetDebugDataVariableByAddress(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName,
	uint64_t const address
);

struct BNDataVariableAndName* BNGetDebugDataVariableByName(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName,
	char const* const variableName
);

struct BNDataVariableAndName* BNGetDebugDataVariables(
	struct BNDebugInfo* const debugInfo,
	char const* const name,
	uint64_t* count
);

struct BNDataVariableAndNameAndDebugParser* BNGetDebugDataVariablesByAddress(
	struct BNDebugInfo* const debugInfo,
	uint64_t const address,
	uint64_t* count
);

struct BNDataVariableAndName* BNGetDebugDataVariablesByName(
	struct BNDebugInfo* const debugInfo,
	char const* const variableName,
	uint64_t* count
);

struct BNDebugFunctionInfo* BNGetDebugFunctions(
	struct BNDebugInfo* const debugInfo,
	char const* const name,
	uint64_t* count
);

struct BNDebugInfo* BNGetDebugInfo(
	struct BNBinaryView* view
);

struct BNDebugInfoParser* BNGetDebugInfoParserByName(
	char const* name
);

char* BNGetDebugInfoParserName(
	struct BNDebugInfoParser* parser
);

struct BNDebugInfoParser** BNGetDebugInfoParsers(
	uint64_t* count
);

struct BNDebugInfoParser** BNGetDebugInfoParsersForView(
	struct BNBinaryView* view,
	uint64_t* count
);

char** BNGetDebugParserNames(
	struct BNDebugInfo* const debugInfo,
	uint64_t* count
);

struct BNType* BNGetDebugTypeByName(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName,
	char const* const typeName
);

struct BNNameAndType* BNGetDebugTypes(
	struct BNDebugInfo* const debugInfo,
	char const* const name,
	uint64_t* count
);

struct BNNameAndType* BNGetDebugTypesByName(
	struct BNDebugInfo* const debugInfo,
	char const* const typeName,
	uint64_t* count
);

struct BNArchitecture* BNGetDefaultArchitecture(
	struct BNBinaryView* view
);

uint64_t BNGetDefaultArchitectureFlagConditionLowLevelIL(
	struct BNArchitecture* arch,
	BNLowLevelILFlagCondition cond,
	uint32_t semClass,
	struct BNLowLevelILFunction* il
);

uint64_t BNGetDefaultArchitectureFlagWriteLowLevelIL(
	struct BNArchitecture* arch,
	BNLowLevelILOperation op,
	uint64_t size,
	BNFlagRole role,
	struct BNRegisterOrConstant* operands,
	uint64_t operandCount,
	struct BNLowLevelILFunction* il
);

enum BNEndianness BNGetDefaultEndianness(
	struct BNBinaryView* view
);

struct BNVariable BNGetDefaultIncomingVariableForParameterVariable(
	struct BNCallingConvention* cc,
	struct BNVariable* var
);

uint32_t BNGetDefaultIndexForMediumLevelILVariableDefinition(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t instrIndex
);

struct BNVariable BNGetDefaultParameterVariableForIncomingVariable(
	struct BNCallingConvention* cc,
	struct BNVariable* var
);

struct BNPlatform* BNGetDefaultPlatform(
	struct BNBinaryView* view
);

bool BNGetDirectoryNameInput(
	char** result,
	char const* prompt,
	char const* defaultName
);

uint64_t BNGetDisassemblyGutterWidth(
	struct BNDisassemblySettings* settings
);

uint64_t BNGetDisassemblyMaximumSymbolWidth(
	struct BNDisassemblySettings* settings
);

struct BNArchitecture* BNGetDisassemblyTextRendererArchitecture(
	struct BNDisassemblyTextRenderer* renderer
);

struct BNBasicBlock* BNGetDisassemblyTextRendererBasicBlock(
	struct BNDisassemblyTextRenderer* renderer
);

struct BNFunction* BNGetDisassemblyTextRendererFunction(
	struct BNDisassemblyTextRenderer* renderer
);

struct BNHighLevelILFunction* BNGetDisassemblyTextRendererHighLevelILFunction(
	struct BNDisassemblyTextRenderer* renderer
);

struct BNInstructionTextToken* BNGetDisassemblyTextRendererInstructionAnnotations(
	struct BNDisassemblyTextRenderer* renderer,
	uint64_t addr,
	uint64_t* count
);

bool BNGetDisassemblyTextRendererInstructionText(
	struct BNDisassemblyTextRenderer* renderer,
	uint64_t addr,
	uint64_t* len,
	struct BNDisassemblyTextLine** result,
	uint64_t* count
);

struct BNInstructionTextToken* BNGetDisassemblyTextRendererIntegerTokens(
	struct BNDisassemblyTextRenderer* renderer,
	struct BNInstructionTextToken* token,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

bool BNGetDisassemblyTextRendererLines(
	struct BNDisassemblyTextRenderer* renderer,
	uint64_t addr,
	uint64_t* len,
	struct BNDisassemblyTextLine** result,
	uint64_t* count
);

struct BNLowLevelILFunction* BNGetDisassemblyTextRendererLowLevelILFunction(
	struct BNDisassemblyTextRenderer* renderer
);

struct BNMediumLevelILFunction* BNGetDisassemblyTextRendererMediumLevelILFunction(
	struct BNDisassemblyTextRenderer* renderer
);

struct BNDisassemblySettings* BNGetDisassemblyTextRendererSettings(
	struct BNDisassemblyTextRenderer* renderer
);

struct BNInstructionTextToken* BNGetDisassemblyTextRendererStackVariableReferenceTokens(
	struct BNDisassemblyTextRenderer* renderer,
	struct BNStackVariableReference* ref,
	uint64_t* count
);

bool BNGetDisassemblyTextRendererSymbolTokens(
	struct BNDisassemblyTextRenderer* renderer,
	uint64_t addr,
	uint64_t size,
	uint64_t operand,
	struct BNInstructionTextToken** result,
	uint64_t* count
);

uint64_t BNGetDisassemblyWidth(
	struct BNDisassemblySettings* settings
);

char* BNGetDisplayStringForInteger(
	struct BNBinaryView* binaryView,
	BNIntegerDisplayType type,
	uint64_t value,
	uint64_t inputWidth,
	bool isSigned
);

struct BNDownloadProvider* BNGetDownloadProviderByName(
	char const* name
);

struct BNDownloadProvider** BNGetDownloadProviderList(
	uint64_t* count
);

char* BNGetDownloadProviderName(
	struct BNDownloadProvider* provider
);

uint64_t BNGetEndOffset(
	struct BNBinaryView* view
);

uint64_t BNGetEnterpriseServerAuthenticationMethods(
	char*** methods,
	char*** names
);

char* BNGetEnterpriseServerBuildId(

);

char* BNGetEnterpriseServerId(

);

char* BNGetEnterpriseServerLastError(

);

uint64_t BNGetEnterpriseServerLicenseDuration(

);

uint64_t BNGetEnterpriseServerLicenseExpirationTime(

);

char* BNGetEnterpriseServerName(

);

uint64_t BNGetEnterpriseServerReservationTimeLimit(

);

char* BNGetEnterpriseServerToken(

);

char* BNGetEnterpriseServerUrl(

);

char* BNGetEnterpriseServerUsername(

);

uint64_t BNGetEnterpriseServerVersion(

);

uint64_t BNGetEntropy(
	struct BNBinaryView* view,
	uint64_t offset,
	uint64_t len,
	uint64_t blockSize,
	float* result
);

uint64_t BNGetEntryPoint(
	struct BNBinaryView* view
);

struct BNEnumerationMember* BNGetEnumerationBuilderMembers(
	struct BNEnumerationBuilder* e,
	uint64_t* count
);

struct BNEnumerationMember* BNGetEnumerationMembers(
	struct BNEnumeration* e,
	uint64_t* count
);

struct BNInstructionTextToken* BNGetEnumerationTokensForValue(
	struct BNEnumeration* e,
	uint64_t value,
	uint64_t width,
	uint64_t* count
);

char* BNGetErrorForDownloadInstance(
	struct BNDownloadInstance* instance
);

char** BNGetExistingViews(
	struct BNFileMetadata* file,
	uint64_t* count
);

bool BNGetExpressionParserMagicValue(
	struct BNBinaryView* view,
	char const* name,
	uint64_t* value
);

struct BNNameSpace BNGetExternalNameSpace(

);

char const* BNGetFileExtension(
	char const* path
);

struct BNFileMetadata* BNGetFileForView(
	struct BNBinaryView* view
);

struct BNDatabase* BNGetFileMetadataDatabase(
	struct BNFileMetadata* file
);

char const* BNGetFileName(
	char const* path
);

char** BNGetFilePathsInDirectory(
	char const* path,
	uint64_t* count
);

struct BNBinaryView* BNGetFileViewOfType(
	struct BNFileMetadata* file,
	char const* name
);

char* BNGetFilename(
	struct BNFileMetadata* file
);

struct BNLinearViewObject* BNGetFirstLinearViewObjectChild(
	struct BNLinearViewObject* obj
);

uint32_t* BNGetFlagsReadByLiftedILInstruction(
	struct BNFunction* func,
	uint64_t i,
	uint64_t* count
);

uint32_t* BNGetFlagsWrittenByLiftedILInstruction(
	struct BNFunction* func,
	uint64_t i,
	uint64_t* count
);

uint32_t* BNGetFloatArgumentRegisters(
	struct BNCallingConvention* cc,
	uint64_t* count
);

uint32_t BNGetFloatReturnValueRegister(
	struct BNCallingConvention* cc
);

struct BNBasicBlock* BNGetFlowGraphBasicBlock(
	struct BNFlowGraphNode* node
);

int32_t BNGetFlowGraphHeight(
	struct BNFlowGraph* graph
);

struct BNHighLevelILFunction* BNGetFlowGraphHighLevelILFunction(
	struct BNFlowGraph* graph
);

struct BNLowLevelILFunction* BNGetFlowGraphLowLevelILFunction(
	struct BNFlowGraph* graph
);

struct BNMediumLevelILFunction* BNGetFlowGraphMediumLevelILFunction(
	struct BNFlowGraph* graph
);

struct BNFlowGraphNode* BNGetFlowGraphNode(
	struct BNFlowGraph* graph,
	uint64_t i
);

int32_t BNGetFlowGraphNodeHeight(
	struct BNFlowGraphNode* node
);

struct BNHighlightColor BNGetFlowGraphNodeHighlight(
	struct BNFlowGraphNode* node
);

struct BNFlowGraphEdge* BNGetFlowGraphNodeIncomingEdges(
	struct BNFlowGraphNode* node,
	uint64_t* count
);

struct BNDisassemblyTextLine* BNGetFlowGraphNodeLines(
	struct BNFlowGraphNode* node,
	uint64_t* count
);

struct BNFlowGraphEdge* BNGetFlowGraphNodeOutgoingEdges(
	struct BNFlowGraphNode* node,
	uint64_t* count
);

struct BNFlowGraph* BNGetFlowGraphNodeOwner(
	struct BNFlowGraphNode* node
);

int32_t BNGetFlowGraphNodeWidth(
	struct BNFlowGraphNode* node
);

int32_t BNGetFlowGraphNodeX(
	struct BNFlowGraphNode* node
);

int32_t BNGetFlowGraphNodeY(
	struct BNFlowGraphNode* node
);

struct BNFlowGraphNode** BNGetFlowGraphNodes(
	struct BNFlowGraph* graph,
	uint64_t* count
);

struct BNFlowGraphNode** BNGetFlowGraphNodesInRegion(
	struct BNFlowGraph* graph,
	int32_t left,
	int32_t top,
	int32_t right,
	int32_t bottom,
	uint64_t* count
);

int32_t BNGetFlowGraphWidth(
	struct BNFlowGraph* graph
);

bool BNGetFormInput(
	struct BNFormInputField* fields,
	uint64_t count,
	char const* title
);

uint32_t* BNGetFullWidthArchitectureRegisters(
	struct BNArchitecture* arch,
	uint64_t* count
);

struct BNAddressRange* BNGetFunctionAddressRanges(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTagReference* BNGetFunctionAllTagReferences(
	struct BNFunction* func,
	uint64_t* count
);

struct BNPerformanceInfo* BNGetFunctionAnalysisPerformanceInfo(
	struct BNFunction* func,
	uint64_t* count
);

enum BNFunctionAnalysisSkipOverride BNGetFunctionAnalysisSkipOverride(
	struct BNFunction* func
);

struct BNArchitecture* BNGetFunctionArchitecture(
	struct BNFunction* func
);

struct BNBasicBlock* BNGetFunctionBasicBlockAtAddress(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

struct BNBasicBlock** BNGetFunctionBasicBlockList(
	struct BNFunction* func,
	uint64_t* count
);

struct BNInstructionTextLine* BNGetFunctionBlockAnnotations(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNReferenceSource* BNGetFunctionCallSites(
	struct BNFunction* func,
	uint64_t* count
);

struct BNCallingConventionWithConfidence BNGetFunctionCallingConvention(
	struct BNFunction* func
);

struct BNRegisterSetWithConfidence BNGetFunctionClobberedRegisters(
	struct BNFunction* func
);

char* BNGetFunctionComment(
	struct BNFunction* func
);

struct BNBinaryView* BNGetFunctionData(
	struct BNFunction* func
);

struct BNFunction* BNGetFunctionForFlowGraph(
	struct BNFlowGraph* graph
);

struct BNRegisterValueWithConfidence BNGetFunctionGlobalPointerValue(
	struct BNFunction* func
);

struct BNHighLevelILFunction* BNGetFunctionHighLevelIL(
	struct BNFunction* func
);

struct BNHighLevelILFunction* BNGetFunctionHighLevelILIfAvailable(
	struct BNFunction* func
);

uint64_t BNGetFunctionHighestAddress(
	struct BNFunction* func
);

struct BNLanguageRepresentationFunction* BNGetFunctionLanguageRepresentation(
	struct BNFunction* func
);

struct BNLanguageRepresentationFunction* BNGetFunctionLanguageRepresentationIfAvailable(
	struct BNFunction* func
);

struct BNLowLevelILFunction* BNGetFunctionLiftedIL(
	struct BNFunction* func
);

struct BNLowLevelILFunction* BNGetFunctionLiftedILIfAvailable(
	struct BNFunction* func
);

struct BNLowLevelILFunction* BNGetFunctionLowLevelIL(
	struct BNFunction* func
);

struct BNLowLevelILFunction* BNGetFunctionLowLevelILIfAvailable(
	struct BNFunction* func
);

uint64_t BNGetFunctionLowestAddress(
	struct BNFunction* func
);

struct BNMediumLevelILFunction* BNGetFunctionMappedMediumLevelIL(
	struct BNFunction* func
);

struct BNMediumLevelILFunction* BNGetFunctionMappedMediumLevelILIfAvailable(
	struct BNFunction* func
);

struct BNMediumLevelILFunction* BNGetFunctionMediumLevelIL(
	struct BNFunction* func
);

struct BNMediumLevelILFunction* BNGetFunctionMediumLevelILIfAvailable(
	struct BNFunction* func
);

struct BNParameterVariablesWithConfidence BNGetFunctionParameterVariables(
	struct BNFunction* func
);

struct BNComponent** BNGetFunctionParentComponents(
	struct BNBinaryView* view,
	struct BNFunction* func,
	uint64_t* count
);

struct BNPlatform* BNGetFunctionPlatform(
	struct BNFunction* func
);

struct BNRegisterStackAdjustment* BNGetFunctionRegisterStackAdjustments(
	struct BNFunction* func,
	uint64_t* count
);

struct BNRegisterValueWithConfidence BNGetFunctionRegisterValueAtExit(
	struct BNFunction* func,
	uint32_t reg
);

struct BNRegisterSetWithConfidence BNGetFunctionReturnRegisters(
	struct BNFunction* func
);

struct BNTypeWithConfidence BNGetFunctionReturnType(
	struct BNFunction* func
);

struct BNOffsetWithConfidence BNGetFunctionStackAdjustment(
	struct BNFunction* func
);

uint64_t BNGetFunctionStart(
	struct BNFunction* func
);

struct BNSymbol* BNGetFunctionSymbol(
	struct BNFunction* func
);

struct BNTagReference* BNGetFunctionTagReferences(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTagReference* BNGetFunctionTagReferencesOfType(
	struct BNFunction* func,
	struct BNTagType* tagType,
	uint64_t* count
);

struct BNTag** BNGetFunctionTags(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTag** BNGetFunctionTagsOfType(
	struct BNFunction* func,
	struct BNTagType* tagType,
	uint64_t* count
);

struct BNType* BNGetFunctionType(
	struct BNFunction* func
);

struct BNDisassemblyTextLine* BNGetFunctionTypeTokens(
	struct BNFunction* func,
	struct BNDisassemblySettings* settings,
	uint64_t* count
);

enum BNDeadStoreElimination BNGetFunctionVariableDeadStoreElimination(
	struct BNFunction* func,
	struct BNVariable* var
);

struct BNVariableNameAndType* BNGetFunctionVariables(
	struct BNFunction* func,
	uint64_t* count
);

char* BNGetGlobalCommentForAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

uint64_t* BNGetGlobalCommentedAddresses(
	struct BNBinaryView* view,
	uint64_t* count
);

uint32_t BNGetGlobalPointerRegister(
	struct BNCallingConvention* cc
);

struct BNRegisterValueWithConfidence BNGetGlobalPointerValue(
	struct BNBinaryView* view
);

char* BNGetGotoLabelName(
	struct BNFunction* func,
	uint64_t labelId
);

struct BNFlowGraph* BNGetGraphForFlowGraphLayoutRequest(
	struct BNFlowGraphLayoutRequest* layout
);

uint32_t BNGetHighIntegerReturnValueRegister(
	struct BNCallingConvention* cc
);

struct BNVariable* BNGetHighLevelILAliasedVariables(
	struct BNHighLevelILFunction* func,
	uint64_t* count
);

struct BNBasicBlock* BNGetHighLevelILBasicBlockForInstruction(
	struct BNHighLevelILFunction* func,
	uint64_t i
);

struct BNBasicBlock** BNGetHighLevelILBasicBlockList(
	struct BNHighLevelILFunction* func,
	uint64_t* count
);

struct BNHighLevelILInstruction BNGetHighLevelILByIndex(
	struct BNHighLevelILFunction* func,
	uint64_t i,
	bool asFullAst
);

uint64_t BNGetHighLevelILExprCount(
	struct BNHighLevelILFunction* func
);

uint64_t BNGetHighLevelILExprIndex(
	struct BNMediumLevelILFunction* func,
	uint64_t expr
);

uint64_t BNGetHighLevelILExprIndexForLabel(
	struct BNHighLevelILFunction* func,
	uint64_t label
);

uint64_t* BNGetHighLevelILExprIndexes(
	struct BNMediumLevelILFunction* func,
	uint64_t expr,
	uint64_t* count
);

struct BNDisassemblyTextLine* BNGetHighLevelILExprText(
	struct BNHighLevelILFunction* func,
	uint64_t expr,
	bool asFullAst,
	uint64_t* count,
	struct BNDisassemblySettings* settings
);

struct BNTypeWithConfidence BNGetHighLevelILExprType(
	struct BNHighLevelILFunction* func,
	uint64_t expr
);

struct BNHighLevelILFunction* BNGetHighLevelILForMediumLevelIL(
	struct BNMediumLevelILFunction* func
);

uint64_t BNGetHighLevelILIndexForInstruction(
	struct BNHighLevelILFunction* func,
	uint64_t i
);

uint64_t BNGetHighLevelILInstructionCount(
	struct BNHighLevelILFunction* func
);

uint64_t BNGetHighLevelILInstructionForExpr(
	struct BNHighLevelILFunction* func,
	uint64_t expr
);

uint64_t BNGetHighLevelILInstructionIndex(
	struct BNMediumLevelILFunction* func,
	uint64_t instr
);

uint64_t BNGetHighLevelILNonSSAExprIndex(
	struct BNHighLevelILFunction* func,
	uint64_t expr
);

struct BNHighLevelILFunction* BNGetHighLevelILNonSSAForm(
	struct BNHighLevelILFunction* func
);

uint64_t BNGetHighLevelILNonSSAInstructionIndex(
	struct BNHighLevelILFunction* func,
	uint64_t instr
);

struct BNFunction* BNGetHighLevelILOwnerFunction(
	struct BNHighLevelILFunction* func
);

uint64_t BNGetHighLevelILRootExpr(
	struct BNHighLevelILFunction* func
);

uint64_t BNGetHighLevelILSSAExprIndex(
	struct BNHighLevelILFunction* func,
	uint64_t expr
);

struct BNHighLevelILFunction* BNGetHighLevelILSSAForm(
	struct BNHighLevelILFunction* func
);

uint64_t BNGetHighLevelILSSAInstructionIndex(
	struct BNHighLevelILFunction* func,
	uint64_t instr
);

uint64_t BNGetHighLevelILSSAMemoryDefinition(
	struct BNHighLevelILFunction* func,
	uint64_t version
);

uint64_t* BNGetHighLevelILSSAMemoryUses(
	struct BNHighLevelILFunction* func,
	uint64_t version,
	uint64_t* count
);

uint64_t BNGetHighLevelILSSAMemoryVersionAtILInstruction(
	struct BNHighLevelILFunction* func,
	uint64_t instr
);

uint64_t BNGetHighLevelILSSAVarDefinition(
	struct BNHighLevelILFunction* func,
	struct BNVariable* var,
	uint64_t version
);

uint64_t* BNGetHighLevelILSSAVarUses(
	struct BNHighLevelILFunction* func,
	struct BNVariable* var,
	uint64_t version,
	uint64_t* count
);

uint64_t BNGetHighLevelILSSAVarVersionAtILInstruction(
	struct BNHighLevelILFunction* func,
	struct BNVariable* var,
	uint64_t instr
);

uint64_t* BNGetHighLevelILUsesForLabel(
	struct BNHighLevelILFunction* func,
	uint64_t label,
	uint64_t* count
);

uint64_t* BNGetHighLevelILVariableDefinitions(
	struct BNHighLevelILFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

struct BNILReferenceSource* BNGetHighLevelILVariableReferences(
	struct BNFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

struct BNVariableReferenceSource* BNGetHighLevelILVariableReferencesFrom(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t address,
	uint64_t* count
);

struct BNVariableReferenceSource* BNGetHighLevelILVariableReferencesFromIfAvailable(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t address,
	uint64_t* count
);

struct BNILReferenceSource* BNGetHighLevelILVariableReferencesIfAvailable(
	struct BNFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

struct BNVariableReferenceSource* BNGetHighLevelILVariableReferencesInRange(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t address,
	uint64_t len,
	uint64_t* count
);

struct BNVariableReferenceSource* BNGetHighLevelILVariableReferencesInRangeIfAvailable(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t address,
	uint64_t len,
	uint64_t* count
);

uint64_t* BNGetHighLevelILVariableSSAVersions(
	struct BNHighLevelILFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

uint64_t* BNGetHighLevelILVariableUses(
	struct BNHighLevelILFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

struct BNVariable* BNGetHighLevelILVariables(
	struct BNHighLevelILFunction* func,
	uint64_t* count
);

int32_t BNGetHorizontalFlowGraphNodeMargin(
	struct BNFlowGraph* graph
);

uint32_t* BNGetImplicitlyDefinedRegisters(
	struct BNCallingConvention* cc,
	uint64_t* count
);

struct BNRegisterValue BNGetIncomingFlagValue(
	struct BNCallingConvention* cc,
	uint32_t reg,
	struct BNFunction* func
);

struct BNRegisterValue BNGetIncomingRegisterValue(
	struct BNCallingConvention* cc,
	uint32_t reg,
	struct BNFunction* func
);

struct BNVariable BNGetIncomingVariableForParameterVariable(
	struct BNCallingConvention* cc,
	struct BNVariable* var,
	struct BNFunction* func
);

struct BNIndirectBranchInfo* BNGetIndirectBranches(
	struct BNFunction* func,
	uint64_t* count
);

struct BNIndirectBranchInfo* BNGetIndirectBranchesAt(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

char* BNGetInstallDirectory(

);

bool BNGetInstructionContainingAddress(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* start
);

struct BNHighlightColor BNGetInstructionHighlight(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNGetInstructionInfo(
	struct BNArchitecture* arch,
	uint8_t const* data,
	uint64_t addr,
	uint64_t maxLen,
	struct BNInstructionInfo* result
);

uint64_t BNGetInstructionLength(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNGetInstructionLowLevelIL(
	struct BNArchitecture* arch,
	uint8_t const* data,
	uint64_t addr,
	uint64_t* len,
	struct BNLowLevelILFunction* il
);

bool BNGetInstructionText(
	struct BNArchitecture* arch,
	uint8_t const* data,
	uint64_t addr,
	uint64_t* len,
	struct BNInstructionTextToken** result,
	uint64_t* count
);

uint32_t* BNGetIntegerArgumentRegisters(
	struct BNCallingConvention* cc,
	uint64_t* count
);

enum BNIntegerDisplayType BNGetIntegerConstantDisplayType(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t instrAddr,
	uint64_t value,
	uint64_t operand
);

struct BNType* BNGetIntegerConstantDisplayTypeEnumerationType(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t instrAddr,
	uint64_t value,
	uint64_t operand
);

bool BNGetIntegerInput(
	int64_t* result,
	char const* prompt,
	char const* title
);

uint32_t BNGetIntegerReturnValueRegister(
	struct BNCallingConvention* cc
);

enum BNIntegerDisplayType BNGetIntegerTypeDisplayType(
	struct BNType* type
);

struct BNNameSpace BNGetInternalNameSpace(

);

struct BNDataBuffer* BNGetKeyValueStoreBuffer(
	struct BNKeyValueStore* store,
	char const* name
);

uint64_t BNGetKeyValueStoreDataSize(
	struct BNKeyValueStore* store
);

char** BNGetKeyValueStoreKeys(
	struct BNKeyValueStore* store,
	uint64_t* count
);

uint64_t BNGetKeyValueStoreNamespaceSize(
	struct BNKeyValueStore* store
);

struct BNDataBuffer* BNGetKeyValueStoreSerializedData(
	struct BNKeyValueStore* store
);

char* BNGetKeyValueStoreValue(
	struct BNKeyValueStore* store,
	char const* name
);

uint64_t BNGetKeyValueStoreValueSize(
	struct BNKeyValueStore* store
);

uint64_t BNGetKeyValueStoreValueStorageSize(
	struct BNKeyValueStore* store
);

struct BNLowLevelILLabel* BNGetLabelForLowLevelILSourceInstruction(
	struct BNLowLevelILFunction* func,
	uint64_t instr
);

struct BNMediumLevelILLabel* BNGetLabelForMediumLevelILSourceInstruction(
	struct BNMediumLevelILFunction* func,
	uint64_t instr
);

struct BNFunction* BNGetLanguageRepresentationOwnerFunction(
	struct BNLanguageRepresentationFunction* func
);

struct BNLinearViewObject* BNGetLastLinearViewObjectChild(
	struct BNLinearViewObject* obj
);

struct BNUndoEntry BNGetLastRedoEntry(
	struct BNFileMetadata* file
);

char* BNGetLastRedoEntryTitle(
	struct BNFileMetadata* file
);

char* BNGetLastSeenVariableNameOrDefault(
	struct BNFunction* func,
	struct BNVariable* var
);

struct BNUndoEntry BNGetLastUndoEntry(
	struct BNFileMetadata* file
);

char* BNGetLastUndoEntryTitle(
	struct BNFileMetadata* file
);

int32_t BNGetLicenseCount(

);

uint64_t BNGetLicenseExpirationTime(

);

char* BNGetLicensedUserEmail(

);

uint64_t* BNGetLiftedILFlagDefinitionsForUse(
	struct BNFunction* func,
	uint64_t i,
	uint32_t flag,
	uint64_t* count
);

uint64_t* BNGetLiftedILFlagUsesForDefinition(
	struct BNFunction* func,
	uint64_t i,
	uint32_t flag,
	uint64_t* count
);

uint64_t BNGetLiftedILForInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

uint64_t* BNGetLiftedILInstructionsForAddress(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNLinearViewObject* BNGetLinearViewCursorCurrentObject(
	struct BNLinearViewCursor* cursor
);

struct BNLinearDisassemblyLine* BNGetLinearViewCursorLines(
	struct BNLinearViewCursor* cursor,
	uint64_t* count
);

struct BNAddressRange BNGetLinearViewCursorOrderingIndex(
	struct BNLinearViewCursor* cursor
);

uint64_t BNGetLinearViewCursorOrderingIndexTotal(
	struct BNLinearViewCursor* cursor
);

struct BNLinearViewObjectIdentifier* BNGetLinearViewCursorPath(
	struct BNLinearViewCursor* cursor,
	uint64_t* count
);

struct BNLinearViewObject** BNGetLinearViewCursorPathObjects(
	struct BNLinearViewCursor* cursor,
	uint64_t* count
);

struct BNLinearViewObject* BNGetLinearViewObjectChildForAddress(
	struct BNLinearViewObject* parent,
	uint64_t addr
);

struct BNLinearViewObject* BNGetLinearViewObjectChildForIdentifier(
	struct BNLinearViewObject* parent,
	struct BNLinearViewObjectIdentifier* id
);

struct BNLinearViewObject* BNGetLinearViewObjectChildForOrderingIndex(
	struct BNLinearViewObject* parent,
	uint64_t idx
);

uint64_t BNGetLinearViewObjectEnd(
	struct BNLinearViewObject* obj
);

struct BNLinearViewObjectIdentifier BNGetLinearViewObjectIdentifier(
	struct BNLinearViewObject* obj
);

struct BNLinearDisassemblyLine* BNGetLinearViewObjectLines(
	struct BNLinearViewObject* obj,
	struct BNLinearViewObject* prev,
	struct BNLinearViewObject* next,
	uint64_t* count
);

uint64_t BNGetLinearViewObjectOrderingIndexForChild(
	struct BNLinearViewObject* parent,
	struct BNLinearViewObject* child
);

uint64_t BNGetLinearViewObjectOrderingIndexTotal(
	struct BNLinearViewObject* obj
);

uint64_t BNGetLinearViewObjectStart(
	struct BNLinearViewObject* obj
);

struct BNDisassemblyTextLine* BNGetLinesForData(
	void* ctxt,
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNType* type,
	struct BNInstructionTextToken* prefix,
	uint64_t prefixCount,
	uint64_t width,
	uint64_t* count,
	struct BNTypeContext* typeCtx,
	uint64_t ctxCount
);

uint64_t* BNGetLowLevelFlagSSAVersions(
	struct BNLowLevelILFunction* func,
	uint32_t const var,
	uint64_t* count
);

uint32_t* BNGetLowLevelFlags(
	struct BNLowLevelILFunction* func,
	uint64_t* count
);

struct BNBasicBlock* BNGetLowLevelILBasicBlockForInstruction(
	struct BNLowLevelILFunction* func,
	uint64_t i
);

struct BNBasicBlock** BNGetLowLevelILBasicBlockList(
	struct BNLowLevelILFunction* func,
	uint64_t* count
);

struct BNLowLevelILInstruction BNGetLowLevelILByIndex(
	struct BNLowLevelILFunction* func,
	uint64_t i
);

uint64_t* BNGetLowLevelILExitsForInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

uint64_t BNGetLowLevelILExprCount(
	struct BNLowLevelILFunction* func
);

uint64_t BNGetLowLevelILExprIndex(
	struct BNMediumLevelILFunction* func,
	uint64_t expr
);

uint64_t* BNGetLowLevelILExprIndexes(
	struct BNMediumLevelILFunction* func,
	uint64_t expr,
	uint64_t* count
);

bool BNGetLowLevelILExprText(
	struct BNLowLevelILFunction* func,
	struct BNArchitecture* arch,
	uint64_t i,
	struct BNDisassemblySettings* settings,
	struct BNInstructionTextToken** tokens,
	uint64_t* count
);

struct BNRegisterValue BNGetLowLevelILExprValue(
	struct BNLowLevelILFunction* func,
	uint64_t expr
);

struct BNRegisterValue BNGetLowLevelILFlagValueAfterInstruction(
	struct BNLowLevelILFunction* func,
	uint32_t flag,
	uint64_t instr
);

struct BNRegisterValue BNGetLowLevelILFlagValueAtInstruction(
	struct BNLowLevelILFunction* func,
	uint32_t flag,
	uint64_t instr
);

uint64_t BNGetLowLevelILForInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

struct BNLowLevelILFunction* BNGetLowLevelILForMediumLevelIL(
	struct BNMediumLevelILFunction* func
);

uint64_t BNGetLowLevelILIndexForInstruction(
	struct BNLowLevelILFunction* func,
	uint64_t i
);

uint64_t BNGetLowLevelILInstructionCount(
	struct BNLowLevelILFunction* func
);

uint64_t BNGetLowLevelILInstructionForExpr(
	struct BNLowLevelILFunction* func,
	uint64_t expr
);

uint64_t BNGetLowLevelILInstructionIndex(
	struct BNMediumLevelILFunction* func,
	uint64_t instr
);

bool BNGetLowLevelILInstructionText(
	struct BNLowLevelILFunction* il,
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t i,
	struct BNDisassemblySettings* settings,
	struct BNInstructionTextToken** tokens,
	uint64_t* count
);

uint64_t* BNGetLowLevelILInstructionsForAddress(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNLowLevelILLabel* BNGetLowLevelILLabelForAddress(
	struct BNLowLevelILFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

uint64_t BNGetLowLevelILNonSSAExprIndex(
	struct BNLowLevelILFunction* func,
	uint64_t expr
);

struct BNLowLevelILFunction* BNGetLowLevelILNonSSAForm(
	struct BNLowLevelILFunction* func
);

uint64_t BNGetLowLevelILNonSSAInstructionIndex(
	struct BNLowLevelILFunction* func,
	uint64_t instr
);

struct BNFunction* BNGetLowLevelILOwnerFunction(
	struct BNLowLevelILFunction* func
);

struct BNPossibleValueSet BNGetLowLevelILPossibleExprValues(
	struct BNLowLevelILFunction* func,
	uint64_t expr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetLowLevelILPossibleFlagValuesAfterInstruction(
	struct BNLowLevelILFunction* func,
	uint32_t flag,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetLowLevelILPossibleFlagValuesAtInstruction(
	struct BNLowLevelILFunction* func,
	uint32_t flag,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetLowLevelILPossibleRegisterValuesAfterInstruction(
	struct BNLowLevelILFunction* func,
	uint32_t reg,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetLowLevelILPossibleRegisterValuesAtInstruction(
	struct BNLowLevelILFunction* func,
	uint32_t reg,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetLowLevelILPossibleStackContentsAfterInstruction(
	struct BNLowLevelILFunction* func,
	int64_t offset,
	uint64_t len,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetLowLevelILPossibleStackContentsAtInstruction(
	struct BNLowLevelILFunction* func,
	int64_t offset,
	uint64_t len,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNRegisterValue BNGetLowLevelILRegisterValueAfterInstruction(
	struct BNLowLevelILFunction* func,
	uint32_t reg,
	uint64_t instr
);

struct BNRegisterValue BNGetLowLevelILRegisterValueAtInstruction(
	struct BNLowLevelILFunction* func,
	uint32_t reg,
	uint64_t instr
);

uint64_t BNGetLowLevelILSSAExprIndex(
	struct BNLowLevelILFunction* func,
	uint64_t expr
);

uint64_t BNGetLowLevelILSSAFlagDefinition(
	struct BNLowLevelILFunction* func,
	uint32_t reg,
	uint64_t version
);

uint64_t* BNGetLowLevelILSSAFlagUses(
	struct BNLowLevelILFunction* func,
	uint32_t reg,
	uint64_t version,
	uint64_t* count
);

struct BNRegisterValue BNGetLowLevelILSSAFlagValue(
	struct BNLowLevelILFunction* func,
	uint32_t flag,
	uint64_t version
);

struct BNLowLevelILFunction* BNGetLowLevelILSSAForm(
	struct BNLowLevelILFunction* func
);

uint64_t BNGetLowLevelILSSAInstructionIndex(
	struct BNLowLevelILFunction* func,
	uint64_t instr
);

uint64_t BNGetLowLevelILSSAMemoryDefinition(
	struct BNLowLevelILFunction* func,
	uint64_t version
);

uint64_t* BNGetLowLevelILSSAMemoryUses(
	struct BNLowLevelILFunction* func,
	uint64_t version,
	uint64_t* count
);

uint64_t BNGetLowLevelILSSARegisterDefinition(
	struct BNLowLevelILFunction* func,
	uint32_t reg,
	uint64_t version
);

uint64_t* BNGetLowLevelILSSARegisterUses(
	struct BNLowLevelILFunction* func,
	uint32_t reg,
	uint64_t version,
	uint64_t* count
);

struct BNRegisterValue BNGetLowLevelILSSARegisterValue(
	struct BNLowLevelILFunction* func,
	uint32_t reg,
	uint64_t version
);

struct BNRegisterValue BNGetLowLevelILStackContentsAfterInstruction(
	struct BNLowLevelILFunction* func,
	int64_t offset,
	uint64_t len,
	uint64_t instr
);

struct BNRegisterValue BNGetLowLevelILStackContentsAtInstruction(
	struct BNLowLevelILFunction* func,
	int64_t offset,
	uint64_t len,
	uint64_t instr
);

uint32_t BNGetLowLevelILTemporaryFlagCount(
	struct BNLowLevelILFunction* func
);

uint32_t BNGetLowLevelILTemporaryRegisterCount(
	struct BNLowLevelILFunction* func
);

uint64_t* BNGetLowLevelMemoryVersions(
	struct BNLowLevelILFunction* func,
	uint64_t* count
);

uint64_t* BNGetLowLevelRegisterSSAVersions(
	struct BNLowLevelILFunction* func,
	uint32_t const var,
	uint64_t* count
);

uint64_t* BNGetLowLevelRegisterStackSSAVersions(
	struct BNLowLevelILFunction* func,
	uint32_t const var,
	uint64_t* count
);

uint32_t* BNGetLowLevelRegisterStacks(
	struct BNLowLevelILFunction* func,
	uint64_t* count
);

uint32_t* BNGetLowLevelRegisters(
	struct BNLowLevelILFunction* func,
	uint64_t* count
);

uint32_t* BNGetLowLevelSSAFlagsWithoutVersions(
	struct BNLowLevelILFunction* func,
	uint64_t* count
);

uint32_t* BNGetLowLevelSSARegisterStacksWithoutVersions(
	struct BNLowLevelILFunction* func,
	uint64_t* count
);

uint32_t* BNGetLowLevelSSARegistersWithoutVersions(
	struct BNLowLevelILFunction* func,
	uint64_t* count
);

struct BNMediumLevelILFunction* BNGetMappedMediumLevelIL(
	struct BNLowLevelILFunction* func
);

uint64_t BNGetMappedMediumLevelILExprIndex(
	struct BNLowLevelILFunction* func,
	uint64_t expr
);

uint64_t BNGetMappedMediumLevelILInstructionIndex(
	struct BNLowLevelILFunction* func,
	uint64_t instr
);

uint64_t BNGetMaxFunctionSizeForAnalysis(
	struct BNBinaryView* view
);

struct BNVariable* BNGetMediumLevelILAliasedVariables(
	struct BNMediumLevelILFunction* func,
	uint64_t* count
);

struct BNBasicBlock* BNGetMediumLevelILBasicBlockForInstruction(
	struct BNMediumLevelILFunction* func,
	uint64_t i
);

struct BNBasicBlock** BNGetMediumLevelILBasicBlockList(
	struct BNMediumLevelILFunction* func,
	uint64_t* count
);

enum BNILBranchDependence BNGetMediumLevelILBranchDependence(
	struct BNMediumLevelILFunction* func,
	uint64_t curInstr,
	uint64_t branchInstr
);

struct BNMediumLevelILInstruction BNGetMediumLevelILByIndex(
	struct BNMediumLevelILFunction* func,
	uint64_t i
);

uint64_t BNGetMediumLevelILExprCount(
	struct BNMediumLevelILFunction* func
);

uint64_t BNGetMediumLevelILExprIndex(
	struct BNLowLevelILFunction* func,
	uint64_t expr
);

uint64_t BNGetMediumLevelILExprIndexFromHighLevelIL(
	struct BNHighLevelILFunction* func,
	uint64_t expr
);

uint64_t* BNGetMediumLevelILExprIndexes(
	struct BNLowLevelILFunction* func,
	uint64_t expr,
	uint64_t* count
);

uint64_t* BNGetMediumLevelILExprIndexesFromHighLevelIL(
	struct BNHighLevelILFunction* func,
	uint64_t expr,
	uint64_t* count
);

bool BNGetMediumLevelILExprText(
	struct BNMediumLevelILFunction* func,
	struct BNArchitecture* arch,
	uint64_t i,
	struct BNInstructionTextToken** tokens,
	uint64_t* count,
	struct BNDisassemblySettings* settings
);

struct BNTypeWithConfidence BNGetMediumLevelILExprType(
	struct BNMediumLevelILFunction* func,
	uint64_t expr
);

struct BNRegisterValue BNGetMediumLevelILExprValue(
	struct BNMediumLevelILFunction* func,
	uint64_t expr
);

struct BNRegisterValue BNGetMediumLevelILFlagValueAfterInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t flag,
	uint64_t instr
);

struct BNRegisterValue BNGetMediumLevelILFlagValueAtInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t flag,
	uint64_t instr
);

struct BNMediumLevelILFunction* BNGetMediumLevelILForHighLevelILFunction(
	struct BNHighLevelILFunction* func
);

struct BNMediumLevelILFunction* BNGetMediumLevelILForLowLevelIL(
	struct BNLowLevelILFunction* func
);

uint64_t BNGetMediumLevelILIndexForInstruction(
	struct BNMediumLevelILFunction* func,
	uint64_t i
);

uint64_t BNGetMediumLevelILInstructionCount(
	struct BNMediumLevelILFunction* func
);

uint64_t BNGetMediumLevelILInstructionForExpr(
	struct BNMediumLevelILFunction* func,
	uint64_t expr
);

uint64_t BNGetMediumLevelILInstructionIndex(
	struct BNLowLevelILFunction* func,
	uint64_t instr
);

bool BNGetMediumLevelILInstructionText(
	struct BNMediumLevelILFunction* il,
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t i,
	struct BNInstructionTextToken** tokens,
	uint64_t* count,
	struct BNDisassemblySettings* settings
);

uint64_t* BNGetMediumLevelILLiveInstructionsForVariable(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	bool includeLastUse,
	uint64_t* count
);

uint64_t BNGetMediumLevelILNonSSAExprIndex(
	struct BNMediumLevelILFunction* func,
	uint64_t expr
);

struct BNMediumLevelILFunction* BNGetMediumLevelILNonSSAForm(
	struct BNMediumLevelILFunction* func
);

uint64_t BNGetMediumLevelILNonSSAInstructionIndex(
	struct BNMediumLevelILFunction* func,
	uint64_t instr
);

struct BNFunction* BNGetMediumLevelILOwnerFunction(
	struct BNMediumLevelILFunction* func
);

struct BNPossibleValueSet BNGetMediumLevelILPossibleExprValues(
	struct BNMediumLevelILFunction* func,
	uint64_t expr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetMediumLevelILPossibleFlagValuesAfterInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t flag,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetMediumLevelILPossibleFlagValuesAtInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t flag,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetMediumLevelILPossibleRegisterValuesAfterInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t reg,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetMediumLevelILPossibleRegisterValuesAtInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t reg,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetMediumLevelILPossibleSSAVarValues(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t version,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetMediumLevelILPossibleStackContentsAfterInstruction(
	struct BNMediumLevelILFunction* func,
	int64_t offset,
	uint64_t len,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNPossibleValueSet BNGetMediumLevelILPossibleStackContentsAtInstruction(
	struct BNMediumLevelILFunction* func,
	int64_t offset,
	uint64_t len,
	uint64_t instr,
	enum BNDataFlowQueryOption* options,
	uint64_t optionCount
);

struct BNRegisterValue BNGetMediumLevelILRegisterValueAfterInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t reg,
	uint64_t instr
);

struct BNRegisterValue BNGetMediumLevelILRegisterValueAtInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t reg,
	uint64_t instr
);

uint64_t BNGetMediumLevelILSSAExprIndex(
	struct BNMediumLevelILFunction* func,
	uint64_t expr
);

struct BNMediumLevelILFunction* BNGetMediumLevelILSSAForm(
	struct BNMediumLevelILFunction* func
);

uint64_t BNGetMediumLevelILSSAInstructionIndex(
	struct BNMediumLevelILFunction* func,
	uint64_t instr
);

uint64_t BNGetMediumLevelILSSAMemoryDefinition(
	struct BNMediumLevelILFunction* func,
	uint64_t version
);

uint64_t* BNGetMediumLevelILSSAMemoryUses(
	struct BNMediumLevelILFunction* func,
	uint64_t version,
	uint64_t* count
);

uint64_t BNGetMediumLevelILSSAMemoryVersionAtILInstruction(
	struct BNMediumLevelILFunction* func,
	uint64_t instr
);

uint64_t BNGetMediumLevelILSSAVarDefinition(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t version
);

uint64_t* BNGetMediumLevelILSSAVarUses(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t version,
	uint64_t* count
);

struct BNRegisterValue BNGetMediumLevelILSSAVarValue(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t version
);

uint64_t BNGetMediumLevelILSSAVarVersionAtILInstruction(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t instr
);

struct BNRegisterValue BNGetMediumLevelILStackContentsAfterInstruction(
	struct BNMediumLevelILFunction* func,
	int64_t offset,
	uint64_t len,
	uint64_t instr
);

struct BNRegisterValue BNGetMediumLevelILStackContentsAtInstruction(
	struct BNMediumLevelILFunction* func,
	int64_t offset,
	uint64_t len,
	uint64_t instr
);

uint64_t* BNGetMediumLevelILVariableDefinitions(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

struct BNVariable BNGetMediumLevelILVariableForFlagAtInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t flag,
	uint64_t instr
);

struct BNVariable BNGetMediumLevelILVariableForRegisterAtInstruction(
	struct BNMediumLevelILFunction* func,
	uint32_t reg,
	uint64_t instr
);

struct BNVariable BNGetMediumLevelILVariableForStackLocationAtInstruction(
	struct BNMediumLevelILFunction* func,
	int64_t offset,
	uint64_t instr
);

struct BNILReferenceSource* BNGetMediumLevelILVariableReferences(
	struct BNFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

struct BNVariableReferenceSource* BNGetMediumLevelILVariableReferencesFrom(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t address,
	uint64_t* count
);

struct BNVariableReferenceSource* BNGetMediumLevelILVariableReferencesFromIfAvailable(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t address,
	uint64_t* count
);

struct BNILReferenceSource* BNGetMediumLevelILVariableReferencesIfAvailable(
	struct BNFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

struct BNVariableReferenceSource* BNGetMediumLevelILVariableReferencesInRange(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t address,
	uint64_t len,
	uint64_t* count
);

struct BNVariableReferenceSource* BNGetMediumLevelILVariableReferencesInRangeIfAvailable(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t address,
	uint64_t len,
	uint64_t* count
);

uint64_t* BNGetMediumLevelILVariableSSAVersions(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

uint64_t* BNGetMediumLevelILVariableUses(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t* count
);

struct BNVariable* BNGetMediumLevelILVariables(
	struct BNMediumLevelILFunction* func,
	uint64_t* count
);

struct BNMemoryUsageInfo* BNGetMemoryUsageInfo(
	uint64_t* count
);

struct BNMergedVariable* BNGetMergedVariables(
	struct BNFunction* func,
	uint64_t* count
);

uint32_t BNGetMinimumCoreABIVersion(

);

enum BNModificationStatus BNGetModification(
	struct BNBinaryView* view,
	uint64_t offset
);

uint64_t BNGetModificationArray(
	struct BNBinaryView* view,
	uint64_t offset,
	enum BNModificationStatus* result,
	uint64_t len
);

uint32_t* BNGetModifiedArchitectureRegistersOnWrite(
	struct BNArchitecture* arch,
	uint32_t reg,
	uint64_t* count
);

struct BNNameSpace* BNGetNameSpaces(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNArchitecture* BNGetNativeTypeParserArchitecture(

);

bool BNGetNewAutoFunctionAnalysisSuppressed(
	struct BNBinaryView* view
);

uint64_t BNGetNextBasicBlockStartAfterAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

uint64_t BNGetNextDataAfterAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

uint64_t BNGetNextDataVariableStartAfterAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

uint64_t BNGetNextFunctionStartAfterAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

struct BNLinearViewObject* BNGetNextLinearViewObjectChild(
	struct BNLinearViewObject* parent,
	struct BNLinearViewObject* child
);

uint64_t BNGetNextValidOffset(
	struct BNBinaryView* view,
	uint64_t offset
);

bool BNGetOpenFileNameInput(
	char** result,
	char const* prompt,
	char const* ext
);

char* BNGetOriginalFilename(
	struct BNFileMetadata* file
);

struct BNVariable* BNGetParameterOrderingForVariables(
	struct BNCallingConvention* cc,
	struct BNVariable* paramVars,
	struct BNType** paramTypes,
	uint64_t paramCount,
	uint64_t* count
);

struct BNRegisterValue BNGetParameterValueAtInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNType* functionType,
	uint64_t i
);

struct BNRegisterValue BNGetParameterValueAtLowLevelILInstruction(
	struct BNFunction* func,
	uint64_t instr,
	struct BNType* functionType,
	uint64_t i
);

struct BNVariable BNGetParameterVariableForIncomingVariable(
	struct BNCallingConvention* cc,
	struct BNVariable* var,
	struct BNFunction* func
);

struct BNAnalysisParameters BNGetParametersForAnalysis(
	struct BNBinaryView* view
);

char* BNGetParentPath(
	char const* path
);

struct BNBinaryView* BNGetParentView(
	struct BNBinaryView* view
);

char* BNGetPathRelativeToBundledPluginDirectory(
	char const* path
);

char* BNGetPathRelativeToUserDirectory(
	char const* path
);

char* BNGetPathRelativeToUserPluginDirectory(
	char const* path
);

struct BNArchitecture* BNGetPlatformArchitecture(
	struct BNPlatform* platform
);

struct BNPlatform* BNGetPlatformByName(
	char const* name
);

struct BNCallingConvention** BNGetPlatformCallingConventions(
	struct BNPlatform* platform,
	uint64_t* count
);

struct BNCallingConvention* BNGetPlatformCdeclCallingConvention(
	struct BNPlatform* platform
);

struct BNCallingConvention* BNGetPlatformDefaultCallingConvention(
	struct BNPlatform* platform
);

struct BNCallingConvention* BNGetPlatformFastcallCallingConvention(
	struct BNPlatform* platform
);

struct BNPlatform* BNGetPlatformForViewType(
	struct BNBinaryViewType* type,
	uint32_t id,
	struct BNArchitecture* arch
);

struct BNType* BNGetPlatformFunctionByName(
	struct BNPlatform* platform,
	struct BNQualifiedName* name,
	bool exactMatch
);

struct BNQualifiedNameAndType* BNGetPlatformFunctions(
	struct BNPlatform* platform,
	uint64_t* count
);

struct BNPlatform** BNGetPlatformList(
	uint64_t* count
);

struct BNPlatform** BNGetPlatformListByArchitecture(
	struct BNArchitecture* arch,
	uint64_t* count
);

struct BNPlatform** BNGetPlatformListByOS(
	char const* os,
	uint64_t* count
);

struct BNPlatform** BNGetPlatformListByOSAndArchitecture(
	char const* os,
	struct BNArchitecture* arch,
	uint64_t* count
);

char* BNGetPlatformName(
	struct BNPlatform* platform
);

char** BNGetPlatformOSList(
	uint64_t* count
);

struct BNCallingConvention* BNGetPlatformStdcallCallingConvention(
	struct BNPlatform* platform
);

struct BNCallingConvention* BNGetPlatformSystemCallConvention(
	struct BNPlatform* platform
);

char* BNGetPlatformSystemCallName(
	struct BNPlatform* platform,
	uint32_t number
);

struct BNType* BNGetPlatformSystemCallType(
	struct BNPlatform* platform,
	uint32_t number
);

struct BNSystemCallInfo* BNGetPlatformSystemCalls(
	struct BNPlatform* platform,
	uint64_t* count
);

struct BNType* BNGetPlatformTypeByName(
	struct BNPlatform* platform,
	struct BNQualifiedName* name
);

struct BNTypeLibrary** BNGetPlatformTypeLibraries(
	struct BNPlatform* platform,
	uint64_t* count
);

struct BNTypeLibrary** BNGetPlatformTypeLibrariesByName(
	struct BNPlatform* platform,
	char const* depName,
	uint64_t* count
);

struct BNQualifiedNameAndType* BNGetPlatformTypes(
	struct BNPlatform* platform,
	uint64_t* count
);

struct BNType* BNGetPlatformVariableByName(
	struct BNPlatform* platform,
	struct BNQualifiedName* name
);

struct BNQualifiedNameAndType* BNGetPlatformVariables(
	struct BNPlatform* platform,
	uint64_t* count
);

uint64_t BNGetPreviousBasicBlockEndBeforeAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

uint64_t BNGetPreviousBasicBlockStartBeforeAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

uint64_t BNGetPreviousDataBeforeAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

uint64_t BNGetPreviousDataVariableStartBeforeAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

uint64_t BNGetPreviousFunctionStartBeforeAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

struct BNLinearViewObject* BNGetPreviousLinearViewObjectChild(
	struct BNLinearViewObject* parent,
	struct BNLinearViewObject* child
);

char* BNGetProduct(

);

char* BNGetProductType(

);

uint64_t BNGetReaderPosition(
	struct BNBinaryReader* stream
);

struct BNFunction* BNGetRecentAnalysisFunctionForAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

struct BNBasicBlock* BNGetRecentBasicBlockForAddress(
	struct BNBinaryView* view,
	uint64_t addr
);

struct BNUndoEntry* BNGetRedoEntries(
	struct BNFileMetadata* file,
	uint64_t* count
);

uint64_t BNGetRegisterStackAdjustments(
	struct BNCallingConvention* cc,
	uint32_t const* returnRegs,
	uint64_t returnRegCount,
	struct BNType* returnType,
	struct BNVariable* params,
	uint64_t paramCount,
	struct BNType** types,
	uint64_t typeCount,
	uint32_t** resultRegisters,
	uint32_t** resultAdjustments
);

struct BNRegisterValue BNGetRegisterValueAfterInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint32_t reg
);

struct BNRegisterValue BNGetRegisterValueAtInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint32_t reg
);

struct BNNamedTypeReference* BNGetRegisteredTypeName(
	struct BNType* type
);

uint32_t* BNGetRegistersReadByInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

uint32_t* BNGetRegistersWrittenByInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNPlatform* BNGetRelatedPlatform(
	struct BNPlatform* platform,
	struct BNArchitecture* arch
);

struct BNRange* BNGetRelocationRanges(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNRange* BNGetRelocationRangesAtAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

uint64_t BNGetReportCollectionCount(
	struct BNReportCollection* reports
);

char* BNGetReportContents(
	struct BNReportCollection* reports,
	uint64_t i
);

struct BNFlowGraph* BNGetReportFlowGraph(
	struct BNReportCollection* reports,
	uint64_t i
);

char* BNGetReportPlainText(
	struct BNReportCollection* reports,
	uint64_t i
);

char* BNGetReportTitle(
	struct BNReportCollection* reports,
	uint64_t i
);

enum BNReportType BNGetReportType(
	struct BNReportCollection* reports,
	uint64_t i
);

struct BNBinaryView* BNGetReportView(
	struct BNReportCollection* reports,
	uint64_t i
);

char* BNGetRepositoriesDirectory(

);

struct BNRepositoryManager* BNGetRepositoryManager(

);

struct BNComponent* BNGetRootComponent(
	struct BNBinaryView* view
);

struct BNBackgroundTask** BNGetRunningBackgroundTasks(
	uint64_t* count
);

bool BNGetSaveFileNameInput(
	char** result,
	char const* prompt,
	char const* ext,
	char const* defaultName
);

char* BNGetSaveSettingsName(
	struct BNSaveSettings* settings
);

char const* BNGetScriptingInstanceDelimiters(
	struct BNScriptingInstance* instance
);

enum BNScriptingProviderInputReadyState BNGetScriptingInstanceInputReadyState(
	struct BNScriptingInstance* instance
);

char* BNGetScriptingProviderAPIName(
	struct BNScriptingProvider* provider
);

struct BNScriptingProvider* BNGetScriptingProviderByAPIName(
	char const* name
);

struct BNScriptingProvider* BNGetScriptingProviderByName(
	char const* name
);

struct BNScriptingProvider** BNGetScriptingProviderList(
	uint64_t* count
);

char* BNGetScriptingProviderName(
	struct BNScriptingProvider* provider
);

struct BNSecretsProvider* BNGetSecretsProviderByName(
	char const* name
);

char* BNGetSecretsProviderData(
	struct BNSecretsProvider* provider,
	char const* key
);

struct BNSecretsProvider** BNGetSecretsProviderList(
	uint64_t* count
);

char* BNGetSecretsProviderName(
	struct BNSecretsProvider* provider
);

struct BNSection* BNGetSectionByName(
	struct BNBinaryView* view,
	char const* name
);

struct BNSection** BNGetSections(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNSection** BNGetSectionsAt(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

struct BNSegment* BNGetSegmentAt(
	struct BNBinaryView* view,
	uint64_t addr
);

struct BNSegment** BNGetSegments(
	struct BNBinaryView* view,
	uint64_t* count
);

char* BNGetSerialNumber(

);

char* BNGetSettingsFileName(

);

uint64_t* BNGetSizesReferenced(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t offset,
	uint64_t* count
);

struct BNSnapshot** BNGetSnapshotChildren(
	struct BNSnapshot* snapshot,
	uint64_t* count
);

void BNGetSnapshotData(
	struct BNFileMetadata* file,
	struct BNKeyValueStore* data,
	struct BNKeyValueStore* cache,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t current, uint64_t total)
);

struct BNDatabase* BNGetSnapshotDatabase(
	struct BNSnapshot* snapshot
);

struct BNDataBuffer* BNGetSnapshotFileContents(
	struct BNSnapshot* snapshot
);

struct BNDataBuffer* BNGetSnapshotFileContentsHash(
	struct BNSnapshot* snapshot
);

struct BNSnapshot* BNGetSnapshotFirstParent(
	struct BNSnapshot* snapshot
);

int64_t BNGetSnapshotId(
	struct BNSnapshot* snapshot
);

char* BNGetSnapshotName(
	struct BNSnapshot* snapshot
);

struct BNSnapshot** BNGetSnapshotParents(
	struct BNSnapshot* snapshot,
	uint64_t* count
);

struct BNUndoEntry* BNGetSnapshotUndoEntries(
	struct BNSnapshot* snapshot,
	uint64_t* count
);

struct BNUndoEntry* BNGetSnapshotUndoEntriesWithProgress(
	struct BNSnapshot* snapshot,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t progress, uint64_t total),
	uint64_t* count
);

struct BNVariable* BNGetSplitVariables(
	struct BNFunction* func,
	uint64_t* count
);

int64_t BNGetStackAdjustmentForVariables(
	struct BNCallingConvention* cc,
	struct BNVariable* paramVars,
	struct BNType** paramTypes,
	uint64_t paramCount
);

struct BNRegisterValue BNGetStackContentsAfterInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	int64_t offset,
	uint64_t size
);

struct BNRegisterValue BNGetStackContentsAtInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	int64_t offset,
	uint64_t size
);

struct BNVariableNameAndType* BNGetStackLayout(
	struct BNFunction* func,
	uint64_t* count
);

bool BNGetStackVariableAtFrameOffset(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	int64_t offset,
	struct BNVariableNameAndType* var
);

struct BNStackVariableReference* BNGetStackVariablesReferencedByInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNStackVariableReference* BNGetStackVariablesReferencedByInstructionIfAvailable(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

uint64_t BNGetStartOffset(
	struct BNBinaryView* view
);

bool BNGetStringAtAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNStringReference* strRef
);

struct BNStringReference* BNGetStrings(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNStringReference* BNGetStringsInRange(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t len,
	uint64_t* count
);

uint64_t BNGetStructureAlignment(
	struct BNStructure* s
);

uint64_t BNGetStructureBuilderAlignment(
	struct BNStructureBuilder* s
);

struct BNStructureMember* BNGetStructureBuilderMemberAtOffset(
	struct BNStructureBuilder* s,
	int64_t offset,
	uint64_t* idx
);

struct BNStructureMember* BNGetStructureBuilderMemberByName(
	struct BNStructureBuilder* s,
	char const* name
);

struct BNStructureMember* BNGetStructureBuilderMembers(
	struct BNStructureBuilder* s,
	uint64_t* count
);

int64_t BNGetStructureBuilderPointerOffset(
	struct BNStructureBuilder* s
);

enum BNStructureVariant BNGetStructureBuilderType(
	struct BNStructureBuilder* s
);

uint64_t BNGetStructureBuilderWidth(
	struct BNStructureBuilder* s
);

struct BNStructureMember* BNGetStructureMemberAtOffset(
	struct BNStructure* s,
	int64_t offset,
	uint64_t* idx
);

struct BNStructureMember* BNGetStructureMemberByName(
	struct BNStructure* s,
	char const* name
);

struct BNStructureMember* BNGetStructureMembers(
	struct BNStructure* s,
	uint64_t* count
);

struct BNInheritedStructureMember* BNGetStructureMembersIncludingInherited(
	struct BNStructure* s,
	struct BNBinaryView* view,
	uint64_t* count
);

int64_t BNGetStructurePointerOffset(
	struct BNStructure* s
);

enum BNStructureVariant BNGetStructureType(
	struct BNStructure* s
);

uint64_t BNGetStructureWidth(
	struct BNStructure* s
);

uint64_t BNGetSymbolAddress(
	struct BNSymbol* sym
);

enum BNSymbolBinding BNGetSymbolBinding(
	struct BNSymbol* sym
);

struct BNSymbol* BNGetSymbolByAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNNameSpace* nameSpace
);

struct BNSymbol* BNGetSymbolByRawName(
	struct BNBinaryView* view,
	char const* name,
	struct BNNameSpace* nameSpace
);

char* BNGetSymbolFullName(
	struct BNSymbol* sym
);

struct BNNameSpace BNGetSymbolNameSpace(
	struct BNSymbol* sym
);

uint64_t BNGetSymbolOrdinal(
	struct BNSymbol* sym
);

void* BNGetSymbolRawBytes(
	struct BNSymbol* sym,
	uint64_t* count
);

char* BNGetSymbolRawName(
	struct BNSymbol* sym
);

char* BNGetSymbolShortName(
	struct BNSymbol* sym
);

enum BNSymbolType BNGetSymbolType(
	struct BNSymbol* sym
);

struct BNSymbol** BNGetSymbols(
	struct BNBinaryView* view,
	uint64_t* count,
	struct BNNameSpace* nameSpace
);

struct BNSymbol** BNGetSymbolsByName(
	struct BNBinaryView* view,
	char const* name,
	uint64_t* count,
	struct BNNameSpace* nameSpace
);

struct BNSymbol** BNGetSymbolsByRawName(
	struct BNBinaryView* view,
	char const* name,
	uint64_t* count,
	struct BNNameSpace* nameSpace
);

struct BNSymbol** BNGetSymbolsInRange(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t len,
	uint64_t* count,
	struct BNNameSpace* nameSpace
);

struct BNSymbol** BNGetSymbolsOfType(
	struct BNBinaryView* view,
	BNSymbolType type,
	uint64_t* count,
	struct BNNameSpace* nameSpace
);

struct BNSymbol** BNGetSymbolsOfTypeInRange(
	struct BNBinaryView* view,
	BNSymbolType type,
	uint64_t start,
	uint64_t len,
	uint64_t* count,
	struct BNNameSpace* nameSpace
);

struct BNTag* BNGetTag(
	struct BNBinaryView* view,
	char const* tagId
);

struct BNTagReference* BNGetTagReferencesOfType(
	struct BNBinaryView* view,
	struct BNTagType* tagType,
	uint64_t* count
);

uint64_t BNGetTagReferencesOfTypeCount(
	struct BNBinaryView* view,
	struct BNTagType* tagType
);

struct BNTagType* BNGetTagType(
	struct BNBinaryView* view,
	char const* name
);

struct BNTagType* BNGetTagTypeById(
	struct BNBinaryView* view,
	char const* id
);

struct BNTagType* BNGetTagTypeByIdWithType(
	struct BNBinaryView* view,
	char const* id,
	BNTagTypeType type
);

struct BNTagType* BNGetTagTypeWithType(
	struct BNBinaryView* view,
	char const* name,
	BNTagTypeType type
);

struct BNTagType** BNGetTagTypes(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNDataBuffer* BNGetTemporaryFileContents(
	struct BNTemporaryFile* file
);

char* BNGetTemporaryFilePath(
	struct BNTemporaryFile* file
);

bool BNGetTextLineInput(
	char** result,
	char const* prompt,
	char const* title
);

uint64_t BNGetTimeSinceLastUpdateCheck(

);

struct BNTransform* BNGetTransformByName(
	char const* name
);

char* BNGetTransformGroup(
	struct BNTransform* xform
);

char* BNGetTransformLongName(
	struct BNTransform* xform
);

char* BNGetTransformName(
	struct BNTransform* xform
);

struct BNTransformParameterInfo* BNGetTransformParameterList(
	struct BNTransform* xform,
	uint64_t* count
);

enum BNTransformType BNGetTransformType(
	struct BNTransform* xform
);

struct BNTransform** BNGetTransformTypeList(
	uint64_t* count
);

uint64_t BNGetTypeAlignment(
	struct BNType* type
);

char* BNGetTypeAlternateName(
	struct BNType* type
);

char* BNGetTypeAndName(
	struct BNType* type,
	struct BNQualifiedName* name,
	BNTokenEscapingType escaping
);

uint64_t BNGetTypeBuilderAlignment(
	struct BNTypeBuilder* type
);

char* BNGetTypeBuilderAlternateName(
	struct BNTypeBuilder* type
);

struct BNCallingConventionWithConfidence BNGetTypeBuilderCallingConvention(
	struct BNTypeBuilder* type
);

struct BNTypeWithConfidence BNGetTypeBuilderChildType(
	struct BNTypeBuilder* type
);

enum BNTypeClass BNGetTypeBuilderClass(
	struct BNTypeBuilder* type
);

uint64_t BNGetTypeBuilderElementCount(
	struct BNTypeBuilder* type
);

struct BNEnumeration* BNGetTypeBuilderEnumeration(
	struct BNTypeBuilder* type
);

struct BNNamedTypeReference* BNGetTypeBuilderNamedTypeReference(
	struct BNTypeBuilder* type
);

uint64_t BNGetTypeBuilderOffset(
	struct BNTypeBuilder* type
);

struct BNFunctionParameter* BNGetTypeBuilderParameters(
	struct BNTypeBuilder* type,
	uint64_t* count
);

struct BNOffsetWithConfidence BNGetTypeBuilderStackAdjustment(
	struct BNTypeBuilder* type
);

char* BNGetTypeBuilderString(
	struct BNTypeBuilder* type,
	struct BNPlatform* platform
);

char* BNGetTypeBuilderStringAfterName(
	struct BNTypeBuilder* type,
	struct BNPlatform* platform
);

char* BNGetTypeBuilderStringBeforeName(
	struct BNTypeBuilder* type,
	struct BNPlatform* platform
);

struct BNStructure* BNGetTypeBuilderStructure(
	struct BNTypeBuilder* type
);

struct BNInstructionTextToken* BNGetTypeBuilderTokens(
	struct BNTypeBuilder* type,
	struct BNPlatform* platform,
	uint8_t baseConfidence,
	uint64_t* count
);

struct BNInstructionTextToken* BNGetTypeBuilderTokensAfterName(
	struct BNTypeBuilder* type,
	struct BNPlatform* platform,
	uint8_t baseConfidence,
	uint64_t* count
);

struct BNInstructionTextToken* BNGetTypeBuilderTokensBeforeName(
	struct BNTypeBuilder* type,
	struct BNPlatform* platform,
	uint8_t baseConfidence,
	uint64_t* count
);

char* BNGetTypeBuilderTypeAndName(
	struct BNTypeBuilder* type,
	struct BNQualifiedName* name
);

uint64_t BNGetTypeBuilderWidth(
	struct BNTypeBuilder* type
);

struct BNCallingConventionWithConfidence BNGetTypeCallingConvention(
	struct BNType* type
);

enum BNTypeClass BNGetTypeClass(
	struct BNType* type
);

uint64_t BNGetTypeElementCount(
	struct BNType* type
);

struct BNEnumeration* BNGetTypeEnumeration(
	struct BNType* type
);

char** BNGetTypeLibraryAlternateNames(
	struct BNTypeLibrary* lib,
	uint64_t* count
);

struct BNArchitecture* BNGetTypeLibraryArchitecture(
	struct BNTypeLibrary* lib
);

char* BNGetTypeLibraryDependencyName(
	struct BNTypeLibrary* lib
);

char* BNGetTypeLibraryGuid(
	struct BNTypeLibrary* lib
);

char* BNGetTypeLibraryName(
	struct BNTypeLibrary* lib
);

struct BNType* BNGetTypeLibraryNamedObject(
	struct BNTypeLibrary* lib,
	struct BNQualifiedName* name
);

struct BNQualifiedNameAndType* BNGetTypeLibraryNamedObjects(
	struct BNTypeLibrary* lib,
	uint64_t* count
);

struct BNType* BNGetTypeLibraryNamedType(
	struct BNTypeLibrary* lib,
	struct BNQualifiedName* name
);

struct BNQualifiedNameAndType* BNGetTypeLibraryNamedTypes(
	struct BNTypeLibrary* lib,
	uint64_t* count
);

char** BNGetTypeLibraryPlatforms(
	struct BNTypeLibrary* lib,
	uint64_t* count
);

struct BNTypeDefinitionLine* BNGetTypeLines(
	struct BNType* type,
	struct BNBinaryView* data,
	char const* name,
	int32_t lineWidth,
	bool collapsed,
	BNTokenEscapingType escaping,
	uint64_t* count
);

struct BNNamedTypeReference* BNGetTypeNamedTypeReference(
	struct BNType* type
);

uint64_t BNGetTypeOffset(
	struct BNType* type
);

struct BNFunctionParameter* BNGetTypeParameters(
	struct BNType* type,
	uint64_t* count
);

struct BNTypeParser* BNGetTypeParserByName(
	char const* name
);

struct BNTypeParser** BNGetTypeParserList(
	uint64_t* count
);

char* BNGetTypeParserName(
	struct BNTypeParser* parser
);

bool BNGetTypeParserOptionText(
	struct BNTypeParser* parser,
	BNTypeParserOption option,
	char const* value,
	char** result
);

struct BNTypePrinter* BNGetTypePrinterByName(
	char const* name
);

struct BNTypePrinter** BNGetTypePrinterList(
	uint64_t* count
);

char* BNGetTypePrinterName(
	struct BNTypePrinter* printer
);

bool BNGetTypePrinterTypeLines(
	struct BNTypePrinter* printer,
	struct BNType* type,
	struct BNBinaryView* data,
	struct BNQualifiedName* name,
	int32_t lineWidth,
	bool collapsed,
	BNTokenEscapingType escaping,
	struct BNTypeDefinitionLine** result,
	uint64_t* resultCount
);

bool BNGetTypePrinterTypeString(
	struct BNTypePrinter* printer,
	struct BNType* type,
	struct BNPlatform* platform,
	struct BNQualifiedName* name,
	BNTokenEscapingType escaping,
	char** result
);

bool BNGetTypePrinterTypeStringAfterName(
	struct BNTypePrinter* printer,
	struct BNType* type,
	struct BNPlatform* platform,
	BNTokenEscapingType escaping,
	char** result
);

bool BNGetTypePrinterTypeStringBeforeName(
	struct BNTypePrinter* printer,
	struct BNType* type,
	struct BNPlatform* platform,
	BNTokenEscapingType escaping,
	char** result
);

bool BNGetTypePrinterTypeTokens(
	struct BNTypePrinter* printer,
	struct BNType* type,
	struct BNPlatform* platform,
	struct BNQualifiedName* name,
	uint8_t baseConfidence,
	BNTokenEscapingType escaping,
	struct BNInstructionTextToken** result,
	uint64_t* resultCount
);

bool BNGetTypePrinterTypeTokensAfterName(
	struct BNTypePrinter* printer,
	struct BNType* type,
	struct BNPlatform* platform,
	uint8_t baseConfidence,
	struct BNType* parentType,
	BNTokenEscapingType escaping,
	struct BNInstructionTextToken** result,
	uint64_t* resultCount
);

bool BNGetTypePrinterTypeTokensBeforeName(
	struct BNTypePrinter* printer,
	struct BNType* type,
	struct BNPlatform* platform,
	uint8_t baseConfidence,
	struct BNType* parentType,
	BNTokenEscapingType escaping,
	struct BNInstructionTextToken** result,
	uint64_t* resultCount
);

enum BNNamedTypeReferenceClass BNGetTypeReferenceBuilderClass(
	struct BNNamedTypeReferenceBuilder* nt
);

char* BNGetTypeReferenceBuilderId(
	struct BNNamedTypeReferenceBuilder* nt
);

struct BNQualifiedName BNGetTypeReferenceBuilderName(
	struct BNNamedTypeReferenceBuilder* nt
);

enum BNNamedTypeReferenceClass BNGetTypeReferenceClass(
	struct BNNamedTypeReference* nt
);

char* BNGetTypeReferenceId(
	struct BNNamedTypeReference* nt
);

struct BNQualifiedName BNGetTypeReferenceName(
	struct BNNamedTypeReference* nt
);

struct BNTypeReferenceSource* BNGetTypeReferencesForType(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t* count
);

struct BNTypeReferenceSource* BNGetTypeReferencesForTypeField(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t offset,
	uint64_t* count
);

struct BNOffsetWithConfidence BNGetTypeStackAdjustment(
	struct BNType* type
);

char* BNGetTypeString(
	struct BNType* type,
	struct BNPlatform* platform,
	BNTokenEscapingType escaping
);

char* BNGetTypeStringAfterName(
	struct BNType* type,
	struct BNPlatform* platform,
	BNTokenEscapingType escaping
);

char* BNGetTypeStringBeforeName(
	struct BNType* type,
	struct BNPlatform* platform,
	BNTokenEscapingType escaping
);

struct BNStructure* BNGetTypeStructure(
	struct BNType* type
);

struct BNInstructionTextToken* BNGetTypeTokens(
	struct BNType* type,
	struct BNPlatform* platform,
	uint8_t baseConfidence,
	BNTokenEscapingType escaping,
	uint64_t* count
);

struct BNInstructionTextToken* BNGetTypeTokensAfterName(
	struct BNType* type,
	struct BNPlatform* platform,
	uint8_t baseConfidence,
	BNTokenEscapingType escaping,
	uint64_t* count
);

struct BNInstructionTextToken* BNGetTypeTokensBeforeName(
	struct BNType* type,
	struct BNPlatform* platform,
	uint8_t baseConfidence,
	BNTokenEscapingType escaping,
	uint64_t* count
);

uint64_t BNGetTypeWidth(
	struct BNType* type
);

struct BNTypeWithConfidence* BNGetTypesReferenced(
	struct BNBinaryView* view,
	struct BNQualifiedName* type,
	uint64_t offset,
	uint64_t* count
);

struct BNUndoEntry* BNGetUndoEntries(
	struct BNFileMetadata* file,
	uint64_t* count
);

char* BNGetUniqueIdentifierString(

);

char** BNGetUniqueSectionNames(
	struct BNBinaryView* view,
	char const** names,
	uint64_t count
);

uint64_t* BNGetUnresolvedIndirectBranches(
	struct BNFunction* func,
	uint64_t* count
);

struct BNFlowGraph* BNGetUnresolvedStackAdjustmentGraph(
	struct BNFunction* func
);

struct BNUpdateVersion* BNGetUpdateChannelVersions(
	char const* channel,
	uint64_t* count,
	char** errors
);

struct BNUpdateChannel* BNGetUpdateChannels(
	uint64_t* count,
	char** errors
);

struct BNTagReference* BNGetUserAddressTagReferences(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTag** BNGetUserAddressTags(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t* count
);

struct BNTagReference* BNGetUserAddressTagsInRange(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t start,
	uint64_t end,
	uint64_t* count
);

struct BNTag** BNGetUserAddressTagsOfType(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTagType* tagType,
	uint64_t* count
);

struct BNTagReference* BNGetUserDataTagReferences(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNTag** BNGetUserDataTags(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

struct BNTagReference* BNGetUserDataTagsInRange(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t end,
	uint64_t* count
);

struct BNTag** BNGetUserDataTagsOfType(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTagType* tagType,
	uint64_t* count
);

char* BNGetUserDirectory(

);

char* BNGetUserEmail(
	struct BNUser* user
);

struct BNTagReference* BNGetUserFunctionTagReferences(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTag** BNGetUserFunctionTags(
	struct BNFunction* func,
	uint64_t* count
);

struct BNTag** BNGetUserFunctionTagsOfType(
	struct BNFunction* func,
	struct BNTagType* tagType,
	uint64_t* count
);

char* BNGetUserId(
	struct BNUser* user
);

char* BNGetUserName(
	struct BNUser* user
);

char* BNGetUserPluginDirectory(

);

struct BNUser** BNGetUsers(
	struct BNFileMetadata* file,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommands(
	struct BNBinaryView* view,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommandsForAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommandsForFunction(
	struct BNBinaryView* view,
	struct BNFunction* func,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommandsForHighLevelILFunction(
	struct BNBinaryView* view,
	struct BNHighLevelILFunction* func,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommandsForHighLevelILInstruction(
	struct BNBinaryView* view,
	struct BNHighLevelILFunction* func,
	uint64_t instr,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommandsForLowLevelILFunction(
	struct BNBinaryView* view,
	struct BNLowLevelILFunction* func,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommandsForLowLevelILInstruction(
	struct BNBinaryView* view,
	struct BNLowLevelILFunction* func,
	uint64_t instr,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommandsForMediumLevelILFunction(
	struct BNBinaryView* view,
	struct BNMediumLevelILFunction* func,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommandsForMediumLevelILInstruction(
	struct BNBinaryView* view,
	struct BNMediumLevelILFunction* func,
	uint64_t instr,
	uint64_t* count
);

struct BNPluginCommand* BNGetValidPluginCommandsForRange(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t len,
	uint64_t* count
);

char* BNGetVariableName(
	struct BNFunction* func,
	struct BNVariable* var
);

char* BNGetVariableNameOrDefault(
	struct BNFunction* func,
	struct BNVariable* var
);

struct BNTypeWithConfidence BNGetVariableType(
	struct BNFunction* func,
	struct BNVariable* var
);

struct BNVariable* BNGetVariablesForParameters(
	struct BNCallingConvention* cc,
	struct BNFunctionParameter* params,
	uint64_t paramCount,
	uint32_t const* intArgs,
	uint64_t intArgCount,
	uint64_t* count
);

struct BNVariable* BNGetVariablesForParametersDefaultIntArgs(
	struct BNCallingConvention* cc,
	struct BNFunctionParameter* params,
	uint64_t paramCount,
	uint64_t* count
);

struct BNVersionInfo BNGetVersionInfo(

);

char* BNGetVersionString(

);

int32_t BNGetVerticalFlowGraphNodeMargin(
	struct BNFlowGraph* graph
);

uint64_t BNGetViewAddressSize(
	struct BNBinaryView* view
);

struct BNBinaryView* BNGetViewForFlowGraph(
	struct BNFlowGraph* graph
);

uint64_t BNGetViewLength(
	struct BNBinaryView* view
);

char* BNGetViewType(
	struct BNBinaryView* view
);

struct BNSymbol** BNGetVisibleSymbols(
	struct BNBinaryView* view,
	uint64_t* count,
	struct BNNameSpace* nameSpace
);

struct BNWebsocketProvider* BNGetWebsocketProviderByName(
	char const* name
);

struct BNWebsocketProvider** BNGetWebsocketProviderList(
	uint64_t* count
);

char* BNGetWebsocketProviderName(
	struct BNWebsocketProvider* provider
);

uint64_t BNGetWorkerThreadCount(

);

struct BNWorkflow* BNGetWorkflowForBinaryView(
	struct BNBinaryView* view
);

struct BNWorkflow* BNGetWorkflowForFunction(
	struct BNFunction* func
);

struct BNWorkflow** BNGetWorkflowList(
	uint64_t* count
);

char* BNGetWorkflowName(
	struct BNWorkflow* workflow
);

uint64_t BNGetWriterPosition(
	struct BNBinaryWriter* stream
);

bool BNHasDataVariables(
	struct BNBinaryView* view
);

bool BNHasFunctions(
	struct BNBinaryView* view
);

bool BNHasInitialAnalysis(
	struct BNBinaryView* view
);

bool BNHasSymbols(
	struct BNBinaryView* view
);

bool BNHasUnresolvedIndirectBranches(
	struct BNFunction* func
);

uint64_t BNHighLevelILAddExpr(
	struct BNHighLevelILFunction* func,
	BNHighLevelILOperation operation,
	uint64_t size,
	uint64_t a,
	uint64_t b,
	uint64_t c,
	uint64_t d,
	uint64_t e
);

uint64_t BNHighLevelILAddExprWithLocation(
	struct BNHighLevelILFunction* func,
	BNHighLevelILOperation operation,
	uint64_t addr,
	uint32_t sourceOperand,
	uint64_t size,
	uint64_t a,
	uint64_t b,
	uint64_t c,
	uint64_t d,
	uint64_t e
);

uint64_t BNHighLevelILAddOperandList(
	struct BNHighLevelILFunction* func,
	uint64_t* operands,
	uint64_t count
);

bool BNHighLevelILExprEqual(
	struct BNHighLevelILFunction* leftFunc,
	uint64_t leftExpr,
	struct BNHighLevelILFunction* rightFunc,
	uint64_t rightExpr
);

bool BNHighLevelILExprLessThan(
	struct BNHighLevelILFunction* leftFunc,
	uint64_t leftExpr,
	struct BNHighLevelILFunction* rightFunc,
	uint64_t rightExpr
);

void BNHighLevelILFreeOperandList(
	uint64_t* operands
);

uint64_t BNHighLevelILGetCurrentAddress(
	struct BNHighLevelILFunction* func
);

uint64_t* BNHighLevelILGetOperandList(
	struct BNHighLevelILFunction* func,
	uint64_t expr,
	uint64_t operand,
	uint64_t* count
);

void BNHighLevelILSetCurrentAddress(
	struct BNHighLevelILFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

struct BNSymbol* BNImportedFunctionFromImportAddressSymbol(
	struct BNSymbol* sym,
	uint64_t addr
);

bool BNInitCorePlugins(

);

struct BNDownloadInstance* BNInitDownloadInstance(
	struct BNDownloadProvider* provider,
	struct BNDownloadInstanceCallbacks* callbacks
);

bool BNInitPlugins(
	bool allowUserPlugins
);

void BNInitRepoPlugins(

);

struct BNScriptingInstance* BNInitScriptingInstance(
	struct BNScriptingProvider* provider,
	struct BNScriptingInstanceCallbacks* callbacks
);

void BNInitUserPlugins(

);

struct BNWebsocketClient* BNInitWebsocketClient(
	struct BNWebsocketProvider* provider,
	struct BNWebsocketClientCallbacks* callbacks
);

uint64_t BNInsertViewBuffer(
	struct BNBinaryView* view,
	uint64_t offset,
	struct BNDataBuffer* data
);

uint64_t BNInsertViewData(
	struct BNBinaryView* view,
	uint64_t offset,
	void const* data,
	uint64_t len
);

void BNInstallPendingUpdate(
	char** errors
);

bool BNInstallScriptingProviderModules(
	struct BNScriptingProvider* provider,
	char const* modules
);

bool BNInvertBranch(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNIsAlwaysBranchPatchAvailable(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNIsAnalysisChanged(
	struct BNFileMetadata* file
);

bool BNIsAnalysisTypeAutoDefined(
	struct BNBinaryView* view,
	struct BNQualifiedName* name
);

bool BNIsApplyingDebugInfo(
	struct BNBinaryView* view
);

bool BNIsArchitectureAlwaysBranchPatchAvailable(
	struct BNArchitecture* arch,
	uint8_t const* data,
	uint64_t addr,
	uint64_t len
);

bool BNIsArchitectureGlobalRegister(
	struct BNArchitecture* arch,
	uint32_t reg
);

bool BNIsArchitectureInvertBranchPatchAvailable(
	struct BNArchitecture* arch,
	uint8_t const* data,
	uint64_t addr,
	uint64_t len
);

bool BNIsArchitectureNeverBranchPatchAvailable(
	struct BNArchitecture* arch,
	uint8_t const* data,
	uint64_t addr,
	uint64_t len
);

bool BNIsArchitectureSkipAndReturnValuePatchAvailable(
	struct BNArchitecture* arch,
	uint8_t const* data,
	uint64_t addr,
	uint64_t len
);

bool BNIsArchitectureSkipAndReturnZeroPatchAvailable(
	struct BNArchitecture* arch,
	uint8_t const* data,
	uint64_t addr,
	uint64_t len
);

bool BNIsArchitectureSystemRegister(
	struct BNArchitecture* arch,
	uint32_t reg
);

bool BNIsBackedByDatabase(
	struct BNFileMetadata* file,
	char const* binaryViewType
);

bool BNIsBackgroundTaskCancelled(
	struct BNBackgroundTask* task
);

bool BNIsBackgroundTaskFinished(
	struct BNBackgroundTask* task
);

bool BNIsBinaryViewTypeDeprecated(
	struct BNBinaryViewType* type
);

bool BNIsBinaryViewTypeValidForData(
	struct BNBinaryViewType* type,
	struct BNBinaryView* data
);

bool BNIsCallInstruction(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNIsDebugInfoParserValidForView(
	struct BNDebugInfoParser* parser,
	struct BNBinaryView* view
);

bool BNIsDisassemblySettingsOptionSet(
	struct BNDisassemblySettings* settings,
	BNDisassemblyOption option
);

bool BNIsEligibleForHeuristics(
	struct BNCallingConvention* cc
);

bool BNIsEndOfFile(
	struct BNBinaryReader* stream
);

bool BNIsEnterpriseServerAuthenticated(

);

bool BNIsEnterpriseServerConnected(

);

bool BNIsEnterpriseServerFloatingLicense(

);

bool BNIsEnterpriseServerInitialized(

);

bool BNIsEnterpriseServerLicenseStillActivated(

);

bool BNIsExecutableView(
	struct BNBinaryView* view
);

bool BNIsFileModified(
	struct BNFileMetadata* file
);

bool BNIsFlowGraphLayoutComplete(
	struct BNFlowGraph* graph
);

bool BNIsFlowGraphLayoutRequestComplete(
	struct BNFlowGraphLayoutRequest* layout
);

bool BNIsFlowGraphOptionSet(
	struct BNFlowGraph* graph,
	BNFlowGraphOption option
);

bool BNIsFunctionAnalysisSkipped(
	struct BNFunction* func
);

struct BNBoolWithConfidence BNIsFunctionInlinedDuringAnalysis(
	struct BNFunction* func
);

bool BNIsFunctionTooLarge(
	struct BNFunction* func
);

bool BNIsFunctionUpdateNeeded(
	struct BNFunction* func
);

bool BNIsGNU3MangledString(
	char const* mangledName
);

bool BNIsHighLevelILBasicBlock(
	struct BNBasicBlock* block
);

bool BNIsHighLevelILFlowGraph(
	struct BNFlowGraph* graph
);

bool BNIsHighLevelILSSAVarLive(
	struct BNHighLevelILFunction* func,
	struct BNVariable* var,
	uint64_t version
);

bool BNIsHighLevelILSSAVarLiveAt(
	struct BNHighLevelILFunction* func,
	struct BNVariable* var,
	uint64_t const version,
	uint64_t const instr
);

bool BNIsHighLevelILVarLiveAt(
	struct BNHighLevelILFunction* func,
	struct BNVariable* var,
	uint64_t const instr
);

bool BNIsILBasicBlock(
	struct BNBasicBlock* block
);

bool BNIsILDisassemblyTextRenderer(
	struct BNDisassemblyTextRenderer* renderer
);

bool BNIsILFlowGraph(
	struct BNFlowGraph* graph
);

bool BNIsIntegerToken(
	BNInstructionTextTokenType type
);

bool BNIsInvertBranchPatchAvailable(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNIsKeyValueStoreEmpty(
	struct BNKeyValueStore* store
);

bool BNIsLicenseValidated(

);

bool BNIsLinearViewCursorAfterEnd(
	struct BNLinearViewCursor* cursor
);

bool BNIsLinearViewCursorBeforeBegin(
	struct BNLinearViewCursor* cursor
);

bool BNIsLowLevelILBasicBlock(
	struct BNBasicBlock* block
);

bool BNIsLowLevelILFlowGraph(
	struct BNFlowGraph* graph
);

bool BNIsMainThread(

);

bool BNIsMainThreadActionDone(
	struct BNMainThreadAction* action
);

bool BNIsMediumLevelILBasicBlock(
	struct BNBasicBlock* block
);

bool BNIsMediumLevelILFlowGraph(
	struct BNFlowGraph* graph
);

bool BNIsMediumLevelILSSAVarLive(
	struct BNMediumLevelILFunction* func,
	struct BNVariable* var,
	uint64_t version
);

bool BNIsNeverBranchPatchAvailable(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNIsNodeValidForFlowGraph(
	struct BNFlowGraph* graph,
	struct BNFlowGraphNode* node
);

bool BNIsOffsetBackedByFile(
	struct BNBinaryView* view,
	uint64_t offset
);

bool BNIsOffsetCodeSemantics(
	struct BNBinaryView* view,
	uint64_t offset
);

bool BNIsOffsetExecutable(
	struct BNBinaryView* view,
	uint64_t offset
);

bool BNIsOffsetExternSemantics(
	struct BNBinaryView* view,
	uint64_t offset
);

bool BNIsOffsetReadable(
	struct BNBinaryView* view,
	uint64_t offset
);

bool BNIsOffsetWritable(
	struct BNBinaryView* view,
	uint64_t offset
);

bool BNIsOffsetWritableSemantics(
	struct BNBinaryView* view,
	uint64_t offset
);

bool BNIsPathDirectory(
	char const* path
);

bool BNIsPathRegularFile(
	char const* path
);

bool BNIsPluginsEnabled(

);

bool BNIsProjectOpen(
	struct BNFileMetadata* file
);

bool BNIsRelocatable(
	struct BNBinaryView* view
);

bool BNIsSaveSettingsOptionSet(
	struct BNSaveSettings* settings,
	BNSaveOption option
);

bool BNIsShutdownRequested(

);

bool BNIsSkipAndReturnValuePatchAvailable(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNIsSkipAndReturnZeroPatchAvailable(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr
);

bool BNIsSnapshotAutoSave(
	struct BNSnapshot* snapshot
);

bool BNIsSnapshotDataAppliedWithoutError(
	struct BNFileMetadata* view
);

bool BNIsStackAdjustedOnReturn(
	struct BNCallingConvention* cc
);

bool BNIsStackReservedForArgumentRegisters(
	struct BNCallingConvention* cc
);

bool BNIsStructureBuilderPacked(
	struct BNStructureBuilder* s
);

bool BNIsStructureBuilderUnion(
	struct BNStructureBuilder* s
);

bool BNIsStructurePacked(
	struct BNStructure* s
);

bool BNIsStructureUnion(
	struct BNStructure* s
);

bool BNIsSymbolAutoDefined(
	struct BNSymbol* sym
);

struct BNBoolWithConfidence BNIsTypeBuilderConst(
	struct BNTypeBuilder* type
);

bool BNIsTypeBuilderFloatingPoint(
	struct BNTypeBuilder* type
);

struct BNBoolWithConfidence BNIsTypeBuilderSigned(
	struct BNTypeBuilder* type
);

struct BNBoolWithConfidence BNIsTypeBuilderVolatile(
	struct BNTypeBuilder* type
);

struct BNBoolWithConfidence BNIsTypeConst(
	struct BNType* type
);

bool BNIsTypeFloatingPoint(
	struct BNType* type
);

struct BNBoolWithConfidence BNIsTypeSigned(
	struct BNType* type
);

struct BNBoolWithConfidence BNIsTypeVolatile(
	struct BNType* type
);

bool BNIsUIEnabled(

);

bool BNIsUpdateInstallationPending(

);

bool BNIsValidForData(
	void* ctxt,
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNType* type,
	struct BNTypeContext* typeCtx,
	uint64_t ctxCount
);

bool BNIsValidOffset(
	struct BNBinaryView* view,
	uint64_t offset
);

bool BNIsVariableUserDefined(
	struct BNFunction* func,
	struct BNVariable* var
);

bool BNIsViewModified(
	struct BNBinaryView* view
);

bool BNKeyValueStoreHasValue(
	struct BNKeyValueStore* store,
	char const* name
);

bool BNLinearViewCursorNext(
	struct BNLinearViewCursor* cursor
);

bool BNLinearViewCursorPrevious(
	struct BNLinearViewCursor* cursor
);

int32_t BNLlvmServicesAssemble(
	char const* src,
	int32_t dialect,
	char const* triplet,
	int32_t codeModel,
	int32_t relocMode,
	char** outBytes,
	int32_t* outBytesLen,
	char** err,
	int32_t* errLen
);

void BNLlvmServicesAssembleFree(
	char* outBytes,
	char* err
);

void BNLlvmServicesInit(

);

bool BNLoadScriptingProviderModule(
	struct BNScriptingProvider* provider,
	char const* repository,
	char const* module,
	bool force
);

bool BNLoadSettingsFile(
	struct BNSettings* settings,
	char const* fileName,
	BNSettingsScope scope,
	struct BNBinaryView* view
);

struct BNTypeLibrary* BNLoadTypeLibraryFromFile(
	char const* path
);

void BNLog(
	BNLogLevel level,
	...
);

void BNLogAlert(
	...
);

struct BNLogger* BNLogCreateLogger(
	char const* loggerName,
	uint64_t sessionId
);

void BNLogDebug(
	...
);

void BNLogError(
	...
);

struct BNLogger* BNLogGetLogger(
	char const* loggerName,
	uint64_t sessionId
);

char** BNLogGetLoggerNames(
	uint64_t* count
);

void BNLogInfo(
	...
);

void BNLogRegisterLoggerCallback(
	void (* cb)(char const* msg, void* ctxt),
	void* ctxt
);

void BNLogString(
	uint64_t session,
	BNLogLevel level,
	char const* logger_name,
	uint64_t tid,
	char const* str
);

bool BNLogToFile(
	BNLogLevel minimumLevel,
	char const* path,
	bool append
);

void BNLogToStderr(
	BNLogLevel minimumLevel
);

void BNLogToStdout(
	BNLogLevel minimumLevel
);

void BNLogWarn(
	...
);

char* BNLoggerGetName(
	struct BNLogger* logger
);

uint64_t BNLoggerGetSessionId(
	struct BNLogger* logger
);

void BNLoggerLog(
	...
);

void BNLoggerLogString(
	struct BNLogger* logger,
	BNLogLevel level,
	char const* msg
);

bool BNLookupImportedTypePlatform(
	struct BNBinaryView* view,
	struct BNQualifiedName* typeName,
	struct BNPlatform** platform,
	struct BNQualifiedName* resultName
);

struct BNTypeLibrary* BNLookupTypeLibraryByGuid(
	struct BNArchitecture* arch,
	char const* guid
);

struct BNTypeLibrary* BNLookupTypeLibraryByName(
	struct BNArchitecture* arch,
	char const* name
);

uint64_t BNLowLevelILAddExpr(
	struct BNLowLevelILFunction* func,
	BNLowLevelILOperation operation,
	uint64_t size,
	uint32_t flags,
	uint64_t a,
	uint64_t b,
	uint64_t c,
	uint64_t d
);

uint64_t BNLowLevelILAddExprWithLocation(
	struct BNLowLevelILFunction* func,
	uint64_t addr,
	uint32_t sourceOperand,
	BNLowLevelILOperation operation,
	uint64_t size,
	uint32_t flags,
	uint64_t a,
	uint64_t b,
	uint64_t c,
	uint64_t d
);

uint64_t BNLowLevelILAddInstruction(
	struct BNLowLevelILFunction* func,
	uint64_t expr
);

uint64_t BNLowLevelILAddLabelMap(
	struct BNLowLevelILFunction* func,
	uint64_t* values,
	struct BNLowLevelILLabel** labels,
	uint64_t count
);

uint64_t BNLowLevelILAddOperandList(
	struct BNLowLevelILFunction* func,
	uint64_t* operands,
	uint64_t count
);

void BNLowLevelILClearIndirectBranches(
	struct BNLowLevelILFunction* func
);

void BNLowLevelILFreeOperandList(
	uint64_t* operands
);

uint64_t BNLowLevelILGetCurrentAddress(
	struct BNLowLevelILFunction* func
);

uint64_t BNLowLevelILGetInstructionStart(
	struct BNLowLevelILFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

uint64_t* BNLowLevelILGetOperandList(
	struct BNLowLevelILFunction* func,
	uint64_t expr,
	uint64_t operand,
	uint64_t* count
);

uint64_t BNLowLevelILGoto(
	struct BNLowLevelILFunction* func,
	struct BNLowLevelILLabel* label
);

uint64_t BNLowLevelILGotoWithLocation(
	struct BNLowLevelILFunction* func,
	struct BNLowLevelILLabel* label,
	uint64_t addr,
	uint32_t sourceOperand
);

uint64_t BNLowLevelILIf(
	struct BNLowLevelILFunction* func,
	uint64_t op,
	struct BNLowLevelILLabel* t,
	struct BNLowLevelILLabel* f
);

uint64_t BNLowLevelILIfWithLocation(
	struct BNLowLevelILFunction* func,
	uint64_t op,
	struct BNLowLevelILLabel* t,
	struct BNLowLevelILLabel* f,
	uint64_t addr,
	uint32_t sourceOperand
);

void BNLowLevelILInitLabel(
	struct BNLowLevelILLabel* label
);

void BNLowLevelILMarkLabel(
	struct BNLowLevelILFunction* func,
	struct BNLowLevelILLabel* label
);

void BNLowLevelILSetCurrentAddress(
	struct BNLowLevelILFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

void BNLowLevelILSetCurrentSourceBlock(
	struct BNLowLevelILFunction* func,
	struct BNBasicBlock* source
);

void BNLowLevelILSetExprSourceOperand(
	struct BNLowLevelILFunction* func,
	uint64_t expr,
	uint32_t operand
);

void BNLowLevelILSetIndirectBranches(
	struct BNLowLevelILFunction* func,
	struct BNArchitectureAndAddress* branches,
	uint64_t count
);

void BNMarkBasicBlockAsRecentlyUsed(
	struct BNBasicBlock* block
);

void BNMarkCallerUpdatesRequired(
	struct BNFunction* func,
	BNFunctionUpdateType type
);

void BNMarkFileModified(
	struct BNFileMetadata* file
);

void BNMarkFileSaved(
	struct BNFileMetadata* file
);

void BNMarkFunctionAsRecentlyUsed(
	struct BNFunction* func
);

void BNMarkMediumLevelILInstructionForRemoval(
	struct BNMediumLevelILFunction* func,
	uint64_t instr
);

void BNMarkUpdatesRequired(
	struct BNFunction* func,
	BNFunctionUpdateType type
);

char* BNMarkdownToHTML(
	char const* contents
);

uint64_t BNMediumLevelILAddExpr(
	struct BNMediumLevelILFunction* func,
	BNMediumLevelILOperation operation,
	uint64_t size,
	uint64_t a,
	uint64_t b,
	uint64_t c,
	uint64_t d,
	uint64_t e
);

uint64_t BNMediumLevelILAddExprWithLocation(
	struct BNMediumLevelILFunction* func,
	BNMediumLevelILOperation operation,
	uint64_t addr,
	uint32_t sourceOperand,
	uint64_t size,
	uint64_t a,
	uint64_t b,
	uint64_t c,
	uint64_t d,
	uint64_t e
);

uint64_t BNMediumLevelILAddInstruction(
	struct BNMediumLevelILFunction* func,
	uint64_t expr
);

uint64_t BNMediumLevelILAddLabelMap(
	struct BNMediumLevelILFunction* func,
	uint64_t* values,
	struct BNMediumLevelILLabel** labels,
	uint64_t count
);

uint64_t BNMediumLevelILAddOperandList(
	struct BNMediumLevelILFunction* func,
	uint64_t* operands,
	uint64_t count
);

void BNMediumLevelILFreeOperandList(
	uint64_t* operands
);

uint64_t BNMediumLevelILGetCurrentAddress(
	struct BNMediumLevelILFunction* func
);

uint64_t BNMediumLevelILGetInstructionStart(
	struct BNMediumLevelILFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

uint64_t* BNMediumLevelILGetOperandList(
	struct BNMediumLevelILFunction* func,
	uint64_t expr,
	uint64_t operand,
	uint64_t* count
);

uint64_t BNMediumLevelILGoto(
	struct BNMediumLevelILFunction* func,
	struct BNMediumLevelILLabel* label
);

uint64_t BNMediumLevelILGotoWithLocation(
	struct BNMediumLevelILFunction* func,
	struct BNMediumLevelILLabel* label,
	uint64_t addr,
	uint32_t sourceOperand
);

uint64_t BNMediumLevelILIf(
	struct BNMediumLevelILFunction* func,
	uint64_t op,
	struct BNMediumLevelILLabel* t,
	struct BNMediumLevelILLabel* f
);

uint64_t BNMediumLevelILIfWithLocation(
	struct BNMediumLevelILFunction* func,
	uint64_t op,
	struct BNMediumLevelILLabel* t,
	struct BNMediumLevelILLabel* f,
	uint64_t addr,
	uint32_t sourceOperand
);

void BNMediumLevelILInitLabel(
	struct BNMediumLevelILLabel* label
);

void BNMediumLevelILMarkLabel(
	struct BNMediumLevelILFunction* func,
	struct BNMediumLevelILLabel* label
);

void BNMediumLevelILSetCurrentAddress(
	struct BNMediumLevelILFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr
);

void BNMergeVariables(
	struct BNFunction* func,
	struct BNVariable* target,
	struct BNVariable* sources,
	uint64_t sourceCount
);

bool BNMetadataArrayAppend(
	struct BNMetadata* data,
	struct BNMetadata* md
);

struct BNMetadata** BNMetadataGetArray(
	struct BNMetadata* data,
	uint64_t* size
);

bool BNMetadataGetBoolean(
	struct BNMetadata* data
);

bool* BNMetadataGetBooleanList(
	struct BNMetadata* data,
	uint64_t* 
);

double BNMetadataGetDouble(
	struct BNMetadata* data
);

double* BNMetadataGetDoubleList(
	struct BNMetadata* data,
	uint64_t* 
);

struct BNMetadata* BNMetadataGetForIndex(
	struct BNMetadata* data,
	uint64_t index
);

struct BNMetadata* BNMetadataGetForKey(
	struct BNMetadata* data,
	char const* key
);

uint8_t* BNMetadataGetRaw(
	struct BNMetadata* data,
	uint64_t* size
);

int64_t BNMetadataGetSignedInteger(
	struct BNMetadata* data
);

int64_t* BNMetadataGetSignedIntegerList(
	struct BNMetadata* data,
	uint64_t* 
);

char* BNMetadataGetString(
	struct BNMetadata* data
);

char** BNMetadataGetStringList(
	struct BNMetadata* data,
	uint64_t* 
);

enum BNMetadataType BNMetadataGetType(
	struct BNMetadata* data
);

uint64_t BNMetadataGetUnsignedInteger(
	struct BNMetadata* data
);

uint64_t* BNMetadataGetUnsignedIntegerList(
	struct BNMetadata* data,
	uint64_t* 
);

struct BNMetadataValueStore* BNMetadataGetValueStore(
	struct BNMetadata* data
);

bool BNMetadataIsArray(
	struct BNMetadata* data
);

bool BNMetadataIsBoolean(
	struct BNMetadata* data
);

bool BNMetadataIsBooleanList(
	struct BNMetadata* data
);

bool BNMetadataIsDouble(
	struct BNMetadata* data
);

bool BNMetadataIsDoubleList(
	struct BNMetadata* data
);

bool BNMetadataIsEqual(
	struct BNMetadata* lhs,
	struct BNMetadata* rhs
);

bool BNMetadataIsKeyValueStore(
	struct BNMetadata* data
);

bool BNMetadataIsRaw(
	struct BNMetadata* data
);

bool BNMetadataIsSignedInteger(
	struct BNMetadata* data
);

bool BNMetadataIsSignedIntegerList(
	struct BNMetadata* data
);

bool BNMetadataIsString(
	struct BNMetadata* data
);

bool BNMetadataIsStringList(
	struct BNMetadata* data
);

bool BNMetadataIsUnsignedInteger(
	struct BNMetadata* data
);

bool BNMetadataIsUnsignedIntegerList(
	struct BNMetadata* data
);

void BNMetadataRemoveIndex(
	struct BNMetadata* data,
	uint64_t index
);

void BNMetadataRemoveKey(
	struct BNMetadata* data,
	char const* key
);

bool BNMetadataSetValueForKey(
	struct BNMetadata* data,
	char const* key,
	struct BNMetadata* md
);

uint64_t BNMetadataSize(
	struct BNMetadata* data
);

bool BNNavigate(
	struct BNFileMetadata* file,
	char const* view,
	uint64_t offset
);

struct BNActivity* BNNewActivityReference(
	struct BNActivity* activity
);

struct BNAnalysisCompletionEvent* BNNewAnalysisCompletionEventReference(
	struct BNAnalysisCompletionEvent* event
);

struct BNAnalysisContext* BNNewAnalysisContextReference(
	struct BNAnalysisContext* analysisContext
);

struct BNBackgroundTask* BNNewBackgroundTaskReference(
	struct BNBackgroundTask* task
);

struct BNBasicBlock* BNNewBasicBlockReference(
	struct BNBasicBlock* block
);

struct BNCallingConvention* BNNewCallingConventionReference(
	struct BNCallingConvention* cc
);

struct BNComponent* BNNewComponentReference(
	struct BNComponent* component
);

struct BNDataRenderer* BNNewDataRendererReference(
	struct BNDataRenderer* renderer
);

struct BNDatabase* BNNewDatabaseReference(
	struct BNDatabase* database
);

struct BNDebugInfoParser* BNNewDebugInfoParserReference(
	struct BNDebugInfoParser* parser
);

struct BNDebugInfo* BNNewDebugInfoReference(
	struct BNDebugInfo* debugInfo
);

struct BNDisassemblySettings* BNNewDisassemblySettingsReference(
	struct BNDisassemblySettings* settings
);

struct BNDisassemblyTextRenderer* BNNewDisassemblyTextRendererReference(
	struct BNDisassemblyTextRenderer* renderer
);

struct BNDownloadInstance* BNNewDownloadInstanceReference(
	struct BNDownloadInstance* instance
);

struct BNEnumeration* BNNewEnumerationReference(
	struct BNEnumeration* e
);

struct BNFileMetadata* BNNewFileReference(
	struct BNFileMetadata* file
);

struct BNFlowGraphLayoutRequest* BNNewFlowGraphLayoutRequestReference(
	struct BNFlowGraphLayoutRequest* layout
);

struct BNFlowGraphNode* BNNewFlowGraphNodeReference(
	struct BNFlowGraphNode* node
);

struct BNFlowGraph* BNNewFlowGraphReference(
	struct BNFlowGraph* graph
);

struct BNFunction* BNNewFunctionReference(
	struct BNFunction* func
);

struct BNHighLevelILFunction* BNNewHighLevelILFunctionReference(
	struct BNHighLevelILFunction* func
);

struct BNKeyValueStore* BNNewKeyValueStoreReference(
	struct BNKeyValueStore* store
);

struct BNLanguageRepresentationFunction* BNNewLanguageRepresentationFunctionReference(
	struct BNLanguageRepresentationFunction* func
);

struct BNLinearViewCursor* BNNewLinearViewCursorReference(
	struct BNLinearViewCursor* cursor
);

struct BNLinearViewObject* BNNewLinearViewObjectReference(
	struct BNLinearViewObject* obj
);

struct BNLogger* BNNewLoggerReference(
	struct BNLogger* logger
);

struct BNLowLevelILFunction* BNNewLowLevelILFunctionReference(
	struct BNLowLevelILFunction* func
);

struct BNMainThreadAction* BNNewMainThreadActionReference(
	struct BNMainThreadAction* action
);

struct BNMediumLevelILFunction* BNNewMediumLevelILFunctionReference(
	struct BNMediumLevelILFunction* func
);

struct BNMetadata* BNNewMetadataReference(
	struct BNMetadata* data
);

struct BNNamedTypeReference* BNNewNamedTypeReference(
	struct BNNamedTypeReference* nt
);

struct BNPlatform* BNNewPlatformReference(
	struct BNPlatform* platform
);

struct BNRepoPlugin* BNNewPluginReference(
	struct BNRepoPlugin* r
);

struct BNRelocationHandler* BNNewRelocationHandlerReference(
	struct BNRelocationHandler* handler
);

struct BNRelocation* BNNewRelocationReference(
	struct BNRelocation* reloc
);

struct BNReportCollection* BNNewReportCollectionReference(
	struct BNReportCollection* reports
);

struct BNRepositoryManager* BNNewRepositoryManagerReference(
	struct BNRepositoryManager* r
);

struct BNRepository* BNNewRepositoryReference(
	struct BNRepository* r
);

struct BNSaveSettings* BNNewSaveSettingsReference(
	struct BNSaveSettings* settings
);

struct BNScriptingInstance* BNNewScriptingInstanceReference(
	struct BNScriptingInstance* instance
);

struct BNSection* BNNewSectionReference(
	struct BNSection* section
);

struct BNSegment* BNNewSegmentReference(
	struct BNSegment* seg
);

struct BNSettings* BNNewSettingsReference(
	struct BNSettings* settings
);

struct BNSnapshot* BNNewSnapshotReference(
	struct BNSnapshot* snapshot
);

struct BNStructure* BNNewStructureReference(
	struct BNStructure* s
);

struct BNSymbol* BNNewSymbolReference(
	struct BNSymbol* sym
);

struct BNTag* BNNewTagReference(
	struct BNTag* tag
);

struct BNTagType* BNNewTagTypeReference(
	struct BNTagType* tagType
);

struct BNTemporaryFile* BNNewTemporaryFileReference(
	struct BNTemporaryFile* file
);

struct BNTypeLibrary* BNNewTypeLibrary(
	struct BNArchitecture* arch,
	char const* name
);

struct BNTypeLibrary* BNNewTypeLibraryReference(
	struct BNTypeLibrary* lib
);

struct BNType* BNNewTypeReference(
	struct BNType* type
);

struct BNUser* BNNewUserReference(
	struct BNUser* user
);

struct BNBinaryView* BNNewViewReference(
	struct BNBinaryView* view
);

struct BNWebsocketClient* BNNewWebsocketClientReference(
	struct BNWebsocketClient* client
);

struct BNWorkflow* BNNewWorkflowReference(
	struct BNWorkflow* workflow
);

void BNNotifyDataInserted(
	struct BNBinaryView* view,
	uint64_t offset,
	uint64_t len
);

void BNNotifyDataRemoved(
	struct BNBinaryView* view,
	uint64_t offset,
	uint64_t len
);

void BNNotifyDataWritten(
	struct BNBinaryView* view,
	uint64_t offset,
	uint64_t len
);

void BNNotifyErrorForScriptingInstance(
	struct BNScriptingInstance* instance,
	char const* text
);

void BNNotifyInputReadyStateForScriptingInstance(
	struct BNScriptingInstance* instance,
	BNScriptingProviderInputReadyState state
);

void BNNotifyOutputForScriptingInstance(
	struct BNScriptingInstance* instance,
	char const* text
);

bool BNNotifyProgressForDownloadInstance(
	struct BNDownloadInstance* instance,
	uint64_t progress,
	uint64_t total
);

void BNNotifyWarningForScriptingInstance(
	struct BNScriptingInstance* instance,
	char const* text
);

bool BNNotifyWebsocketClientConnect(
	struct BNWebsocketClient* client
);

void BNNotifyWebsocketClientDisconnect(
	struct BNWebsocketClient* client
);

void BNNotifyWebsocketClientError(
	struct BNWebsocketClient* client,
	char const* msg
);

bool BNNotifyWebsocketClientReadData(
	struct BNWebsocketClient* client,
	uint8_t* data,
	uint64_t len
);

struct BNBinaryView* BNOpenDatabaseForConfiguration(
	struct BNFileMetadata* file,
	char const* path
);

struct BNBinaryView* BNOpenExistingDatabase(
	struct BNFileMetadata* file,
	char const* path
);

struct BNBinaryView* BNOpenExistingDatabaseWithProgress(
	struct BNFileMetadata* file,
	char const* path,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t progress, uint64_t total)
);

bool BNOpenProject(
	struct BNFileMetadata* file
);

bool BNOpenUrl(
	char const* url
);

struct BNBinaryView* BNParseBinaryViewOfType(
	struct BNBinaryViewType* type,
	struct BNBinaryView* data
);

struct BNDebugInfo* BNParseDebugInfo(
	struct BNDebugInfoParser* parser,
	struct BNBinaryView* view,
	struct BNDebugInfo* existingDebugInfo,
	bool (* progress)(void*, uint64_t, uint64_t),
	void* progressCtxt
);

bool BNParseExpression(
	struct BNBinaryView* view,
	char const* expression,
	uint64_t* offset,
	uint64_t here,
	char** errorString
);

bool BNParsePossibleValueSet(
	struct BNBinaryView* view,
	char const* valueText,
	BNRegisterValueType state,
	struct BNPossibleValueSet* result,
	uint64_t here,
	char** errors
);

char** BNParseTypeParserOptionsText(
	char const* optionsText,
	uint64_t* count
);

bool BNParseTypeString(
	struct BNBinaryView* view,
	char const* text,
	struct BNQualifiedNameAndType* result,
	char** errors,
	struct BNQualifiedNameList* typesAllowRedefinition
);

bool BNParseTypesFromSource(
	struct BNPlatform* platform,
	char const* source,
	char const* fileName,
	struct BNTypeParserResult* result,
	char** errors,
	char const** includeDirs,
	uint64_t includeDirCount,
	char const* autoTypeSource
);

bool BNParseTypesFromSourceFile(
	struct BNPlatform* platform,
	char const* fileName,
	struct BNTypeParserResult* result,
	char** errors,
	char const** includeDirs,
	uint64_t includeDirCount,
	char const* autoTypeSource
);

bool BNParseTypesString(
	struct BNBinaryView* view,
	char const* text,
	char const* const* options,
	uint64_t optionCount,
	char const* const* includeDirs,
	uint64_t includeDirCount,
	struct BNTypeParserResult* result,
	char** errors,
	struct BNQualifiedNameList* typesAllowRedefinition
);

bool BNPathExists(
	char const* path
);

int32_t BNPerformCustomRequest(
	struct BNDownloadInstance* instance,
	char const* method,
	char const* url,
	uint64_t headerCount,
	char const* const* headerKeys,
	char const* const* headerValues,
	struct BNDownloadInstanceResponse** response,
	struct BNDownloadInstanceInputOutputCallbacks* callbacks
);

int32_t BNPerformDownloadRequest(
	struct BNDownloadInstance* instance,
	char const* url,
	struct BNDownloadInstanceOutputCallbacks* callbacks
);

bool BNPluginAreDependenciesBeingInstalled(
	struct BNRepoPlugin* p
);

bool BNPluginDisable(
	struct BNRepoPlugin* p
);

bool BNPluginEnable(
	struct BNRepoPlugin* p,
	bool force
);

char** BNPluginGetApis(
	struct BNRepoPlugin* p,
	uint64_t* count
);

char const* BNPluginGetAuthor(
	struct BNRepoPlugin* p
);

char const* BNPluginGetAuthorUrl(
	struct BNRepoPlugin* p
);

char const* BNPluginGetCommit(
	struct BNRepoPlugin* p
);

char const* BNPluginGetDependencies(
	struct BNRepoPlugin* p
);

char const* BNPluginGetDescription(
	struct BNRepoPlugin* p
);

char* BNPluginGetInstallInstructions(
	struct BNRepoPlugin* p,
	char const* platform
);

uint64_t BNPluginGetLastUpdate(
	struct BNRepoPlugin* p
);

char const* BNPluginGetLicense(
	struct BNRepoPlugin* p
);

char const* BNPluginGetLicenseText(
	struct BNRepoPlugin* p
);

char const* BNPluginGetLongdescription(
	struct BNRepoPlugin* p
);

uint64_t BNPluginGetMinimumVersion(
	struct BNRepoPlugin* p
);

char const* BNPluginGetName(
	struct BNRepoPlugin* p
);

char const* BNPluginGetPackageUrl(
	struct BNRepoPlugin* p
);

char const* BNPluginGetPath(
	struct BNRepoPlugin* p
);

char** BNPluginGetPlatforms(
	struct BNRepoPlugin* p,
	uint64_t* count
);

enum BNPluginStatus BNPluginGetPluginStatus(
	struct BNRepoPlugin* p
);

enum BNPluginType* BNPluginGetPluginTypes(
	struct BNRepoPlugin* p,
	uint64_t* count
);

char* BNPluginGetProjectData(
	struct BNRepoPlugin* p
);

char const* BNPluginGetProjectUrl(
	struct BNRepoPlugin* p
);

char const* BNPluginGetRepository(
	struct BNRepoPlugin* p
);

char const* BNPluginGetSubdir(
	struct BNRepoPlugin* p
);

char const* BNPluginGetVersion(
	struct BNRepoPlugin* p
);

bool BNPluginInstall(
	struct BNRepoPlugin* p
);

bool BNPluginInstallDependencies(
	struct BNRepoPlugin* p
);

bool BNPluginIsBeingDeleted(
	struct BNRepoPlugin* p
);

bool BNPluginIsBeingUpdated(
	struct BNRepoPlugin* p
);

bool BNPluginIsDeletePending(
	struct BNRepoPlugin* p
);

bool BNPluginIsDisablePending(
	struct BNRepoPlugin* p
);

bool BNPluginIsEnabled(
	struct BNRepoPlugin* p
);

bool BNPluginIsInstalled(
	struct BNRepoPlugin* p
);

bool BNPluginIsRunning(
	struct BNRepoPlugin* p
);

bool BNPluginIsUpdateAvailable(
	struct BNRepoPlugin* p
);

bool BNPluginIsUpdatePending(
	struct BNRepoPlugin* p
);

bool BNPluginUninstall(
	struct BNRepoPlugin* p
);

bool BNPluginUpdate(
	struct BNRepoPlugin* p
);

struct BNDisassemblyTextLine* BNPostProcessDisassemblyTextRendererLines(
	struct BNDisassemblyTextRenderer* renderer,
	uint64_t addr,
	uint64_t len,
	struct BNDisassemblyTextLine* inLines,
	uint64_t inCount,
	uint64_t* outCount,
	char const* indentSpaces
);

void BNPrepareToCopyLowLevelILBasicBlock(
	struct BNLowLevelILFunction* func,
	struct BNBasicBlock* block
);

void BNPrepareToCopyLowLevelILFunction(
	struct BNLowLevelILFunction* func,
	struct BNLowLevelILFunction* src
);

void BNPrepareToCopyMediumLevelILBasicBlock(
	struct BNMediumLevelILFunction* func,
	struct BNBasicBlock* block
);

void BNPrepareToCopyMediumLevelILFunction(
	struct BNMediumLevelILFunction* func,
	struct BNMediumLevelILFunction* src
);

bool BNPreprocessSource(
	char const* source,
	char const* fileName,
	char** output,
	char** errors,
	char const** includeDirs,
	uint64_t includeDirCount
);

void BNProcessSymbolQueue(
	struct BNSymbolQueue* queue
);

bool BNRangeContainsRelocation(
	struct BNBinaryView* view,
	uint64_t addr,
	uint64_t size
);

bool BNRead16(
	struct BNBinaryReader* stream,
	uint16_t* result
);

bool BNRead32(
	struct BNBinaryReader* stream,
	uint32_t* result
);

bool BNRead64(
	struct BNBinaryReader* stream,
	uint64_t* result
);

bool BNRead8(
	struct BNBinaryReader* stream,
	uint8_t* result
);

bool BNReadBE16(
	struct BNBinaryReader* stream,
	uint16_t* result
);

bool BNReadBE32(
	struct BNBinaryReader* stream,
	uint32_t* result
);

bool BNReadBE64(
	struct BNBinaryReader* stream,
	uint64_t* result
);

bool BNReadData(
	struct BNBinaryReader* stream,
	void* dest,
	uint64_t len
);

int64_t BNReadDataForDownloadInstance(
	struct BNDownloadInstance* instance,
	uint8_t* data,
	uint64_t len
);

struct BNKeyValueStore* BNReadDatabaseAnalysisCache(
	struct BNDatabase* database
);

char* BNReadDatabaseGlobal(
	struct BNDatabase* database,
	char const* key
);

struct BNDataBuffer* BNReadDatabaseGlobalData(
	struct BNDatabase* database,
	char const* key
);

bool BNReadLE16(
	struct BNBinaryReader* stream,
	uint16_t* result
);

bool BNReadLE32(
	struct BNBinaryReader* stream,
	uint32_t* result
);

bool BNReadLE64(
	struct BNBinaryReader* stream,
	uint64_t* result
);

struct BNKeyValueStore* BNReadSnapshotData(
	struct BNSnapshot* snapshot
);

struct BNKeyValueStore* BNReadSnapshotDataWithProgress(
	struct BNSnapshot* snapshot,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t progress, uint64_t total)
);

struct BNDataBuffer* BNReadViewBuffer(
	struct BNBinaryView* view,
	uint64_t offset,
	uint64_t len
);

uint64_t BNReadViewData(
	struct BNBinaryView* view,
	void* dest,
	uint64_t offset,
	uint64_t len
);

void BNReanalyzeAllFunctions(
	struct BNBinaryView* view
);

void BNReanalyzeFunction(
	struct BNFunction* func,
	BNFunctionUpdateType type
);

bool BNRebase(
	struct BNBinaryView* data,
	uint64_t address
);

bool BNRebaseWithProgress(
	struct BNBinaryView* data,
	uint64_t address,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t progress, uint64_t total)
);

struct BNPlatform* BNRecognizePlatformForViewType(
	struct BNBinaryViewType* type,
	uint64_t id,
	BNEndianness endian,
	struct BNBinaryView* view,
	struct BNMetadata* metadata
);

bool BNRedo(
	struct BNFileMetadata* file
);

struct BNArchitecture* BNRegisterArchitecture(
	char const* name,
	struct BNCustomArchitecture* arch
);

struct BNArchitecture* BNRegisterArchitectureExtension(
	char const* name,
	struct BNArchitecture* base,
	struct BNCustomArchitecture* arch
);

void BNRegisterArchitectureForViewType(
	struct BNBinaryViewType* type,
	uint32_t id,
	BNEndianness endian,
	struct BNArchitecture* arch
);

void BNRegisterArchitectureFunctionRecognizer(
	struct BNArchitecture* arch,
	struct BNFunctionRecognizer* rec
);

struct BNArchitecture* BNRegisterArchitectureHook(
	struct BNArchitecture* base,
	struct BNCustomArchitecture* arch
);

void BNRegisterBinaryViewEvent(
	BNBinaryViewEventType type,
	void (* callback)(void* ctxt, struct BNBinaryView* view),
	void* ctx
);

struct BNBinaryViewType* BNRegisterBinaryViewType(
	char const* name,
	char const* longName,
	struct BNCustomBinaryViewType* type
);

void BNRegisterCallingConvention(
	struct BNArchitecture* arch,
	struct BNCallingConvention* cc
);

void BNRegisterDataNotification(
	struct BNBinaryView* view,
	struct BNBinaryDataNotification* notify
);

struct BNDebugInfoParser* BNRegisterDebugInfoParser(
	char const* name,
	bool (* isValid)(void* ctxt, struct BNBinaryView* data),
	bool (* parseInfo)(void*, struct BNDebugInfo*, struct BNBinaryView*, bool (*)(void*, uint64_t, uint64_t), void*),
	void* context
);

void BNRegisterDefaultPlatformForViewType(
	struct BNBinaryViewType* type,
	struct BNArchitecture* arch,
	struct BNPlatform* platform
);

struct BNDownloadProvider* BNRegisterDownloadProvider(
	char const* name,
	struct BNDownloadProviderCallbacks* callbacks
);

void BNRegisterEnterpriseServerNotification(
	struct BNEnterpriseServerCallbacks* notify
);

void BNRegisterGenericDataRenderer(
	struct BNDataRendererContainer* container,
	struct BNDataRenderer* renderer
);

void BNRegisterGlobalFunctionRecognizer(
	struct BNFunctionRecognizer* rec
);

void BNRegisterInteractionHandler(
	struct BNInteractionHandlerCallbacks* callbacks
);

void BNRegisterLogListener(
	struct BNLogListener* listener
);

void BNRegisterMainThread(
	struct BNMainThreadCallbacks* callbacks
);

void BNRegisterObjectDestructionCallbacks(
	struct BNObjectDestructionCallbacks* callbacks
);

void* BNRegisterObjectRefDebugTrace(
	char const* typeName
);

void BNRegisterPlatform(
	char const* os,
	struct BNPlatform* platform
);

void BNRegisterPlatformCallingConvention(
	struct BNPlatform* platform,
	struct BNCallingConvention* cc
);

void BNRegisterPlatformCdeclCallingConvention(
	struct BNPlatform* platform,
	struct BNCallingConvention* cc
);

void BNRegisterPlatformDefaultCallingConvention(
	struct BNPlatform* platform,
	struct BNCallingConvention* cc
);

void BNRegisterPlatformFastcallCallingConvention(
	struct BNPlatform* platform,
	struct BNCallingConvention* cc
);

void BNRegisterPlatformForViewType(
	struct BNBinaryViewType* type,
	uint32_t id,
	struct BNArchitecture* arch,
	struct BNPlatform* platform
);

void BNRegisterPlatformRecognizerForViewType(
	struct BNBinaryViewType* type,
	uint64_t id,
	BNEndianness endian,
	struct BNPlatform* (* callback)(void* ctx, struct BNBinaryView* view, struct BNMetadata* metadata),
	void* ctx
);

void BNRegisterPlatformStdcallCallingConvention(
	struct BNPlatform* platform,
	struct BNCallingConvention* cc
);

void BNRegisterPlatformTypes(
	struct BNBinaryView* view,
	struct BNPlatform* platform
);

void BNRegisterPluginCommand(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view),
	bool (* isValid)(void* ctxt, struct BNBinaryView* data),
	void* context
);

void BNRegisterPluginCommandForAddress(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view, uint64_t addr),
	bool (* isValid)(void* ctxt, struct BNBinaryView* view, uint64_t addr),
	void* context
);

void BNRegisterPluginCommandForFunction(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view, struct BNFunction* func),
	bool (* isValid)(void* ctxt, struct BNBinaryView* view, struct BNFunction* func),
	void* context
);

void BNRegisterPluginCommandForHighLevelILFunction(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view, struct BNHighLevelILFunction* func),
	bool (* isValid)(void* ctxt, struct BNBinaryView* view, struct BNHighLevelILFunction* func),
	void* context
);

void BNRegisterPluginCommandForHighLevelILInstruction(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view, struct BNHighLevelILFunction* func, uint64_t instr),
	bool (* isValid)(void* ctxt, struct BNBinaryView* view, struct BNHighLevelILFunction* func, uint64_t instr),
	void* context
);

void BNRegisterPluginCommandForLowLevelILFunction(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view, struct BNLowLevelILFunction* func),
	bool (* isValid)(void* ctxt, struct BNBinaryView* view, struct BNLowLevelILFunction* func),
	void* context
);

void BNRegisterPluginCommandForLowLevelILInstruction(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view, struct BNLowLevelILFunction* func, uint64_t instr),
	bool (* isValid)(void* ctxt, struct BNBinaryView* view, struct BNLowLevelILFunction* func, uint64_t instr),
	void* context
);

void BNRegisterPluginCommandForMediumLevelILFunction(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view, struct BNMediumLevelILFunction* func),
	bool (* isValid)(void* ctxt, struct BNBinaryView* view, struct BNMediumLevelILFunction* func),
	void* context
);

void BNRegisterPluginCommandForMediumLevelILInstruction(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view, struct BNMediumLevelILFunction* func, uint64_t instr),
	bool (* isValid)(void* ctxt, struct BNBinaryView* view, struct BNMediumLevelILFunction* func, uint64_t instr),
	void* context
);

void BNRegisterPluginCommandForRange(
	char const* name,
	char const* description,
	void (* action)(void* ctxt, struct BNBinaryView* view, uint64_t addr, uint64_t len),
	bool (* isValid)(void* ctxt, struct BNBinaryView* view, uint64_t addr, uint64_t len),
	void* context
);

void BNRegisterScriptingInstanceOutputListener(
	struct BNScriptingInstance* instance,
	struct BNScriptingOutputListener* callbacks
);

struct BNScriptingProvider* BNRegisterScriptingProvider(
	char const* name,
	char const* apiName,
	struct BNScriptingProviderCallbacks* callbacks
);

struct BNSecretsProvider* BNRegisterSecretsProvider(
	char const* name,
	struct BNSecretsProviderCallbacks* callbacks
);

struct BNTransform* BNRegisterTransformType(
	BNTransformType type,
	char const* name,
	char const* longName,
	char const* group,
	struct BNCustomTransform* xform
);

struct BNTypeParser* BNRegisterTypeParser(
	char const* name,
	struct BNTypeParserCallbacks* callbacks
);

struct BNTypePrinter* BNRegisterTypePrinter(
	char const* name,
	struct BNTypePrinterCallbacks* callbacks
);

void BNRegisterTypeSpecificDataRenderer(
	struct BNDataRendererContainer* container,
	struct BNDataRenderer* renderer
);

struct BNWebsocketProvider* BNRegisterWebsocketProvider(
	char const* name,
	struct BNWebsocketProviderCallbacks* callbacks
);

bool BNRegisterWorkflow(
	struct BNWorkflow* workflow,
	char const* description
);

void BNReleaseAdvancedFunctionAnalysisData(
	struct BNFunction* func
);

void BNReleaseAdvancedFunctionAnalysisDataMultiple(
	struct BNFunction* func,
	uint64_t count
);

bool BNReleaseEnterpriseServerLicense(

);

struct BNArchitecture* BNRelocationGetArchitecture(
	struct BNRelocation* reloc
);

struct BNRelocationInfo BNRelocationGetInfo(
	struct BNRelocation* reloc
);

uint64_t BNRelocationGetReloc(
	struct BNRelocation* reloc
);

struct BNSymbol* BNRelocationGetSymbol(
	struct BNRelocation* reloc
);

uint64_t BNRelocationGetTarget(
	struct BNRelocation* reloc
);

bool BNRelocationHandlerApplyRelocation(
	struct BNRelocationHandler* handler,
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	struct BNRelocation* reloc,
	uint8_t* dest,
	uint64_t len
);

bool BNRelocationHandlerDefaultApplyRelocation(
	struct BNRelocationHandler* handler,
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	struct BNRelocation* reloc,
	uint8_t* dest,
	uint64_t len
);

uint64_t BNRelocationHandlerGetOperandForExternalRelocation(
	struct BNRelocationHandler* handler,
	uint8_t const* data,
	uint64_t addr,
	uint64_t length,
	struct BNLowLevelILFunction* il,
	struct BNRelocation* relocation
);

bool BNRelocationHandlerGetRelocationInfo(
	struct BNRelocationHandler* handler,
	struct BNBinaryView* data,
	struct BNArchitecture* arch,
	struct BNRelocationInfo* info,
	uint64_t infoCount
);

void BNRemoveAnalysisFunction(
	struct BNBinaryView* view,
	struct BNFunction* func,
	bool updateRefs
);

void BNRemoveAutoAddressTag(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTag* tag
);

void BNRemoveAutoAddressTagsOfType(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTagType* tagType
);

void BNRemoveAutoDataTag(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTag* tag
);

void BNRemoveAutoDataTagsOfType(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTagType* tagType
);

void BNRemoveAutoFunctionTag(
	struct BNFunction* func,
	struct BNTag* tag
);

void BNRemoveAutoFunctionTagsOfType(
	struct BNFunction* func,
	struct BNTagType* tagType
);

void BNRemoveAutoSection(
	struct BNBinaryView* view,
	char const* name
);

void BNRemoveAutoSegment(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t length
);

bool BNRemoveComponent(
	struct BNBinaryView* view,
	struct BNComponent* component
);

bool BNRemoveComponentByGuid(
	struct BNBinaryView* view,
	char const* guid
);

bool BNRemoveDatabaseSnapshot(
	struct BNDatabase* database,
	int64_t id
);

bool BNRemoveDebugDataVariableByAddress(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName,
	uint64_t const address
);

bool BNRemoveDebugFunctionByIndex(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName,
	uint64_t const index
);

bool BNRemoveDebugParserDataVariables(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName
);

bool BNRemoveDebugParserFunctions(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName
);

bool BNRemoveDebugParserInfo(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName
);

bool BNRemoveDebugParserTypes(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName
);

bool BNRemoveDebugTypeByName(
	struct BNDebugInfo* const debugInfo,
	char const* const parserName,
	char const* typeName
);

void BNRemoveEnumerationBuilderMember(
	struct BNEnumerationBuilder* e,
	uint64_t idx
);

void BNRemoveExpressionParserMagicValue(
	struct BNBinaryView* view,
	char const* name
);

void BNRemoveExpressionParserMagicValues(
	struct BNBinaryView* view,
	char const** names,
	uint64_t count
);

void BNRemoveStructureBuilderMember(
	struct BNStructureBuilder* s,
	uint64_t idx
);

void BNRemoveTag(
	struct BNBinaryView* view,
	struct BNTag* tag,
	bool user
);

void BNRemoveTagReference(
	struct BNBinaryView* view,
	struct BNTagReference ref
);

void BNRemoveTagType(
	struct BNBinaryView* view,
	struct BNTagType* tagType
);

void BNRemoveUserAddressTag(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTag* tag
);

void BNRemoveUserAddressTagsOfType(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTagType* tagType
);

void BNRemoveUserCodeReference(
	struct BNFunction* func,
	struct BNArchitecture* fromArch,
	uint64_t fromAddr,
	uint64_t toAddr
);

void BNRemoveUserDataReference(
	struct BNBinaryView* view,
	uint64_t fromAddr,
	uint64_t toAddr
);

void BNRemoveUserDataTag(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTag* tag
);

void BNRemoveUserDataTagsOfType(
	struct BNBinaryView* view,
	uint64_t addr,
	struct BNTagType* tagType
);

void BNRemoveUserFunction(
	struct BNBinaryView* view,
	struct BNFunction* func
);

void BNRemoveUserFunctionTag(
	struct BNFunction* func,
	struct BNTag* tag
);

void BNRemoveUserFunctionTagsOfType(
	struct BNFunction* func,
	struct BNTagType* tagType
);

void BNRemoveUserSection(
	struct BNBinaryView* view,
	char const* name
);

void BNRemoveUserSegment(
	struct BNBinaryView* view,
	uint64_t start,
	uint64_t length
);

void BNRemoveUserTypeFieldReference(
	struct BNFunction* func,
	struct BNArchitecture* fromArch,
	uint64_t fromAddr,
	struct BNQualifiedName* name,
	uint64_t offset,
	uint64_t size
);

void BNRemoveUserTypeReference(
	struct BNFunction* func,
	struct BNArchitecture* fromArch,
	uint64_t fromAddr,
	struct BNQualifiedName* name
);

uint64_t BNRemoveViewData(
	struct BNBinaryView* view,
	uint64_t offset,
	uint64_t len
);

void BNRenameAnalysisType(
	struct BNBinaryView* view,
	struct BNQualifiedName* oldName,
	struct BNQualifiedName* newName
);

bool BNRenameFile(
	char const* source,
	char const* dest
);

struct BNDisassemblyTextLine* BNRenderLinesForData(
	struct BNBinaryView* data,
	uint64_t addr,
	struct BNType* type,
	struct BNInstructionTextToken* prefix,
	uint64_t prefixCount,
	uint64_t width,
	uint64_t* count,
	struct BNTypeContext* typeCtx,
	uint64_t ctxCount
);

void BNReplaceEnumerationBuilderMember(
	struct BNEnumerationBuilder* e,
	uint64_t idx,
	char const* name,
	uint64_t value
);

void BNReplaceHighLevelILExpr(
	struct BNHighLevelILFunction* func,
	uint64_t expr,
	uint64_t newExpr
);

void BNReplaceLowLevelILExpr(
	struct BNLowLevelILFunction* func,
	uint64_t expr,
	uint64_t newExpr
);

void BNReplaceMediumLevelILExpr(
	struct BNMediumLevelILFunction* func,
	uint64_t expr,
	uint64_t newExpr
);

void BNReplaceMediumLevelILInstruction(
	struct BNMediumLevelILFunction* func,
	uint64_t instr,
	uint64_t expr
);

void BNReplaceStructureBuilderMember(
	struct BNStructureBuilder* s,
	uint64_t idx,
	struct BNTypeWithConfidence* const type,
	char const* name,
	bool overwriteExisting
);

void BNRepositoryFreePluginDirectoryList(
	char** list,
	uint64_t count
);

struct BNRepoPlugin* BNRepositoryGetPluginByPath(
	struct BNRepository* r,
	char const* pluginPath
);

struct BNRepoPlugin** BNRepositoryGetPlugins(
	struct BNRepository* r,
	uint64_t* count
);

char const* BNRepositoryGetPluginsPath(
	struct BNRepository* r
);

char* BNRepositoryGetRepoPath(
	struct BNRepository* r
);

struct BNRepository* BNRepositoryGetRepositoryByPath(
	struct BNRepositoryManager* r,
	char const* repoPath
);

char* BNRepositoryGetUrl(
	struct BNRepository* r
);

bool BNRepositoryManagerAddRepository(
	struct BNRepositoryManager* r,
	char const* url,
	char const* repoPath
);

bool BNRepositoryManagerCheckForUpdates(
	struct BNRepositoryManager* r
);

struct BNRepository* BNRepositoryManagerGetDefaultRepository(
	struct BNRepositoryManager* r
);

struct BNRepository** BNRepositoryManagerGetRepositories(
	struct BNRepositoryManager* r,
	uint64_t* count
);

void BNRequestAdvancedFunctionAnalysisData(
	struct BNFunction* func
);

void BNRequestFunctionDebugReport(
	struct BNFunction* func,
	char const* name
);

void BNResetDisassemblyTextRendererDeduplicatedComments(
	struct BNDisassemblyTextRenderer* renderer
);

bool BNRunProgressDialog(
	char const* title,
	bool canCancel,
	void (* task)(void* taskCtxt, bool (* progress)(void* progressCtxt, uint64_t cur, uint64_t max), void* progressCtxt),
	void* taskCtxt
);

void BNRustFreeString(
	char const* const 
);

void BNRustFreeStringArray(
	char const** const ,
	uint64_t 
);

char** BNRustSimplifyStrToFQN(
	char const* const ,
	bool 
);

char* BNRustSimplifyStrToStr(
	char const* const 
);

bool BNSaveAutoSnapshot(
	struct BNBinaryView* data,
	struct BNSaveSettings* settings
);

bool BNSaveAutoSnapshotWithProgress(
	struct BNBinaryView* data,
	void* ctxt,
	bool (* progress)(void* ctxt, uint64_t progress, uint64_t total),
	struct BNSaveSettings* settings
);

void BNSaveLastRun(

);

bool BNSaveToFile(
	struct BNBinaryView* view,
	struct BNFileAccessor* file
);

bool BNSaveToFilename(
	struct BNBinaryView* view,
	char const* filename
);

char* BNScriptingInstanceCompleteInput(
	struct BNScriptingInstance* instance,
	char const* text,
	uint64_t state
);

bool BNSecretsProviderHasData(
	struct BNSecretsProvider* provider,
	char const* key
);

uint64_t BNSectionGetAlign(
	struct BNSection* section
);

uint64_t BNSectionGetEnd(
	struct BNSection* section
);

uint64_t BNSectionGetEntrySize(
	struct BNSection* section
);

uint64_t BNSectionGetInfoData(
	struct BNSection* section
);

char* BNSectionGetInfoSection(
	struct BNSection* section
);

uint64_t BNSectionGetLength(
	struct BNSection* section
);

char* BNSectionGetLinkedSection(
	struct BNSection* section
);

char* BNSectionGetName(
	struct BNSection* section
);

enum BNSectionSemantics BNSectionGetSemantics(
	struct BNSection* section
);

uint64_t BNSectionGetStart(
	struct BNSection* section
);

char* BNSectionGetType(
	struct BNSection* section
);

bool BNSectionIsAutoDefined(
	struct BNSection* section
);

void BNSeekBinaryReader(
	struct BNBinaryReader* stream,
	uint64_t offset
);

void BNSeekBinaryReaderRelative(
	struct BNBinaryReader* stream,
	int64_t offset
);

void BNSeekBinaryWriter(
	struct BNBinaryWriter* stream,
	uint64_t offset
);

void BNSeekBinaryWriterRelative(
	struct BNBinaryWriter* stream,
	int64_t offset
);

void BNSeekLinearViewCursorToAddress(
	struct BNLinearViewCursor* cursor,
	uint64_t addr
);

void BNSeekLinearViewCursorToBegin(
	struct BNLinearViewCursor* cursor
);

bool BNSeekLinearViewCursorToCursorPath(
	struct BNLinearViewCursor* cursor,
	struct BNLinearViewCursor* path
);

bool BNSeekLinearViewCursorToCursorPathAndAddress(
	struct BNLinearViewCursor* cursor,
	struct BNLinearViewCursor* path,
	uint64_t addr
);

void BNSeekLinearViewCursorToEnd(
	struct BNLinearViewCursor* cursor
);

void BNSeekLinearViewCursorToOrderingIndex(
	struct BNLinearViewCursor* cursor,
	uint64_t idx
);

bool BNSeekLinearViewCursorToPath(
	struct BNLinearViewCursor* cursor,
	struct BNLinearViewObjectIdentifier* ids,
	uint64_t count
);

bool BNSeekLinearViewCursorToPathAndAddress(
	struct BNLinearViewCursor* cursor,
	struct BNLinearViewObjectIdentifier* ids,
	uint64_t count,
	uint64_t addr
);

uint64_t BNSegmentGetDataEnd(
	struct BNSegment* segment
);

uint64_t BNSegmentGetDataLength(
	struct BNSegment* segment
);

uint64_t BNSegmentGetDataOffset(
	struct BNSegment* segment
);

uint64_t BNSegmentGetEnd(
	struct BNSegment* segment
);

uint32_t BNSegmentGetFlags(
	struct BNSegment* segment
);

uint64_t BNSegmentGetLength(
	struct BNSegment* segment
);

struct BNRange* BNSegmentGetRelocationRanges(
	struct BNSegment* segment,
	uint64_t* count
);

struct BNRange* BNSegmentGetRelocationRangesAtAddress(
	struct BNSegment* segment,
	uint64_t addr,
	uint64_t* count
);

uint64_t BNSegmentGetRelocationsCount(
	struct BNSegment* segment
);

uint64_t BNSegmentGetStart(
	struct BNSegment* segment
);

bool BNSegmentIsAutoDefined(
	struct BNSegment* segment
);

bool BNSegmentRangeContainsRelocation(
	struct BNSegment* segment,
	uint64_t addr,
	uint64_t size
);

void BNSegmentSetDataLength(
	struct BNSegment* segment,
	uint64_t dataLength
);

void BNSegmentSetDataOffset(
	struct BNSegment* segment,
	uint64_t dataOffset
);

void BNSegmentSetFlags(
	struct BNSegment* segment,
	uint32_t flags
);

void BNSegmentSetLength(
	struct BNSegment* segment,
	uint64_t length
);

char* BNSerializeSettings(
	struct BNSettings* settings,
	struct BNBinaryView* view,
	BNSettingsScope scope
);

void BNSetActiveUpdateChannel(
	char const* channel
);

void BNSetAnalysisHold(
	struct BNBinaryView* view,
	bool enable
);

void BNSetArchitectureCdeclCallingConvention(
	struct BNArchitecture* arch,
	struct BNCallingConvention* cc
);

void BNSetArchitectureDefaultCallingConvention(
	struct BNArchitecture* arch,
	struct BNCallingConvention* cc
);

void BNSetArchitectureFastcallCallingConvention(
	struct BNArchitecture* arch,
	struct BNCallingConvention* cc
);

void BNSetArchitectureStdcallCallingConvention(
	struct BNArchitecture* arch,
	struct BNCallingConvention* cc
);

void BNSetAutoBasicBlockHighlight(
	struct BNBasicBlock* block,
	struct BNHighlightColor color
);

void BNSetAutoCallRegisterStackAdjustment(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNRegisterStackAdjustment* adjust,
	uint64_t count
);

void BNSetAutoCallRegisterStackAdjustmentForRegisterStack(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint32_t regStack,
	int32_t adjust,
	uint8_t confidence
);

void BNSetAutoCallStackAdjustment(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	int64_t adjust,
	uint8_t confidence
);

void BNSetAutoCallTypeAdjustment(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTypeWithConfidence* type
);

void BNSetAutoFunctionCallingConvention(
	struct BNFunction* func,
	struct BNCallingConventionWithConfidence* convention
);

void BNSetAutoFunctionCanReturn(
	struct BNFunction* func,
	struct BNBoolWithConfidence* returns
);

void BNSetAutoFunctionClobberedRegisters(
	struct BNFunction* func,
	struct BNRegisterSetWithConfidence* regs
);

void BNSetAutoFunctionHasVariableArguments(
	struct BNFunction* func,
	struct BNBoolWithConfidence* varArgs
);

void BNSetAutoFunctionInlinedDuringAnalysis(
	struct BNFunction* func,
	struct BNBoolWithConfidence inlined
);

void BNSetAutoFunctionParameterVariables(
	struct BNFunction* func,
	struct BNParameterVariablesWithConfidence* vars
);

void BNSetAutoFunctionRegisterStackAdjustments(
	struct BNFunction* func,
	struct BNRegisterStackAdjustment* adjustments,
	uint64_t count
);

void BNSetAutoFunctionReturnRegisters(
	struct BNFunction* func,
	struct BNRegisterSetWithConfidence* regs
);

void BNSetAutoFunctionReturnType(
	struct BNFunction* func,
	struct BNTypeWithConfidence* type
);

void BNSetAutoFunctionStackAdjustment(
	struct BNFunction* func,
	struct BNOffsetWithConfidence* stackAdjust
);

void BNSetAutoIndirectBranches(
	struct BNFunction* func,
	struct BNArchitecture* sourceArch,
	uint64_t source,
	struct BNArchitectureAndAddress* branches,
	uint64_t count
);

void BNSetAutoInstructionHighlight(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNHighlightColor color
);

void BNSetAutoUpdatesEnabled(
	bool enabled
);

void BNSetBackgroundTaskProgressText(
	struct BNBackgroundTask* task,
	char const* text
);

void BNSetBaseStructuresForStructureBuilder(
	struct BNStructureBuilder* s,
	struct BNBaseStructure* bases,
	uint64_t count
);

void BNSetBasicBlockList(
	struct BNAnalysisContext* analysisContext,
	struct BNBasicBlock** basicBlocks,
	uint64_t count
);

void BNSetBinaryReaderEndianness(
	struct BNBinaryReader* stream,
	BNEndianness endian
);

void BNSetBinaryReaderVirtualBase(
	struct BNBinaryReader* stream,
	uint64_t base
);

void BNSetBinaryWriterEndianness(
	struct BNBinaryWriter* stream,
	BNEndianness endian
);

void BNSetBundledPluginDirectory(
	char const* path
);

void BNSetCommentForAddress(
	struct BNFunction* func,
	uint64_t addr,
	char const* comment
);

void BNSetCurrentPluginLoadOrder(
	BNPluginLoadOrder order
);

void BNSetDataBufferByte(
	struct BNDataBuffer* buf,
	uint64_t offset,
	uint8_t val
);

void BNSetDataBufferContents(
	struct BNDataBuffer* buf,
	void* data,
	uint64_t len
);

void BNSetDataBufferLength(
	struct BNDataBuffer* buf,
	uint64_t len
);

void BNSetDatabaseCurrentSnapshot(
	struct BNDatabase* database,
	int64_t id
);

void BNSetDebugInfo(
	struct BNBinaryView* view,
	struct BNDebugInfo* newDebugInfo
);

void BNSetDefaultArchitecture(
	struct BNBinaryView* view,
	struct BNArchitecture* arch
);

void BNSetDefaultPlatform(
	struct BNBinaryView* view,
	struct BNPlatform* platform
);

void BNSetDisassemblyGutterWidth(
	struct BNDisassemblySettings* settings,
	uint64_t width
);

void BNSetDisassemblyMaximumSymbolWidth(
	struct BNDisassemblySettings* settings,
	uint64_t width
);

void BNSetDisassemblySettingsOption(
	struct BNDisassemblySettings* settings,
	BNDisassemblyOption option,
	bool state
);

void BNSetDisassemblyTextRendererArchitecture(
	struct BNDisassemblyTextRenderer* renderer,
	struct BNArchitecture* arch
);

void BNSetDisassemblyTextRendererBasicBlock(
	struct BNDisassemblyTextRenderer* renderer,
	struct BNBasicBlock* block
);

void BNSetDisassemblyTextRendererSettings(
	struct BNDisassemblyTextRenderer* renderer,
	struct BNDisassemblySettings* settings
);

void BNSetDisassemblyWidth(
	struct BNDisassemblySettings* settings,
	uint64_t width
);

bool BNSetEnterpriseServerUrl(
	char const* url
);

void BNSetErrorForDownloadInstance(
	struct BNDownloadInstance* instance,
	char const* error
);

void BNSetFileMetadataNavigationHandler(
	struct BNFileMetadata* file,
	struct BNNavigationHandler* handler
);

void BNSetFilename(
	struct BNFileMetadata* file,
	char const* name
);

void BNSetFlowGraphBasicBlock(
	struct BNFlowGraphNode* node,
	struct BNBasicBlock* block
);

void BNSetFlowGraphHighLevelILFunction(
	struct BNFlowGraph* graph,
	struct BNHighLevelILFunction* func
);

void BNSetFlowGraphLowLevelILFunction(
	struct BNFlowGraph* graph,
	struct BNLowLevelILFunction* func
);

void BNSetFlowGraphMediumLevelILFunction(
	struct BNFlowGraph* graph,
	struct BNMediumLevelILFunction* func
);

void BNSetFlowGraphNodeHighlight(
	struct BNFlowGraphNode* node,
	struct BNHighlightColor color
);

void BNSetFlowGraphNodeLines(
	struct BNFlowGraphNode* node,
	struct BNDisassemblyTextLine* lines,
	uint64_t count
);

void BNSetFlowGraphNodeMargins(
	struct BNFlowGraph* graph,
	int32_t horiz,
	int32_t vert
);

void BNSetFlowGraphOption(
	struct BNFlowGraph* graph,
	BNFlowGraphOption option,
	bool value
);

void BNSetFunctionAnalysisSkipOverride(
	struct BNFunction* func,
	BNFunctionAnalysisSkipOverride skip
);

void BNSetFunctionAutoType(
	struct BNFunction* func,
	struct BNType* type
);

void BNSetFunctionComment(
	struct BNFunction* func,
	char const* comment
);

void BNSetFunctionForFlowGraph(
	struct BNFlowGraph* graph,
	struct BNFunction* func
);

void BNSetFunctionTypeBuilderCanReturn(
	struct BNTypeBuilder* type,
	struct BNBoolWithConfidence* canReturn
);

void BNSetFunctionTypeBuilderParameters(
	struct BNTypeBuilder* type,
	struct BNFunctionParameter* params,
	uint64_t paramCount
);

void BNSetFunctionUserType(
	struct BNFunction* func,
	struct BNType* type
);

void BNSetFunctionVariableDeadStoreElimination(
	struct BNFunction* func,
	struct BNVariable* var,
	BNDeadStoreElimination mode
);

void BNSetGlobalCommentForAddress(
	struct BNBinaryView* view,
	uint64_t addr,
	char const* comment
);

void BNSetHighLevelILExprAttributes(
	struct BNHighLevelILFunction* func,
	uint64_t expr,
	uint32_t attributes
);

void BNSetHighLevelILExprType(
	struct BNHighLevelILFunction* func,
	uint64_t expr,
	struct BNTypeWithConfidence* type
);

void BNSetHighLevelILFunction(
	struct BNAnalysisContext* analysisContext,
	struct BNHighLevelILFunction* highLevelIL
);

void BNSetHighLevelILRootExpr(
	struct BNHighLevelILFunction* func,
	uint64_t expr
);

void BNSetIntegerConstantDisplayType(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t instrAddr,
	uint64_t value,
	uint64_t operand,
	BNIntegerDisplayType type
);

void BNSetIntegerConstantDisplayTypeEnumerationType(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t instrAddr,
	uint64_t value,
	uint64_t operand,
	struct BNType* type
);

void BNSetIntegerTypeDisplayType(
	struct BNTypeBuilder* type,
	BNIntegerDisplayType displayType
);

bool BNSetKeyValueStoreBuffer(
	struct BNKeyValueStore* store,
	char const* name,
	struct BNDataBuffer* value
);

bool BNSetKeyValueStoreValue(
	struct BNKeyValueStore* store,
	char const* name,
	char const* value
);

void BNSetLicense(
	char const* licenseData
);

void BNSetLiftedILFunction(
	struct BNAnalysisContext* analysisContext,
	struct BNLowLevelILFunction* liftedIL
);

void BNSetLowLevelILExprAttributes(
	struct BNLowLevelILFunction* func,
	uint64_t expr,
	uint32_t attributes
);

void BNSetLowLevelILFunction(
	struct BNAnalysisContext* analysisContext,
	struct BNLowLevelILFunction* lowLevelIL
);

void BNSetMaxFunctionSizeForAnalysis(
	struct BNBinaryView* view,
	uint64_t size
);

void BNSetMediumLevelILExprAttributes(
	struct BNMediumLevelILFunction* func,
	uint64_t expr,
	uint32_t attributes
);

void BNSetMediumLevelILExprType(
	struct BNMediumLevelILFunction* func,
	uint64_t expr,
	struct BNTypeWithConfidence* type
);

void BNSetMediumLevelILFunction(
	struct BNAnalysisContext* analysisContext,
	struct BNMediumLevelILFunction* mediumLevelIL
);

void BNSetNamedTypeReferenceBuilderName(
	struct BNNamedTypeReferenceBuilder* s,
	struct BNQualifiedName* name
);

void BNSetNamedTypeReferenceBuilderTypeClass(
	struct BNNamedTypeReferenceBuilder* s,
	BNNamedTypeReferenceClass type
);

void BNSetNamedTypeReferenceBuilderTypeId(
	struct BNNamedTypeReferenceBuilder* s,
	char const* id
);

void BNSetNewAutoFunctionAnalysisSuppressed(
	struct BNBinaryView* view,
	bool suppress
);

void BNSetOriginalFilename(
	struct BNFileMetadata* file,
	char const* name
);

void BNSetParametersForAnalysis(
	struct BNBinaryView* view,
	struct BNAnalysisParameters params
);

void BNSetPlatformSystemCallConvention(
	struct BNPlatform* platform,
	struct BNCallingConvention* cc
);

void BNSetSaveSettingsName(
	struct BNSaveSettings* settings,
	char const* name
);

void BNSetSaveSettingsOption(
	struct BNSaveSettings* settings,
	BNSaveOption option,
	bool state
);

void BNSetScriptingInstanceCurrentAddress(
	struct BNScriptingInstance* instance,
	uint64_t addr
);

void BNSetScriptingInstanceCurrentBasicBlock(
	struct BNScriptingInstance* instance,
	struct BNBasicBlock* block
);

void BNSetScriptingInstanceCurrentBinaryView(
	struct BNScriptingInstance* instance,
	struct BNBinaryView* view
);

void BNSetScriptingInstanceCurrentFunction(
	struct BNScriptingInstance* instance,
	struct BNFunction* func
);

void BNSetScriptingInstanceCurrentSelection(
	struct BNScriptingInstance* instance,
	uint64_t begin,
	uint64_t end
);

void BNSetScriptingInstanceDelimiters(
	struct BNScriptingInstance* instance,
	char const* delimiters
);

void BNSetSnapshotName(
	struct BNSnapshot* snapshot,
	char const* name
);

void BNSetStructureBuilderAlignment(
	struct BNStructureBuilder* s,
	uint64_t align
);

void BNSetStructureBuilderPacked(
	struct BNStructureBuilder* s,
	bool packed
);

void BNSetStructureBuilderPointerOffset(
	struct BNStructureBuilder* s,
	int64_t offset
);

void BNSetStructureBuilderPropagatesDataVariableReferences(
	struct BNStructureBuilder* s,
	bool value
);

void BNSetStructureBuilderType(
	struct BNStructureBuilder* s,
	BNStructureVariant type
);

void BNSetStructureBuilderWidth(
	struct BNStructureBuilder* s,
	uint64_t width
);

void BNSetTypeBuilderNamedTypeReference(
	struct BNTypeBuilder* type,
	struct BNNamedTypeReference* ntr
);

void BNSetTypeBuilderOffset(
	struct BNTypeBuilder* type,
	uint64_t offset
);

void BNSetTypeLibraryDependencyName(
	struct BNTypeLibrary* lib,
	char const* name
);

void BNSetTypeLibraryGuid(
	struct BNTypeLibrary* lib,
	char const* name
);

void BNSetTypeLibraryName(
	struct BNTypeLibrary* lib,
	char const* name
);

void BNSetUserBasicBlockHighlight(
	struct BNBasicBlock* block,
	struct BNHighlightColor color
);

void BNSetUserCallRegisterStackAdjustment(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNRegisterStackAdjustment* adjust,
	uint64_t count
);

void BNSetUserCallRegisterStackAdjustmentForRegisterStack(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint32_t regStack,
	int32_t adjust,
	uint8_t confidence
);

void BNSetUserCallStackAdjustment(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	int64_t adjust,
	uint8_t confidence
);

void BNSetUserCallTypeAdjustment(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNTypeWithConfidence* type
);

void BNSetUserFunctionCallingConvention(
	struct BNFunction* func,
	struct BNCallingConventionWithConfidence* convention
);

void BNSetUserFunctionCanReturn(
	struct BNFunction* func,
	struct BNBoolWithConfidence* returns
);

void BNSetUserFunctionClobberedRegisters(
	struct BNFunction* func,
	struct BNRegisterSetWithConfidence* regs
);

void BNSetUserFunctionHasVariableArguments(
	struct BNFunction* func,
	struct BNBoolWithConfidence* varArgs
);

void BNSetUserFunctionInlinedDuringAnalysis(
	struct BNFunction* func,
	struct BNBoolWithConfidence inlined
);

void BNSetUserFunctionParameterVariables(
	struct BNFunction* func,
	struct BNParameterVariablesWithConfidence* vars
);

void BNSetUserFunctionRegisterStackAdjustments(
	struct BNFunction* func,
	struct BNRegisterStackAdjustment* adjustments,
	uint64_t count
);

void BNSetUserFunctionReturnRegisters(
	struct BNFunction* func,
	struct BNRegisterSetWithConfidence* regs
);

void BNSetUserFunctionReturnType(
	struct BNFunction* func,
	struct BNTypeWithConfidence* type
);

void BNSetUserFunctionStackAdjustment(
	struct BNFunction* func,
	struct BNOffsetWithConfidence* stackAdjust
);

void BNSetUserGotoLabelName(
	struct BNFunction* func,
	uint64_t labelId,
	char const* name
);

void BNSetUserIndirectBranches(
	struct BNFunction* func,
	struct BNArchitecture* sourceArch,
	uint64_t source,
	struct BNArchitectureAndAddress* branches,
	uint64_t count
);

void BNSetUserInstructionHighlight(
	struct BNFunction* func,
	struct BNArchitecture* arch,
	uint64_t addr,
	struct BNHighlightColor color
);

void BNSetUserVariableValue(
	struct BNFunction* func,
	struct BNVariable* var,
	struct BNArchitectureAndAddress* defSite,
	struct BNPossibleValueSet* value
);

void BNSetViewForFlowGraph(
	struct BNFlowGraph* graph,
	struct BNBinaryView* view
);

void BNSetWorkerThreadCount(
	uint64_t count
);

bool BNSettingsContains(
	struct BNSettings* settings,
	char const* key
);

bool BNSettingsDeserializeSchema(
	struct BNSettings* settings,
	char const* schema,
	BNSettingsScope scope,
	bool merge
);

bool BNSettingsGetBool(
	struct BNSettings* settings,
	char const* key,
	struct BNBinaryView* view,
	enum BNSettingsScope* scope
);

double BNSettingsGetDouble(
	struct BNSettings* settings,
	char const* key,
	struct BNBinaryView* view,
	enum BNSettingsScope* scope
);

int64_t BNSettingsGetInt64(
	struct BNSettings* settings,
	char const* key,
	struct BNBinaryView* view,
	enum BNSettingsScope* scope
);

char* BNSettingsGetJson(
	struct BNSettings* settings,
	char const* key,
	struct BNBinaryView* view,
	enum BNSettingsScope* scope
);

char* BNSettingsGetString(
	struct BNSettings* settings,
	char const* key,
	struct BNBinaryView* view,
	enum BNSettingsScope* scope
);

char const** BNSettingsGetStringList(
	struct BNSettings* settings,
	char const* key,
	struct BNBinaryView* view,
	enum BNSettingsScope* scope,
	uint64_t* inoutSize
);

uint64_t BNSettingsGetUInt64(
	struct BNSettings* settings,
	char const* key,
	struct BNBinaryView* view,
	enum BNSettingsScope* scope
);

bool BNSettingsIsEmpty(
	struct BNSettings* settings
);

char const** BNSettingsKeysList(
	struct BNSettings* settings,
	uint64_t* inoutSize
);

char const** BNSettingsQueryPropertyStringList(
	struct BNSettings* settings,
	char const* key,
	char const* property,
	uint64_t* inoutSize
);

bool BNSettingsRegisterGroup(
	struct BNSettings* settings,
	char const* group,
	char const* title
);

bool BNSettingsRegisterSetting(
	struct BNSettings* settings,
	char const* key,
	char const* properties
);

bool BNSettingsReset(
	struct BNSettings* settings,
	char const* key,
	struct BNBinaryView* view,
	BNSettingsScope scope
);

bool BNSettingsResetAll(
	struct BNSettings* settings,
	struct BNBinaryView* view,
	BNSettingsScope scope,
	bool schemaOnly
);

char* BNSettingsSerializeSchema(
	struct BNSettings* settings
);

bool BNSettingsSetBool(
	struct BNSettings* settings,
	struct BNBinaryView* view,
	BNSettingsScope scope,
	char const* key,
	bool value
);

bool BNSettingsSetDouble(
	struct BNSettings* settings,
	struct BNBinaryView* view,
	BNSettingsScope scope,
	char const* key,
	double value
);

bool BNSettingsSetInt64(
	struct BNSettings* settings,
	struct BNBinaryView* view,
	BNSettingsScope scope,
	char const* key,
	int64_t value
);

bool BNSettingsSetJson(
	struct BNSettings* settings,
	struct BNBinaryView* view,
	BNSettingsScope scope,
	char const* key,
	char const* value
);

void BNSettingsSetResourceId(
	struct BNSettings* settings,
	char const* resourceId
);

bool BNSettingsSetString(
	struct BNSettings* settings,
	struct BNBinaryView* view,
	BNSettingsScope scope,
	char const* key,
	char const* value
);

bool BNSettingsSetStringList(
	struct BNSettings* settings,
	struct BNBinaryView* view,
	BNSettingsScope scope,
	char const* key,
	char const** value,
	uint64_t size
);

bool BNSettingsSetUInt64(
	struct BNSettings* settings,
	struct BNBinaryView* view,
	BNSettingsScope scope,
	char const* key,
	uint64_t value
);

bool BNSettingsUpdateBoolProperty(
	struct BNSettings* settings,
	char const* key,
	char const* property,
	bool value
);

bool BNSettingsUpdateDoubleProperty(
	struct BNSettings* settings,
	char const* key,
	char const* property,
	double value
);

bool BNSettingsUpdateInt64Property(
	struct BNSettings* settings,
	char const* key,
	char const* property,
	int64_t value
);

bool BNSettingsUpdateProperty(
	struct BNSettings* settings,
	char const* key,
	char const* property
);

bool BNSettingsUpdateStringListProperty(
	struct BNSettings* settings,
	char const* key,
	char const* property,
	char const** value,
	uint64_t size
);

bool BNSettingsUpdateStringProperty(
	struct BNSettings* settings,
	char const* key,
	char const* property,
	char const* value
);

bool BNSettingsUpdateUInt64Property(
	struct BNSettings* settings,
	char const* key,
	char const* property,
	uint64_t value
);

void BNShowGraphReport(
	struct BNBinaryView* view,
	char const* title,
	struct BNFlowGraph* graph
);

void BNShowHTMLReport(
	struct BNBinaryView* view,
	char const* title,
	char const* contents,
	char const* plaintext
);

void BNShowMarkdownReport(
	struct BNBinaryView* view,
	char const* title,
	char const* contents,
	char const* plaintext
);

enum BNMessageBoxButtonResult BNShowMessageBox(
	char const* title,
	char const* text,
	BNMessageBoxButtonSet buttons,
	BNMessageBoxIcon icon
);

void BNShowPlainTextReport(
	struct BNBinaryView* view,
	char const* title,
	char const* contents
);

void BNShowReportCollection(
	char const* title,
	struct BNReportCollection* reports
);

void BNShutdown(

);

bool BNSkipAndReturnValue(
	struct BNBinaryView* view,
	struct BNArchitecture* arch,
	uint64_t addr,
	uint64_t value
);

bool BNSnapshotHasAncestor(
	struct BNSnapshot* snapshot,
	struct BNSnapshot* other
);

bool BNSnapshotHasContents(
	struct BNSnapshot* snapshot
);

bool BNSnapshotHasData(
	struct BNDatabase* db,
	int64_t id
);

bool BNSnapshotHasUndo(
	struct BNSnapshot* snapshot
);

bool BNSnapshotStoreData(
	struct BNSnapshot* snapshot,
	struct BNKeyValueStore* data,
	void* ctxt,
	bool (* progress)(void*, uint64_t, uint64_t)
);

void BNSplitVariable(
	struct BNFunction* func,
	struct BNVariable* var
);

struct BNFlowGraphLayoutRequest* BNStartFlowGraphLayout(
	struct BNFlowGraph* graph,
	void* ctxt,
	void (* func)(void* ctxt)
);

void BNStopScriptingInstance(
	struct BNScriptingInstance* instance
);

bool BNStoreSecretsProviderData(
	struct BNSecretsProvider* provider,
	char const* key,
	char const* data
);

bool BNStructureBuilderPropagatesDataVariableReferences(
	struct BNStructureBuilder* s
);

bool BNStructurePropagatesDataVariableReferences(
	struct BNStructure* s
);

struct BNStructure* BNStructureWithReplacedEnumeration(
	struct BNStructure* s,
	struct BNEnumeration* from,
	struct BNEnumeration* to
);

struct BNStructure* BNStructureWithReplacedNamedTypeReference(
	struct BNStructure* s,
	struct BNNamedTypeReference* from,
	struct BNNamedTypeReference* to
);

struct BNStructure* BNStructureWithReplacedStructure(
	struct BNStructure* s,
	struct BNStructure* from,
	struct BNStructure* to
);

char* BNTagGetData(
	struct BNTag* tag
);

char* BNTagGetId(
	struct BNTag* tag
);

struct BNTagType* BNTagGetType(
	struct BNTag* tag
);

void BNTagSetData(
	struct BNTag* tag,
	char const* data
);

char* BNTagTypeGetIcon(
	struct BNTagType* tagType
);

char* BNTagTypeGetId(
	struct BNTagType* tagType
);

char* BNTagTypeGetName(
	struct BNTagType* tagType
);

enum BNTagTypeType BNTagTypeGetType(
	struct BNTagType* tagType
);

struct BNBinaryView* BNTagTypeGetView(
	struct BNTagType* tagType
);

bool BNTagTypeGetVisible(
	struct BNTagType* tagType
);

void BNTagTypeSetIcon(
	struct BNTagType* tagType,
	char const* icon
);

void BNTagTypeSetName(
	struct BNTagType* tagType,
	char const* name
);

void BNTagTypeSetType(
	struct BNTagType* tagType,
	BNTagTypeType type
);

void BNTagTypeSetVisible(
	struct BNTagType* tagType,
	bool visible
);

uint64_t BNToVariableIdentifier(
	struct BNVariable* var
);

bool BNTrimDatabaseSnapshot(
	struct BNDatabase* database,
	int64_t id
);

enum BNReferenceType BNTypeBuilderGetReferenceType(
	struct BNTypeBuilder* type
);

struct BNQualifiedName BNTypeBuilderGetStructureName(
	struct BNTypeBuilder* type
);

uint32_t BNTypeBuilderGetSystemCallNumber(
	struct BNTypeBuilder* type
);

struct BNQualifiedName BNTypeBuilderGetTypeName(
	struct BNTypeBuilder* nt
);

struct BNBoolWithConfidence BNTypeBuilderHasVariableArguments(
	struct BNTypeBuilder* type
);

bool BNTypeBuilderIsSystemCall(
	struct BNTypeBuilder* type
);

void BNTypeBuilderSetAlternateName(
	struct BNTypeBuilder* type,
	char const* name
);

void BNTypeBuilderSetChildType(
	struct BNTypeBuilder* type,
	struct BNTypeWithConfidence* child
);

void BNTypeBuilderSetConst(
	struct BNTypeBuilder* type,
	struct BNBoolWithConfidence* cnst
);

void BNTypeBuilderSetSigned(
	struct BNTypeBuilder* type,
	struct BNBoolWithConfidence* sign
);

void BNTypeBuilderSetStackAdjustment(
	struct BNTypeBuilder* type,
	struct BNOffsetWithConfidence* adjust
);

void BNTypeBuilderSetSystemCallNumber(
	struct BNTypeBuilder* type,
	bool v,
	uint32_t n
);

void BNTypeBuilderSetTypeName(
	struct BNTypeBuilder* type,
	struct BNQualifiedName* name
);

void BNTypeBuilderSetVolatile(
	struct BNTypeBuilder* type,
	struct BNBoolWithConfidence* vltl
);

enum BNReferenceType BNTypeGetReferenceType(
	struct BNType* type
);

struct BNQualifiedName BNTypeGetStructureName(
	struct BNType* type
);

uint32_t BNTypeGetSystemCallNumber(
	struct BNType* type
);

struct BNQualifiedName BNTypeGetTypeName(
	struct BNType* nt
);

struct BNBoolWithConfidence BNTypeHasVariableArguments(
	struct BNType* type
);

bool BNTypeIsSystemCall(
	struct BNType* type
);

bool BNTypeLibraryDecompressToFile(
	char const* file,
	char const* output
);

char* BNTypeLibraryDecompressToString(
	char const* file
);

struct BNMetadata* BNTypeLibraryQueryMetadata(
	struct BNTypeLibrary* lib,
	char const* key
);

void BNTypeLibraryRemoveMetadata(
	struct BNTypeLibrary* lib,
	char const* key
);

void BNTypeLibraryStoreMetadata(
	struct BNTypeLibrary* lib,
	char const* key,
	struct BNMetadata* value
);

bool BNTypeParserParseTypeString(
	struct BNTypeParser* parser,
	char const* source,
	struct BNPlatform* platform,
	struct BNQualifiedNameTypeAndId* existingTypes,
	uint64_t existingTypeCount,
	struct BNQualifiedNameAndType* result,
	struct BNTypeParserError** errors,
	uint64_t* errorCount
);

bool BNTypeParserParseTypesFromSource(
	struct BNTypeParser* parser,
	char const* source,
	char const* fileName,
	struct BNPlatform* platform,
	struct BNQualifiedNameTypeAndId* existingTypes,
	uint64_t existingTypeCount,
	char const* const* options,
	uint64_t optionCount,
	char const* const* includeDirs,
	uint64_t includeDirCount,
	char const* autoTypeSource,
	struct BNTypeParserResult* result,
	struct BNTypeParserError** errors,
	uint64_t* errorCount
);

bool BNTypeParserPreprocessSource(
	struct BNTypeParser* parser,
	char const* source,
	char const* fileName,
	struct BNPlatform* platform,
	struct BNQualifiedNameTypeAndId* existingTypes,
	uint64_t existingTypeCount,
	char const* const* options,
	uint64_t optionCount,
	char const* const* includeDirs,
	uint64_t includeDirCount,
	char** output,
	struct BNTypeParserError** errors,
	uint64_t* errorCount
);

bool BNTypePrinterDefaultPrintAllTypes(
	struct BNTypePrinter* printer,
	struct BNQualifiedName* names,
	struct BNType** types,
	uint64_t typeCount,
	struct BNBinaryView* data,
	int32_t lineWidth,
	BNTokenEscapingType escaping,
	char** result
);

bool BNTypePrinterPrintAllTypes(
	struct BNTypePrinter* printer,
	struct BNQualifiedName* names,
	struct BNType** types,
	uint64_t typeCount,
	struct BNBinaryView* data,
	int32_t lineWidth,
	BNTokenEscapingType escaping,
	char** result
);

struct BNType* BNTypeWithReplacedEnumeration(
	struct BNType* type,
	struct BNEnumeration* from,
	struct BNEnumeration* to
);

struct BNType* BNTypeWithReplacedNamedTypeReference(
	struct BNType* type,
	struct BNNamedTypeReference* from,
	struct BNNamedTypeReference* to
);

struct BNType* BNTypeWithReplacedStructure(
	struct BNType* type,
	struct BNStructure* from,
	struct BNStructure* to
);

bool BNTypesEqual(
	struct BNType* a,
	struct BNType* b
);

bool BNTypesNotEqual(
	struct BNType* a,
	struct BNType* b
);

void BNUndefineAnalysisType(
	struct BNBinaryView* view,
	char const* id
);

void BNUndefineAutoSymbol(
	struct BNBinaryView* view,
	struct BNSymbol* sym
);

void BNUndefineDataVariable(
	struct BNBinaryView* view,
	uint64_t addr
);

void BNUndefineUserAnalysisType(
	struct BNBinaryView* view,
	struct BNQualifiedName* name
);

void BNUndefineUserDataVariable(
	struct BNBinaryView* view,
	uint64_t addr
);

void BNUndefineUserSymbol(
	struct BNBinaryView* view,
	struct BNSymbol* sym
);

bool BNUndo(
	struct BNFileMetadata* file
);

char* BNUnescapeTypeName(
	char const* name,
	BNTokenEscapingType escaping
);

void BNUnmergeVariables(
	struct BNFunction* func,
	struct BNVariable* target,
	struct BNVariable* sources,
	uint64_t sourceCount
);

void BNUnregisterDataNotification(
	struct BNBinaryView* view,
	struct BNBinaryDataNotification* notify
);

void BNUnregisterDebugInfoParser(
	char const* rawName
);

void BNUnregisterEnterpriseServerNotification(
	struct BNEnterpriseServerCallbacks* notify
);

void BNUnregisterLogListener(
	struct BNLogListener* listener
);

void BNUnregisterObjectDestructionCallbacks(
	struct BNObjectDestructionCallbacks* callbacks
);

void BNUnregisterObjectRefDebugTrace(
	char const* typeName,
	void* trace
);

void BNUnregisterScriptingInstanceOutputListener(
	struct BNScriptingInstance* instance,
	struct BNScriptingOutputListener* callbacks
);

void BNUnregisterViewOfType(
	struct BNFileMetadata* file,
	char const* type,
	struct BNBinaryView* view
);

void BNUnsplitVariable(
	struct BNFunction* func,
	struct BNVariable* var
);

void BNUpdateAnalysis(
	struct BNBinaryView* view
);

void BNUpdateAnalysisAndWait(
	struct BNBinaryView* view
);

bool BNUpdateEnterpriseServerLicense(
	uint64_t timeout
);

struct BNFlowGraph* BNUpdateFlowGraph(
	struct BNFlowGraph* graph
);

void BNUpdateHighLevelILOperand(
	struct BNHighLevelILFunction* func,
	uint64_t instr,
	uint64_t operandIndex,
	uint64_t value
);

void BNUpdateLogListeners(

);

void BNUpdateLowLevelILOperand(
	struct BNLowLevelILFunction* func,
	uint64_t instr,
	uint64_t operandIndex,
	uint64_t value
);

void BNUpdateMediumLevelILOperand(
	struct BNMediumLevelILFunction* func,
	uint64_t instr,
	uint64_t operandIndex,
	uint64_t value
);

void BNUpdateReportFlowGraph(
	struct BNReportCollection* reports,
	uint64_t i,
	struct BNFlowGraph* graph
);

enum BNUpdateResult BNUpdateToLatestVersion(
	char const* channel,
	char** errors,
	bool (* progress)(void* ctxt, uint64_t progress, uint64_t total),
	void* context
);

enum BNUpdateResult BNUpdateToVersion(
	char const* channel,
	char const* version,
	char** errors,
	bool (* progress)(void* ctxt, uint64_t progress, uint64_t total),
	void* context
);

void BNUpdatesChecked(

);

void BNWaitForMainThreadAction(
	struct BNMainThreadAction* action
);

bool BNWasFunctionAutomaticallyDiscovered(
	struct BNFunction* func
);

void BNWorkerEnqueue(
	void* ctxt,
	void (* action)(void* ctxt)
);

void BNWorkerInteractiveEnqueue(
	void* ctxt,
	void (* action)(void* ctxt)
);

void BNWorkerPriorityEnqueue(
	void* ctxt,
	void (* action)(void* ctxt)
);

bool BNWorkflowAssignSubactivities(
	struct BNWorkflow* workflow,
	char const* activity,
	char const** activities,
	uint64_t size
);

bool BNWorkflowClear(
	struct BNWorkflow* workflow
);

struct BNWorkflow* BNWorkflowClone(
	struct BNWorkflow* workflow,
	char const* name,
	char const* activity
);

bool BNWorkflowContains(
	struct BNWorkflow* workflow,
	char const* activity
);

struct BNActivity* BNWorkflowGetActivity(
	struct BNWorkflow* workflow,
	char const* activity
);

char const** BNWorkflowGetActivityRoots(
	struct BNWorkflow* workflow,
	char const* activity,
	uint64_t* inoutSize
);

char* BNWorkflowGetConfiguration(
	struct BNWorkflow* workflow,
	char const* activity
);

struct BNFlowGraph* BNWorkflowGetGraph(
	struct BNWorkflow* workflow,
	char const* activity,
	bool sequential
);

char const** BNWorkflowGetSubactivities(
	struct BNWorkflow* workflow,
	char const* activity,
	bool immediate,
	uint64_t* inoutSize
);

bool BNWorkflowInsert(
	struct BNWorkflow* workflow,
	char const* activity,
	char const** activities,
	uint64_t size
);

struct BNWorkflow* BNWorkflowInstance(
	char const* name
);

bool BNWorkflowIsRegistered(
	struct BNWorkflow* workflow
);

bool BNWorkflowRegisterActivity(
	struct BNWorkflow* workflow,
	struct BNActivity* activity,
	char const** subactivities,
	uint64_t size,
	char const* description
);

bool BNWorkflowRemove(
	struct BNWorkflow* workflow,
	char const* activity
);

bool BNWorkflowReplace(
	struct BNWorkflow* workflow,
	char const* activity,
	char const* newActivity
);

void BNWorkflowShowReport(
	struct BNWorkflow* workflow,
	char const* name
);

uint64_t BNWorkflowSize(
	struct BNWorkflow* workflow
);

bool BNWrite16(
	struct BNBinaryWriter* stream,
	uint16_t val
);

bool BNWrite32(
	struct BNBinaryWriter* stream,
	uint32_t val
);

bool BNWrite64(
	struct BNBinaryWriter* stream,
	uint64_t val
);

bool BNWrite8(
	struct BNBinaryWriter* stream,
	uint8_t val
);

bool BNWriteBE16(
	struct BNBinaryWriter* stream,
	uint16_t val
);

bool BNWriteBE32(
	struct BNBinaryWriter* stream,
	uint32_t val
);

bool BNWriteBE64(
	struct BNBinaryWriter* stream,
	uint64_t val
);

bool BNWriteData(
	struct BNBinaryWriter* stream,
	void const* src,
	uint64_t len
);

uint64_t BNWriteDataForDownloadInstance(
	struct BNDownloadInstance* instance,
	uint8_t* data,
	uint64_t len
);

bool BNWriteDatabaseAnalysisCache(
	struct BNDatabase* database,
	struct BNKeyValueStore* val
);

bool BNWriteDatabaseGlobal(
	struct BNDatabase* database,
	char const* key,
	char const* val
);

bool BNWriteDatabaseGlobalData(
	struct BNDatabase* database,
	char const* key,
	struct BNDataBuffer* val
);

int64_t BNWriteDatabaseSnapshotData(
	struct BNDatabase* database,
	int64_t* parents,
	uint64_t parentCount,
	struct BNBinaryView* file,
	char const* name,
	struct BNKeyValueStore* data,
	bool autoSave,
	void* ctxt,
	bool (* progress)(void*, uint64_t, uint64_t)
);

bool BNWriteLE16(
	struct BNBinaryWriter* stream,
	uint16_t val
);

bool BNWriteLE32(
	struct BNBinaryWriter* stream,
	uint32_t val
);

bool BNWriteLE64(
	struct BNBinaryWriter* stream,
	uint64_t val
);

void BNWriteTypeLibraryToFile(
	struct BNTypeLibrary* lib,
	char const* path
);

uint64_t BNWriteViewBuffer(
	struct BNBinaryView* view,
	uint64_t offset,
	struct BNDataBuffer* data
);

uint64_t BNWriteViewData(
	struct BNBinaryView* view,
	uint64_t offset,
	void const* data,
	uint64_t len
);

uint64_t BNWriteWebsocketClientData(
	struct BNWebsocketClient* client,
	uint8_t const* data,
	uint64_t len
);

struct BNDataBuffer* BNZlibCompress(
	struct BNDataBuffer* buf
);

struct BNDataBuffer* BNZlibDecompress(
	struct BNDataBuffer* buf
);


]]

return ffi
