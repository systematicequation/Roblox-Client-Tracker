PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Inspector"]
  NAMECALL R0 R0 K2 ["get"]
  CALL R0 1 1
  NAMECALL R1 R0 K3 ["closeTargetApi"]
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["closeTarget"]
  CALL R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K5 ["IsProfiling"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["toggleProfiling"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["IsPicking"]
  NOT R0 R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Inspector"]
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 1 1
  NAMECALL R2 R1 K4 ["getTargetApi"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["isInstance"]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOT R3 [+4]
  MOVE R5 R0
  NAMECALL R3 R2 K6 ["setPicking"]
  CALL R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K6 ["setPicking"]
  MOVE R4 R0
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["IsProfiling"]
  NOT R0 R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Inspector"]
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 1 1
  NAMECALL R2 R1 K4 ["getTargetApi"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["isInstance"]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOT R3 [+4]
  MOVE R5 R0
  NAMECALL R3 R2 K6 ["setProfiling"]
  CALL R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K6 ["setProfiling"]
  MOVE R4 R0
  CALL R3 1 0
  JUMPIFNOT R0 [+12]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K7 ["selectTab"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K8 ["Tabs"]
  GETTABLEN R4 R5 2
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["closeTarget"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K1 ["togglePicking"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K2 ["toggleProfiling"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Active"]
  JUMPIF R1 [+3]
  GETTABLEKS R1 R0 K2 ["closeTarget"]
  CALL R1 0 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginActions"]
  LOADK R4 K2 ["ToggleProfileRoact"]
  NAMECALL R2 R1 K3 ["get"]
  CALL R2 2 1
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["Enabled"]
  GETTABLEKS R3 R2 K5 ["Triggered"]
  GETTABLEKS R5 R0 K6 ["toggleProfiling"]
  NAMECALL R3 R3 K7 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K8 ["toggleProfileConnection"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Active"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["closeTarget"]
  CALL R1 0 0
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["PluginActions"]
  LOADK R4 K4 ["ToggleProfileRoact"]
  NAMECALL R2 R1 K5 ["get"]
  CALL R2 2 1
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["Enabled"]
  GETTABLEKS R3 R0 K7 ["toggleProfileConnection"]
  NAMECALL R3 R3 K8 ["Disconnect"]
  CALL R3 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K7 [{"Size", "Style", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R6 K10 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  GETTABLEKS R10 R2 K11 ["HeaderHeight"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K3 ["Size"]
  LOADK R6 K12 ["SubtleBox"]
  SETTABLEKS R6 R5 K4 ["Style"]
  GETTABLEKS R6 R2 K13 ["HeaderBorderColor"]
  SETTABLEKS R6 R5 K5 ["BorderColor3"]
  LOADN R6 1
  SETTABLEKS R6 R5 K6 ["BorderSizePixel"]
  DUPTABLE R6 K18 [{"Inspect", "Profile", "Tabs", "Right"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K22 [{"Style", "Position", "Size", "LayoutOrder", "OnClick"}]
  GETTABLEKS R11 R1 K23 ["IsPicking"]
  JUMPIFNOT R11 [+2]
  LOADK R10 K24 ["RoundPrimary"]
  JUMP [+1]
  LOADK R10 K25 ["RoundSubtle"]
  SETTABLEKS R10 R9 K4 ["Style"]
  GETIMPORT R10 K27 [UDim2.fromOffset]
  GETTABLEKS R11 R2 K28 ["Padding"]
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["Position"]
  GETIMPORT R10 K27 [UDim2.fromOffset]
  GETTABLEKS R11 R2 K29 ["ButtonSize"]
  GETTABLEKS R12 R2 K29 ["ButtonSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K3 ["Size"]
  LOADN R10 1
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  GETTABLEKS R10 R0 K30 ["togglePicking"]
  SETTABLEKS R10 R9 K21 ["OnClick"]
  DUPTABLE R10 K33 [{"Tooltip", "Icon"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K35 [{"Text"}]
  LOADK R14 K36 ["Inspect a UI element"]
  SETTABLEKS R14 R13 K34 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Tooltip"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K39 [{"Size", "Position", "AnchorPoint", "Image"}]
  GETIMPORT R14 K27 [UDim2.fromOffset]
  GETTABLEKS R15 R2 K40 ["IconSize"]
  GETTABLEKS R16 R2 K40 ["IconSize"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K3 ["Size"]
  GETIMPORT R14 K42 [UDim2.fromScale]
  LOADK R15 K43 [0.5]
  LOADK R16 K43 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["Position"]
  GETIMPORT R14 K45 [Vector2.new]
  LOADK R15 K43 [0.5]
  LOADK R16 K43 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["AnchorPoint"]
  LOADK R14 K46 ["rbxasset://textures/DeveloperInspector/Inspect.png"]
  SETTABLEKS R14 R13 K38 ["Image"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["Icon"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K14 ["Inspect"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K22 [{"Style", "Position", "Size", "LayoutOrder", "OnClick"}]
  GETTABLEKS R11 R1 K47 ["IsProfiling"]
  JUMPIFNOT R11 [+2]
  LOADK R10 K24 ["RoundPrimary"]
  JUMP [+1]
  LOADK R10 K25 ["RoundSubtle"]
  SETTABLEKS R10 R9 K4 ["Style"]
  GETIMPORT R10 K27 [UDim2.fromOffset]
  GETTABLEKS R12 R2 K29 ["ButtonSize"]
  GETTABLEKS R14 R2 K28 ["Padding"]
  MULK R13 R14 K48 [2]
  ADD R11 R12 R13
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["Position"]
  GETIMPORT R10 K27 [UDim2.fromOffset]
  GETTABLEKS R11 R2 K29 ["ButtonSize"]
  GETTABLEKS R12 R2 K29 ["ButtonSize"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K3 ["Size"]
  LOADN R10 2
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  GETTABLEKS R10 R0 K49 ["toggleProfiling"]
  SETTABLEKS R10 R9 K21 ["OnClick"]
  DUPTABLE R10 K33 [{"Tooltip", "Icon"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K35 [{"Text"}]
  LOADK R14 K50 ["Profile a Roact tree (Ctrl+Shift+R)"]
  SETTABLEKS R14 R13 K34 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Tooltip"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K39 [{"Size", "Position", "AnchorPoint", "Image"}]
  GETIMPORT R14 K27 [UDim2.fromOffset]
  GETTABLEKS R15 R2 K40 ["IconSize"]
  GETTABLEKS R16 R2 K40 ["IconSize"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K3 ["Size"]
  GETIMPORT R14 K42 [UDim2.fromScale]
  LOADK R15 K43 [0.5]
  LOADK R16 K43 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["Position"]
  GETIMPORT R14 K45 [Vector2.new]
  LOADK R15 K43 [0.5]
  LOADK R16 K43 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["AnchorPoint"]
  LOADK R14 K51 ["rbxasset://textures/DeveloperInspector/Record.png"]
  SETTABLEKS R14 R13 K38 ["Image"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["Icon"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K15 ["Profile"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K52 [{"Position", "LayoutOrder"}]
  GETIMPORT R10 K27 [UDim2.fromOffset]
  GETTABLEKS R13 R2 K29 ["ButtonSize"]
  MULK R12 R13 K48 [2]
  GETTABLEKS R14 R2 K28 ["Padding"]
  MULK R13 R14 K53 [3]
  ADD R11 R12 R13
  GETTABLEKS R12 R2 K28 ["Padding"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["Position"]
  LOADN R10 3
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  DUPTABLE R10 K55 [{"Child"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K58 [{"OnTabSelected", "SelectedTab", "Tabs"}]
  GETTABLEKS R15 R0 K0 ["props"]
  GETTABLEKS R14 R15 K59 ["selectTab"]
  SETTABLEKS R14 R13 K56 ["OnTabSelected"]
  GETTABLEKS R14 R1 K57 ["SelectedTab"]
  SETTABLEKS R14 R13 K57 ["SelectedTab"]
  GETTABLEKS R14 R1 K16 ["Tabs"]
  SETTABLEKS R14 R13 K16 ["Tabs"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K54 ["Child"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K16 ["Tabs"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K63 [{"Layout", "Spacing", "AnchorPoint", "Position", "AutomaticSize"}]
  GETIMPORT R10 K67 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K60 ["Layout"]
  GETTABLEKS R10 R2 K28 ["Padding"]
  SETTABLEKS R10 R9 K61 ["Spacing"]
  GETIMPORT R10 K45 [Vector2.new]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K37 ["AnchorPoint"]
  GETIMPORT R10 K42 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["Position"]
  GETIMPORT R10 K69 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K62 ["AutomaticSize"]
  DUPTABLE R10 K72 [{"TargetName", "Close"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K74 [{"AutomaticSize", "Text", "LayoutOrder", "TextXAlignment"}]
  GETIMPORT R14 K69 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K62 ["AutomaticSize"]
  GETTABLEKS R15 R1 K75 ["SelectedTarget"]
  GETTABLEKS R14 R15 K76 ["Name"]
  SETTABLEKS R14 R13 K34 ["Text"]
  LOADN R14 1
  SETTABLEKS R14 R13 K20 ["LayoutOrder"]
  GETIMPORT R14 K77 [Enum.TextXAlignment.Right]
  SETTABLEKS R14 R13 K73 ["TextXAlignment"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K70 ["TargetName"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K78 [{"Style", "Position", "Size", "AnchorPoint", "LayoutOrder", "OnClick"}]
  LOADK R14 K25 ["RoundSubtle"]
  SETTABLEKS R14 R13 K4 ["Style"]
  GETIMPORT R14 K42 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["Position"]
  GETIMPORT R14 K27 [UDim2.fromOffset]
  GETTABLEKS R15 R2 K29 ["ButtonSize"]
  GETTABLEKS R16 R2 K29 ["ButtonSize"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K3 ["Size"]
  GETIMPORT R14 K45 [Vector2.new]
  LOADN R15 1
  LOADN R16 0
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["AnchorPoint"]
  LOADN R14 4
  SETTABLEKS R14 R13 K20 ["LayoutOrder"]
  GETTABLEKS R14 R0 K79 ["closeTarget"]
  SETTABLEKS R14 R13 K21 ["OnClick"]
  DUPTABLE R14 K33 [{"Tooltip", "Icon"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K35 [{"Text"}]
  LOADK R18 K80 ["Close this Roact tree"]
  SETTABLEKS R18 R17 K34 ["Text"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K31 ["Tooltip"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K39 [{"Size", "Position", "AnchorPoint", "Image"}]
  GETIMPORT R18 K27 [UDim2.fromOffset]
  GETTABLEKS R19 R2 K40 ["IconSize"]
  GETTABLEKS R20 R2 K40 ["IconSize"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K3 ["Size"]
  GETIMPORT R18 K42 [UDim2.fromScale]
  LOADK R19 K43 [0.5]
  LOADK R20 K43 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K19 ["Position"]
  GETIMPORT R18 K45 [Vector2.new]
  LOADK R19 K43 [0.5]
  LOADK R20 K43 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K37 ["AnchorPoint"]
  LOADK R18 K81 ["rbxasset://textures/DeveloperInspector/Close.png"]
  SETTABLEKS R18 R17 K38 ["Image"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K32 ["Icon"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K71 ["Close"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K17 ["Right"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_8:
  DUPTABLE R1 K5 [{"Tabs", "SelectedTab", "SelectedTarget", "IsPicking", "IsProfiling"}]
  GETTABLEKS R3 R0 K6 ["Targets"]
  GETTABLEKS R2 R3 K7 ["tabs"]
  SETTABLEKS R2 R1 K0 ["Tabs"]
  GETTABLEKS R3 R0 K6 ["Targets"]
  GETTABLEKS R2 R3 K8 ["selectedTab"]
  SETTABLEKS R2 R1 K1 ["SelectedTab"]
  GETTABLEKS R3 R0 K6 ["Targets"]
  GETTABLEKS R2 R3 K9 ["selectedTarget"]
  SETTABLEKS R2 R1 K2 ["SelectedTarget"]
  GETTABLEKS R3 R0 K10 ["RoactInspector"]
  GETTABLEKS R2 R3 K11 ["isPicking"]
  SETTABLEKS R2 R1 K3 ["IsPicking"]
  GETTABLEKS R3 R0 K10 ["RoactInspector"]
  GETTABLEKS R2 R3 K12 ["isProfiling"]
  SETTABLEKS R2 R1 K4 ["IsProfiling"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  GETUPVAL R0 0
  GETUPVAL R1 2
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K4 [{"selectTab", "setPicking", "setProfiling", "closeTarget"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["selectTab"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["setPicking"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["setProfiling"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K3 ["closeTarget"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["InspectorContext"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Actions"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K13 ["CloseTarget"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R5 K14 ["RoactInspector"]
  GETTABLEKS R8 R9 K15 ["SetPicking"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R5 K14 ["RoactInspector"]
  GETTABLEKS R9 R10 K16 ["SetProfiling"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R5 K14 ["RoactInspector"]
  GETTABLEKS R10 R11 K17 ["Reset"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R5 K18 ["SetTab"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K19 ["ContextServices"]
  GETTABLEKS R12 R11 K20 ["withContext"]
  GETTABLEKS R13 R3 K21 ["UI"]
  GETTABLEKS R14 R13 K22 ["Pane"]
  GETTABLEKS R15 R13 K23 ["Tabs"]
  GETTABLEKS R16 R13 K24 ["Tooltip"]
  GETTABLEKS R17 R13 K25 ["Button"]
  GETTABLEKS R18 R13 K26 ["Image"]
  GETTABLEKS R19 R13 K27 ["TextLabel"]
  GETTABLEKS R20 R3 K28 ["DeveloperTools"]
  GETTABLEKS R21 R20 K29 ["RoactInspectorApi"]
  GETTABLEKS R22 R1 K30 ["PureComponent"]
  LOADK R24 K31 ["TopBar"]
  NAMECALL R22 R22 K32 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K33 [PROTO_3]
  CAPTURE VAL R21
  SETTABLEKS R23 R22 K34 ["init"]
  DUPCLOSURE R23 K35 [PROTO_4]
  SETTABLEKS R23 R22 K36 ["didUpdate"]
  DUPCLOSURE R23 K37 [PROTO_5]
  SETTABLEKS R23 R22 K38 ["didMount"]
  DUPCLOSURE R23 K39 [PROTO_6]
  SETTABLEKS R23 R22 K40 ["willUnmount"]
  DUPCLOSURE R23 K41 [PROTO_7]
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R19
  SETTABLEKS R23 R22 K42 ["render"]
  MOVE R23 R12
  DUPTABLE R24 K46 [{"PluginActions", "Stylizer", "Inspector"}]
  GETTABLEKS R25 R11 K43 ["PluginActions"]
  SETTABLEKS R25 R24 K43 ["PluginActions"]
  GETTABLEKS R25 R11 K44 ["Stylizer"]
  SETTABLEKS R25 R24 K44 ["Stylizer"]
  SETTABLEKS R4 R24 K45 ["Inspector"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  GETTABLEKS R23 R2 K47 ["connect"]
  DUPCLOSURE R24 K48 [PROTO_8]
  DUPCLOSURE R25 K49 [PROTO_13]
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  CALL R23 2 1
  MOVE R24 R22
  CALL R23 1 -1
  RETURN R23 -1
