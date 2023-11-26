PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["get"]
  CALL R0 1 1
  LOADK R2 K1 ["Animation"]
  NAMECALL R0 R0 K2 ["PromptForExistingAssetId"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R0 1
  GETUPVAL R2 2
  LOADB R3 0
  NAMECALL R0 R0 K0 ["GetAnimationClipById"]
  CALL R0 3 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["RootInstance"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R3 K4 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CALL R3 1 2
  JUMPIF R3 [+1]
  RETURN R0 0
  JUMPIFNOT R4 [+126]
  FASTCALL1 TONUMBER R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K6 [tonumber]
  CALL R5 1 1
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+119]
  LOADNIL R5
  GETIMPORT R6 K4 [pcall]
  NEWCLOSURE R7 P1
  CAPTURE REF R5
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CALL R6 1 1
  MOVE R3 R6
  JUMPIF R3 [+7]
  GETUPVAL R8 2
  LOADK R9 K7 ["InvalidAnimation"]
  LOADB R10 1
  CALL R8 2 -1
  NAMECALL R6 R0 K8 ["dispatch"]
  CALL R6 -1 0
  JUMPIF R5 [+2]
  CLOSEUPVALS R5
  RETURN R0 0
  LOADNIL R6
  LOADNIL R7
  LOADK R10 K9 ["KeyframeSequence"]
  NAMECALL R8 R5 K10 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+19]
  GETUPVAL R8 3
  CALL R8 0 1
  JUMPIFNOT R8 [+8]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K11 ["fromKeyframeSequence"]
  MOVE R9 R5
  CALL R8 1 2
  MOVE R6 R8
  MOVE R7 R9
  JUMP [+27]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K12 ["fromRigAnimation"]
  MOVE R9 R5
  CALL R8 1 2
  MOVE R6 R8
  MOVE R7 R9
  JUMP [+19]
  GETUPVAL R8 3
  CALL R8 0 1
  JUMPIFNOT R8 [+7]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K13 ["fromCurveAnimation"]
  MOVE R9 R5
  CALL R8 1 1
  MOVE R6 R8
  JUMP [+6]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K13 ["fromCurveAnimation"]
  MOVE R9 R5
  CALL R8 1 1
  MOVE R6 R8
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K14 ["DEFAULT_FRAMERATE"]
  GETTABLEKS R8 R6 K15 ["Metadata"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K16 ["DEFAULT_IMPORTED_NAME"]
  SETTABLEKS R9 R8 K17 ["Name"]
  GETUPVAL R10 7
  MOVE R11 R6
  GETUPVAL R12 8
  CALL R10 2 -1
  NAMECALL R8 R0 K8 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R10 9
  LOADB R11 0
  CALL R10 1 -1
  NAMECALL R8 R0 K8 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R8 10
  CALL R8 0 1
  JUMPIFNOT R8 [+6]
  GETUPVAL R10 11
  LOADB R11 0
  CALL R10 1 -1
  NAMECALL R8 R0 K8 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R10 12
  MOVE R11 R7
  CALL R10 1 -1
  NAMECALL R8 R0 K8 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R8 8
  JUMPIFNOT R8 [+15]
  GETUPVAL R8 8
  LOADK R10 K18 ["onImportAnimation"]
  MOVE R11 R4
  GETTABLEKS R13 R6 K15 ["Metadata"]
  JUMPIFNOT R13 [+5]
  GETTABLEKS R13 R6 K15 ["Metadata"]
  GETTABLEKS R12 R13 K19 ["Guid"]
  JUMP [+1]
  LOADNIL R12
  NAMECALL R8 R8 K20 ["report"]
  CALL R8 4 0
  CLOSEUPVALS R5
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AnimationClipProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K13 ["RigUtils"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K14 ["RigSerialization"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K10 ["Src"]
  GETTABLEKS R7 R8 K15 ["Thunks"]
  GETTABLEKS R6 R7 K16 ["LoadAnimationData"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K10 ["Src"]
  GETTABLEKS R8 R9 K17 ["Actions"]
  GETTABLEKS R7 R8 K18 ["SetIsDirty"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K10 ["Src"]
  GETTABLEKS R9 R10 K17 ["Actions"]
  GETTABLEKS R8 R9 K19 ["SetIsLegacyAnimSaves"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Actions"]
  GETTABLEKS R9 R10 K20 ["SetFrameRate"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K10 ["Src"]
  GETTABLEKS R11 R12 K17 ["Actions"]
  GETTABLEKS R10 R11 K21 ["SetNotification"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R1 K22 ["LuaFlags"]
  GETTABLEKS R11 R12 K23 ["GetFFlagAnimSavesMigration"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R1 K22 ["LuaFlags"]
  GETTABLEKS R12 R13 K24 ["GetFFlagRigUtilsMigration2"]
  CALL R11 1 1
  DUPCLOSURE R12 K25 [PROTO_3]
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R12 1
