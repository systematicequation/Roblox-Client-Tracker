PROTO_0:
  JUMPIFNOT R0 [+3]
  LENGTH R2 R0
  JUMPIFNOTEQKN R2 K0 [0] [+2]
  RETURN R0 0
  LOADNIL R2
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  MOVE R5 R1
  MOVE R6 R0
  NAMECALL R3 R3 K1 ["GetInstance"]
  CALL R3 3 1
  MOVE R2 R3
  MOVE R3 R2
  JUMPIF R3 [+2]
  GETUPVAL R4 1
  GETTABLE R3 R4 R0
  RETURN R3 1

PROTO_1:
  GETUPVAL R2 0
  SETTABLE R1 R2 R0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  JUMPIFNOT R2 [+12]
  GETUPVAL R2 1
  GETUPVAL R4 0
  NAMECALL R2 R2 K0 ["IsRecordingInProgress"]
  CALL R2 2 1
  JUMPIF R2 [+4]
  GETIMPORT R2 K2 [warn]
  LOADK R3 K3 ["StartRecordingActions failed: currentRecording is set but not running"]
  CALL R2 1 0
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R3 2
  JUMPIFNOT R3 [+2]
  ORK R2 R1 K4 ["Assistant Actions"]
  JUMP [+1]
  LOADK R2 K4 ["Assistant Actions"]
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["TryBeginRecording"]
  CALL R3 2 1
  JUMPIF R3 [+6]
  GETIMPORT R4 K2 [warn]
  LOADK R5 K6 ["StartRecordingActions failed: TryBeginRecording returned nil"]
  CALL R4 1 0
  LOADB R4 0
  RETURN R4 1
  SETUPVAL R3 0
  LOADB R4 1
  MOVE R5 R3
  RETURN R4 2

