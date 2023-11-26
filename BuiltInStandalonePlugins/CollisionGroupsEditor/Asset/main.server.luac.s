PROTO_0:
  LOADN R3 1
  LENGTH R1 R0
  LOADN R2 1
  FORNPREP R1
  GETUPVAL R5 0
  GETTABLE R4 R5 R3
  GETTABLE R5 R0 R3
  GETTABLEKS R6 R4 K0 ["name"]
  GETTABLEKS R7 R5 K0 ["name"]
  JUMPIFEQ R6 R7 [+3]
  LOADB R6 1
  RETURN R6 1
  FORNLOOP R1
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  JUMPIF R0 [+7]
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetRegisteredCollisionGroups"]
  CALL R0 1 1
  SETUPVAL R0 0
  LOADB R0 0
  RETURN R0 1
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["GetRegisteredCollisionGroups"]
  CALL R0 1 1
  LOADB R1 0
  LENGTH R2 R0
  GETUPVAL R4 0
  LENGTH R3 R4
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 1
  JUMPIF R1 [+19]
  LOADN R5 1
  LENGTH R3 R0
  LOADN R4 1
  FORNPREP R3
  GETUPVAL R7 0
  GETTABLE R6 R7 R5
  GETTABLE R7 R0 R5
  GETTABLEKS R8 R6 K1 ["name"]
  GETTABLEKS R9 R7 K1 ["name"]
  JUMPIFEQ R8 R9 [+3]
  LOADB R2 1
  JUMP [+2]
  FORNLOOP R3
  LOADB R2 0
  JUMPIFNOT R2 [+1]
  LOADB R1 1
  SETUPVAL R0 0
  RETURN R1 1

