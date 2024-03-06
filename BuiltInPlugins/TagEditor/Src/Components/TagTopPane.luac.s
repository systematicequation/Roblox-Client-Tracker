PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["setSearch"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["tagMenu"]
  JUMPIFNOT R1 [+14]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Get"]
  CALL R1 0 1
  GETTABLEKS R3 R0 K1 ["tagMenu"]
  NAMECALL R1 R1 K3 ["DelTag"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K4 ["openTagMenu"]
  LOADNIL R2
  CALL R1 1 0
  RETURN R0 0
  GETTABLEKS R1 R0 K5 ["groupMenu"]
  JUMPIFNOT R1 [+13]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Get"]
  CALL R1 0 1
  GETTABLEKS R3 R0 K5 ["groupMenu"]
  NAMECALL R1 R1 K6 ["DeleteGroup"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K7 ["openGroupMenu"]
  LOADNIL R2
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["tagMenu"]
  JUMPIFEQKNIL R2 [+18]
  GETUPVAL R2 1
  LOADK R5 K2 ["Info"]
  LOADK R6 K3 ["NewGroup"]
  NAMECALL R3 R0 K4 ["getText"]
  CALL R3 3 -1
  CALL R2 -1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["Get"]
  CALL R3 0 1
  GETTABLEKS R5 R1 K1 ["tagMenu"]
  MOVE R6 R2
  NAMECALL R3 R3 K6 ["SetGroup"]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["setWorldView"]
  GETTABLEKS R3 R0 K2 ["worldView"]
  NOT R2 R3
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["worldView"]
  JUMPIF R1 [+6]
  GETTABLEKS R1 R0 K3 ["Analytics"]
  LOADK R3 K4 ["worldVisualization"]
  NAMECALL R1 R1 K5 ["report"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onSearchRequested"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K1 ["onDeleteClicked"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K2 ["onNewGroupClicked"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onWorldViewButtonClicked"]
  DUPTABLE R1 K5 [{"worldViewButtonWidth"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K4 ["worldViewButtonWidth"]
  SETTABLEKS R1 R0 K6 ["state"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K7 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K8 ["worldViewButtonRef"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["worldViewButtonRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["worldViewButtonRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  GETTABLEKS R1 R2 K2 ["AbsoluteSize"]
  GETTABLEKS R0 R1 K3 ["X"]
  JUMPIF R0 [+1]
  LOADN R0 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["worldViewButtonWidth"]
  JUMPIFEQ R1 R0 [+8]
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"worldViewButtonWidth"}]
  SETTABLEKS R0 R3 K4 ["worldViewButtonWidth"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R2 K2 [task.defer]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  MOVE R5 R2
  NAMECALL R3 R0 K0 ["updateExtents"]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  NAMECALL R1 R0 K0 ["updateExtents"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onNewGroupClicked"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["TagTopPane"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["new"]
  CALL R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["new"]
  CALL R6 0 1
  GETTABLEKS R8 R1 K2 ["Stylizer"]
  GETTABLEKS R7 R8 K5 ["VisibleIcon"]
  GETTABLEKS R9 R1 K2 ["Stylizer"]
  GETTABLEKS R8 R9 K6 ["VisibleOffIcon"]
  GETTABLEKS R9 R1 K7 ["groupMenu"]
  JUMPIF R9 [+3]
  GETTABLEKS R10 R1 K8 ["tagMenu"]
  NOT R9 R10
  GETTABLEKS R11 R1 K8 ["tagMenu"]
  NOT R10 R11
  JUMPIFNOT R10 [+3]
  GETTABLEKS R11 R1 K7 ["groupMenu"]
  NOT R10 R11
  JUMPIFNOT R9 [+6]
  LOADK R13 K9 ["Tooltip"]
  LOADK R14 K10 ["NewGroupDisabled"]
  NAMECALL R11 R2 K11 ["getText"]
  CALL R11 3 1
  JUMP [+5]
  LOADK R13 K9 ["Tooltip"]
  LOADK R14 K12 ["NewGroupEnabled"]
  NAMECALL R11 R2 K11 ["getText"]
  CALL R11 3 1
  JUMPIFNOT R10 [+6]
  LOADK R14 K9 ["Tooltip"]
  LOADK R15 K13 ["DeleteDisabled"]
  NAMECALL R12 R2 K11 ["getText"]
  CALL R12 3 1
  JUMP [+5]
  LOADK R14 K9 ["Tooltip"]
  LOADK R15 K14 ["DeleteEnabled"]
  NAMECALL R12 R2 K11 ["getText"]
  CALL R12 3 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K15 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K20 [{"Layout", "VerticalAlignment", "LayoutOrder", "Padding"}]
  GETIMPORT R16 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K16 ["Layout"]
  GETIMPORT R16 K26 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K17 ["VerticalAlignment"]
  LOADN R16 1
  SETTABLEKS R16 R15 K18 ["LayoutOrder"]
  GETTABLEKS R16 R3 K19 ["Padding"]
  SETTABLEKS R16 R15 K19 ["Padding"]
  DUPTABLE R16 K30 [{"SearchRowPane", "NewTagRowPane", "TagListView"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K15 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K33 [{"Size", "LayoutOrder", "Layout", "Spacing"}]
  GETTABLEKS R20 R3 K34 ["SearchBarPaneSize"]
  SETTABLEKS R20 R19 K31 ["Size"]
  NAMECALL R20 R4 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K18 ["LayoutOrder"]
  GETIMPORT R20 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K16 ["Layout"]
  GETTABLEKS R20 R3 K38 ["RowSpacing"]
  SETTABLEKS R20 R19 K32 ["Spacing"]
  DUPTABLE R20 K42 [{"SearchBar", "NewGroupButton", "DeleteButton"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 3
  DUPTABLE R23 K48 [{"Size", "ShowSearchButton", "ShowSearchIcon", "LayoutOrder", "OnSearchRequested", "Style", "PlaceholderText"}]
  GETTABLEKS R24 R3 K49 ["SearchBarSize"]
  SETTABLEKS R24 R23 K31 ["Size"]
  LOADB R24 0
  SETTABLEKS R24 R23 K43 ["ShowSearchButton"]
  LOADB R24 1
  SETTABLEKS R24 R23 K44 ["ShowSearchIcon"]
  NAMECALL R24 R5 K35 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K18 ["LayoutOrder"]
  GETTABLEKS R24 R0 K50 ["onSearchRequested"]
  SETTABLEKS R24 R23 K45 ["OnSearchRequested"]
  LOADK R24 K51 ["Compact"]
  SETTABLEKS R24 R23 K46 ["Style"]
  GETUPVAL R25 4
  JUMPIFNOT R25 [+6]
  LOADK R26 K52 ["General"]
  LOADK R27 K53 ["Search"]
  NAMECALL R24 R2 K11 ["getText"]
  CALL R24 3 1
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K47 ["PlaceholderText"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K39 ["SearchBar"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 5
  DUPTABLE R23 K59 [{"BackgroundStyle", "LeftIcon", "OnClick", "LayoutOrder", "Style", "Disabled", "TooltipText"}]
  LOADK R24 K60 ["RoundBox"]
  SETTABLEKS R24 R23 K54 ["BackgroundStyle"]
  GETTABLEKS R24 R3 K61 ["NewGroupIcon"]
  SETTABLEKS R24 R23 K55 ["LeftIcon"]
  NEWCLOSURE R24 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R24 R23 K56 ["OnClick"]
  NAMECALL R24 R5 K35 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K18 ["LayoutOrder"]
  ANDK R24 R9 K57 ["Disabled"]
  SETTABLEKS R24 R23 K46 ["Style"]
  SETTABLEKS R9 R23 K57 ["Disabled"]
  SETTABLEKS R11 R23 K58 ["TooltipText"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K40 ["NewGroupButton"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 5
  DUPTABLE R23 K59 [{"BackgroundStyle", "LeftIcon", "OnClick", "LayoutOrder", "Style", "Disabled", "TooltipText"}]
  LOADK R24 K60 ["RoundBox"]
  SETTABLEKS R24 R23 K54 ["BackgroundStyle"]
  GETTABLEKS R24 R3 K62 ["DeleteIcon"]
  SETTABLEKS R24 R23 K55 ["LeftIcon"]
  GETTABLEKS R24 R0 K63 ["onDeleteClicked"]
  SETTABLEKS R24 R23 K56 ["OnClick"]
  NAMECALL R24 R5 K35 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K18 ["LayoutOrder"]
  ANDK R24 R10 K57 ["Disabled"]
  SETTABLEKS R24 R23 K46 ["Style"]
  SETTABLEKS R10 R23 K57 ["Disabled"]
  SETTABLEKS R12 R23 K58 ["TooltipText"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K41 ["DeleteButton"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K27 ["SearchRowPane"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K15 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K65 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETTABLEKS R20 R3 K66 ["NewTagRowSize"]
  SETTABLEKS R20 R19 K31 ["Size"]
  NAMECALL R20 R4 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K18 ["LayoutOrder"]
  GETIMPORT R20 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K16 ["Layout"]
  GETIMPORT R20 K68 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K64 ["HorizontalAlignment"]
  DUPTABLE R20 K71 [{"NewTagTextInput", "ToggleWorldViewButton"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 6
  DUPTABLE R23 K73 [{"WidthOffset", "LayoutOrder"}]
  GETTABLEKS R25 R0 K74 ["state"]
  GETTABLEKS R24 R25 K75 ["worldViewButtonWidth"]
  SETTABLEKS R24 R23 K72 ["WidthOffset"]
  NAMECALL R24 R6 K35 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K18 ["LayoutOrder"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K69 ["NewTagTextInput"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K15 ["createElement"]
  GETUPVAL R22 5
  NEWTABLE R23 16 0
  LOADK R24 K60 ["RoundBox"]
  SETTABLEKS R24 R23 K54 ["BackgroundStyle"]
  GETTABLEKS R25 R1 K76 ["worldView"]
  JUMPIFNOT R25 [+2]
  MOVE R24 R7
  JUMP [+1]
  MOVE R24 R8
  SETTABLEKS R24 R23 K55 ["LeftIcon"]
  LOADN R24 5
  SETTABLEKS R24 R23 K19 ["Padding"]
  LOADN R24 4
  SETTABLEKS R24 R23 K32 ["Spacing"]
  GETIMPORT R24 K79 [Enum.AutomaticSize.X]
  SETTABLEKS R24 R23 K77 ["AutomaticSize"]
  LOADK R26 K80 ["Info"]
  LOADK R27 K81 ["WorldView"]
  NAMECALL R24 R2 K11 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K82 ["Text"]
  GETTABLEKS R24 R0 K83 ["onWorldViewButtonClicked"]
  SETTABLEKS R24 R23 K56 ["OnClick"]
  NAMECALL R24 R6 K35 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K18 ["LayoutOrder"]
  GETTABLEKS R24 R3 K84 ["WorldViewButtonSize"]
  SETTABLEKS R24 R23 K31 ["Size"]
  LOADK R26 K9 ["Tooltip"]
  LOADK R27 K81 ["WorldView"]
  NAMECALL R24 R2 K11 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K58 ["TooltipText"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K85 ["Ref"]
  GETTABLEKS R25 R0 K86 ["worldViewButtonRef"]
  SETTABLE R25 R23 R24
  CALL R21 2 1
  SETTABLEKS R21 R20 K70 ["ToggleWorldViewButton"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K28 ["NewTagRowPane"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K15 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K87 [{"LayoutOrder"}]
  NAMECALL R20 R4 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K18 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["TagListView"]
  CALL R13 3 -1
  RETURN R13 -1

PROTO_11:
  DUPTABLE R2 K4 [{"tagMenu", "groupMenu", "worldView", "groupData"}]
  GETTABLEKS R3 R0 K5 ["TagMenu"]
  SETTABLEKS R3 R2 K0 ["tagMenu"]
  GETTABLEKS R3 R0 K6 ["GroupMenu"]
  SETTABLEKS R3 R2 K1 ["groupMenu"]
  GETTABLEKS R3 R0 K7 ["WorldView"]
  SETTABLEKS R3 R2 K2 ["worldView"]
  GETTABLEKS R3 R0 K8 ["GroupData"]
  SETTABLEKS R3 R2 K3 ["groupData"]
  RETURN R2 1

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["SetSearch"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OpenTagMenu"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OpenGroupMenu"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["ToggleWorldView"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_16:
  DUPTABLE R1 K4 [{"setSearch", "openTagMenu", "openGroupMenu", "setWorldView"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["setSearch"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K1 ["openTagMenu"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K2 ["openGroupMenu"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K3 ["setWorldView"]
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
  GETTABLEKS R11 R10 K18 ["IconButton"]
  GETTABLEKS R12 R10 K19 ["Pane"]
  GETTABLEKS R13 R10 K20 ["SearchBar"]
  GETTABLEKS R14 R4 K21 ["Util"]
  GETTABLEKS R15 R14 K22 ["LayoutOrderIterator"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R18 R0 K5 ["Src"]
  GETTABLEKS R17 R18 K23 ["Actions"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K5 ["Src"]
  GETTABLEKS R19 R20 K21 ["Util"]
  GETTABLEKS R18 R19 K24 ["GetUniqueGroupName"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R20 R0 K5 ["Src"]
  GETTABLEKS R19 R20 K25 ["TagManager"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K2 ["Parent"]
  GETTABLEKS R20 R21 K26 ["NewTagTextInput"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETIMPORT R23 K1 [script]
  GETTABLEKS R22 R23 K2 ["Parent"]
  GETTABLEKS R21 R22 K27 ["TagListView"]
  CALL R20 1 1
  GETIMPORT R21 K29 [game]
  LOADK R23 K30 ["TagEditorFixMissingLocalization2"]
  NAMECALL R21 R21 K31 ["GetFastFlag"]
  CALL R21 2 1
  GETTABLEKS R22 R2 K32 ["PureComponent"]
  LOADK R24 K33 ["TagTopPane"]
  NAMECALL R22 R22 K34 ["extend"]
  CALL R22 2 1
  DUPCLOSURE R23 K35 [PROTO_4]
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K36 ["init"]
  DUPCLOSURE R23 K37 [PROTO_6]
  SETTABLEKS R23 R22 K38 ["updateExtents"]
  DUPCLOSURE R23 K39 [PROTO_7]
  SETTABLEKS R23 R22 K40 ["didUpdate"]
  DUPCLOSURE R23 K41 [PROTO_8]
  SETTABLEKS R23 R22 K42 ["didMount"]
  DUPCLOSURE R23 K43 [PROTO_10]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R11
  CAPTURE VAL R19
  CAPTURE VAL R20
  SETTABLEKS R23 R22 K44 ["render"]
  MOVE R23 R6
  DUPTABLE R24 K45 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R7 R24 K13 ["Analytics"]
  SETTABLEKS R8 R24 K14 ["Localization"]
  SETTABLEKS R9 R24 K16 ["Stylizer"]
  CALL R23 1 1
  MOVE R24 R22
  CALL R23 1 1
  MOVE R22 R23
  DUPCLOSURE R23 K46 [PROTO_11]
  DUPCLOSURE R24 K47 [PROTO_16]
  CAPTURE VAL R16
  GETTABLEKS R25 R3 K48 ["connect"]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  MOVE R26 R22
  CALL R25 1 -1
  RETURN R25 -1