PROTO_3:
  GETUPVAL R2 0
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["GetCanUndo"]
  CALL R2 1 2
  GETIMPORT R4 K4 [Enum.FinishRecordingOperation.Append]
  GETUPVAL R6 2
  JUMPIFNOT R6 [+2]
  ORK R5 R1 K5 ["Assistant Actions"]
  JUMP [+1]
  LOADK R5 K5 ["Assistant Actions"]
  GETUPVAL R6 3
  JUMPIFNOTEQ R6 R0 [+3]
  JUMPIFEQ R3 R5 [+3]
  GETIMPORT R4 K7 [Enum.FinishRecordingOperation.Commit]
  GETUPVAL R6 1
  GETUPVAL R8 0
  MOVE R9 R4
  NAMECALL R6 R6 K8 ["FinishRecording"]
  CALL R6 3 0
  SETUPVAL R0 3
  LOADNIL R6
  SETUPVAL R6 0
  LOADB R6 1
  RETURN R6 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["requestMetadata"]
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+1]
  RETURN R1 1
  NEWTABLE R1 0 0
  SETTABLEKS R0 R1 K1 ["RequestId"]
  GETIMPORT R2 K4 [os.clock]
  CALL R2 0 1
  SETTABLEKS R2 R1 K5 ["Time_Start"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["requestMetadata"]
  SETTABLE R1 R2 R0
  RETURN R1 1

PROTO_5:
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["Instance"] [+2]
  RETURN R0 0
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["SetAttribute"]
  CALL R2 3 0
  JUMPIFNOTEQKS R0 K4 ["Query"] [+19]
  GETUPVAL R2 0
  LOADK R4 K5 ["PROMPT: "]
  LOADK R8 K6 ["^("]
  LOADK R11 K7 ["."]
  LOADN R13 30
  NAMECALL R11 R11 K8 ["rep"]
  CALL R11 2 1
  MOVE R9 R11
  LOADK R10 K9 [".-)( .*)$"]
  CONCAT R7 R8 R10
  LOADK R8 K10 ["%1..."]
  NAMECALL R5 R1 K11 ["gsub"]
  CALL R5 3 1
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K12 ["Name"]
  RETURN R0 0

PROTO_6:
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["Instance"] [+2]
  RETURN R0 0
  GETUPVAL R3 0
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K3 ["SetAttribute"]
  CALL R3 3 0
  JUMPIFNOTEQKS R1 K4 ["Query"] [+19]
  GETUPVAL R3 0
  LOADK R5 K5 ["PROMPT: "]
  LOADK R9 K6 ["^("]
  LOADK R12 K7 ["."]
  LOADN R14 30
  NAMECALL R12 R12 K8 ["rep"]
  CALL R12 2 1
  MOVE R10 R12
  LOADK R11 K9 [".-)( .*)$"]
  CONCAT R8 R9 R11
  LOADK R9 K10 ["%1..."]
  NAMECALL R6 R2 K11 ["gsub"]
  CALL R6 3 1
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K12 ["Name"]
  RETURN R0 0

PROTO_7:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIF R1 [+83]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["Folder"]
  CALL R2 1 1
  MOVE R1 R2
  GETIMPORT R2 K5 [workspace]
  SETTABLEKS R2 R1 K6 ["Parent"]
  GETUPVAL R2 0
  SETTABLE R1 R2 R0
  NEWCLOSURE R2 P0
  CAPTURE REF R1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["requestMetadata"]
  GETTABLE R4 R5 R0
  JUMPIFNOT R4 [+2]
  MOVE R3 R4
  JUMP [+14]
  NEWTABLE R4 0 0
  SETTABLEKS R0 R4 K8 ["RequestId"]
  GETIMPORT R5 K11 [os.clock]
  CALL R5 0 1
  SETTABLEKS R5 R4 K12 ["Time_Start"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["requestMetadata"]
  SETTABLE R4 R5 R0
  MOVE R3 R4
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  FASTCALL1 TYPEOF R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K14 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K0 ["Instance"] [+2]
  JUMP [+24]
  MOVE R11 R7
  MOVE R12 R8
  NAMECALL R9 R1 K15 ["SetAttribute"]
  CALL R9 3 0
  JUMPIFNOTEQKS R7 K16 ["Query"] [+18]
  LOADK R10 K17 ["PROMPT: "]
  LOADK R14 K18 ["^("]
  LOADK R17 K19 ["."]
  LOADN R19 30
  NAMECALL R17 R17 K20 ["rep"]
  CALL R17 2 1
  MOVE R15 R17
  LOADK R16 K21 [".-)( .*)$"]
  CONCAT R13 R14 R16
  LOADK R14 K22 ["%1..."]
  NAMECALL R11 R8 K23 ["gsub"]
  CALL R11 3 1
  CONCAT R9 R10 R11
  SETTABLEKS R9 R1 K24 ["Name"]
  FORGLOOP R4 2 [-33]
  DUPTABLE R6 K26 [{"__newindex"}]
  NEWCLOSURE R7 P1
  CAPTURE REF R1
  SETTABLEKS R7 R6 K25 ["__newindex"]
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K28 [setmetatable]
  CALL R4 2 0
  CLOSEUPVALS R1
  RETURN R1 1

PROTO_8:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["requestMetadata"]
  GETTABLE R3 R4 R0
  JUMPIFNOT R3 [+2]
  MOVE R2 R3
  JUMP [+14]
  NEWTABLE R3 0 0
  SETTABLEKS R0 R3 K1 ["RequestId"]
  GETIMPORT R4 K4 [os.clock]
  CALL R4 0 1
  SETTABLEKS R4 R3 K5 ["Time_Start"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["requestMetadata"]
  SETTABLE R3 R4 R0
  MOVE R2 R3
  GETTABLE R3 R2 R1
  RETURN R3 1

PROTO_9:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["requestMetadata"]
  GETTABLE R4 R5 R0
  JUMPIFNOT R4 [+2]
  MOVE R3 R4
  JUMP [+14]
  NEWTABLE R4 0 0
  SETTABLEKS R0 R4 K1 ["RequestId"]
  GETIMPORT R5 K4 [os.clock]
  CALL R5 0 1
  SETTABLEKS R5 R4 K5 ["Time_Start"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["requestMetadata"]
  SETTABLE R4 R5 R0
  MOVE R3 R4
  SETTABLE R2 R3 R1
  RETURN R0 0

PROTO_10:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StreamingService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ConvAIIncomingLinks"]
  NAMECALL R2 R2 K6 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K7 ["ConvAIAddDraftModeForSceneCreate2"]
  NAMECALL R3 R3 K6 ["GetFastFlag"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K8 ["ConvAIMenu_Attrib2"]
  NAMECALL R4 R4 K6 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K9 ["ConvAICodeRunnerTelemetry"]
  NAMECALL R5 R5 K6 ["GetFastFlag"]
  CALL R5 2 1
  DUPTABLE R6 K16 [{"assetCacheMap", "guidToInfo", "chatBulletMap", "altDataMap", "requestRegionAdornments", "requestMetadata"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K10 ["assetCacheMap"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K11 ["guidToInfo"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K12 ["chatBulletMap"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K13 ["altDataMap"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K14 ["requestRegionAdornments"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K15 ["requestMetadata"]
  JUMPIFNOT R2 [+12]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K10 ["assetCacheMap"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K17 ["g2g"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K18 ["guid2instance"]
  JUMPIFNOT R3 [+7]
  LOADNIL R7
  SETTABLEKS R7 R6 K19 ["activeDraftGuids"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K20 ["draftModeModels"]
  JUMPIFNOT R4 [+4]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K21 ["cachedAssetAttributionInfo"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 0
  DUPCLOSURE R9 K22 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R9 R6 K23 ["get"]
  DUPCLOSURE R9 K24 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R9 R6 K25 ["set"]
  LOADNIL R9
  LOADNIL R10
  NEWCLOSURE R11 P2
  CAPTURE REF R10
  CAPTURE VAL R0
  CAPTURE VAL R5
  SETTABLEKS R11 R6 K26 ["StartRecordingActions"]
  NEWCLOSURE R11 P3
  CAPTURE REF R10
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE REF R9
  SETTABLEKS R11 R6 K27 ["EndRecordingActions"]
  DUPCLOSURE R11 K28 [PROTO_4]
  CAPTURE VAL R6
  DUPCLOSURE R12 K29 [PROTO_7]
  CAPTURE VAL R8
  CAPTURE VAL R6
  SETTABLEKS R12 R6 K30 ["GetRequestFolder"]
  DUPCLOSURE R12 K31 [PROTO_8]
  CAPTURE VAL R6
  SETTABLEKS R12 R6 K32 ["GetRequestMetadata"]
  DUPCLOSURE R12 K33 [PROTO_9]
  CAPTURE VAL R6
  SETTABLEKS R12 R6 K34 ["SetRequestMetadata"]
  DUPCLOSURE R12 K35 [PROTO_10]
  SETTABLEKS R12 R6 K36 ["destroy"]
  CLOSEUPVALS R9
  RETURN R6 1
