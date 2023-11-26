PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"sizes"}]
  SETTABLEKS R0 R3 K0 ["sizes"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onSizesChange"]
  RETURN R0 0

PROTO_2:
  GETIMPORT R3 K3 [Enum.KeyCode.Down]
  GETTABLE R2 R1 R3
  GETIMPORT R4 K5 [Enum.KeyCode.Up]
  GETTABLE R3 R1 R4
  GETIMPORT R5 K7 [Enum.KeyCode.Return]
  GETTABLE R4 R1 R5
  GETIMPORT R6 K9 [Enum.KeyCode.Escape]
  GETTABLE R5 R1 R6
  JUMPIF R3 [+1]
  JUMPIFNOT R2 [+6]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["moveTagSelectionUpOrDown"]
  MOVE R7 R2
  CALL R6 1 0
  RETURN R0 0
  JUMPIFNOT R4 [+27]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["tagMenu"]
  JUMPIFNOT R6 [+14]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["tagMenu"]
  JUMPIFEQKS R6 K12 [""] [+10]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["setRenaming"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K11 ["tagMenu"]
  LOADB R8 1
  CALL R6 2 0
  RETURN R0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["setRenamingGroup"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K15 ["groupMenu"]
  LOADB R8 1
  CALL R6 2 0
  RETURN R0 0
  JUMPIFNOT R5 [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["setAssigningGroup"]
  LOADK R7 K12 [""]
  CALL R6 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["MainGui"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["new"]
  CALL R3 0 1
  LOADB R4 0
  LOADB R5 0
  LOADB R6 0
  LOADB R7 0
  GETTABLEKS R8 R1 K4 ["iconPicker"]
  JUMPIFNOT R8 [+6]
  GETTABLEKS R8 R1 K4 ["iconPicker"]
  JUMPIFEQKS R8 K5 [""] [+3]
  LOADB R4 1
  JUMP [+18]
  GETTABLEKS R8 R1 K6 ["colorPicker"]
  JUMPIFNOT R8 [+6]
  GETTABLEKS R8 R1 K6 ["colorPicker"]
  JUMPIFEQKS R8 K5 [""] [+3]
  LOADB R5 1
  JUMP [+9]
  GETTABLEKS R8 R1 K7 ["minimizedSettingsPane"]
  JUMPIF R8 [+5]
  GETTABLEKS R8 R1 K8 ["tagMenu"]
  JUMPIFNOT R8 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADB R7 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K13 [{"Style", "Layout", "VerticalAlignment"}]
  LOADK R11 K14 ["Box"]
  SETTABLEKS R11 R10 K10 ["Style"]
  GETIMPORT R11 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K11 ["Layout"]
  GETIMPORT R11 K20 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K12 ["VerticalAlignment"]
  DUPTABLE R11 K27 [{"KeyboardListener", "IconPicker", "ColorPicker", "SplitPane", "SoloTopPane", "ShowTagSettingsButton"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K29 [{"OnKeyPressed"}]
  NEWCLOSURE R15 P0
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K28 ["OnKeyPressed"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K21 ["KeyboardListener"]
  MOVE R12 R4
  JUMPIFNOT R12 [+5]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 4
  CALL R12 1 1
  SETTABLEKS R12 R11 K22 ["IconPicker"]
  MOVE R12 R5
  JUMPIFNOT R12 [+5]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 5
  CALL R12 1 1
  SETTABLEKS R12 R11 K23 ["ColorPicker"]
  MOVE R12 R6
  JUMPIFNOT R12 [+52]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K37 [{"LayoutOrder", "ClampSize", "UseScale", "Layout", "Sizes", "MinSizes", "OnSizesChange", "BarStyle"}]
  NAMECALL R15 R3 K38 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K30 ["LayoutOrder"]
  LOADB R15 1
  SETTABLEKS R15 R14 K31 ["ClampSize"]
  LOADB R15 1
  SETTABLEKS R15 R14 K32 ["UseScale"]
  GETIMPORT R15 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K11 ["Layout"]
  GETTABLEKS R16 R0 K39 ["state"]
  GETTABLEKS R15 R16 K40 ["sizes"]
  SETTABLEKS R15 R14 K33 ["Sizes"]
  GETTABLEKS R15 R2 K41 ["SplitPaneMinsizes"]
  SETTABLEKS R15 R14 K34 ["MinSizes"]
  GETTABLEKS R15 R0 K42 ["onSizesChange"]
  SETTABLEKS R15 R14 K35 ["OnSizesChange"]
  LOADK R15 K43 ["WStyle"]
  SETTABLEKS R15 R14 K36 ["BarStyle"]
  NEWTABLE R15 0 2
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 7
  CALL R16 1 1
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K9 ["createElement"]
  GETUPVAL R18 8
  CALL R17 1 -1
  SETLIST R15 R16 4294967295 [1]
  CALL R12 3 1
  SETTABLEKS R12 R11 K24 ["SplitPane"]
  MOVE R12 R7
  JUMPIFNOT R12 [+23]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K45 [{"LayoutOrder", "Size"}]
  NAMECALL R15 R3 K38 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K30 ["LayoutOrder"]
  GETTABLEKS R15 R2 K46 ["SoloTopPaneSize"]
  SETTABLEKS R15 R14 K44 ["Size"]
  DUPTABLE R15 K48 [{"TopPane"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 7
  CALL R16 1 1
  SETTABLEKS R16 R15 K47 ["TopPane"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K25 ["SoloTopPane"]
  MOVE R12 R7
  JUMPIFNOT R12 [+11]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 9
  DUPTABLE R14 K49 [{"LayoutOrder"}]
  NAMECALL R15 R3 K38 ["getNextOrder"]
  CALL R15 1 1
  SETTABLEKS R15 R14 K30 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["ShowTagSettingsButton"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_4:
  DUPTABLE R3 K1 [{"sizes"}]
  GETTABLEKS R7 R0 K2 ["props"]
  GETTABLEKS R6 R7 K3 ["Stylizer"]
  GETTABLEKS R5 R6 K4 ["MainGui"]
  GETTABLEKS R4 R5 K5 ["SplitPaneInitialSizes"]
  SETTABLEKS R4 R3 K0 ["sizes"]
  NAMECALL R1 R0 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R2 K5 [{"colorPicker", "iconPicker", "minimizedSettingsPane", "tagMenu", "groupMenu"}]
  GETTABLEKS R3 R0 K6 ["ColorPicker"]
  SETTABLEKS R3 R2 K0 ["colorPicker"]
  GETTABLEKS R3 R0 K7 ["IconPicker"]
  SETTABLEKS R3 R2 K1 ["iconPicker"]
  GETTABLEKS R3 R0 K8 ["MinimizedSettingsPane"]
  SETTABLEKS R3 R2 K2 ["minimizedSettingsPane"]
  GETTABLEKS R3 R0 K9 ["TagMenu"]
  SETTABLEKS R3 R2 K3 ["tagMenu"]
  GETTABLEKS R3 R0 K10 ["GroupMenu"]
  SETTABLEKS R3 R2 K4 ["groupMenu"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["MoveTagSelectionUpOrDown"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["SetRenaming"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["SetRenamingGroup"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["SetAssigningGroup"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K4 [{"moveTagSelectionUpOrDown", "setRenaming", "setRenamingGroup", "setAssigningGroup"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["moveTagSelectionUpOrDown"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K1 ["setRenaming"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K2 ["setRenamingGroup"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K3 ["setAssigningGroup"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Analytics"]
  GETTABLEKS R8 R5 K14 ["Localization"]
  GETTABLEKS R10 R4 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["Stylizer"]
  GETTABLEKS R10 R4 K17 ["UI"]
  GETTABLEKS R11 R10 K18 ["Pane"]
  GETTABLEKS R12 R10 K19 ["SplitPane"]
  GETTABLEKS R13 R10 K20 ["KeyboardListener"]
  GETTABLEKS R14 R4 K21 ["Util"]
  GETTABLEKS R15 R14 K22 ["LayoutOrderIterator"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R18 R0 K5 ["Src"]
  GETTABLEKS R17 R18 K23 ["Actions"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETIMPORT R20 K1 [script]
  GETTABLEKS R19 R20 K2 ["Parent"]
  GETTABLEKS R18 R19 K24 ["ColorPicker"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETIMPORT R21 K1 [script]
  GETTABLEKS R20 R21 K2 ["Parent"]
  GETTABLEKS R19 R20 K25 ["IconPicker"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K2 ["Parent"]
  GETTABLEKS R20 R21 K26 ["TagTopPane"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETIMPORT R23 K1 [script]
  GETTABLEKS R22 R23 K2 ["Parent"]
  GETTABLEKS R21 R22 K27 ["TagSettingsPane"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K2 ["Parent"]
  GETTABLEKS R22 R23 K28 ["TagSettingsToggleButton"]
  CALL R21 1 1
  GETTABLEKS R22 R2 K29 ["PureComponent"]
  LOADK R24 K30 ["MainGui"]
  NAMECALL R22 R22 K31 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K32 [PROTO_1]
  SETTABLEKS R23 R22 K33 ["init"]
  DUPCLOSURE R23 K34 [PROTO_3]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  SETTABLEKS R23 R22 K35 ["render"]
  DUPCLOSURE R23 K36 [PROTO_4]
  SETTABLEKS R23 R22 K37 ["didMount"]
  MOVE R23 R6
  DUPTABLE R24 K38 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R7 R24 K13 ["Analytics"]
  SETTABLEKS R8 R24 K14 ["Localization"]
  SETTABLEKS R9 R24 K16 ["Stylizer"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  DUPCLOSURE R23 K39 [PROTO_5]
  DUPCLOSURE R24 K40 [PROTO_10]
  CAPTURE VAL R16
  GETTABLEKS R25 R3 K41 ["connect"]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  MOVE R26 R22
  CALL R25 1 -1
  RETURN R25 -1
