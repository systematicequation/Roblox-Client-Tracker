PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  NAMECALL R1 R1 K2 ["SaveSelectedToRoblox"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  LOADK R4 K0 ["onExportAnimation"]
  GETUPVAL R5 1
  GETUPVAL R6 2
  MOVE R7 R0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K1 ["Metadata"]
  JUMPIFNOT R9 [+6]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K1 ["Metadata"]
  GETTABLEKS R8 R9 K2 ["Guid"]
  JUMP [+1]
  LOADNIL R8
  GETUPVAL R10 4
  CALL R10 0 1
  JUMPIFNOT R10 [+5]
  GETUPVAL R10 5
  CALL R10 0 1
  JUMPIFNOT R10 [+2]
  ORK R9 R1 K3 [False]
  JUMP [+1]
  LOADNIL R9
  NAMECALL R2 R2 K4 ["report"]
  CALL R2 7 0
  GETUPVAL R2 4
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 6
  NAMECALL R2 R2 K5 ["Destroy"]
  CALL R2 1 0
  GETUPVAL R2 7
  NAMECALL R2 R2 K6 ["Disconnect"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
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
  GETTABLEKS R6 R2 K5 ["Metadata"]
  GETTABLEKS R5 R6 K6 ["Name"]
  GETUPVAL R8 0
  MOVE R9 R5
  GETUPVAL R10 1
  CALL R8 2 -1
  NAMECALL R6 R0 K7 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["getAnimSavesFolder"]
  MOVE R7 R4
  CALL R6 1 2
  GETUPVAL R8 3
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  JUMPIFNOT R3 [+1]
  MOVE R6 R7
  MOVE R8 R6
  JUMPIFNOT R8 [+4]
  MOVE R10 R5
  NAMECALL R8 R6 K9 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIFNOT R6 [+74]
  JUMPIFNOT R8 [+73]
  LOADNIL R9
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K10 ["SelectionChanged"]
  NEWCLOSURE R12 P0
  CAPTURE REF R9
  CAPTURE UPVAL U5
  NAMECALL R10 R10 K11 ["Connect"]
  CALL R10 2 1
  MOVE R9 R10
  LOADB R10 0
  LOADNIL R11
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K12 ["hasFacsData"]
  MOVE R13 R2
  CALL R12 1 1
  MOVE R10 R12
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K13 ["isChannelAnimation"]
  MOVE R13 R2
  CALL R12 1 1
  JUMPIFNOT R12 [+6]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K14 ["ANIMATION_TYPE"]
  GETTABLEKS R11 R12 K15 ["CurveAnimation"]
  JUMP [+5]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K14 ["ANIMATION_TYPE"]
  GETTABLEKS R11 R12 K16 ["KeyframeSequence"]
  GETUPVAL R12 8
  LOADK R14 K17 ["AnimationClipEditor"]
  NAMECALL R12 R12 K9 ["FindFirstChild"]
  CALL R12 2 1
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K18 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
  NAMECALL R13 R12 K9 ["FindFirstChild"]
  CALL R13 2 1
  LOADNIL R14
  GETTABLEKS R15 R13 K19 ["Event"]
  NEWCLOSURE R17 P1
  CAPTURE UPVAL U1
  CAPTURE REF R10
  CAPTURE REF R11
  CAPTURE VAL R2
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R8
  CAPTURE REF R14
  NAMECALL R15 R15 K11 ["Connect"]
  CALL R15 2 1
  MOVE R14 R15
  GETUPVAL R15 4
  NEWTABLE R17 0 1
  MOVE R18 R8
  SETLIST R17 R18 1 [1]
  NAMECALL R15 R15 K20 ["Set"]
  CALL R15 2 0
  CLOSEUPVALS R9
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Selection"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RobloxPluginGuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["AnimationClipEditor"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R6 R2 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["RigUtils"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R8 R2 K11 ["Src"]
  GETTABLEKS R7 R8 K14 ["Thunks"]
  GETTABLEKS R6 R7 K15 ["Exporting"]
  GETTABLEKS R5 R6 K16 ["SaveAnimation"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R2 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K17 ["AnimationData"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R9 R2 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K18 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R2 K19 ["LuaFlags"]
  GETTABLEKS R8 R9 K20 ["GetFFlagAnimSavesMigration"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R10 R2 K19 ["LuaFlags"]
  GETTABLEKS R9 R10 K21 ["GetFFlagDeleteOnPublishAnimation"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R11 R2 K19 ["LuaFlags"]
  GETTABLEKS R10 R11 K22 ["GetFFlagMigrationAnalytics"]
  CALL R9 1 1
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R10 1
