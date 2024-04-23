PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["IsRunning"]
  CALL R2 1 1
  JUMPIFNOT R2 [+29]
  GETUPVAL R2 1
  MOVE R3 R1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K4 [{"ErrorKey", "ErrorList"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K5 ["EDITOR_ERRORS_KEY"]
  SETTABLEKS R7 R6 K2 ["ErrorKey"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K7 [{"ID"}]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K8 ["EDITOR_ERRORS"]
  GETTABLEKS R9 R10 K9 ["OpenedWhileRunning"]
  SETTABLEKS R9 R8 K6 ["ID"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K3 ["ErrorList"]
  CALL R4 2 -1
  CALL R2 -1 0
  RETURN R0 0
  DUPCLOSURE R4 K10 [PROTO_0]
  NAMECALL R2 R0 K11 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["pluginLoaderContext"]
  GETTABLEKS R3 R4 K2 ["toolbar"]
  SETTABLEKS R3 R0 K2 ["toolbar"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["pluginLoaderContext"]
  GETTABLEKS R3 R4 K3 ["mainButton"]
  SETTABLEKS R3 R0 K3 ["mainButton"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["dockWidget"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["plugin"]
  NAMECALL R0 R0 K1 ["handleButtonClick"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["pluginLoaderContext"]
  GETTABLEKS R0 R1 K1 ["mainButtonClickedSignal"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K2 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["enabled"]
  JUMPIFNOTEQ R1 R0 [+2]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"enabled"}]
  SETTABLEKS R0 R3 K1 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["mainButton"]
  LOADB R2 1
  NAMECALL R0 R0 K2 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R0 2
  LOADB R2 1
  NAMECALL R0 R0 K3 ["Activate"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["plugin"]
  GETIMPORT R2 K4 [Enum.RibbonTool.Select]
  JUMPIFEQ R0 R2 [+13]
  GETIMPORT R2 K6 [Enum.RibbonTool.Rotate]
  JUMPIFEQ R0 R2 [+9]
  GETIMPORT R2 K8 [Enum.RibbonTool.Move]
  JUMPIFEQ R0 R2 [+5]
  GETIMPORT R2 K10 [Enum.RibbonTool.Scale]
  JUMPIFNOTEQ R0 R2 [+50]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["state"]
  GETTABLEKS R2 R3 K12 ["enabled"]
  JUMPIFNOT R2 [+43]
  LOADNIL R2
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K13 ["Heartbeat"]
  NEWCLOSURE R5 P0
  CAPTURE REF R2
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  NAMECALL R3 R3 K14 ["Connect"]
  CALL R3 2 1
  MOVE R2 R3
  GETIMPORT R4 K10 [Enum.RibbonTool.Scale]
  JUMPIFNOTEQ R0 R4 [+4]
  GETIMPORT R3 K4 [Enum.RibbonTool.Select]
  JUMPIF R3 [+1]
  MOVE R3 R0
  MOVE R0 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K15 ["store"]
  GETUPVAL R5 3
  MOVE R6 R0
  CALL R5 1 -1
  NAMECALL R3 R3 K16 ["dispatch"]
  CALL R3 -1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K17 ["analytics"]
  LOADK R5 K18 ["onToolChanged"]
  GETTABLEKS R6 R0 K19 ["Name"]
  NAMECALL R3 R3 K20 ["report"]
  CALL R3 3 0
  LOADB R3 1
  CLOSEUPVALS R2
  RETURN R3 1
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["plugin"]
  NAMECALL R1 R0 K1 ["GetSelectedRibbonTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [Enum.RibbonTool.None]
  JUMPIFEQ R1 R2 [+8]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["onToolSelected"]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["state"]
  GETTABLEKS R2 R3 K8 ["enabled"]
  JUMPIFNOT R2 [+11]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["store"]
  GETUPVAL R4 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["analytics"]
  CALL R4 1 -1
  NAMECALL R2 R2 K11 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["plugin"]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["clearMicrobones"]
  CALL R1 0 0
  GETUPVAL R1 3
  JUMPIFNOT R1 [+17]
  GETUPVAL R1 4
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["deactivationInProgress"]
  GETIMPORT R1 K5 [task.wait]
  CALL R1 0 0
  GETIMPORT R1 K5 [task.wait]
  CALL R1 0 0
  GETUPVAL R1 5
  CALL R1 0 0
  GETUPVAL R1 4
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["deactivationInProgress"]
  RETURN R0 0
  NAMECALL R1 R0 K6 ["GetSelectedRibbonTool"]
  CALL R1 1 1
  GETIMPORT R2 K10 [Enum.RibbonTool.None]
  JUMPIFEQ R1 R2 [+8]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K11 ["onToolSelected"]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K12 ["state"]
  GETTABLEKS R2 R3 K13 ["enabled"]
  JUMPIFNOT R2 [+11]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K14 ["store"]
  GETUPVAL R4 6
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K15 ["analytics"]
  CALL R4 1 -1
  NAMECALL R2 R2 K16 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["deactivationInProgress"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["deactivationInProgress"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R4 R1 K0 ["plugin"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["AnimationClipEditorPlugin requires a Plugin."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  NEWTABLE R2 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["thunkMiddleware"]
  SETLIST R2 R3 1 [1]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["LogRoduxEvents"]
  CALL R3 0 1
  JUMPIFNOT R3 [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["loggerMiddleware"]
  FASTCALL2 TABLE_INSERT R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K9 [table.insert]
  CALL R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["Store"]
  GETTABLEKS R3 R4 K11 ["new"]
  GETUPVAL R4 2
  LOADNIL R5
  MOVE R6 R2
  CALL R3 3 1
  SETTABLEKS R3 R0 K12 ["store"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K11 ["new"]
  DUPTABLE R4 K16 [{"pluginName", "stringResourceTable", "translationResourceTable"}]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K17 ["PLUGIN_NAME"]
  SETTABLEKS R5 R4 K13 ["pluginName"]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K14 ["stringResourceTable"]
  GETUPVAL R5 6
  SETTABLEKS R5 R4 K15 ["translationResourceTable"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K18 ["localization"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K11 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K19 ["calloutController"]
  GETTABLEKS R3 R0 K18 ["localization"]
  LOADK R5 K20 ["FaceControlsEditorButtonCallout"]
  LOADK R6 K21 ["Title"]
  NAMECALL R3 R3 K22 ["getText"]
  CALL R3 3 1
  GETTABLEKS R4 R0 K18 ["localization"]
  LOADK R6 K20 ["FaceControlsEditorButtonCallout"]
  LOADK R7 K23 ["Description"]
  NAMECALL R4 R4 K22 ["getText"]
  CALL R4 3 1
  GETUPVAL R5 8
  GETTABLEKS R6 R0 K19 ["calloutController"]
  LOADK R8 K24 ["FaceControlsEditorCallout"]
  MOVE R9 R3
  MOVE R10 R4
  MOVE R11 R5
  NAMECALL R6 R6 K25 ["defineCallout"]
  CALL R6 5 0
  GETTABLEKS R6 R0 K19 ["calloutController"]
  LOADK R8 K26 ["CurveEditorCallout"]
  GETTABLEKS R9 R0 K18 ["localization"]
  LOADK R11 K26 ["CurveEditorCallout"]
  LOADK R12 K21 ["Title"]
  NAMECALL R9 R9 K22 ["getText"]
  CALL R9 3 1
  GETTABLEKS R10 R0 K18 ["localization"]
  LOADK R12 K26 ["CurveEditorCallout"]
  LOADK R13 K23 ["Description"]
  NAMECALL R10 R10 K22 ["getText"]
  CALL R10 3 1
  GETUPVAL R11 9
  NAMECALL R6 R6 K25 ["defineCallout"]
  CALL R6 5 0
  GETUPVAL R6 10
  CALL R6 0 1
  JUMPIFNOT R6 [+21]
  GETTABLEKS R6 R0 K19 ["calloutController"]
  LOADK R8 K27 ["FaceRecorderCallout"]
  GETTABLEKS R9 R0 K18 ["localization"]
  LOADK R11 K28 ["FaceCapture"]
  LOADK R12 K29 ["TeachingCalloutTitle"]
  NAMECALL R9 R9 K22 ["getText"]
  CALL R9 3 1
  GETTABLEKS R10 R0 K18 ["localization"]
  LOADK R12 K28 ["FaceCapture"]
  LOADK R13 K30 ["TeachingCalloutDescription"]
  NAMECALL R10 R10 K22 ["getText"]
  CALL R10 3 1
  GETUPVAL R11 11
  NAMECALL R6 R6 K25 ["defineCallout"]
  CALL R6 5 0
  GETUPVAL R8 12
  GETTABLEKS R7 R8 K31 ["PluginActions"]
  GETTABLEKS R6 R7 K11 ["new"]
  GETTABLEKS R7 R1 K0 ["plugin"]
  GETUPVAL R8 13
  GETTABLEKS R9 R1 K0 ["plugin"]
  GETTABLEKS R10 R0 K18 ["localization"]
  CALL R8 2 -1
  CALL R6 -1 1
  SETTABLEKS R6 R0 K32 ["actions"]
  DUPTABLE R6 K35 [{"enabled", "pluginGui"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K33 ["enabled"]
  LOADNIL R7
  SETTABLEKS R7 R6 K34 ["pluginGui"]
  SETTABLEKS R6 R0 K36 ["state"]
  GETUPVAL R7 14
  GETTABLEKS R6 R7 K11 ["new"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K37 ["SIGNAL_KEYS"]
  CALL R6 1 1
  SETTABLEKS R6 R0 K38 ["signals"]
  GETUPVAL R8 12
  GETTABLEKS R7 R8 K39 ["Analytics"]
  GETTABLEKS R6 R7 K11 ["new"]
  GETUPVAL R7 15
  CALL R6 1 1
  SETTABLEKS R6 R0 K40 ["analytics"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R0 K41 ["onDockWidgetLoaded"]
  GETTABLEKS R8 R1 K0 ["plugin"]
  GETTABLEKS R9 R0 K18 ["localization"]
  NAMECALL R6 R0 K42 ["createPluginButton"]
  CALL R6 3 0
  GETTABLEKS R6 R0 K43 ["mainButton"]
  GETTABLEKS R9 R0 K36 ["state"]
  GETTABLEKS R8 R9 K33 ["enabled"]
  NAMECALL R6 R6 K44 ["SetActive"]
  CALL R6 2 0
  GETIMPORT R6 K47 [task.defer]
  NEWCLOSURE R7 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R6 1 0
  NEWCLOSURE R6 P2
  CAPTURE VAL R0
  SETTABLEKS R6 R0 K48 ["onDockWidgetEnabledChanged"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  SETTABLEKS R6 R0 K49 ["onToolSelected"]
  LOADB R6 0
  SETTABLEKS R6 R0 K50 ["deactivationInProgress"]
  NEWCLOSURE R6 P4
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U18
  GETTABLEKS R9 R0 K51 ["props"]
  GETTABLEKS R8 R9 K0 ["plugin"]
  GETTABLEKS R7 R8 K52 ["Deactivation"]
  NEWCLOSURE R9 P5
  CAPTURE VAL R1
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE UPVAL U18
  NAMECALL R7 R7 K53 ["Connect"]
  CALL R7 2 1
  SETTABLEKS R7 R0 K54 ["deactivationListener"]
  GETUPVAL R8 21
  JUMPIFNOT R8 [+13]
  GETTABLEKS R9 R0 K51 ["props"]
  GETTABLEKS R8 R9 K0 ["plugin"]
  GETTABLEKS R7 R8 K55 ["Unloading"]
  NEWCLOSURE R9 P6
  CAPTURE VAL R0
  CAPTURE VAL R6
  NAMECALL R7 R7 K53 ["Connect"]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R0 K56 ["unloadingListener"]
  GETTABLEKS R8 R0 K51 ["props"]
  GETTABLEKS R7 R8 K0 ["plugin"]
  NAMECALL R7 R7 K57 ["GetMouse"]
  CALL R7 1 1
  SETTABLEKS R7 R0 K58 ["mouse"]
  GETUPVAL R7 22
  CALL R7 0 1
  SETTABLEKS R7 R0 K59 ["theme"]
  NEWCLOSURE R7 P7
  CAPTURE VAL R0
  SETTABLEKS R7 R0 K60 ["closeWidget"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["plugin"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["SETTINGS"]
  GETTABLEKS R4 R5 K3 ["SnapMode"]
  NAMECALL R2 R1 K4 ["GetSetting"]
  CALL R2 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["SETTINGS"]
  GETTABLEKS R5 R6 K5 ["ShowAsSeconds"]
  NAMECALL R3 R1 K4 ["GetSetting"]
  CALL R3 2 1
  JUMPIFEQKNIL R2 [+10]
  GETTABLEKS R4 R0 K6 ["store"]
  GETUPVAL R6 1
  MOVE R7 R2
  CALL R6 1 -1
  NAMECALL R4 R4 K7 ["dispatch"]
  CALL R4 -1 0
  JUMP [+28]
  LOADK R6 K3 ["SnapMode"]
  NAMECALL R4 R1 K4 ["GetSetting"]
  CALL R4 2 1
  MOVE R2 R4
  JUMPIFEQKNIL R2 [+10]
  GETTABLEKS R4 R0 K6 ["store"]
  GETUPVAL R6 1
  MOVE R7 R2
  CALL R6 1 -1
  NAMECALL R4 R4 K7 ["dispatch"]
  CALL R4 -1 0
  JUMP [+12]
  GETTABLEKS R4 R0 K6 ["store"]
  GETUPVAL R6 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["SNAP_MODES"]
  GETTABLEKS R7 R8 K9 ["Keyframes"]
  CALL R6 1 -1
  NAMECALL R4 R4 K7 ["dispatch"]
  CALL R4 -1 0
  JUMPIFEQKNIL R3 [+10]
  GETTABLEKS R4 R0 K6 ["store"]
  GETUPVAL R6 2
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R4 K7 ["dispatch"]
  CALL R4 -1 0
  JUMP [+15]
  LOADK R6 K5 ["ShowAsSeconds"]
  NAMECALL R4 R1 K4 ["GetSetting"]
  CALL R4 2 1
  MOVE R3 R4
  JUMPIFEQKNIL R3 [+9]
  GETTABLEKS R4 R0 K6 ["store"]
  GETUPVAL R6 2
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R4 K7 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["SETTINGS"]
  GETTABLEKS R6 R7 K10 ["RotationType"]
  NAMECALL R4 R1 K4 ["GetSetting"]
  CALL R4 2 1
  JUMPIFNOT R4 [+9]
  GETTABLEKS R5 R0 K6 ["store"]
  GETUPVAL R7 3
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R5 K7 ["dispatch"]
  CALL R5 -1 0
  JUMP [+27]
  LOADK R7 K10 ["RotationType"]
  NAMECALL R5 R1 K4 ["GetSetting"]
  CALL R5 2 1
  MOVE R4 R5
  JUMPIFNOT R4 [+9]
  GETTABLEKS R5 R0 K6 ["store"]
  GETUPVAL R7 3
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R5 K7 ["dispatch"]
  CALL R5 -1 0
  JUMP [+12]
  GETTABLEKS R5 R0 K6 ["store"]
  GETUPVAL R7 3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["TRACK_TYPES"]
  GETTABLEKS R8 R9 K12 ["EulerAngles"]
  CALL R7 1 -1
  NAMECALL R5 R5 K7 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["SETTINGS"]
  GETTABLEKS R7 R8 K13 ["EulerAnglesOrder"]
  NAMECALL R5 R1 K4 ["GetSetting"]
  CALL R5 2 1
  GETTABLEKS R6 R0 K6 ["store"]
  GETUPVAL R8 4
  JUMPIFNOT R5 [+4]
  GETIMPORT R10 K16 [Enum.RotationOrder]
  GETTABLE R9 R10 R5
  JUMP [+2]
  GETIMPORT R9 K18 [Enum.RotationOrder.XYZ]
  CALL R8 1 -1
  NAMECALL R6 R6 K7 ["dispatch"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["plugin"]
  GETTABLEKS R3 R0 K2 ["store"]
  NAMECALL R3 R3 K3 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K4 ["Status"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["SETTINGS"]
  GETTABLEKS R5 R6 K6 ["ShowAsSeconds"]
  GETTABLEKS R6 R2 K6 ["ShowAsSeconds"]
  NAMECALL R3 R1 K7 ["SetSetting"]
  CALL R3 3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["SETTINGS"]
  GETTABLEKS R5 R6 K8 ["SnapMode"]
  GETTABLEKS R6 R2 K8 ["SnapMode"]
  NAMECALL R3 R1 K7 ["SetSetting"]
  CALL R3 3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["SETTINGS"]
  GETTABLEKS R5 R6 K9 ["RotationType"]
  GETTABLEKS R6 R2 K10 ["DefaultRotationType"]
  NAMECALL R3 R1 K7 ["SetSetting"]
  CALL R3 3 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["SETTINGS"]
  GETTABLEKS R5 R6 K11 ["EulerAnglesOrder"]
  GETTABLEKS R6 R2 K12 ["DefaultEulerAnglesOrder"]
  NAMECALL R3 R1 K7 ["SetSetting"]
  CALL R3 3 0
  RETURN R0 0

PROTO_16:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_17:
  JUMPIF R0 [+2]
  LOADNIL R1
  JUMP [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+12]
  GETIMPORT R2 K4 [Instance.new]
  LOADK R3 K5 ["BindableEvent"]
  CALL R2 1 1
  MOVE R1 R2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
  SETTABLEKS R2 R1 K6 ["Name"]
  SETTABLEKS R0 R1 K7 ["Parent"]
  RETURN R1 1

PROTO_18:
  JUMPIF R0 [+2]
  LOADNIL R1
  JUMP [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K2 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0

PROTO_19:
  DUPTABLE R3 K2 [{"pluginGui", "enabled"}]
  GETTABLEKS R4 R0 K3 ["dockWidget"]
  SETTABLEKS R4 R3 K0 ["pluginGui"]
  GETTABLEKS R5 R0 K3 ["dockWidget"]
  GETTABLEKS R4 R5 K4 ["Enabled"]
  SETTABLEKS R4 R3 K1 ["enabled"]
  NAMECALL R1 R0 K5 ["setState"]
  CALL R1 2 0
  NAMECALL R1 R0 K6 ["getPluginSettings"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["dockWidget"]
  JUMPIF R1 [+2]
  LOADNIL R2
  JUMP [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
  NAMECALL R2 R1 K8 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+12]
  GETIMPORT R3 K11 [Instance.new]
  LOADK R4 K12 ["BindableEvent"]
  CALL R3 1 1
  MOVE R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
  SETTABLEKS R3 R2 K13 ["Name"]
  SETTABLEKS R1 R2 K14 ["Parent"]
  RETURN R0 0

PROTO_20:
  GETTABLEKS R1 R0 K0 ["deactivationListener"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["deactivationListener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["unloadingListener"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["unloadingListener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["dockWidget"]
  JUMPIF R1 [+2]
  LOADNIL R2
  JUMP [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
  NAMECALL R2 R1 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K6 ["Destroy"]
  CALL R3 1 0
  NAMECALL R1 R0 K7 ["setPluginSettings"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K8 ["theme"]
  NAMECALL R1 R1 K9 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["store"]
  GETTABLEKS R3 R0 K2 ["localization"]
  GETTABLEKS R4 R1 K3 ["plugin"]
  GETTABLEKS R5 R0 K4 ["actions"]
  GETTABLEKS R6 R0 K5 ["analytics"]
  GETTABLEKS R7 R0 K6 ["mouse"]
  GETTABLEKS R8 R0 K7 ["theme"]
  GETTABLEKS R10 R0 K8 ["state"]
  GETTABLEKS R9 R10 K9 ["pluginGui"]
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  GETTABLEKS R12 R0 K8 ["state"]
  GETTABLEKS R11 R12 K10 ["enabled"]
  GETTABLEKS R12 R0 K11 ["mainButton"]
  MOVE R14 R11
  NAMECALL R12 R12 K12 ["SetActive"]
  CALL R12 2 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 1
  NEWTABLE R14 16 0
  GETUPVAL R16 2
  JUMPIFNOT R16 [+2]
  LOADK R15 K14 ["AnimationClipEditor"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K15 ["Id"]
  LOADK R17 K16 ["Plugin"]
  LOADK R18 K17 ["Name"]
  NAMECALL R15 R3 K18 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K19 ["Title"]
  LOADK R15 K14 ["AnimationClipEditor"]
  SETTABLEKS R15 R14 K17 ["Name"]
  GETIMPORT R15 K23 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R15 R14 K21 ["ZIndexBehavior"]
  GETTABLEKS R16 R1 K24 ["pluginLoaderContext"]
  GETTABLEKS R15 R16 K25 ["mainDockWidget"]
  SETTABLEKS R15 R14 K26 ["Widget"]
  SETTABLEKS R11 R14 K27 ["Enabled"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K28 ["Ref"]
  GETTABLEKS R16 R0 K29 ["onDockWidgetLoaded"]
  SETTABLE R16 R14 R15
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K30 ["Change"]
  GETTABLEKS R15 R16 K27 ["Enabled"]
  GETTABLEKS R16 R0 K31 ["onDockWidgetEnabledChanged"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R0 K32 ["closeWidget"]
  SETTABLEKS R15 R14 K33 ["OnClose"]
  DUPTABLE R15 K35 [{"MainProvider"}]
  MOVE R16 R10
  JUMPIFNOT R16 [+47]
  MOVE R16 R11
  JUMPIFNOT R16 [+45]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K40 [{"theme", "focusGui", "store", "plugin", "localization", "pluginActions", "mouse", "analytics", "signals", "calloutController"}]
  SETTABLEKS R8 R18 K7 ["theme"]
  SETTABLEKS R9 R18 K36 ["focusGui"]
  SETTABLEKS R2 R18 K1 ["store"]
  SETTABLEKS R4 R18 K3 ["plugin"]
  SETTABLEKS R3 R18 K2 ["localization"]
  SETTABLEKS R5 R18 K37 ["pluginActions"]
  SETTABLEKS R7 R18 K6 ["mouse"]
  SETTABLEKS R6 R18 K5 ["analytics"]
  GETTABLEKS R19 R0 K38 ["signals"]
  SETTABLEKS R19 R18 K38 ["signals"]
  GETTABLEKS R19 R0 K39 ["calloutController"]
  SETTABLEKS R19 R18 K39 ["calloutController"]
  DUPTABLE R19 K42 [{"AnimationClipEditor", "Dragger"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K13 ["createElement"]
  GETUPVAL R21 4
  CALL R20 1 1
  SETTABLEKS R20 R19 K14 ["AnimationClipEditor"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K13 ["createElement"]
  GETUPVAL R21 5
  CALL R20 1 1
  SETTABLEKS R20 R19 K41 ["Dragger"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K34 ["MainProvider"]
  CALL R12 3 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RunService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["ContextServices"]
  GETTABLEKS R7 R1 K15 ["Src"]
  GETTABLEKS R6 R7 K16 ["Actions"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R8 R6 K17 ["SetDefaultEulerAnglesOrder"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R9 R6 K18 ["SetDefaultRotationType"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R10 R6 K19 ["SetShowAsSeconds"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R11 R6 K20 ["SetSnapMode"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R12 R6 K21 ["SetTool"]
  CALL R11 1 1
  GETTABLEKS R13 R1 K15 ["Src"]
  GETTABLEKS R12 R13 K22 ["Components"]
  GETIMPORT R13 K9 [require]
  GETTABLEKS R14 R12 K6 ["AnimationClipEditor"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R16 R12 K23 ["PluginWidget"]
  GETTABLEKS R15 R16 K24 ["DockWidget"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R17 R12 K25 ["Draggers"]
  GETTABLEKS R16 R17 K26 ["DraggerWrapper"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R18 R12 K27 ["BlockingDialog"]
  GETTABLEKS R17 R18 K28 ["ErrorDialogContents"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R19 R12 K27 ["BlockingDialog"]
  GETTABLEKS R18 R19 K29 ["ErrorList"]
  CALL R17 1 1
  GETTABLEKS R19 R1 K15 ["Src"]
  GETTABLEKS R18 R19 K30 ["Context"]
  GETIMPORT R19 K9 [require]
  GETTABLEKS R20 R18 K31 ["MainProvider"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R21 R18 K32 ["Signals"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R24 R1 K15 ["Src"]
  GETTABLEKS R23 R24 K33 ["Reducers"]
  GETTABLEKS R22 R23 K34 ["MainReducer"]
  CALL R21 1 1
  GETTABLEKS R22 R5 K35 ["Localization"]
  GETTABLEKS R25 R1 K15 ["Src"]
  GETTABLEKS R24 R25 K36 ["Resources"]
  GETTABLEKS R23 R24 K37 ["SourceStrings"]
  GETTABLEKS R26 R1 K15 ["Src"]
  GETTABLEKS R25 R26 K36 ["Resources"]
  GETTABLEKS R24 R25 K38 ["LocalizedStrings"]
  GETTABLEKS R26 R1 K15 ["Src"]
  GETTABLEKS R25 R26 K39 ["Thunks"]
  GETIMPORT R26 K9 [require]
  GETTABLEKS R27 R25 K40 ["ReleaseEditor"]
  CALL R26 1 1
  GETTABLEKS R28 R1 K15 ["Src"]
  GETTABLEKS R27 R28 K41 ["Util"]
  GETIMPORT R28 K9 [require]
  GETTABLEKS R29 R27 K42 ["CalloutController"]
  CALL R28 1 1
  GETIMPORT R29 K9 [require]
  GETTABLEKS R30 R27 K43 ["Constants"]
  CALL R29 1 1
  GETIMPORT R30 K9 [require]
  GETTABLEKS R31 R27 K44 ["DebugFlags"]
  CALL R30 1 1
  GETIMPORT R31 K9 [require]
  GETTABLEKS R32 R27 K45 ["MakePluginActions"]
  CALL R31 1 1
  GETIMPORT R32 K9 [require]
  GETTABLEKS R33 R27 K46 ["RigVisualization"]
  CALL R32 1 1
  GETIMPORT R33 K9 [require]
  GETTABLEKS R34 R27 K47 ["showBlockingDialog"]
  CALL R33 1 1
  GETIMPORT R34 K9 [require]
  GETTABLEKS R35 R27 K48 ["Theme"]
  CALL R34 1 1
  GETIMPORT R35 K9 [require]
  GETTABLEKS R38 R1 K15 ["Src"]
  GETTABLEKS R37 R38 K36 ["Resources"]
  GETTABLEKS R36 R37 K49 ["AnalyticsHandlers"]
  CALL R35 1 1
  GETTABLEKS R36 R2 K50 ["PureComponent"]
  LOADK R38 K51 ["AnimationClipEditorPlugin"]
  NAMECALL R36 R36 K52 ["extend"]
  CALL R36 2 1
  GETIMPORT R37 K1 [game]
  LOADK R39 K53 ["FaceControlsEditorLink"]
  NAMECALL R37 R37 K54 ["GetFastString"]
  CALL R37 2 1
  GETIMPORT R38 K1 [game]
  LOADK R40 K55 ["ACECurveEditorLink"]
  LOADK R41 K56 ["https://create.roblox.com/docs/building-and-visuals/animation/curve-editor"]
  NAMECALL R38 R38 K57 ["DefineFastString"]
  CALL R38 3 1
  GETIMPORT R39 K1 [game]
  LOADK R41 K58 ["ACEFaceRecorderLink"]
  LOADK R42 K59 ["https://create.roblox.com/docs/building-and-visuals/animation/face-recorder"]
  NAMECALL R39 R39 K57 ["DefineFastString"]
  CALL R39 3 1
  GETIMPORT R40 K1 [game]
  LOADK R42 K60 ["ACETemporaryToolHack"]
  LOADB R43 0
  NAMECALL R40 R40 K61 ["DefineFastFlag"]
  CALL R40 3 1
  GETIMPORT R41 K1 [game]
  LOADK R43 K62 ["ACEHideBonesOnExit"]
  LOADB R44 0
  NAMECALL R41 R41 K61 ["DefineFastFlag"]
  CALL R41 3 1
  GETIMPORT R42 K1 [game]
  LOADK R44 K63 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R42 R42 K64 ["GetFastFlag"]
  CALL R42 2 1
  GETIMPORT R43 K9 [require]
  GETTABLEKS R45 R1 K65 ["LuaFlags"]
  GETTABLEKS R44 R45 K66 ["GetFFlagFacialAnimationRecordingInStudio"]
  CALL R43 1 1
  DUPCLOSURE R44 K67 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R33
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R29
  SETTABLEKS R44 R36 K68 ["handleButtonClick"]
  DUPCLOSURE R44 K69 [PROTO_2]
  SETTABLEKS R44 R36 K70 ["createPluginButton"]
  DUPCLOSURE R44 K71 [PROTO_13]
  CAPTURE VAL R3
  CAPTURE VAL R30
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R29
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R28
  CAPTURE VAL R37
  CAPTURE VAL R38
  CAPTURE VAL R43
  CAPTURE VAL R39
  CAPTURE VAL R5
  CAPTURE VAL R31
  CAPTURE VAL R20
  CAPTURE VAL R35
  CAPTURE VAL R0
  CAPTURE VAL R11
  CAPTURE VAL R26
  CAPTURE VAL R41
  CAPTURE VAL R32
  CAPTURE VAL R40
  CAPTURE VAL R34
  SETTABLEKS R44 R36 K72 ["init"]
  DUPCLOSURE R44 K73 [PROTO_14]
  CAPTURE VAL R29
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R44 R36 K74 ["getPluginSettings"]
  DUPCLOSURE R44 K75 [PROTO_15]
  CAPTURE VAL R29
  SETTABLEKS R44 R36 K76 ["setPluginSettings"]
  DUPCLOSURE R44 K77 [PROTO_16]
  CAPTURE VAL R29
  DUPCLOSURE R45 K78 [PROTO_17]
  CAPTURE VAL R29
  DUPCLOSURE R46 K79 [PROTO_18]
  CAPTURE VAL R29
  DUPCLOSURE R47 K80 [PROTO_19]
  CAPTURE VAL R29
  SETTABLEKS R47 R36 K81 ["didMount"]
  DUPCLOSURE R47 K82 [PROTO_20]
  CAPTURE VAL R40
  CAPTURE VAL R29
  SETTABLEKS R47 R36 K83 ["willUnmount"]
  DUPCLOSURE R47 K84 [PROTO_21]
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R42
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R15
  SETTABLEKS R47 R36 K85 ["render"]
  RETURN R36 1
