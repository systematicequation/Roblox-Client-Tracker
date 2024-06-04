PROTO_0:
  GETIMPORT R1 K1 [tick]
  CALL R1 0 1
  GETTABLEKS R4 R0 K3 ["lastClickTime"]
  ADDK R3 R4 K2 [0.5]
  JUMPIFLT R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R1 R0 K3 ["lastClickTime"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["OnToggle"]
  GETTABLEKS R2 R0 K2 ["Row"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["OnClick"]
  GETTABLEKS R2 R0 K2 ["Row"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["isDoubleClick"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["OnDoubleClick"]
  GETTABLEKS R2 R0 K3 ["Row"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["OnRightClick"]
  GETTABLEKS R2 R0 K2 ["Row"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R1 1
  GETTABLEKS R5 R0 K1 ["Row"]
  GETTABLEKS R4 R5 K2 ["item"]
  GETTABLEKS R3 R4 K3 ["url"]
  NAMECALL R1 R1 K4 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  JUMPIF R0 [+1]
  RETURN R0 0
  LOADN R1 0
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  GETTABLEKS R7 R6 K1 ["Name"]
  JUMPIFEQKS R7 K2 ["Label"] [+11]
  LOADK R9 K3 ["GuiObject"]
  NAMECALL R7 R6 K4 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+5]
  GETTABLEKS R8 R6 K5 ["AbsoluteSize"]
  GETTABLEKS R7 R8 K6 ["X"]
  ADD R1 R1 R7
  FORGLOOP R2 2 [-15]
  GETUPVAL R2 0
  DUPTABLE R4 K8 [{"maxLabelSizeX"}]
  GETTABLEKS R8 R0 K5 ["AbsoluteSize"]
  GETTABLEKS R7 R8 K6 ["X"]
  SUB R6 R7 R1
  GETUPVAL R7 0
  NAMECALL R7 R7 K9 ["calculateIndent"]
  CALL R7 1 1
  SUB R5 R6 R7
  SETTABLEKS R5 R4 K7 ["maxLabelSizeX"]
  NAMECALL R2 R2 K10 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"maxLabelSizeX"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["maxLabelSizeX"]
  SETTABLEKS R1 R0 K2 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["rowContainerRef"]
  LOADN R1 0
  SETTABLEKS R1 R0 K5 ["lastClickTime"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onToggle"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onClick"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onDoubleClick"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onRightClick"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K10 ["onLinkClick"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["onAbsoluteSizeChanged"]
  RETURN R0 0

PROTO_8:
  LOADK R2 K0 ["("]
  GETTABLEKS R3 R0 K1 ["startLine"]
  LOADK R4 K2 [","]
  GETTABLEKS R5 R0 K3 ["startCharacter"]
  LOADK R6 K4 [")"]
  CONCAT R1 R2 R6
  RETURN R1 1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Row"]
  GETTABLEKS R5 R3 K3 ["depth"]
  GETTABLEKS R6 R2 K4 ["Indent"]
  MUL R4 R5 R6
  RETURN R4 1

PROTO_10:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Row"]
  GETTABLEKS R3 R1 K1 ["Row"]
  JUMPIFEQ R2 R3 [+8]
  GETTABLEKS R2 R0 K2 ["onAbsoluteSizeChanged"]
  GETTABLEKS R4 R0 K3 ["rowContainerRef"]
  GETTABLEKS R3 R4 K4 ["current"]
  CALL R2 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R3 R2 K2 ["Stylizer"]
  GETTABLEKS R4 R2 K3 ["Size"]
  GETTABLEKS R5 R2 K4 ["Row"]
  GETTABLEKS R6 R5 K5 ["item"]
  GETTABLEKS R7 R2 K6 ["Expanded"]
  GETTABLEKS R8 R2 K7 ["Selected"]
  GETTABLEKS R9 R6 K8 ["children"]
  JUMPIFNOT R9 [+8]
  GETTABLEKS R11 R6 K8 ["children"]
  LENGTH R10 R11
  LOADN R11 0
  JUMPIFLT R11 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  NAMECALL R10 R0 K9 ["calculateIndent"]
  CALL R10 1 1
  GETTABLEKS R12 R3 K10 ["Arrow"]
  GETTABLEKS R11 R12 K3 ["Size"]
  GETTABLEKS R13 R6 K11 ["codeText"]
  JUMPIFNOTEQKNIL R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETTABLEKS R13 R6 K12 ["initialIssueCount"]
  GETTABLEKS R14 R1 K13 ["maxLabelSizeX"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K14 ["new"]
  CALL R15 0 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K15 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K22 [{"Style", "BorderSizePixel", "Size", "Position", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  LOADK R19 K23 ["Box"]
  SETTABLEKS R19 R18 K16 ["Style"]
  LOADN R19 0
  SETTABLEKS R19 R18 K17 ["BorderSizePixel"]
  SETTABLEKS R4 R18 K3 ["Size"]
  GETTABLEKS R19 R2 K18 ["Position"]
  SETTABLEKS R19 R18 K18 ["Position"]
  GETIMPORT R19 K27 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K19 ["Layout"]
  GETIMPORT R19 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K20 ["HorizontalAlignment"]
  GETIMPORT R19 K31 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K21 ["VerticalAlignment"]
  DUPTABLE R19 K34 [{"RowContainer", "IconContainer"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K15 ["createElement"]
  GETUPVAL R21 2
  NEWTABLE R22 16 0
  NAMECALL R23 R15 K35 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K36 ["LayoutOrder"]
  GETIMPORT R23 K38 [UDim2.new]
  LOADN R24 1
  GETTABLEKS R29 R3 K39 ["IconViewSize"]
  GETTABLEKS R28 R29 K40 ["X"]
  GETTABLEKS R27 R28 K41 ["Offset"]
  MINUS R26 R27
  GETTABLEKS R27 R3 K42 ["Spacing"]
  SUB R25 R26 R27
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K3 ["Size"]
  GETIMPORT R23 K27 [Enum.FillDirection.Horizontal]
  SETTABLEKS R23 R22 K19 ["Layout"]
  GETIMPORT R23 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R23 R22 K20 ["HorizontalAlignment"]
  GETIMPORT R23 K31 [Enum.VerticalAlignment.Center]
  SETTABLEKS R23 R22 K21 ["VerticalAlignment"]
  GETTABLEKS R23 R0 K43 ["onDoubleClick"]
  SETTABLEKS R23 R22 K44 ["OnClick"]
  GETTABLEKS R23 R0 K45 ["onRightClick"]
  SETTABLEKS R23 R22 K46 ["OnRightClick"]
  DUPTABLE R23 K47 [{"Left"}]
  SETTABLEKS R10 R23 K28 ["Left"]
  SETTABLEKS R23 R22 K48 ["Padding"]
  GETTABLEKS R23 R0 K49 ["rowContainerRef"]
  SETTABLEKS R23 R22 K50 ["ForwardRef"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K51 ["Change"]
  GETTABLEKS R23 R24 K52 ["AbsoluteSize"]
  GETTABLEKS R24 R0 K53 ["onAbsoluteSizeChanged"]
  SETTABLE R24 R22 R23
  DUPTABLE R23 K61 [{"Checkbox", "Arrow", "ArrowPadding", "WarningLink", "RangeLabel", "Separator", "Label", "IssueCount"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R25 3
  DUPTABLE R26 K63 [{"LayoutOrder", "Checked", "OnClick"}]
  NAMECALL R27 R15 K35 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K36 ["LayoutOrder"]
  SETTABLEKS R8 R26 K62 ["Checked"]
  GETTABLEKS R27 R0 K64 ["onClick"]
  SETTABLEKS R27 R26 K44 ["OnClick"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K54 ["Checkbox"]
  MOVE R24 R9
  JUMPIFNOT R24 [+63]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K15 ["createElement"]
  LOADK R25 K65 ["ImageButton"]
  NEWTABLE R26 8 0
  NAMECALL R27 R15 K35 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K36 ["LayoutOrder"]
  GETIMPORT R27 K38 [UDim2.new]
  LOADN R28 0
  MOVE R29 R11
  LOADN R30 0
  MOVE R31 R11
  CALL R27 4 1
  SETTABLEKS R27 R26 K3 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K66 ["BackgroundTransparency"]
  GETTABLEKS R28 R3 K10 ["Arrow"]
  GETTABLEKS R27 R28 K67 ["Image"]
  SETTABLEKS R27 R26 K67 ["Image"]
  GETTABLEKS R28 R3 K10 ["Arrow"]
  GETTABLEKS R27 R28 K68 ["Color"]
  SETTABLEKS R27 R26 K69 ["ImageColor3"]
  GETIMPORT R27 K71 [Vector2.new]
  MOVE R28 R11
  MOVE R29 R11
  CALL R27 2 1
  SETTABLEKS R27 R26 K72 ["ImageRectSize"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R28 R3 K10 ["Arrow"]
  GETTABLEKS R27 R28 K73 ["ExpandedOffset"]
  JUMP [+4]
  GETTABLEKS R28 R3 K10 ["Arrow"]
  GETTABLEKS R27 R28 K74 ["CollapsedOffset"]
  SETTABLEKS R27 R26 K75 ["ImageRectOffset"]
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K76 ["Event"]
  GETTABLEKS R27 R28 K77 ["Activated"]
  GETTABLEKS R28 R0 K78 ["onToggle"]
  SETTABLE R28 R26 R27
  CALL R24 2 1
  SETTABLEKS R24 R23 K10 ["Arrow"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R25 2
  DUPTABLE R26 K79 [{"Size", "LayoutOrder"}]
  GETIMPORT R27 K81 [UDim2.fromOffset]
  GETTABLEKS R29 R3 K10 ["Arrow"]
  GETTABLEKS R28 R29 K48 ["Padding"]
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K3 ["Size"]
  NAMECALL R27 R15 K35 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K36 ["LayoutOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K55 ["ArrowPadding"]
  MOVE R24 R12
  JUMPIFNOT R24 [+23]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R25 4
  DUPTABLE R26 K84 [{"Text", "TextSize", "LayoutOrder", "OnClick"}]
  GETTABLEKS R27 R6 K11 ["codeText"]
  SETTABLEKS R27 R26 K82 ["Text"]
  GETTABLEKS R27 R3 K83 ["TextSize"]
  SETTABLEKS R27 R26 K83 ["TextSize"]
  NAMECALL R27 R15 K35 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K36 ["LayoutOrder"]
  GETTABLEKS R27 R0 K85 ["onLinkClick"]
  SETTABLEKS R27 R26 K44 ["OnClick"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K56 ["WarningLink"]
  MOVE R24 R12
  JUMPIFNOT R24 [+31]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R25 5
  DUPTABLE R26 K87 [{"Text", "TextSize", "AutomaticSize", "LayoutOrder"}]
  GETTABLEKS R28 R6 K88 ["range"]
  LOADK R29 K89 ["("]
  GETTABLEKS R30 R28 K90 ["startLine"]
  LOADK R31 K91 [","]
  GETTABLEKS R32 R28 K92 ["startCharacter"]
  LOADK R33 K93 [")"]
  CONCAT R27 R29 R33
  SETTABLEKS R27 R26 K82 ["Text"]
  GETTABLEKS R27 R3 K83 ["TextSize"]
  SETTABLEKS R27 R26 K83 ["TextSize"]
  GETIMPORT R27 K95 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K86 ["AutomaticSize"]
  NAMECALL R27 R15 K35 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K36 ["LayoutOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K57 ["RangeLabel"]
  MOVE R24 R12
  JUMPIFNOT R24 [+22]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R25 5
  DUPTABLE R26 K87 [{"Text", "TextSize", "AutomaticSize", "LayoutOrder"}]
  LOADK R27 K96 [": "]
  SETTABLEKS R27 R26 K82 ["Text"]
  GETTABLEKS R27 R3 K83 ["TextSize"]
  SETTABLEKS R27 R26 K83 ["TextSize"]
  GETIMPORT R27 K95 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K86 ["AutomaticSize"]
  NAMECALL R27 R15 K35 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K36 ["LayoutOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K58 ["Separator"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R25 5
  DUPTABLE R26 K99 [{"Text", "TextSize", "AutomaticSize", "LayoutOrder", "TextTruncate", "TextXAlignment"}]
  GETTABLEKS R27 R6 K100 ["text"]
  SETTABLEKS R27 R26 K82 ["Text"]
  GETTABLEKS R27 R3 K83 ["TextSize"]
  SETTABLEKS R27 R26 K83 ["TextSize"]
  GETIMPORT R27 K95 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K86 ["AutomaticSize"]
  NAMECALL R27 R15 K35 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K36 ["LayoutOrder"]
  GETIMPORT R27 K102 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R27 R26 K97 ["TextTruncate"]
  GETIMPORT R27 K103 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K98 ["TextXAlignment"]
  DUPTABLE R27 K106 [{"SizeConstraint", "Tooltip"}]
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K15 ["createElement"]
  LOADK R29 K107 ["UISizeConstraint"]
  DUPTABLE R30 K109 [{"MaxSize"}]
  GETIMPORT R31 K71 [Vector2.new]
  MOVE R32 R14
  GETTABLEKS R34 R4 K110 ["Y"]
  GETTABLEKS R33 R34 K41 ["Offset"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K108 ["MaxSize"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K104 ["SizeConstraint"]
  GETUPVAL R29 1
  GETTABLEKS R28 R29 K15 ["createElement"]
  GETUPVAL R29 6
  DUPTABLE R30 K111 [{"Text"}]
  GETTABLEKS R31 R6 K100 ["text"]
  SETTABLEKS R31 R30 K82 ["Text"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K105 ["Tooltip"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K59 ["Label"]
  LOADB R24 0
  JUMPIFEQKNIL R13 [+29]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R25 5
  DUPTABLE R26 K112 [{"Text", "Style", "TextSize", "AutomaticSize", "LayoutOrder"}]
  LOADK R28 K89 ["("]
  MOVE R29 R13
  LOADK R30 K93 [")"]
  CONCAT R27 R28 R30
  SETTABLEKS R27 R26 K82 ["Text"]
  LOADK R27 K59 ["Label"]
  SETTABLEKS R27 R26 K16 ["Style"]
  GETTABLEKS R27 R3 K83 ["TextSize"]
  SETTABLEKS R27 R26 K83 ["TextSize"]
  GETIMPORT R27 K95 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K86 ["AutomaticSize"]
  NAMECALL R27 R15 K35 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K36 ["LayoutOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K60 ["IssueCount"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K32 ["RowContainer"]
  GETTABLEKS R21 R6 K113 ["statuses"]
  JUMPIFNOT R21 [+36]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K15 ["createElement"]
  GETUPVAL R21 2
  DUPTABLE R22 K114 [{"AutomaticSize", "LayoutOrder"}]
  GETIMPORT R23 K95 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K86 ["AutomaticSize"]
  NAMECALL R23 R15 K35 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K36 ["LayoutOrder"]
  DUPTABLE R23 K116 [{"ScriptIconView"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K15 ["createElement"]
  GETUPVAL R25 7
  DUPTABLE R26 K119 [{"Size", "Statuses", "ShowCounts"}]
  GETTABLEKS R27 R3 K39 ["IconViewSize"]
  SETTABLEKS R27 R26 K3 ["Size"]
  GETTABLEKS R27 R6 K113 ["statuses"]
  SETTABLEKS R27 R26 K117 ["Statuses"]
  NOT R27 R12
  SETTABLEKS R27 R26 K118 ["ShowCounts"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K115 ["ScriptIconView"]
  CALL R20 3 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K33 ["IconContainer"]
  CALL R16 3 -1
  RETURN R16 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["R15Migrator"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["ContextServices"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R9 R1 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["ScriptAnalysis"]
  GETTABLEKS R6 R7 K17 ["Constants"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K18 ["UI"]
  GETTABLEKS R7 R6 K19 ["TextLabel"]
  GETTABLEKS R8 R6 K20 ["LinkText"]
  GETTABLEKS R9 R6 K21 ["Pane"]
  GETTABLEKS R10 R6 K22 ["Tooltip"]
  GETTABLEKS R11 R6 K23 ["Checkbox"]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R1 K14 ["Src"]
  GETTABLEKS R14 R15 K24 ["Components"]
  GETTABLEKS R13 R14 K25 ["ScriptIconView"]
  CALL R12 1 1
  GETTABLEKS R13 R3 K15 ["Util"]
  GETTABLEKS R14 R13 K26 ["LayoutOrderIterator"]
  GETTABLEKS R15 R2 K27 ["PureComponent"]
  LOADK R17 K28 ["ScriptIssueRow"]
  NAMECALL R15 R15 K29 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K30 [PROTO_0]
  SETTABLEKS R16 R15 K31 ["isDoubleClick"]
  DUPCLOSURE R16 K32 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K33 ["init"]
  DUPCLOSURE R16 K34 [PROTO_8]
  DUPCLOSURE R17 K35 [PROTO_9]
  SETTABLEKS R17 R15 K36 ["calculateIndent"]
  DUPCLOSURE R17 K37 [PROTO_10]
  SETTABLEKS R17 R15 K38 ["didUpdate"]
  DUPCLOSURE R17 K39 [PROTO_11]
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R17 R15 K40 ["render"]
  GETTABLEKS R17 R4 K41 ["withContext"]
  DUPTABLE R18 K44 [{"Stylizer", "Localization"}]
  GETTABLEKS R19 R4 K42 ["Stylizer"]
  SETTABLEKS R19 R18 K42 ["Stylizer"]
  GETTABLEKS R19 R4 K43 ["Localization"]
  SETTABLEKS R19 R18 K43 ["Localization"]
  CALL R17 1 1
  MOVE R18 R15
  CALL R17 1 1
  MOVE R15 R17
  RETURN R15 1
