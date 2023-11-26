PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["RootInstance"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["getAnimSavesFolder"]
  MOVE R4 R2
  CALL R3 1 2
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+3]
  GETUPVAL R5 2
  JUMPIFNOT R5 [+1]
  MOVE R3 R4
  JUMPIF R3 [+1]
  RETURN R0 0
  GETUPVAL R7 3
  NAMECALL R5 R3 K4 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  LOADNIL R6
  LOADNIL R7
  LOADNIL R8
  LOADNIL R9
  LOADNIL R10
  LOADK R13 K5 ["KeyframeSequence"]
  NAMECALL R11 R5 K6 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+25]
  GETUPVAL R11 4
  CALL R11 0 1
  JUMPIFNOT R11 [+11]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K7 ["fromKeyframeSequence"]
  MOVE R12 R5
  CALL R11 1 5
  MOVE R6 R11
  MOVE R10 R12
  MOVE R7 R13
  MOVE R8 R14
  MOVE R9 R15
  JUMP [+43]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["fromRigAnimation"]
  MOVE R12 R5
  CALL R11 1 5
  MOVE R6 R11
  MOVE R10 R12
  MOVE R7 R13
  MOVE R8 R14
  MOVE R9 R15
  JUMP [+32]
  LOADK R13 K9 ["CurveAnimation"]
  NAMECALL R11 R5 K6 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+26]
  GETUPVAL R11 4
  CALL R11 0 1
  JUMPIFNOT R11 [+10]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K10 ["fromCurveAnimation"]
  MOVE R12 R5
  CALL R11 1 4
  MOVE R6 R11
  MOVE R7 R12
  MOVE R8 R13
  MOVE R9 R14
  JUMP [+9]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["fromCurveAnimation"]
  MOVE R12 R5
  CALL R11 1 4
  MOVE R6 R11
  MOVE R7 R12
  MOVE R8 R13
  MOVE R9 R14
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K11 ["DEFAULT_FRAMERATE"]
  JUMP [+1]
  RETURN R0 0
  GETUPVAL R13 7
  MOVE R14 R6
  GETUPVAL R15 8
  CALL R13 2 -1
  NAMECALL R11 R0 K12 ["dispatch"]
  CALL R11 -1 0
  GETUPVAL R13 9
  LOADK R14 K13 ["Loaded"]
  GETUPVAL R15 3
  CALL R13 2 -1
  NAMECALL R11 R0 K12 ["dispatch"]
  CALL R11 -1 0
  GETUPVAL R13 10
  LOADB R14 0
  CALL R13 1 -1
  NAMECALL R11 R0 K12 ["dispatch"]
  CALL R11 -1 0
  GETUPVAL R13 11
  MOVE R14 R10
  CALL R13 1 -1
  NAMECALL R11 R0 K12 ["dispatch"]
  CALL R11 -1 0
  GETUPVAL R11 1
  CALL R11 0 1
  JUMPIFNOT R11 [+6]
  GETUPVAL R13 12
  GETUPVAL R14 2
  CALL R13 1 -1
  NAMECALL R11 R0 K12 ["dispatch"]
  CALL R11 -1 0
  GETUPVAL R13 13
  GETTABLEKS R12 R13 K14 ["isChannelAnimation"]
  MOVE R13 R6
  CALL R12 1 1
  JUMPIFNOT R12 [+6]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["ANIMATION_TYPE"]
  GETTABLEKS R11 R12 K9 ["CurveAnimation"]
  JUMP [+5]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["ANIMATION_TYPE"]
  GETTABLEKS R11 R12 K5 ["KeyframeSequence"]
  GETUPVAL R12 8
  LOADK R14 K16 ["onLoadAnimation"]
  GETUPVAL R15 3
  MOVE R16 R7
  MOVE R17 R8
  MOVE R18 R9
  MOVE R19 R11
  GETTABLEKS R21 R6 K17 ["Metadata"]
  JUMPIFNOT R21 [+5]
  GETTABLEKS R21 R6 K17 ["Metadata"]
  GETTABLEKS R20 R21 K18 ["Guid"]
  JUMP [+1]
  LOADNIL R20
  NAMECALL R12 R12 K19 ["report"]
  CALL R12 8 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  RETURN R3 1

PROTO_2:
  LOADNIL R3
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["RigUtils"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["RigSerialization"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K10 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Thunks"]
  GETTABLEKS R5 R6 K12 ["LoadAnimationData"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K13 ["Actions"]
  GETTABLEKS R6 R7 K14 ["SetNotification"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K13 ["Actions"]
  GETTABLEKS R7 R8 K15 ["SetIsDirty"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K13 ["Actions"]
  GETTABLEKS R8 R9 K16 ["SetIsLegacyAnimSaves"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K13 ["Actions"]
  GETTABLEKS R9 R10 K17 ["SetFrameRate"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K7 ["Util"]
  GETTABLEKS R10 R11 K18 ["AnimationData"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K19 ["LuaFlags"]
  GETTABLEKS R11 R12 K20 ["GetFFlagAnimSavesMigration"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K19 ["LuaFlags"]
  GETTABLEKS R12 R13 K21 ["GetFFlagRigUtilsMigration2"]
  CALL R11 1 1
  DUPCLOSURE R12 K22 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  MOVE R13 R10
  CALL R13 0 1
  JUMPIFNOT R13 [+1]
  RETURN R12 1
  DUPCLOSURE R13 K23 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  RETURN R13 1
