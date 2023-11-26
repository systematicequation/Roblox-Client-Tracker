PROTO_0:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["hasInternalPermission"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SetTrackEulerAnglesOrder"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETTABLEKS R4 R0 K1 ["Data"]
  CALL R1 3 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["AnimationData"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["InstanceName"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K4 ["Path"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["getTrack"]
  MOVE R7 R3
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["getEulerAnglesOrder"]
  MOVE R8 R6
  CALL R7 1 1
  JUMPIF R7 [+2]
  GETTABLEKS R7 R1 K7 ["DefaultEulerAnglesOrder"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPTABLE R9 K9 [{"Text"}]
  LOADK R12 K10 ["ContextMenu"]
  LOADK R13 K11 ["EulerAnglesOrder"]
  NAMECALL R10 R2 K12 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K8 ["Text"]
  GETUPVAL R13 2
  GETTABLEKS R10 R13 K13 ["EULER_ANGLES_ORDER"]
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  DUPTABLE R17 K17 [{"Text", "Data", "Checked", "OnItemClicked"}]
  GETTABLEKS R18 R14 K18 ["Name"]
  SETTABLEKS R18 R17 K8 ["Text"]
  SETTABLEKS R14 R17 K14 ["Data"]
  GETTABLEKS R19 R14 K19 ["Value"]
  JUMPIFEQ R7 R19 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  SETTABLEKS R18 R17 K15 ["Checked"]
  SETTABLEKS R8 R17 K16 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R9 R17 [+4]
  MOVE R16 R9
  GETIMPORT R15 K22 [table.insert]
  CALL R15 2 0
  FORGLOOP R10 2 [-24]
  RETURN R9 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Instances"]
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  GETUPVAL R1 2
  JUMPIF R1 [+2]
  GETUPVAL R2 3
  GETTABLEN R1 R2 1
  SETUPVAL R1 2
  GETTABLEKS R2 R0 K1 ["Tracks"]
  GETUPVAL R3 2
  GETTABLE R1 R2 R3
  GETIMPORT R2 K3 [require]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K4 ["Src"]
  GETTABLEKS R5 R6 K5 ["Util"]
  GETTABLEKS R4 R5 K6 ["Debug"]
  GETTABLEKS R3 R4 K7 ["dumpTable"]
  CALL R2 1 1
  MOVE R3 R2
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Src"]
  GETTABLEKS R3 R4 K3 ["Util"]
  GETTABLEKS R2 R3 K4 ["Debug"]
  GETTABLEKS R1 R2 K5 ["dumpTrack"]
  CALL R0 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["Instances"]
  GETUPVAL R3 2
  GETTABLE R1 R2 R3
  GETUPVAL R2 3
  JUMPIF R2 [+2]
  GETUPVAL R3 4
  GETTABLEN R2 R3 1
  SETUPVAL R2 3
  GETTABLEKS R3 R1 K7 ["Tracks"]
  GETUPVAL R4 3
  GETTABLE R2 R3 R4
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K8 ["getEulerAnglesOrder"]
  MOVE R4 R2
  CALL R3 1 1
  MOVE R4 R0
  MOVE R5 R2
  GETUPVAL R6 3
  MOVE R7 R3
  JUMPIF R7 [+3]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K9 ["DefaultEulerAnglesOrder"]
  CALL R4 3 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PluginActions"]
  GETTABLEKS R3 R1 K2 ["IsChannelAnimation"]
  GETTABLEKS R4 R1 K3 ["Path"]
  GETTABLEKS R5 R1 K4 ["TrackType"]
  GETTABLEKS R6 R1 K5 ["AnimationData"]
  GETTABLEKS R7 R1 K6 ["InstanceName"]
  GETTABLEKS R8 R1 K7 ["TrackName"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["getTrack"]
  MOVE R10 R6
  MOVE R11 R7
  MOVE R12 R4
  CALL R9 3 1
  LOADB R10 0
  JUMPIFEQKNIL R9 [+35]
  LOADB R10 1
  GETTABLEKS R11 R9 K9 ["Type"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["TRACK_TYPES"]
  GETTABLEKS R12 R13 K11 ["Quaternion"]
  JUMPIFEQ R11 R12 [+25]
  LOADB R10 0
  GETTABLEKS R11 R9 K9 ["Type"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["TRACK_TYPES"]
  GETTABLEKS R12 R13 K12 ["CFrame"]
  JUMPIFNOTEQ R11 R12 [+15]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["getRotationType"]
  MOVE R12 R9
  CALL R11 1 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["TRACK_TYPES"]
  GETTABLEKS R12 R13 K11 ["Quaternion"]
  JUMPIFEQ R11 R12 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  NOT R11 R3
  JUMPIF R11 [+9]
  LOADB R11 0
  JUMPIFEQKNIL R4 [+7]
  LENGTH R12 R4
  LOADN R13 1
  JUMPIFLE R12 R13 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  JUMPIFNOT R11 [+2]
  LOADK R12 K14 ["DeleteTrack"]
  JUMP [+1]
  LOADK R12 K15 ["ClearTrack"]
  NEWTABLE R13 0 2
  LOADK R16 K16 ["AddKeyframe"]
  NAMECALL R14 R2 K17 ["get"]
  CALL R14 2 1
  MOVE R17 R12
  NAMECALL R15 R2 K17 ["get"]
  CALL R15 2 -1
  SETLIST R13 R14 4294967295 [1]
  LOADB R14 0
  JUMPIFNOT R3 [+20]
  JUMPIFNOT R10 [+19]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K18 ["MENU_SEPARATOR"]
  FASTCALL2 TABLE_INSERT R13 R17 [+4]
  MOVE R16 R13
  GETIMPORT R15 K21 [table.insert]
  CALL R15 2 0
  MOVE R16 R13
  LOADK R19 K22 ["ConvertToEulerAngles"]
  NAMECALL R17 R2 K17 ["get"]
  CALL R17 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R15 K21 [table.insert]
  CALL R15 -1 0
  LOADB R14 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K10 ["TRACK_TYPES"]
  GETTABLEKS R15 R16 K23 ["EulerAngles"]
  JUMPIFNOTEQ R5 R15 [+19]
  JUMPIF R14 [+9]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K18 ["MENU_SEPARATOR"]
  FASTCALL2 TABLE_INSERT R13 R17 [+4]
  MOVE R16 R13
  GETIMPORT R15 K21 [table.insert]
  CALL R15 2 0
  MOVE R16 R13
  NAMECALL R17 R0 K24 ["makeEulerAnglesOrderSubMenu"]
  CALL R17 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R15 K21 [table.insert]
  CALL R15 -1 0
  GETTABLEKS R15 R0 K25 ["hasInternalPermission"]
  JUMPIFNOT R15 [+38]
  DUPTABLE R17 K28 [{"Text", "OnItemClicked"}]
  LOADK R18 K29 ["[INTERNAL] Dump track data"]
  SETTABLEKS R18 R17 K26 ["Text"]
  NEWCLOSURE R18 P0
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE REF R8
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  SETTABLEKS R18 R17 K27 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R13 R17 [+4]
  MOVE R16 R13
  GETIMPORT R15 K21 [table.insert]
  CALL R15 2 0
  DUPTABLE R17 K28 [{"Text", "OnItemClicked"}]
  LOADK R18 K30 ["[INTERNAL] Dump track as CSV"]
  SETTABLEKS R18 R17 K26 ["Text"]
  NEWCLOSURE R18 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE REF R8
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  SETTABLEKS R18 R17 K27 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R13 R17 [+4]
  MOVE R16 R13
  GETIMPORT R15 K21 [table.insert]
  CALL R15 2 0
  CLOSEUPVALS R8
  RETURN R13 1

PROTO_6:
  JUMPIFNOT R1 [+23]
  LOADB R3 0
  SETTABLEKS R3 R1 K0 ["Enabled"]
  GETTABLEKS R4 R0 K1 ["Actions"]
  FASTCALL2 TABLE_INSERT R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [table.insert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K5 ["Connections"]
  GETTABLEKS R5 R1 K6 ["Triggered"]
  MOVE R7 R2
  NAMECALL R5 R5 K7 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K4 [table.insert]
  CALL R3 -1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["Path"]
  GETTABLEN R1 R2 1
  GETTABLEKS R2 R0 K2 ["DeleteTrack"]
  MOVE R3 R1
  GETTABLEKS R4 R0 K3 ["Analytics"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Path"]
  GETTABLEKS R2 R0 K2 ["InstanceName"]
  GETTABLEKS R3 R0 K3 ["ClearTrack"]
  MOVE R4 R2
  MOVE R5 R1
  GETTABLEKS R6 R0 K4 ["Analytics"]
  CALL R3 3 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["List"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETUPVAL R3 1
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["SplitTrack"]
  GETUPVAL R4 3
  MOVE R5 R2
  MOVE R6 R0
  GETUPVAL R7 4
  GETUPVAL R8 5
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K3 ["Analytics"]
  CALL R3 6 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Playhead"]
  GETTABLEKS R2 R0 K2 ["TrackType"]
  GETTABLEKS R3 R0 K3 ["RotationType"]
  GETTABLEKS R4 R0 K4 ["InstanceName"]
  GETTABLEKS R5 R0 K5 ["AnimationData"]
  GETTABLEKS R6 R0 K6 ["IsChannelAnimation"]
  GETTABLEKS R7 R0 K7 ["Path"]
  LOADNIL R8
  JUMPIFNOT R4 [+63]
  JUMPIFNOT R7 [+62]
  JUMPIFNOT R6 [+14]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["traverseComponents"]
  MOVE R10 R2
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  MOVE R12 R3
  CALL R9 3 0
  RETURN R0 0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K9 ["getTrack"]
  MOVE R10 R5
  MOVE R11 R4
  MOVE R12 R7
  CALL R9 3 1
  JUMPIFNOT R9 [+11]
  GETTABLEKS R10 R9 K10 ["Keyframes"]
  JUMPIFNOT R10 [+8]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K11 ["getValue"]
  MOVE R11 R9
  MOVE R12 R1
  CALL R10 2 1
  MOVE R8 R10
  JUMP [+6]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K12 ["getDefaultValue"]
  MOVE R11 R2
  CALL R10 1 1
  MOVE R8 R10
  DUPTABLE R10 K16 [{"Value", "EasingStyle", "EasingDirection"}]
  SETTABLEKS R8 R10 K13 ["Value"]
  GETIMPORT R11 K20 [Enum.PoseEasingStyle.Linear]
  SETTABLEKS R11 R10 K14 ["EasingStyle"]
  GETIMPORT R11 K23 [Enum.PoseEasingDirection.In]
  SETTABLEKS R11 R10 K15 ["EasingDirection"]
  GETTABLEKS R11 R0 K24 ["AddKeyframe"]
  MOVE R12 R4
  MOVE R13 R7
  MOVE R14 R2
  LOADNIL R15
  MOVE R16 R1
  MOVE R17 R10
  GETTABLEKS R18 R0 K25 ["Analytics"]
  CALL R11 7 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Path"]
  GETTABLEKS R2 R0 K2 ["InstanceName"]
  GETTABLEKS R3 R0 K3 ["TrackType"]
  GETTABLEKS R4 R0 K4 ["AnimationData"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["TRACK_TYPES"]
  GETTABLEKS R5 R6 K6 ["CFrame"]
  JUMPIFNOTEQ R3 R5 [+30]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["PROPERTY_KEYS"]
  GETTABLEKS R7 R8 K8 ["Rotation"]
  FASTCALL2 TABLE_INSERT R1 R7 [+4]
  MOVE R6 R1
  GETIMPORT R5 K11 [table.insert]
  CALL R5 2 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K12 ["getTrack"]
  MOVE R6 R4
  MOVE R7 R2
  MOVE R8 R1
  CALL R5 3 1
  JUMPIFNOT R5 [+9]
  GETTABLEKS R6 R5 K13 ["Type"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["TRACK_TYPES"]
  GETTABLEKS R7 R8 K14 ["Quaternion"]
  JUMPIFEQ R6 R7 [+2]
  RETURN R0 0
  GETTABLEKS R5 R0 K15 ["ConvertTrack"]
  MOVE R6 R2
  MOVE R7 R1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["TRACK_TYPES"]
  GETTABLEKS R8 R9 K16 ["EulerAngles"]
  GETTABLEKS R9 R0 K17 ["Analytics"]
  CALL R5 4 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginActions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K2 ["Actions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K3 ["Connections"]
  GETIMPORT R2 K5 [pcall]
  DUPCLOSURE R3 K6 [PROTO_7]
  CALL R2 1 2
  JUMPIFNOT R2 [+4]
  JUMPIFNOT R3 [+3]
  LOADB R4 1
  SETTABLEKS R4 R0 K7 ["hasInternalPermission"]
  LOADK R8 K8 ["DeleteTrack"]
  NAMECALL R6 R1 K9 ["get"]
  CALL R6 2 1
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  NAMECALL R4 R0 K10 ["addAction"]
  CALL R4 3 0
  LOADK R8 K11 ["ClearTrack"]
  NAMECALL R6 R1 K9 ["get"]
  CALL R6 2 1
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  NAMECALL R4 R0 K10 ["addAction"]
  CALL R4 3 0
  LOADK R8 K12 ["AddKeyframe"]
  NAMECALL R6 R1 K9 ["get"]
  CALL R6 2 1
  NEWCLOSURE R7 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R4 R0 K10 ["addAction"]
  CALL R4 3 0
  LOADK R8 K13 ["ConvertToEulerAngles"]
  NAMECALL R6 R1 K9 ["get"]
  CALL R6 2 1
  NEWCLOSURE R7 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  NAMECALL R4 R0 K10 ["addAction"]
  CALL R4 3 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["ShowMenu"]
  GETTABLEKS R3 R1 K2 ["Path"]
  GETTABLEKS R4 R1 K3 ["InstanceName"]
  GETTABLEKS R5 R1 K4 ["AnimationData"]
  GETTABLEKS R6 R1 K5 ["Playhead"]
  GETTABLEKS R7 R1 K6 ["ReadOnly"]
  GETTABLEKS R8 R0 K7 ["Actions"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K8 ["PluginActions"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K9 ["IsChannelAnimation"]
  GETUPVAL R11 0
  MOVE R12 R9
  CALL R11 1 1
  JUMPIF R11 [+80]
  JUMPIFEQKNIL R8 [+79]
  GETIMPORT R11 K11 [ipairs]
  MOVE R12 R8
  CALL R11 1 3
  FORGPREP_INEXT R11
  LOADB R16 0
  SETTABLEKS R16 R15 K12 ["Enabled"]
  FORGLOOP R11 2 [inext] [-4]
  JUMPIFNOT R3 [+45]
  JUMPIFNOT R4 [+44]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["getTrack"]
  MOVE R12 R5
  MOVE R13 R4
  MOVE R14 R3
  CALL R11 3 1
  LOADNIL R12
  JUMPIF R10 [+10]
  MOVE R13 R11
  JUMPIFNOT R13 [+6]
  GETTABLEKS R13 R11 K14 ["Data"]
  JUMPIFNOT R13 [+3]
  GETTABLEKS R14 R11 K14 ["Data"]
  GETTABLE R13 R14 R6
  NOT R12 R13
  JUMP [+17]
  JUMPIF R11 [+2]
  LOADB R12 1
  JUMP [+14]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K15 ["getComponentsInfo"]
  MOVE R14 R11
  MOVE R15 R6
  CALL R13 2 1
  GETTABLE R15 R13 R6
  NOT R14 R15
  JUMPIF R14 [+4]
  GETTABLE R16 R13 R6
  GETTABLEKS R15 R16 K16 ["Complete"]
  NOT R14 R15
  MOVE R12 R14
  LOADK R15 K17 ["AddKeyframe"]
  NAMECALL R13 R9 K18 ["get"]
  CALL R13 2 1
  NOT R15 R7
  AND R14 R15 R12
  SETTABLEKS R14 R13 K12 ["Enabled"]
  LOADK R13 K19 ["DeleteTrack"]
  NAMECALL R11 R9 K18 ["get"]
  CALL R11 2 1
  NOT R12 R7
  SETTABLEKS R12 R11 K12 ["Enabled"]
  LOADK R13 K20 ["ClearTrack"]
  NAMECALL R11 R9 K18 ["get"]
  CALL R11 2 1
  NOT R12 R7
  SETTABLEKS R12 R11 K12 ["Enabled"]
  JUMPIFNOT R10 [+7]
  LOADK R13 K21 ["ConvertToEulerAngles"]
  NAMECALL R11 R9 K18 ["get"]
  CALL R11 2 1
  NOT R12 R7
  SETTABLEKS R12 R11 K12 ["Enabled"]
  JUMPIFNOT R2 [+16]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K22 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K24 [{"Actions", "OnMenuOpened"}]
  NAMECALL R14 R0 K25 ["makeMenuActions"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K7 ["Actions"]
  GETTABLEKS R14 R1 K23 ["OnMenuOpened"]
  SETTABLEKS R14 R13 K23 ["OnMenuOpened"]
  CALL R11 2 1
  JUMPIF R11 [+1]
  LOADNIL R11
  RETURN R11 1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["Connections"]
  JUMPIFNOT R1 [+15]
  GETIMPORT R1 K2 [ipairs]
  GETTABLEKS R2 R0 K0 ["Connections"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  NAMECALL R6 R5 K3 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [inext] [-4]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["Connections"]
  GETTABLEKS R1 R0 K4 ["Actions"]
  JUMPIFNOT R1 [+11]
  GETIMPORT R1 K2 [ipairs]
  GETTABLEKS R2 R0 K4 ["Actions"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  LOADB R6 0
  SETTABLEKS R6 R5 K5 ["Enabled"]
  FORGLOOP R1 2 [inext] [-4]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R1 R0 K0 ["Status"]
  DUPTABLE R2 K10 [{"AnimationData", "DefaultEulerAnglesOrder", "InstanceName", "Path", "Playhead", "ReadOnly", "RotationType", "TrackName", "TrackType"}]
  GETTABLEKS R3 R0 K1 ["AnimationData"]
  SETTABLEKS R3 R2 K1 ["AnimationData"]
  GETTABLEKS R3 R1 K2 ["DefaultEulerAnglesOrder"]
  SETTABLEKS R3 R2 K2 ["DefaultEulerAnglesOrder"]
  GETTABLEKS R4 R1 K11 ["RightClickContextInfo"]
  GETTABLEKS R3 R4 K3 ["InstanceName"]
  SETTABLEKS R3 R2 K3 ["InstanceName"]
  GETTABLEKS R4 R1 K11 ["RightClickContextInfo"]
  GETTABLEKS R3 R4 K4 ["Path"]
  SETTABLEKS R3 R2 K4 ["Path"]
  GETTABLEKS R3 R1 K5 ["Playhead"]
  SETTABLEKS R3 R2 K5 ["Playhead"]
  GETTABLEKS R3 R1 K6 ["ReadOnly"]
  SETTABLEKS R3 R2 K6 ["ReadOnly"]
  GETTABLEKS R4 R1 K11 ["RightClickContextInfo"]
  GETTABLEKS R3 R4 K7 ["RotationType"]
  SETTABLEKS R3 R2 K7 ["RotationType"]
  GETTABLEKS R4 R1 K11 ["RightClickContextInfo"]
  GETTABLEKS R3 R4 K8 ["TrackName"]
  SETTABLEKS R3 R2 K8 ["TrackName"]
  GETTABLEKS R4 R1 K11 ["RightClickContextInfo"]
  GETTABLEKS R3 R4 K9 ["TrackType"]
  SETTABLEKS R3 R2 K9 ["TrackType"]
  RETURN R2 1

PROTO_17:
  GETUPVAL R7 0
  GETUPVAL R8 1
  CALL R8 0 -1
  CALL R7 -1 0
  GETUPVAL R7 0
  GETUPVAL R8 2
  MOVE R9 R0
  MOVE R10 R1
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  MOVE R15 R6
  CALL R8 7 -1
  CALL R7 -1 0
  GETUPVAL R7 0
  GETUPVAL R8 3
  NEWTABLE R9 0 0
  CALL R8 1 -1
  CALL R7 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R4 0 -1
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R4 2
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R4 3
  NEWTABLE R5 0 0
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R4 0
  GETUPVAL R5 1
  CALL R5 0 -1
  CALL R4 -1 0
  GETUPVAL R4 0
  GETUPVAL R5 2
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 -1
  CALL R4 -1 0
  GETUPVAL R4 0
  GETUPVAL R5 3
  NEWTABLE R6 0 0
  CALL R5 1 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R2 0
  GETUPVAL R3 1
  CALL R3 0 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R3 2
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R3 3
  NEWTABLE R4 0 0
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R4 0 -1
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R4 2
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R4 3
  NEWTABLE R5 0 0
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R6 0
  GETUPVAL R7 1
  CALL R7 0 -1
  CALL R6 -1 0
  GETUPVAL R6 0
  GETUPVAL R7 2
  MOVE R8 R0
  MOVE R9 R1
  MOVE R10 R2
  MOVE R11 R3
  MOVE R12 R4
  MOVE R13 R5
  CALL R7 6 -1
  CALL R6 -1 0
  GETUPVAL R6 0
  GETUPVAL R7 3
  NEWTABLE R8 0 0
  CALL R7 1 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_23:
  DUPTABLE R1 K6 [{"AddKeyframe", "ClearTrack", "ConvertTrack", "DeleteTrack", "SetTrackEulerAnglesOrder", "SplitTrack"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K0 ["AddKeyframe"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["ClearTrack"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["ConvertTrack"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K3 ["DeleteTrack"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K4 ["SetTrackEulerAnglesOrder"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K5 ["SplitTrack"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K15 ["ContextMenu"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K16 ["Thunks"]
  GETTABLEKS R9 R10 K17 ["AddKeyframe"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K16 ["Thunks"]
  GETTABLEKS R11 R12 K18 ["History"]
  GETTABLEKS R10 R11 K19 ["AddWaypoint"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K16 ["Thunks"]
  GETTABLEKS R11 R12 K20 ["ClearTrack"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K16 ["Thunks"]
  GETTABLEKS R12 R13 K21 ["ConvertTrack"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K13 ["Src"]
  GETTABLEKS R14 R15 K16 ["Thunks"]
  GETTABLEKS R13 R14 K22 ["DeleteTrack"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K13 ["Src"]
  GETTABLEKS R15 R16 K16 ["Thunks"]
  GETTABLEKS R14 R15 K23 ["SetTrackEulerAnglesOrder"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K13 ["Src"]
  GETTABLEKS R16 R17 K24 ["Actions"]
  GETTABLEKS R15 R16 K25 ["SetRightClickContextInfo"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K13 ["Src"]
  GETTABLEKS R17 R18 K16 ["Thunks"]
  GETTABLEKS R16 R17 K26 ["SplitTrack"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K13 ["Src"]
  GETTABLEKS R18 R19 K27 ["Util"]
  GETTABLEKS R17 R18 K28 ["AnimationData"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K13 ["Src"]
  GETTABLEKS R19 R20 K27 ["Util"]
  GETTABLEKS R18 R19 K29 ["Constants"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K13 ["Src"]
  GETTABLEKS R20 R21 K27 ["Util"]
  GETTABLEKS R19 R20 K30 ["isEmpty"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K13 ["Src"]
  GETTABLEKS R21 R22 K27 ["Util"]
  GETTABLEKS R20 R21 K31 ["KeyframeUtils"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K13 ["Src"]
  GETTABLEKS R22 R23 K27 ["Util"]
  GETTABLEKS R21 R22 K32 ["PathUtils"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R0 K13 ["Src"]
  GETTABLEKS R23 R24 K27 ["Util"]
  GETTABLEKS R22 R23 K33 ["TrackUtils"]
  CALL R21 1 1
  NEWTABLE R22 0 6
  GETIMPORT R23 K37 [Enum.RotationOrder.XYZ]
  GETIMPORT R24 K39 [Enum.RotationOrder.XZY]
  GETIMPORT R25 K41 [Enum.RotationOrder.YXZ]
  GETIMPORT R26 K43 [Enum.RotationOrder.YZX]
  GETIMPORT R27 K45 [Enum.RotationOrder.ZXY]
  GETIMPORT R28 K47 [Enum.RotationOrder.ZYX]
  SETLIST R22 R23 6 [1]
  GETTABLEKS R23 R1 K48 ["PureComponent"]
  LOADK R25 K49 ["TrackActions"]
  NAMECALL R23 R23 K50 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K51 [PROTO_0]
  SETTABLEKS R24 R23 K52 ["init"]
  DUPCLOSURE R24 K53 [PROTO_2]
  CAPTURE VAL R16
  CAPTURE VAL R21
  CAPTURE VAL R17
  SETTABLEKS R24 R23 K54 ["makeEulerAnglesOrderSubMenu"]
  DUPCLOSURE R24 K55 [PROTO_5]
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R21
  CAPTURE VAL R0
  SETTABLEKS R24 R23 K56 ["makeMenuActions"]
  DUPCLOSURE R24 K57 [PROTO_6]
  SETTABLEKS R24 R23 K58 ["addAction"]
  DUPCLOSURE R24 K59 [PROTO_13]
  CAPTURE VAL R21
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R17
  SETTABLEKS R24 R23 K60 ["didMount"]
  DUPCLOSURE R24 K61 [PROTO_14]
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R21
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R24 R23 K62 ["render"]
  DUPCLOSURE R24 K63 [PROTO_15]
  SETTABLEKS R24 R23 K64 ["willUnmount"]
  MOVE R24 R6
  DUPTABLE R25 K68 [{"Localization", "PluginActions", "Analytics"}]
  GETTABLEKS R26 R5 K65 ["Localization"]
  SETTABLEKS R26 R25 K65 ["Localization"]
  GETTABLEKS R26 R5 K66 ["PluginActions"]
  SETTABLEKS R26 R25 K66 ["PluginActions"]
  GETTABLEKS R26 R5 K67 ["Analytics"]
  SETTABLEKS R26 R25 K67 ["Analytics"]
  CALL R24 1 1
  MOVE R25 R23
  CALL R24 1 1
  MOVE R23 R24
  DUPCLOSURE R24 K69 [PROTO_16]
  DUPCLOSURE R25 K70 [PROTO_23]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R15
  GETTABLEKS R26 R3 K71 ["connect"]
  MOVE R27 R24
  MOVE R28 R25
  CALL R26 2 1
  MOVE R27 R23
  CALL R26 1 -1
  RETURN R26 -1