PROTO_2:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K2 ["Groups"]
  MOVE R5 R0
  NAMECALL R2 R2 K3 ["SetItem"]
  CALL R2 3 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K4 ["SelectedGroupIds"]
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["SetItem"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 1
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K2 ["Groups"]
  MOVE R6 R1
  NAMECALL R3 R3 K3 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K4 ["SelectedGroupIds"]
  MOVE R6 R2
  NAMECALL R3 R3 K3 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K5 ["SetStateAndRefresh"]
  MOVE R4 R0
  NAMECALL R1 R1 K6 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 1
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K2 ["Groups"]
  MOVE R6 R1
  NAMECALL R3 R3 K3 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K4 ["SelectedGroupIds"]
  MOVE R6 R2
  NAMECALL R3 R3 K3 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K5 ["SetStateAndRefresh"]
  MOVE R4 R0
  NAMECALL R1 R1 K6 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_5:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 1
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K2 ["Groups"]
  MOVE R6 R1
  NAMECALL R3 R3 K3 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K4 ["SelectedGroupIds"]
  MOVE R6 R2
  NAMECALL R3 R3 K3 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K5 ["SetStateAndRefresh"]
  MOVE R4 R0
  NAMECALL R1 R1 K6 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R0 0 0
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 1
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K2 ["Groups"]
  MOVE R6 R1
  NAMECALL R3 R3 K3 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K4 ["SelectedGroupIds"]
  MOVE R6 R2
  NAMECALL R3 R3 K3 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K5 ["SetStateAndRefresh"]
  MOVE R4 R0
  NAMECALL R1 R1 K6 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETIMPORT R3 K1 [game]
  LOADK R5 K2 ["Selection"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R2 R3 K4 ["SelectionChanged"]
  DUPCLOSURE R4 K5 [PROTO_4]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R2 R2 K6 ["Connect"]
  CALL R2 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K9 [table.insert]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["OnUndo"]
  DUPCLOSURE R4 K11 [PROTO_5]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R2 R2 K6 ["Connect"]
  CALL R2 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K9 [table.insert]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K12 ["OnRedo"]
  DUPCLOSURE R4 K13 [PROTO_6]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R2 R2 K6 ["Connect"]
  CALL R2 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K9 [table.insert]
  CALL R0 -1 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R0 K1 [ipairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_INEXT R0
  NAMECALL R5 R4 K2 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [inext] [-4]
  RETURN R0 0

PROTO_9:
  JUMPIFNOT R0 [+31]
  GETUPVAL R1 0
  CALL R1 0 0
  NEWTABLE R1 0 0
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  MOVE R4 R2
  CALL R3 1 1
  GETIMPORT R4 K1 [plugin]
  LOADK R6 K2 ["Groups"]
  MOVE R7 R2
  NAMECALL R4 R4 K3 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R4 K1 [plugin]
  LOADK R6 K4 ["SelectedGroupIds"]
  MOVE R7 R3
  NAMECALL R4 R4 K3 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K5 ["SetStateAndRefresh"]
  MOVE R5 R1
  NAMECALL R2 R2 K6 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0
  GETIMPORT R1 K8 [ipairs]
  GETUPVAL R2 3
  CALL R1 1 3
  FORGPREP_INEXT R1
  NAMECALL R6 R5 K9 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [inext] [-4]
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  LOADK R3 K0 ["Deleting collision group"]
  NAMECALL R1 R1 K1 ["SetWaypoint"]
  CALL R1 2 0
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["UnregisterCollisionGroup"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K3 ["Deleted collision group"]
  NAMECALL R1 R1 K1 ["SetWaypoint"]
  CALL R1 2 0
  NEWTABLE R1 0 0
  GETUPVAL R2 2
  CALL R2 0 1
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 1
  GETIMPORT R4 K5 [plugin]
  LOADK R6 K6 ["Groups"]
  MOVE R7 R2
  NAMECALL R4 R4 K7 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R4 K5 [plugin]
  LOADK R6 K8 ["SelectedGroupIds"]
  MOVE R7 R3
  NAMECALL R4 R4 K7 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R2 K5 [plugin]
  LOADK R4 K9 ["SetStateAndRefresh"]
  MOVE R5 R1
  NAMECALL R2 R2 K10 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  LOADK R3 K0 ["Renaming collision group"]
  NAMECALL R1 R1 K1 ["SetWaypoint"]
  CALL R1 2 0
  GETUPVAL R1 1
  GETTABLEKS R3 R0 K2 ["oldName"]
  GETTABLEKS R4 R0 K3 ["newName"]
  NAMECALL R1 R1 K4 ["RenameCollisionGroup"]
  CALL R1 3 0
  GETIMPORT R1 K6 [pairs]
  GETUPVAL R2 2
  GETTABLEKS R3 R0 K2 ["oldName"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_NEXT R1
  GETTABLEKS R6 R5 K7 ["CollisionGroup"]
  GETTABLEKS R7 R0 K2 ["oldName"]
  JUMPIFNOTEQ R6 R7 [+5]
  GETTABLEKS R6 R0 K3 ["newName"]
  SETTABLEKS R6 R5 K7 ["CollisionGroup"]
  FORGLOOP R1 2 [-11]
  GETUPVAL R1 0
  LOADK R3 K8 ["Renamed collision group"]
  NAMECALL R1 R1 K1 ["SetWaypoint"]
  CALL R1 2 0
  DUPTABLE R1 K10 [{"GroupRenaming"}]
  LOADK R2 K11 [""]
  SETTABLEKS R2 R1 K9 ["GroupRenaming"]
  GETUPVAL R2 3
  CALL R2 0 1
  GETUPVAL R3 4
  MOVE R4 R2
  CALL R3 1 1
  GETIMPORT R4 K13 [plugin]
  LOADK R6 K14 ["Groups"]
  MOVE R7 R2
  NAMECALL R4 R4 K15 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R4 K13 [plugin]
  LOADK R6 K16 ["SelectedGroupIds"]
  MOVE R7 R3
  NAMECALL R4 R4 K15 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R2 K13 [plugin]
  LOADK R4 K17 ["SetStateAndRefresh"]
  MOVE R5 R1
  NAMECALL R2 R2 K18 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  LOADK R3 K0 ["Setting part membership to collision group"]
  NAMECALL R1 R1 K1 ["SetWaypoint"]
  CALL R1 2 0
  GETIMPORT R1 K3 [pairs]
  GETUPVAL R2 1
  CALL R2 0 -1
  CALL R1 -1 3
  FORGPREP_NEXT R1
  SETTABLEKS R0 R5 K4 ["CollisionGroup"]
  FORGLOOP R1 2 [-3]
  GETUPVAL R1 0
  LOADK R3 K5 ["Set part membership to collision group"]
  NAMECALL R1 R1 K1 ["SetWaypoint"]
  CALL R1 2 0
  NEWTABLE R1 0 0
  GETUPVAL R2 2
  CALL R2 0 1
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 1
  GETIMPORT R4 K7 [plugin]
  LOADK R6 K8 ["Groups"]
  MOVE R7 R2
  NAMECALL R4 R4 K9 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R4 K7 [plugin]
  LOADK R6 K10 ["SelectedGroupIds"]
  MOVE R7 R3
  NAMECALL R4 R4 K9 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R2 K7 [plugin]
  LOADK R4 K11 ["SetStateAndRefresh"]
  MOVE R5 R1
  NAMECALL R2 R2 K12 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K0 ["groupName"]
  GETTABLEKS R5 R0 K1 ["otherGroupName"]
  NAMECALL R2 R2 K2 ["CollisionGroupsAreCollidable"]
  CALL R2 3 1
  NOT R1 R2
  GETUPVAL R2 1
  LOADK R4 K3 ["Setting group collision state"]
  NAMECALL R2 R2 K4 ["SetWaypoint"]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K0 ["groupName"]
  GETTABLEKS R5 R0 K1 ["otherGroupName"]
  MOVE R6 R1
  NAMECALL R2 R2 K5 ["CollisionGroupSetCollidable"]
  CALL R2 4 0
  GETUPVAL R2 1
  LOADK R4 K6 ["Set group collision state"]
  NAMECALL R2 R2 K4 ["SetWaypoint"]
  CALL R2 2 0
  NEWTABLE R2 0 0
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R4 3
  MOVE R5 R3
  CALL R4 1 1
  GETIMPORT R5 K8 [plugin]
  LOADK R7 K9 ["Groups"]
  MOVE R8 R3
  NAMECALL R5 R5 K10 ["SetItem"]
  CALL R5 3 0
  GETIMPORT R5 K8 [plugin]
  LOADK R7 K11 ["SelectedGroupIds"]
  MOVE R8 R4
  NAMECALL R5 R5 K10 ["SetItem"]
  CALL R5 3 0
  GETIMPORT R3 K8 [plugin]
  LOADK R5 K12 ["SetStateAndRefresh"]
  MOVE R6 R2
  NAMECALL R3 R3 K13 ["Invoke"]
  CALL R3 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  LOADK R3 K0 ["Creating collision group"]
  NAMECALL R1 R1 K1 ["SetWaypoint"]
  CALL R1 2 0
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["RegisterCollisionGroup"]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R3 K3 ["Created collision group"]
  NAMECALL R1 R1 K1 ["SetWaypoint"]
  CALL R1 2 0
  NEWTABLE R1 0 0
  GETUPVAL R2 2
  CALL R2 0 1
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 1
  GETIMPORT R4 K5 [plugin]
  LOADK R6 K6 ["Groups"]
  MOVE R7 R2
  NAMECALL R4 R4 K7 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R4 K5 [plugin]
  LOADK R6 K8 ["SelectedGroupIds"]
  MOVE R7 R3
  NAMECALL R4 R4 K7 ["SetItem"]
  CALL R4 3 0
  GETIMPORT R2 K5 [plugin]
  LOADK R4 K9 ["SetStateAndRefresh"]
  MOVE R5 R1
  NAMECALL R2 R2 K10 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_15:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["Selection"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["Set"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K2 ["WindowEnabledChanged"]
  DUPCLOSURE R5 K3 [PROTO_9]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R2 R2 K4 ["OnInvoke"]
  CALL R2 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K7 [table.insert]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K8 ["DeleteCollisionGroup"]
  DUPCLOSURE R5 K9 [PROTO_10]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K4 ["OnInvoke"]
  CALL R2 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K7 [table.insert]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K10 ["RenameCollisionGroup"]
  DUPCLOSURE R5 K11 [PROTO_11]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K4 ["OnInvoke"]
  CALL R2 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K7 [table.insert]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K12 ["AddSelectedPartsToCollisionGroup"]
  DUPCLOSURE R5 K13 [PROTO_12]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U8
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K4 ["OnInvoke"]
  CALL R2 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K7 [table.insert]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K14 ["ToggleCollidesWith"]
  DUPCLOSURE R5 K15 [PROTO_13]
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K4 ["OnInvoke"]
  CALL R2 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K7 [table.insert]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K16 ["CreateCollisionGroup"]
  DUPCLOSURE R5 K17 [PROTO_14]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K4 ["OnInvoke"]
  CALL R2 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K7 [table.insert]
  CALL R0 -1 0
  GETUPVAL R1 0
  GETIMPORT R2 K1 [plugin]
  LOADK R4 K18 ["SelectPartsInCollisionGroup"]
  DUPCLOSURE R5 K19 [PROTO_15]
  CAPTURE UPVAL U7
  NAMECALL R2 R2 K4 ["OnInvoke"]
  CALL R2 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R0 K7 [table.insert]
  CALL R0 -1 0
  RETURN R0 0

PROTO_17:
  GETIMPORT R0 K1 [ipairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_INEXT R0
  NAMECALL R5 R4 K2 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [inext] [-4]
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+15]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETIMPORT R0 K1 [plugin]
  LOADK R2 K2 ["SetStateAndRefresh"]
  LOADNIL R3
  NAMECALL R0 R0 K3 ["Invoke"]
  CALL R0 3 0
  GETIMPORT R0 K5 [wait]
  LOADN R1 1
  CALL R0 1 0
  JUMPBACK [-17]
  RETURN R0 0

PROTO_19:
  LOADB R0 1
  SETUPVAL R0 0
  GETIMPORT R0 K1 [spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_20:
  LOADB R0 0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+70]
  GETIMPORT R1 K1 [plugin]
  GETTABLEKS R0 R1 K2 ["HostDataModelType"]
  GETIMPORT R1 K6 [Enum.StudioDataModelType.PlayClient]
  JUMPIFNOTEQ R0 R1 [+32]
  DUPTABLE R0 K8 [{"InPlayMode"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K7 ["InPlayMode"]
  GETUPVAL R1 1
  CALL R1 0 1
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K9 ["Groups"]
  MOVE R6 R1
  NAMECALL R3 R3 K10 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K11 ["SelectedGroupIds"]
  MOVE R6 R2
  NAMECALL R3 R3 K10 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K12 ["SetStateAndRefresh"]
  MOVE R4 R0
  NAMECALL R1 R1 K13 ["Invoke"]
  CALL R1 3 0
  RETURN R0 0
  DUPTABLE R0 K8 [{"InPlayMode"}]
  LOADB R1 0
  SETTABLEKS R1 R0 K7 ["InPlayMode"]
  GETUPVAL R1 1
  CALL R1 0 1
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K9 ["Groups"]
  MOVE R6 R1
  NAMECALL R3 R3 K10 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K11 ["SelectedGroupIds"]
  MOVE R6 R2
  NAMECALL R3 R3 K10 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K12 ["SetStateAndRefresh"]
  MOVE R4 R0
  NAMECALL R1 R1 K13 ["Invoke"]
  CALL R1 3 0
  JUMP [+28]
  NEWTABLE R0 0 0
  GETUPVAL R1 1
  CALL R1 0 1
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K9 ["Groups"]
  MOVE R6 R1
  NAMECALL R3 R3 K10 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R3 K1 [plugin]
  LOADK R5 K11 ["SelectedGroupIds"]
  MOVE R6 R2
  NAMECALL R3 R3 K10 ["SetItem"]
  CALL R3 3 0
  GETIMPORT R1 K1 [plugin]
  LOADK R3 K12 ["SetStateAndRefresh"]
  MOVE R4 R0
  NAMECALL R1 R1 K13 ["Invoke"]
  CALL R1 3 0
  LOADB R0 1
  SETUPVAL R0 3
  GETIMPORT R0 K15 [spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R0 1 0
  GETIMPORT R0 K1 [plugin]
  LOADK R2 K16 ["PollGuiEnabled"]
  NAMECALL R0 R0 K13 ["Invoke"]
  CALL R0 2 0
  GETUPVAL R0 5
  CALL R0 0 0
  GETUPVAL R0 6
  JUMPIFNOT R0 [+21]
  GETIMPORT R0 K18 [require]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K19 ["Packages"]
  GETTABLEKS R1 R2 K20 ["DeveloperTools"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K21 ["forPlugin"]
  LOADK R2 K22 ["CollisionGroupsEditor"]
  GETIMPORT R3 K1 [plugin]
  CALL R1 2 1
  SETUPVAL R1 8
  GETUPVAL R1 8
  GETIMPORT R3 K1 [plugin]
  NAMECALL R1 R1 K23 ["addPluginRouter"]
  CALL R1 2 0
  RETURN R0 0

PROTO_22:
  GETIMPORT R0 K1 [ipairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_INEXT R0
  NAMECALL R5 R4 K2 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [inext] [-4]
  GETIMPORT R0 K1 [ipairs]
  GETUPVAL R1 1
  CALL R0 1 3
  FORGPREP_INEXT R0
  NAMECALL R5 R4 K2 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [inext] [-4]
  LOADB R0 0
  SETUPVAL R0 2
  GETUPVAL R0 3
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 3
  NAMECALL R0 R0 K3 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_23:
  GETIMPORT R1 K1 [plugin]
  GETTABLEKS R0 R1 K2 ["HostDataModelTypeIsCurrent"]
  JUMPIFNOT R0 [+28]
  GETIMPORT R0 K4 [ipairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_INEXT R0
  NAMECALL R5 R4 K5 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [inext] [-4]
  GETIMPORT R0 K4 [ipairs]
  GETUPVAL R1 1
  CALL R0 1 3
  FORGPREP_INEXT R0
  NAMECALL R5 R4 K5 ["Disconnect"]
  CALL R5 1 0
  FORGLOOP R0 2 [inext] [-4]
  LOADB R0 0
  SETUPVAL R0 2
  GETUPVAL R0 3
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 3
  NAMECALL R0 R0 K6 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_24:
  GETIMPORT R1 K1 [plugin]
  GETTABLEKS R0 R1 K2 ["HostDataModelTypeIsCurrent"]
  JUMPIFNOT R0 [+2]
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R1 R0 K0 ["CurrentDataModelTypeAboutToChange"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K2 ["CurrentDataModelTypeChanged"]
  DUPCLOSURE R3 K3 [PROTO_24]
  CAPTURE UPVAL U4
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 0
  GETIMPORT R2 K5 [plugin]
  GETTABLEKS R1 R2 K6 ["HostDataModelTypeIsCurrent"]
  JUMPIFNOT R1 [+2]
  GETUPVAL R1 4
  CALL R1 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Common"]
  GETTABLEKS R2 R3 K6 ["commonInit"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 0
  GETIMPORT R2 K8 [game]
  LOADK R4 K9 ["PhysicsService"]
  NAMECALL R2 R2 K10 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K8 [game]
  LOADK R5 K11 ["ChangeHistoryService"]
  NAMECALL R3 R3 K10 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K12 ["Plugin"]
  GETTABLEKS R5 R6 K13 ["getSelectedParts"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K12 ["Plugin"]
  GETTABLEKS R6 R7 K14 ["getPartsInGroup"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K12 ["Plugin"]
  GETTABLEKS R7 R8 K15 ["getGroups"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K12 ["Plugin"]
  GETTABLEKS R8 R9 K16 ["getSelectedGroupIds"]
  CALL R7 1 1
  GETIMPORT R8 K8 [game]
  LOADK R10 K17 ["StudioService"]
  NAMECALL R8 R8 K10 ["GetService"]
  CALL R8 2 1
  NAMECALL R8 R8 K18 ["HasInternalPermission"]
  CALL R8 1 1
  GETIMPORT R9 K8 [game]
  LOADK R11 K19 ["FixCGEPlayMode"]
  NAMECALL R9 R9 K20 ["GetFastFlag"]
  CALL R9 2 1
  LOADNIL R10
  LOADNIL R11
  NEWCLOSURE R12 P0
  CAPTURE REF R11
  NEWCLOSURE R10 P1
  CAPTURE REF R11
  CAPTURE VAL R2
  CLOSEUPVALS R11
  DUPCLOSURE R11 K21 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R7
  DUPCLOSURE R12 K22 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R7
  NEWTABLE R13 0 0
  DUPCLOSURE R14 K23 [PROTO_7]
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R3
  DUPCLOSURE R15 K24 [PROTO_8]
  CAPTURE VAL R13
  NEWTABLE R16 0 0
  DUPCLOSURE R17 K25 [PROTO_16]
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  DUPCLOSURE R18 K26 [PROTO_17]
  CAPTURE VAL R16
  LOADB R19 0
  NEWCLOSURE R20 P8
  CAPTURE REF R19
  CAPTURE REF R10
  NEWCLOSURE R21 P9
  CAPTURE REF R19
  LOADNIL R22
  NEWCLOSURE R23 P10
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE REF R19
  CAPTURE REF R10
  CAPTURE VAL R17
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE REF R22
  NEWCLOSURE R24 P11
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE REF R19
  CAPTURE REF R22
  NEWCLOSURE R25 P12
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE REF R19
  CAPTURE REF R22
  CAPTURE VAL R23
  GETIMPORT R27 K28 [plugin]
  GETTABLEKS R26 R27 K29 ["MultipleDocumentInterfaceInstance"]
  MOVE R27 R25
  GETTABLEKS R28 R26 K30 ["FocusedDataModelSession"]
  CALL R27 1 0
  CLOSEUPVALS R10
  RETURN R0 0
