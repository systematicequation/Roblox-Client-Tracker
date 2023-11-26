PROTO_0:
  GETTABLEKS R2 R0 K0 ["Data"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["TIMELINE_UNITS"]
  GETTABLEKS R3 R4 K2 ["Seconds"]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["SETTINGS"]
  GETTABLEKS R4 R5 K4 ["ShowAsSeconds"]
  MOVE R5 R1
  NAMECALL R2 R2 K5 ["SetSetting"]
  CALL R2 3 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K6 ["SetShowAsSeconds"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["Analytics"]
  LOADK R4 K8 ["onTimeUnitChanged"]
  GETTABLEKS R5 R0 K0 ["Data"]
  NAMECALL R2 R2 K9 ["report"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CAPTURE VAL R1
  NEWTABLE R5 1 2
  LOADK R10 K4 ["Settings"]
  LOADK R11 K5 ["TimelineUnit"]
  NAMECALL R8 R2 K6 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R5 K7 ["Text"]
  DUPTABLE R6 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["TIMELINE_UNITS"]
  GETTABLEKS R7 R8 K13 ["Seconds"]
  SETTABLEKS R7 R6 K8 ["Data"]
  LOADK R9 K4 ["Settings"]
  LOADK R10 K13 ["Seconds"]
  NAMECALL R7 R2 K6 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Text"]
  GETTABLEKS R7 R1 K14 ["ShowAsSeconds"]
  SETTABLEKS R7 R6 K9 ["Checked"]
  SETTABLEKS R4 R6 K10 ["OnItemClicked"]
  DUPTABLE R7 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["TIMELINE_UNITS"]
  GETTABLEKS R8 R9 K15 ["Frames"]
  SETTABLEKS R8 R7 K8 ["Data"]
  LOADK R10 K4 ["Settings"]
  LOADK R11 K15 ["Frames"]
  NAMECALL R8 R2 K6 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  GETTABLEKS R9 R1 K14 ["ShowAsSeconds"]
  NOT R8 R9
  SETTABLEKS R8 R7 K9 ["Checked"]
  SETTABLEKS R4 R7 K10 ["OnItemClicked"]
  SETLIST R5 R6 2 [1]
  RETURN R5 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SetPlaybackSpeed"]
  GETTABLEKS R2 R0 K1 ["Data"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnChangePlaybackSpeed"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnChangePlaybackSpeed"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["PlaybackSpeed"]
  LOADB R4 0
  GETIMPORT R5 K4 [pairs]
  GETUPVAL R8 0
  GETTABLEKS R6 R8 K5 ["PLAYBACK_SPEEDS"]
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R10 R11 K6 ["CUSTOM"]
  JUMPIFEQ R9 R10 [+5]
  JUMPIFNOTEQ R3 R9 [+3]
  LOADB R4 1
  JUMP [+2]
  FORGLOOP R5 2 [-12]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  NEWTABLE R7 1 6
  LOADK R21 K7 ["Settings"]
  LOADK R22 K2 ["PlaybackSpeed"]
  NAMECALL R19 R2 K8 ["getText"]
  CALL R19 3 1
  MOVE R15 R19
  LOADK R16 K9 [": "]
  GETIMPORT R19 K12 [string.format]
  LOADK R20 K13 ["%.2f"]
  MOVE R21 R3
  CALL R19 2 1
  LOADK R21 K14 ["%.?0+$"]
  LOADK R22 K15 [""]
  NAMECALL R19 R19 K16 ["gsub"]
  CALL R19 3 1
  MOVE R17 R19
  LOADK R18 K17 ["x"]
  CONCAT R14 R15 R18
  SETTABLEKS R14 R7 K18 ["Text"]
  DUPTABLE R8 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R9 R10 K23 ["PBS_025"]
  SETTABLEKS R9 R8 K19 ["Data"]
  LOADK R11 K7 ["Settings"]
  LOADK R12 K24 ["025x"]
  NAMECALL R9 R2 K8 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Text"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R10 R11 K23 ["PBS_025"]
  JUMPIFEQ R3 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K20 ["Checked"]
  SETTABLEKS R5 R8 K21 ["OnItemClicked"]
  DUPTABLE R9 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R10 R11 K25 ["PBS_05"]
  SETTABLEKS R10 R9 K19 ["Data"]
  LOADK R12 K7 ["Settings"]
  LOADK R13 K26 ["05x"]
  NAMECALL R10 R2 K8 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K18 ["Text"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R11 R12 K25 ["PBS_05"]
  JUMPIFEQ R3 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K20 ["Checked"]
  SETTABLEKS R5 R9 K21 ["OnItemClicked"]
  DUPTABLE R10 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R11 R12 K27 ["PBS_1"]
  SETTABLEKS R11 R10 K19 ["Data"]
  LOADK R13 K7 ["Settings"]
  LOADK R14 K28 ["1x"]
  NAMECALL R11 R2 K8 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K18 ["Text"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R12 R13 K27 ["PBS_1"]
  JUMPIFEQ R3 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["Checked"]
  SETTABLEKS R5 R10 K21 ["OnItemClicked"]
  DUPTABLE R11 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R12 R13 K29 ["PBS_2"]
  SETTABLEKS R12 R11 K19 ["Data"]
  LOADK R14 K7 ["Settings"]
  LOADK R15 K30 ["2x"]
  NAMECALL R12 R2 K8 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["Text"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R13 R14 K29 ["PBS_2"]
  JUMPIFEQ R3 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K20 ["Checked"]
  SETTABLEKS R5 R11 K21 ["OnItemClicked"]
  DUPTABLE R12 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R13 R14 K31 ["PBS_4"]
  SETTABLEKS R13 R12 K19 ["Data"]
  LOADK R15 K7 ["Settings"]
  LOADK R16 K32 ["4x"]
  NAMECALL R13 R2 K8 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K18 ["Text"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K5 ["PLAYBACK_SPEEDS"]
  GETTABLEKS R14 R15 K31 ["PBS_4"]
  JUMPIFEQ R3 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K20 ["Checked"]
  SETTABLEKS R5 R12 K21 ["OnItemClicked"]
  DUPTABLE R13 K33 [{"Text", "Checked", "OnItemClicked"}]
  LOADK R19 K7 ["Settings"]
  LOADK R20 K34 ["CustomPlaybackSpeed"]
  NAMECALL R17 R2 K8 ["getText"]
  CALL R17 3 1
  MOVE R15 R17
  LOADK R16 K35 ["..."]
  CONCAT R14 R15 R16
  SETTABLEKS R14 R13 K18 ["Text"]
  NOT R14 R4
  SETTABLEKS R14 R13 K20 ["Checked"]
  SETTABLEKS R6 R13 K21 ["OnItemClicked"]
  SETLIST R7 R8 6 [1]
  RETURN R7 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SetFrameRate"]
  GETTABLEKS R2 R0 K1 ["Data"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnChangeFPS"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnChangeFPS"]
  CALL R0 0 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["AnimationData"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R4 R3 K3 ["Metadata"]
  JUMPIF R4 [+12]
  DUPTABLE R4 K6 [{"Text", "Enabled"}]
  LOADK R7 K7 ["Settings"]
  LOADK R8 K8 ["FrameRate"]
  NAMECALL R5 R2 K9 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K4 ["Text"]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["Enabled"]
  RETURN R4 1
  GETTABLEKS R4 R1 K8 ["FrameRate"]
  LOADB R5 0
  GETIMPORT R6 K11 [pairs]
  GETUPVAL R9 0
  GETTABLEKS R7 R9 K12 ["FRAMERATES"]
  CALL R6 1 3
  FORGPREP_NEXT R6
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K12 ["FRAMERATES"]
  GETTABLEKS R11 R12 K13 ["CUSTOM"]
  JUMPIFEQ R10 R11 [+5]
  JUMPIFNOTEQ R10 R4 [+3]
  LOADB R5 1
  JUMP [+2]
  FORGLOOP R6 2 [-12]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  NEWCLOSURE R7 P1
  CAPTURE VAL R1
  NEWTABLE R8 2 5
  LOADK R21 K7 ["Settings"]
  LOADK R22 K8 ["FrameRate"]
  NAMECALL R19 R2 K9 ["getText"]
  CALL R19 3 1
  MOVE R15 R19
  LOADK R16 K14 [": "]
  MOVE R17 R4
  LOADK R18 K15 [" fps"]
  CONCAT R14 R15 R18
  SETTABLEKS R14 R8 K4 ["Text"]
  LOADB R14 0
  SETTABLEKS R14 R8 K5 ["Enabled"]
  DUPTABLE R9 K19 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["FRAMERATES"]
  GETTABLEKS R10 R11 K20 ["FPS_24"]
  SETTABLEKS R10 R9 K16 ["Data"]
  LOADK R12 K7 ["Settings"]
  LOADK R13 K21 ["24FPS"]
  NAMECALL R10 R2 K9 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K4 ["Text"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K12 ["FRAMERATES"]
  GETTABLEKS R11 R12 K20 ["FPS_24"]
  JUMPIFEQ R4 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K17 ["Checked"]
  SETTABLEKS R6 R9 K18 ["OnItemClicked"]
  DUPTABLE R10 K19 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K12 ["FRAMERATES"]
  GETTABLEKS R11 R12 K22 ["FPS_30"]
  SETTABLEKS R11 R10 K16 ["Data"]
  LOADK R13 K7 ["Settings"]
  LOADK R14 K23 ["30FPS"]
  NAMECALL R11 R2 K9 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K4 ["Text"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K12 ["FRAMERATES"]
  GETTABLEKS R12 R13 K22 ["FPS_30"]
  JUMPIFEQ R4 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  SETTABLEKS R11 R10 K17 ["Checked"]
  SETTABLEKS R6 R10 K18 ["OnItemClicked"]
  DUPTABLE R11 K19 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K12 ["FRAMERATES"]
  GETTABLEKS R12 R13 K24 ["FPS_60"]
  SETTABLEKS R12 R11 K16 ["Data"]
  LOADK R14 K7 ["Settings"]
  LOADK R15 K25 ["60FPS"]
  NAMECALL R12 R2 K9 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K4 ["Text"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K12 ["FRAMERATES"]
  GETTABLEKS R13 R14 K24 ["FPS_60"]
  JUMPIFEQ R4 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K17 ["Checked"]
  SETTABLEKS R6 R11 K18 ["OnItemClicked"]
  DUPTABLE R12 K19 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K12 ["FRAMERATES"]
  GETTABLEKS R13 R14 K26 ["FPS_120"]
  SETTABLEKS R13 R12 K16 ["Data"]
  LOADK R15 K7 ["Settings"]
  LOADK R16 K27 ["120FPS"]
  NAMECALL R13 R2 K9 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K4 ["Text"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["FRAMERATES"]
  GETTABLEKS R14 R15 K26 ["FPS_120"]
  JUMPIFEQ R4 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K17 ["Checked"]
  SETTABLEKS R6 R12 K18 ["OnItemClicked"]
  DUPTABLE R13 K28 [{"Text", "Checked", "OnItemClicked"}]
  LOADK R19 K7 ["Settings"]
  LOADK R20 K29 ["CustomFPS"]
  NAMECALL R17 R2 K9 ["getText"]
  CALL R17 3 1
  MOVE R15 R17
  LOADK R16 K30 ["..."]
  CONCAT R14 R15 R16
  SETTABLEKS R14 R13 K4 ["Text"]
  NOT R14 R5
  SETTABLEKS R14 R13 K17 ["Checked"]
  SETTABLEKS R7 R13 K18 ["OnItemClicked"]
  SETLIST R8 R9 5 [1]
  RETURN R8 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["SETTINGS"]
  GETTABLEKS R3 R4 K1 ["SnapMode"]
  GETTABLEKS R4 R0 K2 ["Data"]
  NAMECALL R1 R1 K3 ["SetSetting"]
  CALL R1 3 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["SetSnapMode"]
  GETTABLEKS R2 R0 K2 ["Data"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K4 ["SnapMode"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  NEWTABLE R6 1 3
  LOADK R12 K5 ["Settings"]
  LOADK R13 K4 ["SnapMode"]
  NAMECALL R10 R2 K6 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R6 K7 ["Text"]
  DUPTABLE R7 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["SNAP_MODES"]
  GETTABLEKS R8 R9 K13 ["Keyframes"]
  SETTABLEKS R8 R7 K8 ["Data"]
  LOADK R10 K5 ["Settings"]
  LOADK R11 K14 ["SnapKeyframes"]
  NAMECALL R8 R2 K6 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K12 ["SNAP_MODES"]
  GETTABLEKS R9 R10 K13 ["Keyframes"]
  JUMPIFEQ R4 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["Checked"]
  SETTABLEKS R5 R7 K10 ["OnItemClicked"]
  DUPTABLE R8 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K12 ["SNAP_MODES"]
  GETTABLEKS R9 R10 K15 ["Frames"]
  SETTABLEKS R9 R8 K8 ["Data"]
  LOADK R11 K5 ["Settings"]
  LOADK R12 K16 ["SnapFrames"]
  NAMECALL R9 R2 K6 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Text"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["SNAP_MODES"]
  GETTABLEKS R10 R11 K15 ["Frames"]
  JUMPIFEQ R4 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K9 ["Checked"]
  SETTABLEKS R5 R8 K10 ["OnItemClicked"]
  DUPTABLE R9 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["SNAP_MODES"]
  GETTABLEKS R10 R11 K17 ["None"]
  SETTABLEKS R10 R9 K8 ["Data"]
  LOADK R12 K5 ["Settings"]
  LOADK R13 K18 ["SnapNone"]
  NAMECALL R10 R2 K6 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K7 ["Text"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K12 ["SNAP_MODES"]
  GETTABLEKS R11 R12 K17 ["None"]
  JUMPIFEQ R4 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K9 ["Checked"]
  SETTABLEKS R5 R9 K10 ["OnItemClicked"]
  SETLIST R6 R7 3 [1]
  RETURN R6 1

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["SETTINGS"]
  GETTABLEKS R3 R4 K1 ["RotationType"]
  GETTABLEKS R4 R0 K2 ["Data"]
  NAMECALL R1 R1 K3 ["SetSetting"]
  CALL R1 3 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["SetDefaultRotationType"]
  GETTABLEKS R2 R0 K2 ["Data"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K4 ["DefaultRotationType"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  NEWTABLE R6 1 2
  LOADK R11 K5 ["Settings"]
  LOADK R12 K4 ["DefaultRotationType"]
  NAMECALL R9 R2 K6 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R6 K7 ["Text"]
  DUPTABLE R7 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["TRACK_TYPES"]
  GETTABLEKS R8 R9 K13 ["EulerAngles"]
  SETTABLEKS R8 R7 K8 ["Data"]
  LOADK R10 K5 ["Settings"]
  LOADK R11 K13 ["EulerAngles"]
  NAMECALL R8 R2 K6 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K12 ["TRACK_TYPES"]
  GETTABLEKS R9 R10 K13 ["EulerAngles"]
  JUMPIFEQ R4 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["Checked"]
  SETTABLEKS R5 R7 K10 ["OnItemClicked"]
  DUPTABLE R8 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K12 ["TRACK_TYPES"]
  GETTABLEKS R9 R10 K14 ["Quaternion"]
  SETTABLEKS R9 R8 K8 ["Data"]
  LOADK R11 K5 ["Settings"]
  LOADK R12 K15 ["Quaternions"]
  NAMECALL R9 R2 K6 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Text"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["TRACK_TYPES"]
  GETTABLEKS R10 R11 K14 ["Quaternion"]
  JUMPIFEQ R4 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K9 ["Checked"]
  SETTABLEKS R5 R8 K10 ["OnItemClicked"]
  SETLIST R6 R7 2 [1]
  RETURN R6 1

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["SETTINGS"]
  GETTABLEKS R3 R4 K1 ["EulerAnglesOrder"]
  GETTABLEKS R4 R0 K2 ["Data"]
  NAMECALL R1 R1 K3 ["SetSetting"]
  CALL R1 3 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["SetDefaultEulerAnglesOrder"]
  GETTABLEKS R2 R0 K2 ["Data"]
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K4 ["DefaultEulerAnglesOrder"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  NEWTABLE R6 1 6
  LOADK R15 K5 ["Settings"]
  LOADK R16 K4 ["DefaultEulerAnglesOrder"]
  NAMECALL R13 R2 K6 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R6 K7 ["Text"]
  DUPTABLE R7 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETIMPORT R8 K15 [Enum.RotationOrder.XYZ]
  SETTABLEKS R8 R7 K8 ["Data"]
  LOADK R10 K5 ["Settings"]
  LOADK R11 K14 ["XYZ"]
  NAMECALL R8 R2 K6 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  GETIMPORT R9 K15 [Enum.RotationOrder.XYZ]
  JUMPIFEQ R4 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["Checked"]
  SETTABLEKS R5 R7 K10 ["OnItemClicked"]
  DUPTABLE R8 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETIMPORT R9 K17 [Enum.RotationOrder.XZY]
  SETTABLEKS R9 R8 K8 ["Data"]
  LOADK R11 K5 ["Settings"]
  LOADK R12 K16 ["XZY"]
  NAMECALL R9 R2 K6 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Text"]
  GETIMPORT R10 K17 [Enum.RotationOrder.XZY]
  JUMPIFEQ R4 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K9 ["Checked"]
  SETTABLEKS R5 R8 K10 ["OnItemClicked"]
  DUPTABLE R9 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETIMPORT R10 K19 [Enum.RotationOrder.YXZ]
  SETTABLEKS R10 R9 K8 ["Data"]
  LOADK R12 K5 ["Settings"]
  LOADK R13 K18 ["YXZ"]
  NAMECALL R10 R2 K6 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K7 ["Text"]
  GETIMPORT R11 K19 [Enum.RotationOrder.YXZ]
  JUMPIFEQ R4 R11 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K9 ["Checked"]
  SETTABLEKS R5 R9 K10 ["OnItemClicked"]
  DUPTABLE R10 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETIMPORT R11 K21 [Enum.RotationOrder.YZX]
  SETTABLEKS R11 R10 K8 ["Data"]
  LOADK R13 K5 ["Settings"]
  LOADK R14 K20 ["YZX"]
  NAMECALL R11 R2 K6 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K7 ["Text"]
  GETIMPORT R12 K21 [Enum.RotationOrder.YZX]
  JUMPIFEQ R4 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  SETTABLEKS R11 R10 K9 ["Checked"]
  SETTABLEKS R5 R10 K10 ["OnItemClicked"]
  DUPTABLE R11 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETIMPORT R12 K23 [Enum.RotationOrder.ZXY]
  SETTABLEKS R12 R11 K8 ["Data"]
  LOADK R14 K5 ["Settings"]
  LOADK R15 K22 ["ZXY"]
  NAMECALL R12 R2 K6 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K7 ["Text"]
  GETIMPORT R13 K23 [Enum.RotationOrder.ZXY]
  JUMPIFEQ R4 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K9 ["Checked"]
  SETTABLEKS R5 R11 K10 ["OnItemClicked"]
  DUPTABLE R12 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
  GETIMPORT R13 K25 [Enum.RotationOrder.ZYX]
  SETTABLEKS R13 R12 K8 ["Data"]
  LOADK R15 K5 ["Settings"]
  LOADK R16 K24 ["ZYX"]
  NAMECALL R13 R2 K6 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K7 ["Text"]
  GETIMPORT R14 K25 [Enum.RotationOrder.ZYX]
  JUMPIFEQ R4 R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K9 ["Checked"]
  SETTABLEKS R5 R12 K10 ["OnItemClicked"]
  SETLIST R6 R7 6 [1]
  RETURN R6 1

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SetShowEvents"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ShowEvents"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  DUPTABLE R4 K5 [{"Text", "Checked", "OnItemClicked"}]
  LOADK R7 K6 ["Settings"]
  LOADK R8 K7 ["ShowEvents"]
  NAMECALL R5 R2 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["Text"]
  GETTABLEKS R5 R1 K7 ["ShowEvents"]
  SETTABLEKS R5 R4 K3 ["Checked"]
  SETTABLEKS R3 R4 K4 ["OnItemClicked"]
  RETURN R4 1

PROTO_16:
  NEWTABLE R1 0 10
  NAMECALL R2 R0 K0 ["makeTimelineUnitMenu"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["MENU_SEPARATOR"]
  NAMECALL R4 R0 K2 ["makeFrameRateMenu"]
  CALL R4 1 1
  NAMECALL R5 R0 K3 ["makePlaybackSpeedMenu"]
  CALL R5 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["MENU_SEPARATOR"]
  NAMECALL R7 R0 K4 ["makeShowEvents"]
  CALL R7 1 1
  NAMECALL R8 R0 K5 ["makeSnapMenu"]
  CALL R8 1 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["MENU_SEPARATOR"]
  NAMECALL R10 R0 K6 ["makeDefaultRotationTypeMenu"]
  CALL R10 1 1
  NAMECALL R11 R0 K7 ["makeEulerAnglesOrderMenu"]
  CALL R11 1 -1
  SETLIST R1 R2 4294967295 [1]
  RETURN R1 1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["ShowMenu"]
  JUMPIFNOT R2 [+16]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K5 [{"Actions", "OnMenuOpened"}]
  NAMECALL R6 R0 K6 ["makeMenuActions"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K3 ["Actions"]
  GETTABLEKS R6 R1 K4 ["OnMenuOpened"]
  SETTABLEKS R6 R5 K4 ["OnMenuOpened"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  LOADNIL R3
  RETURN R3 1

PROTO_18:
  GETTABLEKS R1 R0 K0 ["Status"]
  DUPTABLE R2 K10 [{"Analytics", "AnimationData", "DefaultEulerAnglesOrder", "DefaultRotationType", "FrameRate", "PlaybackSpeed", "ShowAsSeconds", "ShowEvents", "SnapMode"}]
  GETTABLEKS R3 R0 K1 ["Analytics"]
  SETTABLEKS R3 R2 K1 ["Analytics"]
  GETTABLEKS R3 R0 K2 ["AnimationData"]
  SETTABLEKS R3 R2 K2 ["AnimationData"]
  GETTABLEKS R3 R1 K3 ["DefaultEulerAnglesOrder"]
  SETTABLEKS R3 R2 K3 ["DefaultEulerAnglesOrder"]
  GETTABLEKS R3 R1 K4 ["DefaultRotationType"]
  SETTABLEKS R3 R2 K4 ["DefaultRotationType"]
  GETTABLEKS R3 R1 K5 ["FrameRate"]
  SETTABLEKS R3 R2 K5 ["FrameRate"]
  GETTABLEKS R3 R1 K6 ["PlaybackSpeed"]
  SETTABLEKS R3 R2 K6 ["PlaybackSpeed"]
  GETTABLEKS R3 R1 K7 ["ShowAsSeconds"]
  SETTABLEKS R3 R2 K7 ["ShowAsSeconds"]
  GETTABLEKS R3 R1 K8 ["ShowEvents"]
  SETTABLEKS R3 R2 K8 ["ShowEvents"]
  GETTABLEKS R3 R1 K9 ["SnapMode"]
  SETTABLEKS R3 R2 K9 ["SnapMode"]
  RETURN R2 1

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_26:
  DUPTABLE R1 K7 [{"SetDefaultEulerAnglesOrder", "SetDefaultRotationType", "SetFrameRate", "SetPlaybackSpeed", "SetShowAsSeconds", "SetShowEvents", "SetSnapMode"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetDefaultEulerAnglesOrder"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetDefaultRotationType"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetFrameRate"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["SetPlaybackSpeed"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["SetShowAsSeconds"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["SetShowEvents"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K6 ["SetSnapMode"]
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
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Actions"]
  GETTABLEKS R7 R8 K14 ["SetDefaultEulerAnglesOrder"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K13 ["Actions"]
  GETTABLEKS R8 R9 K15 ["SetDefaultRotationType"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K13 ["Actions"]
  GETTABLEKS R9 R10 K16 ["SetFrameRate"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K13 ["Actions"]
  GETTABLEKS R10 R11 K17 ["SetShowAsSeconds"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K13 ["Actions"]
  GETTABLEKS R11 R12 K18 ["SetShowEvents"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K12 ["Src"]
  GETTABLEKS R13 R14 K13 ["Actions"]
  GETTABLEKS R12 R13 K19 ["SetSnapMode"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K12 ["Src"]
  GETTABLEKS R14 R15 K20 ["Components"]
  GETTABLEKS R13 R14 K21 ["ContextMenu"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K12 ["Src"]
  GETTABLEKS R16 R17 K22 ["Thunks"]
  GETTABLEKS R15 R16 K23 ["Playback"]
  GETTABLEKS R14 R15 K24 ["SetPlaybackSpeed"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K12 ["Src"]
  GETTABLEKS R16 R17 K25 ["Util"]
  GETTABLEKS R15 R16 K26 ["AnimationData"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K12 ["Src"]
  GETTABLEKS R17 R18 K25 ["Util"]
  GETTABLEKS R16 R17 K27 ["Constants"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K28 ["PureComponent"]
  LOADK R18 K29 ["SettingsMenu"]
  NAMECALL R16 R16 K30 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K31 [PROTO_1]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K32 ["makeTimelineUnitMenu"]
  DUPCLOSURE R17 K33 [PROTO_4]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K34 ["makePlaybackSpeedMenu"]
  DUPCLOSURE R17 K35 [PROTO_7]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K36 ["makeFrameRateMenu"]
  DUPCLOSURE R17 K37 [PROTO_9]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K38 ["makeSnapMenu"]
  DUPCLOSURE R17 K39 [PROTO_11]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K40 ["makeDefaultRotationTypeMenu"]
  DUPCLOSURE R17 K41 [PROTO_13]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K42 ["makeEulerAnglesOrderMenu"]
  DUPCLOSURE R17 K43 [PROTO_15]
  SETTABLEKS R17 R16 K44 ["makeShowEvents"]
  DUPCLOSURE R17 K45 [PROTO_16]
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K46 ["makeMenuActions"]
  DUPCLOSURE R17 K47 [PROTO_17]
  CAPTURE VAL R1
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K48 ["render"]
  DUPCLOSURE R17 K49 [PROTO_18]
  DUPCLOSURE R18 K50 [PROTO_26]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  MOVE R19 R5
  DUPTABLE R20 K54 [{"Localization", "Analytics", "Plugin"}]
  GETTABLEKS R21 R4 K51 ["Localization"]
  SETTABLEKS R21 R20 K51 ["Localization"]
  GETTABLEKS R21 R4 K52 ["Analytics"]
  SETTABLEKS R21 R20 K52 ["Analytics"]
  GETTABLEKS R21 R4 K53 ["Plugin"]
  SETTABLEKS R21 R20 K53 ["Plugin"]
  CALL R19 1 1
  MOVE R20 R16
  CALL R19 1 1
  MOVE R16 R19
  GETTABLEKS R19 R2 K55 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R16
  CALL R19 1 -1
  RETURN R19 -1
