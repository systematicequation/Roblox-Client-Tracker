PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["toolEnabled"]
  NOT R0 R1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["setToolEnabled"]
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setToolEnabled"]
  LOADB R1 0
  LOADB R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setToolEnabled"]
  MOVE R2 R0
  LOADB R3 0
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["pluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleState"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setToolEnabled"]
  GETTABLEKS R2 R0 K1 ["Enabled"]
  LOADB R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["setToolEnabled"]
  MOVE R4 R0
  CALL R3 1 0
  JUMPIFNOT R0 [+22]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R3 R2 K2 ["Analytics"]
  LOADK R5 K3 ["alignToolOpen"]
  NAMECALL R3 R3 K4 ["report"]
  CALL R3 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["_hasOpenedThisSession"]
  JUMPIF R3 [+18]
  GETTABLEKS R3 R2 K2 ["Analytics"]
  LOADK R5 K6 ["alignToolImpression"]
  NAMECALL R3 R3 K4 ["report"]
  CALL R3 2 0
  GETUPVAL R3 0
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["_hasOpenedThisSession"]
  RETURN R0 0
  JUMPIFNOT R1 [+6]
  GETTABLEKS R3 R2 K2 ["Analytics"]
  LOADK R5 K7 ["alignToolClose"]
  NAMECALL R3 R3 K4 ["report"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_hasOpenedThisSession"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["toggleState"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onClose"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onRestore"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onDockWidgetCreated"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onDockWidgetEnabledChanged"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["setToolEnabled"]
  RETURN R0 0

PROTO_7:
  JUMPIFNOT R1 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  DUPTABLE R5 K2 [{"MainView"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 2
  CALL R6 1 1
  SETTABLEKS R6 R5 K1 ["MainView"]
  CALL R2 3 -1
  RETURN R2 -1
  LOADNIL R2
  RETURN R2 1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["pluginLoaderContext"]
  GETTABLEKS R1 R2 K2 ["mainButton"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["toolEnabled"]
  NAMECALL R1 R1 K4 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["toolEnabled"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createFragment"]
  DUPTABLE R5 K5 [{"MainWidget"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 1
  NEWTABLE R8 16 0
  GETUPVAL R10 2
  JUMPIFNOT R10 [+2]
  LOADK R9 K7 ["AlignmentTool"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K8 ["Id"]
  SETTABLEKS R3 R8 K9 ["Enabled"]
  GETTABLEKS R10 R1 K10 ["pluginLoaderContext"]
  GETTABLEKS R9 R10 K11 ["mainDockWidget"]
  SETTABLEKS R9 R8 K12 ["Widget"]
  LOADK R11 K13 ["Plugin"]
  LOADK R12 K14 ["WindowTitle"]
  NAMECALL R9 R2 K15 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["Title"]
  GETIMPORT R9 K20 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K18 ["ZIndexBehavior"]
  GETIMPORT R9 K23 [Enum.InitialDockState.Left]
  SETTABLEKS R9 R8 K21 ["InitialDockState"]
  GETUPVAL R9 3
  SETTABLEKS R9 R8 K24 ["Size"]
  GETUPVAL R9 4
  SETTABLEKS R9 R8 K25 ["MinSize"]
  GETTABLEKS R9 R0 K26 ["onClose"]
  SETTABLEKS R9 R8 K27 ["OnClose"]
  LOADB R9 1
  SETTABLEKS R9 R8 K28 ["ShouldRestore"]
  GETTABLEKS R9 R0 K29 ["onRestore"]
  SETTABLEKS R9 R8 K30 ["OnWidgetRestored"]
  GETTABLEKS R9 R0 K31 ["onDockWidgetCreated"]
  SETTABLEKS R9 R8 K32 ["OnWidgetCreated"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K33 ["Change"]
  GETTABLEKS R9 R10 K9 ["Enabled"]
  GETTABLEKS R10 R0 K34 ["onDockWidgetEnabledChanged"]
  SETTABLE R10 R8 R9
  DUPTABLE R9 K36 [{"DockWidgetContent"}]
  MOVE R12 R3
  NAMECALL R10 R0 K37 ["_renderDockWidgetContents"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K35 ["DockWidgetContent"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K4 ["MainWidget"]
  CALL R4 1 -1
  RETURN R4 -1

PROTO_10:
  DUPTABLE R2 K1 [{"toolEnabled"}]
  GETTABLEKS R3 R0 K0 ["toolEnabled"]
  SETTABLEKS R3 R2 K0 ["toolEnabled"]
  RETURN R2 1

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 2
  CALL R2 0 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  DUPTABLE R1 K1 [{"setToolEnabled"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K0 ["setToolEnabled"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETTABLEKS R7 R2 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["DockWidget"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R1 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["Actions"]
  GETTABLEKS R10 R11 K19 ["SetToolEnabled"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R1 K17 ["Src"]
  GETTABLEKS R12 R13 K20 ["Thunks"]
  GETTABLEKS R11 R12 K21 ["UpdateActiveInstanceHighlight"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R1 K17 ["Src"]
  GETTABLEKS R13 R14 K22 ["Components"]
  GETTABLEKS R12 R13 K23 ["MainView"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K17 ["Src"]
  GETTABLEKS R14 R15 K22 ["Components"]
  GETTABLEKS R13 R14 K24 ["HoverPreviewEnabler"]
  CALL R12 1 1
  GETIMPORT R13 K27 [Vector2.new]
  LOADN R14 44
  LOADN R15 250
  CALL R13 2 1
  GETIMPORT R14 K27 [Vector2.new]
  LOADN R15 175
  LOADN R16 250
  CALL R14 2 1
  GETTABLEKS R15 R3 K28 ["PureComponent"]
  LOADK R17 K29 ["AlignmentToolPlugin"]
  NAMECALL R15 R15 K30 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K31 [PROTO_6]
  SETTABLEKS R16 R15 K32 ["init"]
  DUPCLOSURE R16 K33 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R16 R15 K34 ["_renderDockWidgetContents"]
  DUPCLOSURE R16 K35 [PROTO_8]
  SETTABLEKS R16 R15 K36 ["didUpdate"]
  DUPCLOSURE R16 K37 [PROTO_9]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R16 R15 K38 ["render"]
  MOVE R16 R6
  DUPTABLE R17 K41 [{"Localization", "Analytics"}]
  GETTABLEKS R18 R5 K39 ["Localization"]
  SETTABLEKS R18 R17 K39 ["Localization"]
  GETTABLEKS R18 R5 K40 ["Analytics"]
  SETTABLEKS R18 R17 K40 ["Analytics"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  DUPCLOSURE R16 K42 [PROTO_10]
  DUPCLOSURE R17 K43 [PROTO_12]
  CAPTURE VAL R9
  CAPTURE VAL R10
  GETTABLEKS R18 R4 K44 ["connect"]
  MOVE R19 R16
  MOVE R20 R17
  CALL R18 2 1
  MOVE R19 R15
  CALL R18 1 -1
  RETURN R18 -1
