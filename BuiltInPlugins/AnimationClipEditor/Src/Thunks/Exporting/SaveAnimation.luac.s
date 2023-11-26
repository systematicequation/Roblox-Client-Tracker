PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["AnimationData"]
  GETTABLEKS R4 R1 K2 ["Status"]
  GETTABLEKS R3 R4 K3 ["IsLegacyAnimSaves"]
  GETTABLEKS R5 R1 K2 ["Status"]
  GETTABLEKS R4 R5 K4 ["RootInstance"]
  JUMPIFNOT R2 [+1]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R5 0
  MOVE R6 R2
  CALL R5 1 1
  GETTABLEKS R6 R5 K5 ["Metadata"]
  GETUPVAL R7 1
  SETTABLEKS R7 R6 K6 ["Name"]
  GETUPVAL R8 2
  MOVE R9 R5
  CALL R8 1 -1
  NAMECALL R6 R0 K7 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K8 ["getAnimSavesFolder"]
  MOVE R7 R4
  LOADB R8 1
  CALL R6 2 2
  GETUPVAL R8 4
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  JUMPIFNOT R3 [+1]
  MOVE R6 R7
  LOADNIL R8
  LOADNIL R9
  LOADNIL R10
  LOADNIL R11
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K9 ["isChannelAnimation"]
  MOVE R13 R5
  CALL R12 1 1
  JUMPIFNOT R12 [+25]
  GETUPVAL R12 6
  CALL R12 0 1
  JUMPIFNOT R12 [+11]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K10 ["toCurveAnimation"]
  MOVE R13 R5
  MOVE R14 R4
  CALL R12 2 4
  MOVE R8 R12
  MOVE R9 R13
  MOVE R10 R14
  MOVE R11 R15
  JUMP [+35]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K10 ["toCurveAnimation"]
  MOVE R13 R5
  MOVE R14 R4
  CALL R12 2 4
  MOVE R8 R12
  MOVE R9 R13
  MOVE R10 R14
  MOVE R11 R15
  JUMP [+24]
  GETUPVAL R12 6
  CALL R12 0 1
  JUMPIFNOT R12 [+11]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K11 ["toKeyframeSequence"]
  MOVE R13 R5
  MOVE R14 R4
  CALL R12 2 4
  MOVE R8 R12
  MOVE R9 R13
  MOVE R10 R14
  MOVE R11 R15
  JUMP [+10]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K12 ["toRigAnimation"]
  MOVE R13 R5
  MOVE R14 R4
  CALL R12 2 4
  MOVE R8 R12
  MOVE R9 R13
  MOVE R10 R14
  MOVE R11 R15
  GETTABLEKS R13 R5 K5 ["Metadata"]
  GETTABLEKS R12 R13 K6 ["Name"]
  SETTABLEKS R12 R8 K6 ["Name"]
  GETUPVAL R14 1
  NAMECALL R12 R6 K13 ["FindFirstChild"]
  CALL R12 2 1
  JUMPIFNOT R12 [+5]
  GETUPVAL R13 1
  GETTABLE R12 R6 R13
  NAMECALL R12 R12 K14 ["Destroy"]
  CALL R12 1 0
  SETTABLEKS R6 R8 K15 ["Parent"]
  GETUPVAL R12 8
  MOVE R14 R8
  NAMECALL R12 R12 K16 ["GetTags"]
  CALL R12 2 1
  GETIMPORT R13 K18 [ipairs]
  MOVE R14 R12
  CALL R13 1 3
  FORGPREP_INEXT R13
  GETUPVAL R18 8
  MOVE R20 R8
  MOVE R21 R17
  NAMECALL R18 R18 K19 ["RemoveTag"]
  CALL R18 3 0
  FORGLOOP R13 2 [inext] [-7]
  GETUPVAL R13 8
  MOVE R15 R8
  GETIMPORT R17 K22 [os.time]
  CALL R17 0 -1
  FASTCALL TOSTRING [+2]
  GETIMPORT R16 K24 [tostring]
  CALL R16 -1 1
  NAMECALL R13 R13 K25 ["AddTag"]
  CALL R13 3 0
  GETUPVAL R15 9
  LOADB R16 0
  CALL R15 1 -1
  NAMECALL R13 R0 K7 ["dispatch"]
  CALL R13 -1 0
  GETUPVAL R13 10
  CALL R13 0 1
  JUMPIF R13 [+6]
  GETUPVAL R15 11
  LOADB R16 0
  CALL R15 1 -1
  NAMECALL R13 R0 K7 ["dispatch"]
  CALL R13 -1 0
  GETUPVAL R15 12
  LOADK R16 K26 ["Saved"]
  GETUPVAL R17 1
  CALL R15 2 -1
  NAMECALL R13 R0 K7 ["dispatch"]
  CALL R13 -1 0
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K9 ["isChannelAnimation"]
  MOVE R15 R5
  CALL R14 1 1
  JUMPIFNOT R14 [+6]
  GETUPVAL R15 13
  GETTABLEKS R14 R15 K27 ["ANIMATION_TYPE"]
  GETTABLEKS R13 R14 K28 ["CurveAnimation"]
  JUMP [+5]
  GETUPVAL R15 13
  GETTABLEKS R14 R15 K27 ["ANIMATION_TYPE"]
  GETTABLEKS R13 R14 K29 ["KeyframeSequence"]
  GETUPVAL R14 14
  LOADK R16 K30 ["onSaveAnimation"]
  GETUPVAL R17 1
  MOVE R18 R9
  MOVE R19 R10
  MOVE R20 R11
  MOVE R21 R13
  GETTABLEKS R22 R8 K31 ["Guid"]
  NAMECALL R14 R14 K32 ["report"]
  CALL R14 8 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE VAL R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CollectionService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["RigUtils"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETTABLEKS R4 R5 K13 ["RigSerialization"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K14 ["deepCopy"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K15 ["AnimationData"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K16 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K10 ["Src"]
  GETTABLEKS R9 R10 K17 ["Actions"]
  GETTABLEKS R8 R9 K18 ["SetAnimationData"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Actions"]
  GETTABLEKS R9 R10 K19 ["SetIsDirty"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K10 ["Src"]
  GETTABLEKS R11 R12 K17 ["Actions"]
  GETTABLEKS R10 R11 K20 ["SetIsLegacyAnimSaves"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K10 ["Src"]
  GETTABLEKS R12 R13 K17 ["Actions"]
  GETTABLEKS R11 R12 K21 ["SetNotification"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R13 R1 K22 ["LuaFlags"]
  GETTABLEKS R12 R13 K23 ["GetFFlagAnimSavesMigration"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R14 R1 K22 ["LuaFlags"]
  GETTABLEKS R13 R14 K24 ["GetFFlagMigrationDialog"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R15 R1 K22 ["LuaFlags"]
  GETTABLEKS R14 R15 K25 ["GetFFlagRigUtilsMigration2"]
  CALL R13 1 1
  DUPCLOSURE R14 K26 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R6
  RETURN R14 1
