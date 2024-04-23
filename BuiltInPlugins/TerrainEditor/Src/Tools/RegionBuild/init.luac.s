PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_stamp"]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_stamp"]
  NAMECALL R0 R0 K1 ["commit"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_stamp"]
  NAMECALL R0 R0 K2 ["destroy"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_stamp"]
  GETUPVAL R0 0
  NAMECALL R0 R0 K3 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["BuildSettings"]
  GETTABLE R2 R0 R3
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["TerrainType"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["_recording"]
  JUMPIFNOT R2 [+17]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["_services"]
  GETTABLEKS R2 R3 K8 ["ChangeHistoryService"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["_recording"]
  GETIMPORT R5 K12 [Enum.FinishRecordingOperation.Append]
  NAMECALL R2 R2 K13 ["FinishRecording"]
  CALL R2 3 0
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K6 ["_recording"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["_tools"]
  GETTABLE R2 R3 R1
  NEWTABLE R4 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["BuildSettings"]
  NEWTABLE R6 1 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["PlacementMode"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  NAMECALL R2 R2 K16 ["saveForm"]
  CALL R2 2 0
  GETUPVAL R2 0
  NEWTABLE R4 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["BuildSettings"]
  NEWTABLE R6 1 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["TerrainType"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K17 ["None"]
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  NAMECALL R2 R2 K16 ["saveForm"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K18 ["OnGizmoChanged"]
  NAMECALL R2 R2 K19 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 0 0
  SETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R3 1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  NAMECALL R8 R7 K2 ["new"]
  CALL R8 1 1
  MOVE R11 R1
  MOVE R12 R2
  NAMECALL R9 R8 K0 ["init"]
  CALL R9 3 0
  GETTABLEKS R9 R0 K1 ["_tools"]
  SETTABLE R8 R9 R6
  GETTABLEKS R10 R0 K1 ["_tools"]
  GETTABLE R9 R10 R6
  NEWTABLE R10 1 0
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["BuildSettings"]
  NEWTABLE R12 1 0
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K4 ["Confirm"]
  DUPTABLE R14 K8 [{"Hidden", "Label", "Schema"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K5 ["Hidden"]
  LOADK R15 K9 [""]
  SETTABLEKS R15 R14 K6 ["Label"]
  DUPTABLE R15 K11 [{"OnClick"}]
  NEWCLOSURE R16 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R16 R15 K10 ["OnClick"]
  SETTABLEKS R15 R14 K7 ["Schema"]
  SETTABLE R14 R12 R13
  SETTABLE R12 R10 R11
  SETTABLEKS R10 R9 K12 ["_overrides"]
  FORGLOOP R3 2 [-46]
  RETURN R0 0

PROTO_2:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R1 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["form"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["BuildSettings"]
  GETTABLE R6 R2 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["TerrainType"]
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  MOVE R5 R1
  NAMECALL R3 R3 K4 ["saveForm"]
  CALL R3 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["BuildSettings"]
  GETTABLE R4 R1 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["TerrainType"]
  GETTABLE R3 R4 R5
  GETTABLEKS R5 R0 K1 ["_tools"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["BuildSettings"]
  GETTABLE R7 R2 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["TerrainType"]
  GETTABLE R6 R7 R8
  GETTABLE R4 R5 R6
  NAMECALL R4 R4 K0 ["getPayload"]
  CALL R4 1 1
  JUMPIFNOT R3 [+71]
  NAMECALL R5 R0 K5 ["destroyStamp"]
  CALL R5 1 0
  GETTABLEKS R5 R0 K6 ["_onFormChangedForwarder"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R0 K6 ["_onFormChangedForwarder"]
  NAMECALL R5 R5 K7 ["Disconnect"]
  CALL R5 1 0
  GETTABLEKS R5 R0 K8 ["_onGizmoChangedForwarder"]
  JUMPIFNOT R5 [+5]
  GETTABLEKS R5 R0 K8 ["_onGizmoChangedForwarder"]
  NAMECALL R5 R5 K7 ["Disconnect"]
  CALL R5 1 0
  GETTABLEKS R7 R0 K1 ["_tools"]
  GETTABLE R6 R7 R3
  GETTABLEKS R5 R6 K9 ["OnFormChanged"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  NAMECALL R5 R5 K10 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K6 ["_onFormChangedForwarder"]
  GETTABLEKS R7 R0 K1 ["_tools"]
  GETTABLE R6 R7 R3
  GETTABLEKS R5 R6 K11 ["OnGizmoChanged"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  NAMECALL R5 R5 K10 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K8 ["_onGizmoChangedForwarder"]
  GETTABLEKS R6 R0 K1 ["_tools"]
  GETTABLE R5 R6 R3
  NEWTABLE R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["BuildSettings"]
  NEWTABLE R9 1 0
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["PlacementMode"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  SETTABLE R9 R7 R8
  NAMECALL R5 R5 K4 ["saveForm"]
  CALL R5 2 0
  GETTABLEKS R5 R0 K13 ["_onUndoConnection"]
  JUMPIFNOT R5 [+77]
  GETTABLEKS R5 R0 K13 ["_onUndoConnection"]
  NAMECALL R5 R5 K7 ["Disconnect"]
  CALL R5 1 0
  RETURN R0 0
  GETTABLEKS R5 R0 K14 ["_stamp"]
  JUMPIFNOT R5 [+68]
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+58]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["BuildSettings"]
  GETTABLE R6 R1 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K15 ["Material"]
  GETTABLE R5 R6 R7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["BuildSettings"]
  GETTABLE R7 R4 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["Material"]
  GETTABLE R6 R7 R8
  JUMPIFNOT R5 [+41]
  JUMPIFEQ R5 R6 [+40]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K16 ["new"]
  MOVE R8 R5
  CALL R7 1 1
  GETTABLEKS R9 R0 K1 ["_tools"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["BuildSettings"]
  GETTABLE R11 R2 R12
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K3 ["TerrainType"]
  GETTABLE R10 R11 R12
  GETTABLE R8 R9 R10
  NEWTABLE R10 1 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["BuildSettings"]
  NEWTABLE R12 1 0
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K17 ["MaterialLUT"]
  SETTABLE R7 R12 R13
  SETTABLE R12 R10 R11
  NAMECALL R8 R8 K18 ["setPayload"]
  CALL R8 2 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["BuildSettings"]
  GETTABLE R8 R4 R9
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K17 ["MaterialLUT"]
  SETTABLE R7 R8 R9
  GETTABLEKS R5 R0 K14 ["_stamp"]
  MOVE R7 R4
  MOVE R8 R1
  NAMECALL R5 R5 K19 ["update"]
  CALL R5 3 0
  RETURN R0 0

PROTO_6:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R1 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["gizmos"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K5 ["Id"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K6 ["Placement"]
  JUMPIFNOTEQ R9 R10 [+20]
  GETTABLEKS R11 R8 K7 ["Value"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["BuildSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K8 ["PlacementMode"]
  GETTABLE R9 R10 R11
  JUMPIFNOT R9 [+8]
  FASTCALL2 TABLE_INSERT R3 R8 [+5]
  MOVE R10 R3
  MOVE R11 R8
  GETIMPORT R9 K11 [table.insert]
  CALL R9 2 0
  JUMP [+25]
  GETTABLEKS R9 R8 K5 ["Id"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K12 ["Region"]
  JUMPIFNOTEQ R9 R10 [+19]
  GETTABLEKS R11 R8 K7 ["Value"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["BuildSettings"]
  GETTABLE R10 R11 R12
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K8 ["PlacementMode"]
  GETTABLE R9 R10 R11
  JUMPIF R9 [+7]
  FASTCALL2 TABLE_INSERT R3 R8 [+5]
  MOVE R10 R3
  MOVE R11 R8
  GETIMPORT R9 K11 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-52]
  RETURN R3 1

PROTO_7:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["BuildSettings"]
  GETTABLE R6 R2 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["TerrainType"]
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  MOVE R5 R1
  NAMECALL R3 R3 K4 ["saveGizmos"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K5 ["_stamp"]
  JUMPIFNOT R3 [+87]
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["BuildSettings"]
  GETTABLE R6 R2 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["TerrainType"]
  GETTABLE R5 R6 R7
  GETTABLE R3 R4 R5
  NAMECALL R3 R3 K0 ["getPayload"]
  CALL R3 1 1
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIFNOT R4 [+63]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R3 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["MaterialLUT"]
  GETTABLE R4 R5 R6
  JUMPIF R4 [+54]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R3 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["Material"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["new"]
  MOVE R6 R4
  CALL R5 1 1
  GETTABLEKS R7 R0 K1 ["_tools"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["BuildSettings"]
  GETTABLE R9 R2 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["TerrainType"]
  GETTABLE R8 R9 R10
  GETTABLE R6 R7 R8
  NEWTABLE R8 1 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["BuildSettings"]
  NEWTABLE R10 1 0
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["MaterialLUT"]
  SETTABLE R5 R10 R11
  SETTABLE R10 R8 R9
  NAMECALL R6 R6 K9 ["setPayload"]
  CALL R6 2 0
  GETTABLEKS R7 R0 K1 ["_tools"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["BuildSettings"]
  GETTABLE R9 R2 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["TerrainType"]
  GETTABLE R8 R9 R10
  GETTABLE R6 R7 R8
  NAMECALL R6 R6 K0 ["getPayload"]
  CALL R6 1 1
  MOVE R3 R6
  GETTABLEKS R4 R0 K5 ["_stamp"]
  MOVE R6 R3
  MOVE R7 R1
  NAMECALL R4 R4 K10 ["update"]
  CALL R4 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_tools"]
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  NEWTABLE R2 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["BuildSettings"]
  NEWTABLE R4 1 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["PlacementMode"]
  LOADB R6 1
  SETTABLE R6 R4 R5
  SETTABLE R4 R2 R3
  NAMECALL R0 R0 K3 ["saveForm"]
  CALL R0 2 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_stamp"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K5 ["_recording"]
  JUMPIFNOT R0 [+17]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["_services"]
  GETTABLEKS R0 R1 K7 ["ChangeHistoryService"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["_recording"]
  GETIMPORT R3 K11 [Enum.FinishRecordingOperation.Cancel]
  NAMECALL R0 R0 K12 ["FinishRecording"]
  CALL R0 3 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_recording"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["getPayload"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["BuildSettings"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["TerrainType"]
  GETTABLE R0 R1 R2
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K3 ["None"]
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["_tools"]
  GETTABLE R1 R2 R0
  NAMECALL R1 R1 K0 ["getPayload"]
  CALL R1 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["PlacementMode"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["_tools"]
  GETTABLE R2 R3 R0
  NEWTABLE R4 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  NEWTABLE R6 2 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["Transform"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K7 ["Place"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["BuildSettings"]
  GETTABLE R10 R1 R11
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K6 ["Transform"]
  GETTABLE R9 R10 R11
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["BuildSettings"]
  GETTABLE R11 R1 R12
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K8 ["Size"]
  GETTABLE R10 R11 R12
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K1 ["BuildSettings"]
  GETTABLE R12 R1 R13
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K9 ["NoiseStrength"]
  GETTABLE R11 R12 R13
  MOVE R12 R0
  CALL R8 4 1
  SETTABLE R8 R6 R7
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["PlacementMode"]
  LOADB R8 0
  SETTABLE R8 R6 R7
  SETTABLE R6 R4 R5
  NAMECALL R2 R2 K10 ["saveForm"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["_tools"]
  GETTABLE R2 R3 R0
  NAMECALL R2 R2 K0 ["getPayload"]
  CALL R2 1 1
  MOVE R1 R2
  GETUPVAL R2 5
  CALL R2 0 1
  JUMPIFNOT R2 [+49]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["MaterialLUT"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+40]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K12 ["Material"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K13 ["new"]
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["_tools"]
  GETTABLE R4 R5 R0
  NEWTABLE R6 1 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["BuildSettings"]
  NEWTABLE R8 1 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["MaterialLUT"]
  SETTABLE R3 R8 R9
  SETTABLE R8 R6 R7
  NAMECALL R4 R4 K14 ["setPayload"]
  CALL R4 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["_tools"]
  GETTABLE R4 R5 R0
  NAMECALL R4 R4 K0 ["getPayload"]
  CALL R4 1 1
  MOVE R1 R4
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["_onUndoConnection"]
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["_onUndoConnection"]
  NAMECALL R2 R2 K16 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["_services"]
  GETTABLEKS R4 R5 K18 ["ChangeHistoryService"]
  GETTABLEKS R3 R4 K19 ["OnUndo"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K20 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K15 ["_onUndoConnection"]
  GETUPVAL R2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K17 ["_services"]
  GETTABLEKS R3 R4 K18 ["ChangeHistoryService"]
  LOADK R5 K21 ["TerrainPlacement"]
  LOADK R6 K22 ["Placed Terrain"]
  NAMECALL R3 R3 K23 ["TryBeginRecording"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K24 ["_recording"]
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K25 ["createStamp"]
  CALL R2 3 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K24 ["_recording"]
  JUMPIFNOT R2 [+26]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K17 ["_services"]
  GETTABLEKS R2 R3 K18 ["ChangeHistoryService"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K24 ["_recording"]
  GETIMPORT R5 K29 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R2 R2 K30 ["FinishRecording"]
  CALL R2 3 0
  GETUPVAL R2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K17 ["_services"]
  GETTABLEKS R3 R4 K18 ["ChangeHistoryService"]
  LOADK R5 K21 ["TerrainPlacement"]
  LOADK R6 K31 ["Adjust"]
  NAMECALL R3 R3 K23 ["TryBeginRecording"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K24 ["_recording"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R1 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["activate"]
  CALL R2 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["BuildSettings"]
  GETTABLE R3 R1 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["TerrainType"]
  GETTABLE R2 R3 R4
  GETTABLEKS R4 R0 K5 ["_shortcutController"]
  GETTABLEKS R3 R4 K6 ["MouseDownAction"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R3 R3 K7 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K8 ["_mouseDownConnection"]
  JUMPIFNOT R2 [+122]
  GETTABLEKS R5 R0 K1 ["_tools"]
  GETTABLE R4 R5 R2
  GETTABLEKS R3 R4 K9 ["OnFormChanged"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K7 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K10 ["_onFormChangedForwarder"]
  GETTABLEKS R5 R0 K1 ["_tools"]
  GETTABLE R4 R5 R2
  GETTABLEKS R3 R4 K11 ["OnGizmoChanged"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NAMECALL R3 R3 K7 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K12 ["_onGizmoChangedForwarder"]
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETTABLE R3 R4 R2
  NEWTABLE R5 1 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  NEWTABLE R7 1 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K13 ["PlacementMode"]
  LOADB R9 1
  SETTABLE R9 R7 R8
  SETTABLE R7 R5 R6
  NAMECALL R3 R3 K14 ["saveForm"]
  CALL R3 2 0
  GETTABLEKS R3 R0 K15 ["_onUndoConnection"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K15 ["_onUndoConnection"]
  NAMECALL R3 R3 K16 ["Disconnect"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K17 ["_recording"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R0 K18 ["_services"]
  GETTABLEKS R3 R4 K19 ["ChangeHistoryService"]
  GETTABLEKS R5 R0 K17 ["_recording"]
  GETIMPORT R6 K23 [Enum.FinishRecordingOperation.Cancel]
  NAMECALL R3 R3 K24 ["FinishRecording"]
  CALL R3 3 0
  LOADNIL R3
  SETTABLEKS R3 R0 K17 ["_recording"]
  GETTABLEKS R4 R0 K1 ["_tools"]
  GETTABLE R3 R4 R2
  NAMECALL R3 R3 K0 ["getPayload"]
  CALL R3 1 1
  GETUPVAL R4 4
  CALL R4 0 1
  JUMPIFNOT R4 [+48]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K25 ["None"]
  JUMPIFEQ R2 R4 [+44]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R3 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K26 ["Material"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K27 ["new"]
  MOVE R6 R4
  CALL R5 1 1
  GETTABLEKS R7 R0 K1 ["_tools"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["BuildSettings"]
  GETTABLE R9 R1 R10
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["TerrainType"]
  GETTABLE R8 R9 R10
  GETTABLE R6 R7 R8
  NEWTABLE R8 1 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["BuildSettings"]
  NEWTABLE R10 1 0
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K28 ["MaterialLUT"]
  SETTABLE R5 R10 R11
  SETTABLE R10 R8 R9
  NAMECALL R6 R6 K29 ["setPayload"]
  CALL R6 2 0
  RETURN R0 0
  NAMECALL R3 R0 K30 ["destroyStamp"]
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_tools"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["BuildSettings"]
  GETTABLE R5 R1 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["TerrainType"]
  GETTABLE R4 R5 R6
  GETTABLE R2 R3 R4
  NAMECALL R2 R2 K4 ["deactivate"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K5 ["_onFormChangedForwarder"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K5 ["_onFormChangedForwarder"]
  NAMECALL R2 R2 K6 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K7 ["_onGizmoChangedForwarder"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K7 ["_onGizmoChangedForwarder"]
  NAMECALL R2 R2 K6 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K8 ["_mouseDownConnection"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K8 ["_mouseDownConnection"]
  NAMECALL R2 R2 K6 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K9 ["_onUndoConnection"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K9 ["_onUndoConnection"]
  NAMECALL R2 R2 K6 ["Disconnect"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K10 ["_recording"]
  JUMPIFNOT R2 [+11]
  GETTABLEKS R3 R0 K11 ["_services"]
  GETTABLEKS R2 R3 K12 ["ChangeHistoryService"]
  GETTABLEKS R4 R0 K10 ["_recording"]
  GETIMPORT R5 K16 [Enum.FinishRecordingOperation.Cancel]
  NAMECALL R2 R2 K17 ["FinishRecording"]
  CALL R2 3 0
  NAMECALL R2 R0 K18 ["destroyStamp"]
  CALL R2 1 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_stamp"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_stamp"]
  NAMECALL R1 R1 K1 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_stamp"]
  RETURN R0 0

PROTO_15:
  NAMECALL R3 R0 K0 ["destroyStamp"]
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["new"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K2 ["_stamp"]
  GETTABLEKS R3 R0 K2 ["_stamp"]
  MOVE R5 R2
  GETTABLEKS R6 R0 K3 ["_services"]
  NAMECALL R3 R3 K4 ["init"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K2 ["_stamp"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["update"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Tools"]
  GETTABLEKS R2 R3 K8 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagTerrainEditorRemoveSchema"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["Flags"]
  GETTABLEKS R4 R5 K11 ["getFFlagUseMaterialLUT"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K13 ["Generation"]
  GETTABLEKS R5 R6 K14 ["MaterialLUT"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Schemas"]
  GETTABLEKS R7 R8 K16 ["Settings"]
  GETTABLEKS R6 R7 K17 ["Build"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K18 ["TerrainPlacementHelper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K19 ["Types"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K20 ["BuildSettings"]
  GETTABLEKS R9 R7 K21 ["Category"]
  GETTABLEKS R10 R7 K22 ["Gizmo"]
  GETTABLEKS R11 R7 K23 ["Tab"]
  GETTABLEKS R12 R7 K24 ["TerrainType"]
  GETTABLEKS R13 R7 K25 ["Tool"]
  NEWTABLE R14 16 0
  GETTABLEKS R15 R12 K26 ["Arctic"]
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K26 ["Arctic"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R12 K27 ["Crater"]
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K27 ["Crater"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R12 K28 ["Desert"]
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K28 ["Desert"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R12 K29 ["Lake"]
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K29 ["Lake"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R12 K30 ["Mesa"]
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K30 ["Mesa"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R12 K31 ["Mountain"]
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K31 ["Mountain"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R12 K32 ["None"]
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K32 ["None"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R12 K33 ["Plain"]
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K33 ["Plain"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R12 K34 ["Volcano"]
  GETIMPORT R16 K5 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K34 ["Volcano"]
  CALL R16 1 1
  SETTABLE R16 R14 R15
  NEWTABLE R15 8 0
  GETTABLEKS R16 R12 K26 ["Arctic"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K35 ["Stamps"]
  GETTABLEKS R18 R19 K36 ["ArcticStamp"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K27 ["Crater"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K35 ["Stamps"]
  GETTABLEKS R18 R19 K37 ["CraterStamp"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K28 ["Desert"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K35 ["Stamps"]
  GETTABLEKS R18 R19 K38 ["DesertStamp"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K29 ["Lake"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K35 ["Stamps"]
  GETTABLEKS R18 R19 K39 ["LakeStamp"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K30 ["Mesa"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K35 ["Stamps"]
  GETTABLEKS R18 R19 K40 ["MesaStamp"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K31 ["Mountain"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K35 ["Stamps"]
  GETTABLEKS R18 R19 K41 ["MountainStamp"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K33 ["Plain"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K35 ["Stamps"]
  GETTABLEKS R18 R19 K42 ["PlainStamp"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  GETTABLEKS R16 R12 K34 ["Volcano"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K6 ["Src"]
  GETTABLEKS R19 R20 K35 ["Stamps"]
  GETTABLEKS R18 R19 K43 ["VolcanoStamp"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  NEWTABLE R16 0 1
  DUPTABLE R17 K47 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R18 0 0
  SETTABLEKS R18 R17 K44 ["Defaults"]
  GETTABLEKS R18 R9 K20 ["BuildSettings"]
  SETTABLEKS R18 R17 K45 ["Id"]
  MOVE R19 R2
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  MOVE R18 R5
  SETTABLEKS R18 R17 K46 ["Schema"]
  SETLIST R16 R17 1 [1]
  NEWTABLE R17 0 0
  GETTABLEKS R20 R13 K17 ["Build"]
  GETTABLEKS R21 R11 K48 ["Create"]
  MOVE R22 R16
  MOVE R23 R17
  NAMECALL R18 R1 K49 ["new"]
  CALL R18 5 1
  DUPCLOSURE R19 K50 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R12
  SETTABLEKS R19 R18 K51 ["init"]
  DUPCLOSURE R19 K52 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K53 ["form"]
  DUPCLOSURE R19 K54 [PROTO_5]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R19 R18 K55 ["saveForm"]
  DUPCLOSURE R19 K56 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K57 ["gizmos"]
  DUPCLOSURE R19 K58 [PROTO_7]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R19 R18 K59 ["saveGizmos"]
  DUPCLOSURE R19 K60 [PROTO_12]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R19 R18 K61 ["activate"]
  DUPCLOSURE R19 K62 [PROTO_13]
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K63 ["deactivate"]
  DUPCLOSURE R19 K64 [PROTO_14]
  SETTABLEKS R19 R18 K65 ["destroyStamp"]
  DUPCLOSURE R19 K66 [PROTO_15]
  CAPTURE VAL R15
  SETTABLEKS R19 R18 K67 ["createStamp"]
  RETURN R18 1
