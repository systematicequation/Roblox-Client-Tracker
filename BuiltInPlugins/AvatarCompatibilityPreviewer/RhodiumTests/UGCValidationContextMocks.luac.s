PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R0 R2
  JUMPIFEQKNIL R1 [+2]
  RETURN R0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["createCachedResponse"]
  CALL R1 0 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETIMPORT R2 K6 [table.clone]
  MOVE R3 R0
  CALL R2 1 1
  MOVE R0 R2
  GETUPVAL R2 0
  SETTABLE R1 R0 R2
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["waitForSignal"]
  JUMPIFNOTEQKNIL R2 [+8]
  GETUPVAL R2 0
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["waitForSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["Once"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  NEWTABLE R2 0 0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R5 0 0
  CALL R3 2 1
  DUPTABLE R4 K4 [{"cachedResponses", "validateBundle"}]
  SETTABLEKS R1 R4 K2 ["cachedResponses"]
  SETTABLEKS R3 R4 K3 ["validateBundle"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["Context"]
  GETTABLEKS R6 R7 K7 ["Provider"]
  DUPTABLE R7 K9 [{"value"}]
  SETTABLEKS R4 R7 K8 ["value"]
  GETTABLEKS R8 R0 K10 ["children"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_4:
  DUPTABLE R0 K2 [{"completed", "ugcValidationResponse"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["completed"]
  DUPTABLE R1 K5 [{"errors", "pieces"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K3 ["errors"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K4 ["pieces"]
  SETTABLEKS R1 R0 K1 ["ugcValidationResponse"]
  RETURN R0 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"waitForSignal", "createCachedResponse"}]
  GETTABLEKS R4 R0 K1 ["waitForSignal"]
  SETTABLEKS R4 R3 K1 ["waitForSignal"]
  DUPCLOSURE R4 K4 [PROTO_4]
  SETTABLEKS R4 R3 K2 ["createCachedResponse"]
  GETTABLEKS R4 R0 K5 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_6:
  DUPTABLE R0 K2 [{"completed", "ugcValidationResponse"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["completed"]
  DUPTABLE R1 K5 [{"errors", "pieces"}]
  NEWTABLE R2 0 3
  DUPTABLE R3 K8 [{"assetType", "error"}]
  GETIMPORT R4 K12 [Enum.AssetType.Head]
  SETTABLEKS R4 R3 K6 ["assetType"]
  DUPTABLE R4 K15 [{"type", "message"}]
  LOADK R5 K14 ["message"]
  SETTABLEKS R5 R4 K13 ["type"]
  LOADK R5 K16 ["Your brain gets smart, but your head gets dumb"]
  SETTABLEKS R5 R4 K14 ["message"]
  SETTABLEKS R4 R3 K7 ["error"]
  DUPTABLE R4 K8 [{"assetType", "error"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K6 ["assetType"]
  DUPTABLE R5 K15 [{"type", "message"}]
  LOADK R6 K14 ["message"]
  SETTABLEKS R6 R5 K13 ["type"]
  LOADK R6 K17 ["Full body error"]
  SETTABLEKS R6 R5 K14 ["message"]
  SETTABLEKS R5 R4 K7 ["error"]
  DUPTABLE R5 K8 [{"assetType", "error"}]
  GETIMPORT R6 K19 [Enum.AssetType.LeftArm]
  SETTABLEKS R6 R5 K6 ["assetType"]
  DUPTABLE R6 K20 [{"type"}]
  LOADK R7 K21 ["notFound"]
  SETTABLEKS R7 R6 K13 ["type"]
  SETTABLEKS R6 R5 K7 ["error"]
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K3 ["errors"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K4 ["pieces"]
  SETTABLEKS R1 R0 K1 ["ugcValidationResponse"]
  RETURN R0 1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"createCachedResponse"}]
  DUPCLOSURE R4 K3 [PROTO_6]
  SETTABLEKS R4 R3 K1 ["createCachedResponse"]
  GETTABLEKS R4 R0 K4 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_8:
  LOADNIL R0
  RETURN R0 1

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"createCachedResponse"}]
  DUPCLOSURE R4 K3 [PROTO_8]
  SETTABLEKS R4 R3 K1 ["createCachedResponse"]
  GETTABLEKS R4 R0 K4 ["children"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Components"]
  GETTABLEKS R3 R4 K10 ["UGCValidationContext"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["Constants"]
  CALL R3 1 1
  NEWTABLE R4 4 0
  DUPCLOSURE R5 K13 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  DUPCLOSURE R6 K14 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R6 R4 K15 ["AlwaysPassesProvider"]
  DUPCLOSURE R6 K16 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R6 R4 K17 ["AlwaysFailsProvider"]
  DUPCLOSURE R6 K18 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R6 R4 K19 ["NeverReturnsProvider"]
  RETURN R4 1
