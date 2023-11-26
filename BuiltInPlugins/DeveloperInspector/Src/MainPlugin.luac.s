PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"enabled"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["enabled"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onClose"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onRestore"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onWidgetEnabledChanged"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["Store"]
  GETTABLEKS R1 R2 K8 ["new"]
  GETUPVAL R2 1
  LOADNIL R3
  NEWTABLE R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["thunkMiddleware"]
  SETLIST R4 R5 1 [1]
  CALL R1 3 1
  SETTABLEKS R1 R0 K10 ["store"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["Localization"]
  GETTABLEKS R1 R2 K8 ["new"]
  DUPTABLE R2 K16 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K12 ["stringResourceTable"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K13 ["translationResourceTable"]
  LOADK R3 K17 ["DeveloperInspector"]
  SETTABLEKS R3 R2 K14 ["pluginName"]
  NEWTABLE R3 1 0
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K18 ["Resources"]
  GETTABLEKS R4 R5 K19 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R5 K20 [{"stringResourceTable", "translationResourceTable"}]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K18 ["Resources"]
  GETTABLEKS R6 R7 K21 ["SourceStrings"]
  SETTABLEKS R6 R5 K12 ["stringResourceTable"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K18 ["Resources"]
  GETTABLEKS R6 R7 K22 ["LocalizedStrings"]
  SETTABLEKS R6 R5 K13 ["translationResourceTable"]
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R2 K15 ["libraries"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K23 ["localization"]
  GETTABLEKS R2 R0 K24 ["props"]
  GETTABLEKS R1 R2 K25 ["Plugin"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K8 ["new"]
  MOVE R3 R1
  DUPTABLE R4 K27 [{"ToggleProfileRoact"}]
  DUPTABLE R5 K32 [{"id", "text", "defaultShortcut", "allowBinding"}]
  LOADK R6 K26 ["ToggleProfileRoact"]
  SETTABLEKS R6 R5 K28 ["id"]
  LOADK R6 K33 ["Toggle Roact Profiler"]
  SETTABLEKS R6 R5 K29 ["text"]
  LOADK R6 K34 ["Ctrl+Shift+R"]
  SETTABLEKS R6 R5 K30 ["defaultShortcut"]
  LOADB R6 0
  SETTABLEKS R6 R5 K31 ["allowBinding"]
  SETTABLEKS R5 R4 K26 ["ToggleProfileRoact"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K35 ["pluginActions"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["enabled"]
  DUPTABLE R3 K3 [{"Toggle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K12 [{"Toolbar", "Active", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
  SETTABLEKS R1 R6 K5 ["Toolbar"]
  SETTABLEKS R2 R6 K6 ["Active"]
  GETTABLEKS R7 R0 K13 ["localization"]
  LOADK R9 K14 ["Plugin"]
  LOADK R10 K15 ["Button"]
  NAMECALL R7 R7 K16 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Title"]
  GETTABLEKS R7 R0 K13 ["localization"]
  LOADK R9 K14 ["Plugin"]
  LOADK R10 K17 ["Description"]
  NAMECALL R7 R7 K16 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["Tooltip"]
  LOADK R7 K18 ["rbxasset://textures/DeveloperInspector/ToolbarIcon.png"]
  SETTABLEKS R7 R6 K9 ["Icon"]
  GETTABLEKS R7 R0 K19 ["toggleEnabled"]
  SETTABLEKS R7 R6 K10 ["OnClick"]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["ClickableWhenViewportHidden"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Toggle"]
  RETURN R3 1

PROTO_7:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["renderButtons"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  GETTABLEKS R9 R0 K6 ["store"]
  CALL R8 1 1
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["new"]
  NAMECALL R10 R3 K7 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETUPVAL R10 4
  CALL R10 0 1
  GETTABLEKS R11 R0 K8 ["pluginActions"]
  GETTABLEKS R12 R0 K9 ["localization"]
  SETLIST R6 R7 6 [1]
  DUPTABLE R7 K12 [{"Toolbar", "MainWidget"}]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K16 [{"Title", "RenderButtons"}]
  GETTABLEKS R11 R0 K9 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K10 ["Toolbar"]
  NAMECALL R11 R11 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["Title"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  SETTABLEKS R11 R10 K15 ["RenderButtons"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Toolbar"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 7
  DUPTABLE R10 K27 [{"Id", "Enabled", "Title", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose", "ShouldRestore", "OnWidgetRestored"}]
  GETUPVAL R12 8
  JUMPIFNOT R12 [+2]
  LOADK R11 K28 ["DeveloperInspector"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K18 ["Id"]
  SETTABLEKS R4 R10 K19 ["Enabled"]
  GETTABLEKS R11 R0 K9 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K29 ["Name"]
  NAMECALL R11 R11 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["Title"]
  GETIMPORT R11 K32 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K20 ["ZIndexBehavior"]
  GETIMPORT R11 K34 [Enum.InitialDockState.Bottom]
  SETTABLEKS R11 R10 K21 ["InitialDockState"]
  GETIMPORT R11 K36 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["Size"]
  GETIMPORT R11 K36 [Vector2.new]
  LOADN R12 250
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["MinSize"]
  GETTABLEKS R11 R0 K37 ["onClose"]
  SETTABLEKS R11 R10 K24 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K25 ["ShouldRestore"]
  GETTABLEKS R11 R0 K38 ["onRestore"]
  SETTABLEKS R11 R10 K26 ["OnWidgetRestored"]
  DUPTABLE R11 K40 [{"InspectorProvider"}]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 9
  DUPTABLE R14 K42 [{"Active"}]
  SETTABLEKS R4 R14 K41 ["Active"]
  DUPTABLE R15 K44 [{"MainView"}]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K42 [{"Active"}]
  SETTABLEKS R4 R18 K41 ["Active"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K43 ["MainView"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K39 ["InspectorProvider"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["DockWidget"]
  GETTABLEKS R7 R5 K15 ["PluginButton"]
  GETTABLEKS R8 R5 K16 ["PluginToolbar"]
  GETTABLEKS R9 R4 K17 ["ContextServices"]
  GETTABLEKS R10 R9 K18 ["Plugin"]
  GETTABLEKS R11 R9 K19 ["Mouse"]
  GETTABLEKS R12 R9 K20 ["Store"]
  GETTABLEKS R13 R9 K21 ["PluginActions"]
  GETIMPORT R14 K8 [require]
  GETTABLEKS R17 R1 K22 ["Src"]
  GETTABLEKS R16 R17 K23 ["Reducers"]
  GETTABLEKS R15 R16 K24 ["MainReducer"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R18 R1 K22 ["Src"]
  GETTABLEKS R17 R18 K25 ["Resources"]
  GETTABLEKS R16 R17 K26 ["MakeTheme"]
  CALL R15 1 1
  GETTABLEKS R19 R1 K22 ["Src"]
  GETTABLEKS R18 R19 K25 ["Resources"]
  GETTABLEKS R17 R18 K27 ["Localization"]
  GETTABLEKS R16 R17 K28 ["SourceStrings"]
  GETTABLEKS R20 R1 K22 ["Src"]
  GETTABLEKS R19 R20 K25 ["Resources"]
  GETTABLEKS R18 R19 K27 ["Localization"]
  GETTABLEKS R17 R18 K29 ["LocalizedStrings"]
  GETTABLEKS R19 R1 K22 ["Src"]
  GETTABLEKS R18 R19 K30 ["Components"]
  GETIMPORT R19 K8 [require]
  GETTABLEKS R20 R18 K31 ["InspectorProvider"]
  CALL R19 1 1
  GETIMPORT R20 K8 [require]
  GETTABLEKS R21 R18 K32 ["MainView"]
  CALL R20 1 1
  GETTABLEKS R21 R2 K33 ["PureComponent"]
  LOADK R23 K34 ["MainPlugin"]
  NAMECALL R21 R21 K35 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K36 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R22 R21 K37 ["init"]
  DUPCLOSURE R22 K38 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R22 R21 K39 ["renderButtons"]
  DUPCLOSURE R22 K40 [PROTO_8]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R19
  CAPTURE VAL R20
  SETTABLEKS R22 R21 K41 ["render"]
  RETURN R21 1
