PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R5 R3 K1 ["CellProps"]
  GETTABLEKS R4 R5 K2 ["OnClickItem"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  JUMPIFNOT R2 [+5]
  JUMPIFNOT R4 [+4]
  MOVE R5 R4
  LOADNIL R6
  CALL R5 1 0
  RETURN R0 0
  GETTABLEKS R6 R3 K1 ["CellProps"]
  GETTABLEKS R5 R6 K3 ["SelectVersion"]
  JUMPIFEQ R5 R0 [+5]
  JUMPIFNOT R4 [+3]
  MOVE R5 R4
  MOVE R6 R0
  CALL R5 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["CellProps"]
  GETTABLEKS R2 R3 K2 ["OnClickDesc"]
  GETUPVAL R3 0
  DUPTABLE R5 K4 [{"inputText"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K5 ["ColumnIndex"]
  JUMPIFNOTEQKN R7 K6 [2] [+9]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["Value"]
  GETTABLEKS R6 R7 K8 ["versionDescription"]
  JUMP [+1]
  LOADK R6 K9 [""]
  SETTABLEKS R6 R5 K3 ["inputText"]
  NAMECALL R3 R3 K10 ["setState"]
  CALL R3 2 0
  GETTABLEKS R4 R1 K1 ["CellProps"]
  GETTABLEKS R3 R4 K11 ["OpenInputKey"]
  JUMPIFEQ R3 R0 [+9]
  JUMPIFNOT R2 [+7]
  MOVE R3 R2
  MOVE R4 R0
  GETTABLEKS R6 R1 K1 ["CellProps"]
  GETTABLEKS R5 R6 K12 ["PreviousInput"]
  CALL R3 2 0
  GETTABLEKS R4 R1 K1 ["CellProps"]
  GETTABLEKS R3 R4 K13 ["SetPreviousInput"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K14 ["state"]
  GETTABLEKS R4 R5 K3 ["inputText"]
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["CellProps"]
  GETTABLEKS R0 R1 K2 ["OnClickDesc"]
  JUMPIFNOT R0 [+10]
  MOVE R1 R0
  LOADN R2 255
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["CellProps"]
  GETTABLEKS R3 R4 K3 ["PreviousInput"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"inputText"}]
  SETTABLEKS R0 R3 K0 ["inputText"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["props"]
  GETTABLEKS R2 R3 K4 ["CellProps"]
  GETTABLEKS R1 R2 K5 ["SetPreviousInput"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"inputText"}]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["ColumnIndex"]
  JUMPIFNOTEQKN R3 K4 [2] [+15]
  GETTABLEKS R5 R0 K2 ["props"]
  GETTABLEKS R4 R5 K5 ["Value"]
  GETTABLEKS R3 R4 K6 ["versionDescription"]
  JUMPIFNOT R3 [+7]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K5 ["Value"]
  GETTABLEKS R2 R3 K6 ["versionDescription"]
  JUMP [+1]
  LOADK R2 K7 [""]
  SETTABLEKS R2 R1 K0 ["inputText"]
  SETTABLEKS R1 R0 K8 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["onCheck"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onClickDesc"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["onClickOut"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["onTextChanged"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClickDesc"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Value"]
  GETTABLEKS R1 R2 K2 ["assetVersionNumber"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClickDesc"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Value"]
  GETTABLEKS R1 R2 K2 ["assetVersionNumber"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R1 K2 ["Value"]
  GETTABLEKS R3 R4 K3 ["versionDescription"]
  JUMPIFNOT R3 [+8]
  GETIMPORT R3 K6 [string.find]
  GETTABLEKS R5 R1 K2 ["Value"]
  GETTABLEKS R4 R5 K3 ["versionDescription"]
  LOADK R5 K7 ["
"]
  CALL R3 2 1
  LOADNIL R4
  JUMPIFNOT R3 [+15]
  GETIMPORT R5 K9 [string.format]
  LOADK R6 K10 ["%s..."]
  GETTABLEKS R9 R1 K2 ["Value"]
  GETTABLEKS R8 R9 K3 ["versionDescription"]
  LOADN R9 0
  SUBK R10 R3 K11 [1]
  FASTCALL STRING_SUB [+2]
  GETIMPORT R7 K13 [string.sub]
  CALL R7 3 1
  CALL R5 2 1
  MOVE R4 R5
  GETTABLEKS R7 R1 K14 ["CellProps"]
  GETTABLEKS R6 R7 K15 ["OpenInputKey"]
  GETTABLEKS R8 R1 K2 ["Value"]
  GETTABLEKS R7 R8 K16 ["assetVersionNumber"]
  JUMPIFNOTEQ R6 R7 [+75]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["createElement"]
  LOADK R6 K18 ["Frame"]
  DUPTABLE R7 K22 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
  GETIMPORT R8 K25 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K19 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K20 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K21 ["BorderSizePixel"]
  DUPTABLE R8 K27 [{"InputBox"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K17 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K34 [{"Text", "OnTextChanged", "PlaceholderText", "MultiLine", "Position", "Size", "Style"}]
  GETTABLEKS R13 R2 K36 ["inputText"]
  ORK R12 R13 K35 [""]
  SETTABLEKS R12 R11 K28 ["Text"]
  GETTABLEKS R12 R0 K37 ["onTextChanged"]
  SETTABLEKS R12 R11 K29 ["OnTextChanged"]
  GETTABLEKS R12 R1 K38 ["Localization"]
  LOADK R14 K39 ["AssetConfigVersions"]
  LOADK R15 K40 ["DescribeChanges"]
  NAMECALL R12 R12 K41 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K30 ["PlaceholderText"]
  LOADB R12 1
  SETTABLEKS R12 R11 K31 ["MultiLine"]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 0
  LOADN R14 2
  LOADN R15 0
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K43 ["FONT_SIZE_LARGE"]
  ADDK R16 R17 K42 [12]
  CALL R12 4 1
  SETTABLEKS R12 R11 K32 ["Position"]
  GETIMPORT R12 K45 [UDim2.fromScale]
  LOADK R13 K46 [0.995]
  LOADK R14 K47 [0.9]
  CALL R12 2 1
  SETTABLEKS R12 R11 K19 ["Size"]
  LOADK R12 K48 ["BorderBox"]
  SETTABLEKS R12 R11 K33 ["Style"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K26 ["InputBox"]
  CALL R5 3 1
  RETURN R5 1
  GETTABLEKS R7 R1 K2 ["Value"]
  GETTABLEKS R6 R7 K3 ["versionDescription"]
  JUMPIFEQKS R6 K35 [""] [+6]
  GETTABLEKS R7 R1 K2 ["Value"]
  GETTABLEKS R6 R7 K3 ["versionDescription"]
  JUMPIF R6 [+60]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K50 [{"Style", "Text", "Position", "OnClick"}]
  DUPTABLE R8 K56 [{"Font", "TextSize", "ForceUnderline", "ShowUnderline", "TextColor"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K57 ["FONT"]
  SETTABLEKS R9 R8 K51 ["Font"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K43 ["FONT_SIZE_LARGE"]
  SETTABLEKS R9 R8 K52 ["TextSize"]
  LOADB R9 1
  SETTABLEKS R9 R8 K53 ["ForceUnderline"]
  LOADB R9 1
  SETTABLEKS R9 R8 K54 ["ShowUnderline"]
  GETTABLEKS R11 R1 K14 ["CellProps"]
  GETTABLEKS R10 R11 K58 ["Theme"]
  GETTABLEKS R9 R10 K59 ["textColor"]
  SETTABLEKS R9 R8 K55 ["TextColor"]
  SETTABLEKS R8 R7 K33 ["Style"]
  GETTABLEKS R8 R1 K38 ["Localization"]
  LOADK R10 K39 ["AssetConfigVersions"]
  LOADK R11 K60 ["AddNote"]
  NAMECALL R8 R8 K41 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K28 ["Text"]
  GETIMPORT R8 K25 [UDim2.new]
  LOADN R9 0
  LOADN R10 2
  LOADN R11 0
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K43 ["FONT_SIZE_LARGE"]
  ADDK R12 R13 K61 [8]
  CALL R8 4 1
  SETTABLEKS R8 R7 K32 ["Position"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K49 ["OnClick"]
  CALL R5 2 1
  RETURN R5 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K65 [{"Style", "Text", "TextWrapped", "Position", "TextXAlignment", "TextYAlignment", "OnClick"}]
  DUPTABLE R8 K66 [{"Font", "TextSize", "TextColor"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K57 ["FONT"]
  SETTABLEKS R9 R8 K51 ["Font"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K43 ["FONT_SIZE_LARGE"]
  SETTABLEKS R9 R8 K52 ["TextSize"]
  GETTABLEKS R11 R1 K14 ["CellProps"]
  GETTABLEKS R10 R11 K58 ["Theme"]
  GETTABLEKS R9 R10 K59 ["textColor"]
  SETTABLEKS R9 R8 K55 ["TextColor"]
  SETTABLEKS R8 R7 K33 ["Style"]
  JUMPIFNOT R3 [+2]
  MOVE R8 R4
  JUMP [+4]
  GETTABLEKS R9 R1 K2 ["Value"]
  GETTABLEKS R8 R9 K3 ["versionDescription"]
  SETTABLEKS R8 R7 K28 ["Text"]
  JUMPIFNOT R3 [+2]
  LOADNIL R8
  JUMP [+1]
  LOADB R8 1
  SETTABLEKS R8 R7 K62 ["TextWrapped"]
  GETIMPORT R8 K25 [UDim2.new]
  LOADN R9 0
  LOADN R10 2
  LOADN R11 0
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K43 ["FONT_SIZE_LARGE"]
  ADDK R12 R13 K61 [8]
  CALL R8 4 1
  SETTABLEKS R8 R7 K32 ["Position"]
  GETIMPORT R8 K69 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K63 ["TextXAlignment"]
  GETIMPORT R8 K71 [Enum.TextYAlignment.Top]
  SETTABLEKS R8 R7 K64 ["TextYAlignment"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K49 ["OnClick"]
  CALL R5 2 1
  RETURN R5 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onCheck"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R0 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onCheck"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R0 3 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Value"]
  GETTABLEKS R3 R1 K2 ["Style"]
  GETTABLEKS R4 R1 K3 ["Width"]
  JUMPIF R4 [+9]
  GETIMPORT R4 K6 [UDim.new]
  LOADN R6 1
  GETTABLEKS R8 R1 K7 ["Columns"]
  LENGTH R7 R8
  DIV R5 R6 R7
  LOADN R6 0
  CALL R4 2 1
  GETTABLEKS R6 R1 K8 ["CellProps"]
  GETTABLEKS R5 R6 K9 ["Theme"]
  GETTABLEKS R7 R1 K8 ["CellProps"]
  GETTABLEKS R6 R7 K10 ["CurrentVersion"]
  GETTABLEKS R8 R1 K8 ["CellProps"]
  GETTABLEKS R7 R8 K11 ["SelectVersion"]
  GETTABLEKS R9 R1 K8 ["CellProps"]
  GETTABLEKS R8 R9 K12 ["OpenInputKey"]
  GETTABLEKS R9 R3 K13 ["BackgroundOdd"]
  GETTABLEKS R11 R1 K8 ["CellProps"]
  GETTABLEKS R10 R11 K14 ["IdsToUsernames"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K5 ["new"]
  CALL R11 0 1
  LOADNIL R12
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R14 R2
  GETIMPORT R13 K16 [typeof]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K17 ["number"] [+15]
  FASTCALL1 MATH_FLOOR R2 [+3]
  MOVE R14 R2
  GETIMPORT R13 K20 [math.floor]
  CALL R13 1 1
  JUMPIFEQ R13 R2 [+8]
  LOADK R13 K21 ["%.3f"]
  MOVE R15 R2
  NAMECALL R13 R13 K22 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  JUMP [+6]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R14 R2
  GETIMPORT R13 K24 [tostring]
  CALL R13 1 1
  MOVE R12 R13
  GETTABLEKS R13 R1 K25 ["ColumnIndex"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K26 ["Version"]
  JUMPIFNOTEQ R13 R14 [+283]
  JUMPIFEQ R2 R6 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIFEQKN R8 K27 [-1] [+154]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K28 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K36 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
  GETTABLEKS R17 R1 K25 ["ColumnIndex"]
  SETTABLEKS R17 R16 K29 ["LayoutOrder"]
  LOADN R17 5
  SETTABLEKS R17 R16 K30 ["Padding"]
  LOADK R17 K37 ["Box"]
  SETTABLEKS R17 R16 K2 ["Style"]
  SETTABLEKS R9 R16 K31 ["BackgroundColor3"]
  LOADN R17 1
  SETTABLEKS R17 R16 K32 ["BorderSizePixel"]
  GETTABLEKS R17 R3 K38 ["Border"]
  SETTABLEKS R17 R16 K33 ["BorderColor3"]
  GETIMPORT R17 K40 [UDim2.new]
  GETTABLEKS R18 R4 K41 ["Scale"]
  GETTABLEKS R19 R4 K42 ["Offset"]
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K34 ["Size"]
  LOADB R17 1
  SETTABLEKS R17 R16 K35 ["ClipsDescendants"]
  DUPTABLE R17 K44 [{"Container"}]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K28 ["createElement"]
  LOADK R19 K45 ["ImageButton"]
  NEWTABLE R20 4 0
  GETIMPORT R21 K40 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 0
  CALL R21 4 1
  SETTABLEKS R21 R20 K34 ["Size"]
  LOADN R21 1
  SETTABLEKS R21 R20 K46 ["BackgroundTransparency"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K47 ["Event"]
  GETTABLEKS R21 R22 K48 ["Activated"]
  GETTABLEKS R22 R0 K49 ["onClickOut"]
  SETTABLE R22 R20 R21
  DUPTABLE R21 K51 [{"TextFrame"}]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K28 ["createElement"]
  LOADK R23 K52 ["Frame"]
  DUPTABLE R24 K53 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K46 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K32 ["BorderSizePixel"]
  NAMECALL R25 R11 K54 ["getNextOrder"]
  CALL R25 1 1
  SETTABLEKS R25 R24 K29 ["LayoutOrder"]
  DUPTABLE R25 K56 [{"Text"}]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K28 ["createElement"]
  LOADK R27 K57 ["TextLabel"]
  DUPTABLE R28 K64 [{"BackgroundTransparency", "BorderSizePixel", "Text", "TextColor3", "Font", "TextSize", "Position", "TextXAlignment", "TextYAlignment"}]
  LOADN R29 1
  SETTABLEKS R29 R28 K46 ["BackgroundTransparency"]
  LOADN R29 0
  SETTABLEKS R29 R28 K32 ["BorderSizePixel"]
  JUMPIFNOT R13 [+13]
  GETIMPORT R29 K66 [string.format]
  LOADK R30 K67 ["%s (%s)"]
  MOVE R31 R12
  GETTABLEKS R32 R1 K68 ["Localization"]
  LOADK R34 K69 ["AssetConfigVersions"]
  LOADK R35 K70 ["CurrentLabel"]
  NAMECALL R32 R32 K71 ["getText"]
  CALL R32 3 -1
  CALL R29 -1 1
  JUMP [+1]
  MOVE R29 R12
  SETTABLEKS R29 R28 K55 ["Text"]
  GETTABLEKS R29 R5 K72 ["textColor"]
  SETTABLEKS R29 R28 K58 ["TextColor3"]
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K73 ["FONT"]
  SETTABLEKS R29 R28 K59 ["Font"]
  GETUPVAL R30 4
  GETTABLEKS R29 R30 K74 ["FONT_SIZE_LARGE"]
  SETTABLEKS R29 R28 K60 ["TextSize"]
  GETIMPORT R29 K40 [UDim2.new]
  LOADN R30 0
  LOADN R31 2
  LOADN R32 0
  LOADN R33 2
  CALL R29 4 1
  SETTABLEKS R29 R28 K61 ["Position"]
  GETIMPORT R29 K77 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K62 ["TextXAlignment"]
  GETIMPORT R29 K79 [Enum.TextYAlignment.Top]
  SETTABLEKS R29 R28 K63 ["TextYAlignment"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K55 ["Text"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K50 ["TextFrame"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K43 ["Container"]
  CALL R14 3 -1
  RETURN R14 -1
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K28 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K36 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
  GETTABLEKS R17 R1 K25 ["ColumnIndex"]
  SETTABLEKS R17 R16 K29 ["LayoutOrder"]
  LOADN R17 5
  SETTABLEKS R17 R16 K30 ["Padding"]
  LOADK R17 K37 ["Box"]
  SETTABLEKS R17 R16 K2 ["Style"]
  SETTABLEKS R9 R16 K31 ["BackgroundColor3"]
  LOADN R17 1
  SETTABLEKS R17 R16 K32 ["BorderSizePixel"]
  GETTABLEKS R17 R3 K38 ["Border"]
  SETTABLEKS R17 R16 K33 ["BorderColor3"]
  GETIMPORT R17 K40 [UDim2.new]
  GETTABLEKS R18 R4 K41 ["Scale"]
  GETTABLEKS R19 R4 K42 ["Offset"]
  LOADN R20 1
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K34 ["Size"]
  LOADB R17 1
  SETTABLEKS R17 R16 K35 ["ClipsDescendants"]
  DUPTABLE R17 K51 [{"TextFrame"}]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K28 ["createElement"]
  LOADK R19 K52 ["Frame"]
  DUPTABLE R20 K53 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K46 ["BackgroundTransparency"]
  LOADN R21 0
  SETTABLEKS R21 R20 K32 ["BorderSizePixel"]
  NAMECALL R21 R11 K54 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K29 ["LayoutOrder"]
  DUPTABLE R21 K56 [{"Text"}]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K28 ["createElement"]
  LOADK R23 K57 ["TextLabel"]
  DUPTABLE R24 K64 [{"BackgroundTransparency", "BorderSizePixel", "Text", "TextColor3", "Font", "TextSize", "Position", "TextXAlignment", "TextYAlignment"}]
  LOADN R25 1
  SETTABLEKS R25 R24 K46 ["BackgroundTransparency"]
  LOADN R25 0
  SETTABLEKS R25 R24 K32 ["BorderSizePixel"]
  JUMPIFNOT R13 [+13]
  GETIMPORT R25 K66 [string.format]
  LOADK R26 K67 ["%s (%s)"]
  MOVE R27 R12
  GETTABLEKS R28 R1 K68 ["Localization"]
  LOADK R30 K69 ["AssetConfigVersions"]
  LOADK R31 K70 ["CurrentLabel"]
  NAMECALL R28 R28 K71 ["getText"]
  CALL R28 3 -1
  CALL R25 -1 1
  JUMP [+1]
  MOVE R25 R12
  SETTABLEKS R25 R24 K55 ["Text"]
  GETTABLEKS R25 R5 K72 ["textColor"]
  SETTABLEKS R25 R24 K58 ["TextColor3"]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K73 ["FONT"]
  SETTABLEKS R25 R24 K59 ["Font"]
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K74 ["FONT_SIZE_LARGE"]
  SETTABLEKS R25 R24 K60 ["TextSize"]
  GETIMPORT R25 K40 [UDim2.new]
  LOADN R26 0
  LOADN R27 2
  LOADN R28 0
  LOADN R29 2
  CALL R25 4 1
  SETTABLEKS R25 R24 K61 ["Position"]
  GETIMPORT R25 K77 [Enum.TextXAlignment.Left]
  SETTABLEKS R25 R24 K62 ["TextXAlignment"]
  GETIMPORT R25 K79 [Enum.TextYAlignment.Top]
  SETTABLEKS R25 R24 K63 ["TextYAlignment"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K55 ["Text"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K50 ["TextFrame"]
  CALL R14 3 -1
  RETURN R14 -1
  GETTABLEKS R13 R1 K25 ["ColumnIndex"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K80 ["Description"]
  JUMPIFNOTEQ R13 R14 [+241]
  GETUPVAL R13 5
  GETTABLEKS R14 R2 K81 ["created"]
  LOADK R15 K82 ["L LTS"]
  GETTABLEKS R16 R1 K68 ["Localization"]
  NAMECALL R16 R16 K83 ["getLocale"]
  CALL R16 1 -1
  CALL R13 -1 1
  GETTABLEKS R15 R2 K84 ["creatorId"]
  GETTABLE R14 R10 R15
  LOADNIL R15
  JUMPIFNOT R14 [+8]
  GETIMPORT R16 K66 [string.format]
  LOADK R17 K85 ["%s   •   %s"]
  MOVE R18 R13
  MOVE R19 R14
  CALL R16 3 1
  MOVE R15 R16
  JUMP [+24]
  GETIMPORT R17 K87 [Enum.CreatorType]
  GETTABLEKS R18 R2 K88 ["creatorType"]
  GETTABLE R16 R17 R18
  GETIMPORT R17 K90 [Enum.CreatorType.User]
  JUMPIFNOTEQ R16 R17 [+15]
  GETIMPORT R16 K66 [string.format]
  LOADK R17 K91 ["%s   •   <i>%s</i>"]
  MOVE R18 R13
  GETTABLEKS R19 R1 K68 ["Localization"]
  LOADK R21 K69 ["AssetConfigVersions"]
  LOADK R22 K92 ["RevokedUser"]
  NAMECALL R19 R19 K71 ["getText"]
  CALL R19 3 -1
  CALL R16 -1 1
  MOVE R15 R16
  JUMP [+1]
  MOVE R15 R13
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K28 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K36 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
  GETTABLEKS R19 R1 K25 ["ColumnIndex"]
  SETTABLEKS R19 R18 K29 ["LayoutOrder"]
  LOADN R19 5
  SETTABLEKS R19 R18 K30 ["Padding"]
  LOADK R19 K37 ["Box"]
  SETTABLEKS R19 R18 K2 ["Style"]
  SETTABLEKS R9 R18 K31 ["BackgroundColor3"]
  LOADN R19 1
  SETTABLEKS R19 R18 K32 ["BorderSizePixel"]
  GETTABLEKS R19 R3 K38 ["Border"]
  SETTABLEKS R19 R18 K33 ["BorderColor3"]
  GETIMPORT R19 K40 [UDim2.new]
  GETTABLEKS R20 R4 K41 ["Scale"]
  GETTABLEKS R21 R4 K42 ["Offset"]
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K34 ["Size"]
  LOADB R19 1
  SETTABLEKS R19 R18 K35 ["ClipsDescendants"]
  DUPTABLE R19 K95 [{"CreatedFrame", "DescriptionFrame"}]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K28 ["createElement"]
  LOADK R21 K52 ["Frame"]
  DUPTABLE R22 K97 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "AutomaticSize"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K46 ["BackgroundTransparency"]
  LOADN R23 0
  SETTABLEKS R23 R22 K32 ["BorderSizePixel"]
  NAMECALL R23 R11 K54 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K29 ["LayoutOrder"]
  GETIMPORT R23 K99 [Enum.AutomaticSize.XY]
  SETTABLEKS R23 R22 K96 ["AutomaticSize"]
  DUPTABLE R23 K101 [{"Created"}]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K28 ["createElement"]
  LOADK R25 K57 ["TextLabel"]
  DUPTABLE R26 K104 [{"BorderSizePixel", "RichText", "Text", "BackgroundTransparency", "AutomaticSize", "TextTruncate", "TextColor3", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "Position"}]
  LOADN R27 0
  SETTABLEKS R27 R26 K32 ["BorderSizePixel"]
  LOADB R27 1
  SETTABLEKS R27 R26 K102 ["RichText"]
  SETTABLEKS R15 R26 K55 ["Text"]
  LOADN R27 1
  SETTABLEKS R27 R26 K46 ["BackgroundTransparency"]
  GETIMPORT R27 K99 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K96 ["AutomaticSize"]
  GETIMPORT R27 K106 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R27 R26 K103 ["TextTruncate"]
  GETTABLEKS R27 R5 K107 ["dimmedTextColor"]
  SETTABLEKS R27 R26 K58 ["TextColor3"]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K73 ["FONT"]
  SETTABLEKS R27 R26 K59 ["Font"]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K74 ["FONT_SIZE_LARGE"]
  SETTABLEKS R27 R26 K60 ["TextSize"]
  GETIMPORT R27 K77 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K62 ["TextXAlignment"]
  GETIMPORT R27 K79 [Enum.TextYAlignment.Top]
  SETTABLEKS R27 R26 K63 ["TextYAlignment"]
  GETIMPORT R27 K40 [UDim2.new]
  LOADN R28 0
  LOADN R29 2
  LOADN R30 0
  LOADN R31 2
  CALL R27 4 1
  SETTABLEKS R27 R26 K61 ["Position"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K100 ["Created"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K93 ["CreatedFrame"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K28 ["createElement"]
  LOADK R21 K52 ["Frame"]
  DUPTABLE R22 K108 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Size"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K46 ["BackgroundTransparency"]
  LOADN R23 0
  SETTABLEKS R23 R22 K32 ["BorderSizePixel"]
  NAMECALL R23 R11 K54 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K29 ["LayoutOrder"]
  GETIMPORT R23 K40 [UDim2.new]
  LOADN R24 1
  LOADN R25 0
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K34 ["Size"]
  DUPTABLE R23 K44 [{"Container"}]
  JUMPIFEQKN R8 K27 [-1] [+35]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K28 ["createElement"]
  LOADK R25 K45 ["ImageButton"]
  NEWTABLE R26 4 0
  GETIMPORT R27 K40 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K34 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K46 ["BackgroundTransparency"]
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K47 ["Event"]
  GETTABLEKS R27 R28 K48 ["Activated"]
  GETTABLEKS R28 R0 K49 ["onClickOut"]
  SETTABLE R28 R26 R27
  DUPTABLE R27 K110 [{"DescriptionComponent"}]
  NAMECALL R28 R0 K111 ["createDescriptionComponent"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K109 ["DescriptionComponent"]
  CALL R24 3 1
  JUMP [+3]
  NAMECALL R24 R0 K111 ["createDescriptionComponent"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K43 ["Container"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K94 ["DescriptionFrame"]
  CALL R16 3 -1
  RETURN R16 -1
  GETTABLEKS R13 R1 K25 ["ColumnIndex"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K112 ["Restore"]
  JUMPIFNOTEQ R13 R14 [+154]
  JUMPIFEQ R7 R2 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIFEQ R2 R6 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K28 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K114 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants", "Layout"}]
  GETTABLEKS R18 R1 K25 ["ColumnIndex"]
  SETTABLEKS R18 R17 K29 ["LayoutOrder"]
  LOADN R18 5
  SETTABLEKS R18 R17 K30 ["Padding"]
  LOADK R18 K37 ["Box"]
  SETTABLEKS R18 R17 K2 ["Style"]
  SETTABLEKS R9 R17 K31 ["BackgroundColor3"]
  LOADN R18 1
  SETTABLEKS R18 R17 K32 ["BorderSizePixel"]
  GETTABLEKS R18 R3 K38 ["Border"]
  SETTABLEKS R18 R17 K33 ["BorderColor3"]
  GETIMPORT R18 K40 [UDim2.new]
  GETTABLEKS R19 R4 K41 ["Scale"]
  GETTABLEKS R20 R4 K42 ["Offset"]
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K34 ["Size"]
  LOADB R18 1
  SETTABLEKS R18 R17 K35 ["ClipsDescendants"]
  GETIMPORT R18 K117 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K113 ["Layout"]
  DUPTABLE R18 K119 [{"CheckboxContainer"}]
  JUMPIFEQKN R8 K27 [-1] [+78]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K28 ["createElement"]
  LOADK R20 K45 ["ImageButton"]
  NEWTABLE R21 4 0
  GETIMPORT R22 K40 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  LOADN R26 0
  CALL R22 4 1
  SETTABLEKS R22 R21 K34 ["Size"]
  LOADN R22 1
  SETTABLEKS R22 R21 K46 ["BackgroundTransparency"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K47 ["Event"]
  GETTABLEKS R22 R23 K48 ["Activated"]
  GETTABLEKS R23 R0 K49 ["onClickOut"]
  SETTABLE R23 R21 R22
  DUPTABLE R22 K121 [{"Pane"}]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K28 ["createElement"]
  GETUPVAL R24 3
  DUPTABLE R25 K122 [{"LayoutOrder", "Size", "ClipsDescendants", "Layout"}]
  GETTABLEKS R26 R1 K25 ["ColumnIndex"]
  SETTABLEKS R26 R25 K29 ["LayoutOrder"]
  GETIMPORT R26 K124 [UDim2.fromScale]
  LOADN R27 1
  LOADN R28 1
  CALL R26 2 1
  SETTABLEKS R26 R25 K34 ["Size"]
  LOADB R26 1
  SETTABLEKS R26 R25 K35 ["ClipsDescendants"]
  GETIMPORT R26 K117 [Enum.FillDirection.Vertical]
  SETTABLEKS R26 R25 K113 ["Layout"]
  DUPTABLE R26 K126 [{"Checkbox"}]
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K28 ["createElement"]
  GETUPVAL R28 6
  DUPTABLE R29 K131 [{"Key", "Disabled", "OnClick", "Checked"}]
  SETTABLEKS R12 R29 K127 ["Key"]
  SETTABLEKS R14 R29 K128 ["Disabled"]
  NEWCLOSURE R30 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R13
  SETTABLEKS R30 R29 K129 ["OnClick"]
  SETTABLEKS R13 R29 K130 ["Checked"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K125 ["Checkbox"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K120 ["Pane"]
  CALL R19 3 1
  JUMP [+19]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K28 ["createElement"]
  GETUPVAL R20 6
  DUPTABLE R21 K131 [{"Key", "Disabled", "OnClick", "Checked"}]
  SETTABLEKS R12 R21 K127 ["Key"]
  SETTABLEKS R14 R21 K128 ["Disabled"]
  NEWCLOSURE R22 P1
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R13
  SETTABLEKS R22 R21 K129 ["OnClick"]
  SETTABLEKS R13 R21 K130 ["Checked"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K118 ["CheckboxContainer"]
  CALL R15 3 -1
  RETURN R15 -1
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R7 R3 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["formatLocalDateTime"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R0 K13 ["Core"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K14 ["LayoutOrderIterator"]
  CALL R7 1 1
  GETTABLEKS R9 R0 K13 ["Core"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R8 K15 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R10 R3 K16 ["UI"]
  GETTABLEKS R11 R10 K17 ["Pane"]
  GETTABLEKS R12 R10 K18 ["LinkText"]
  GETTABLEKS R13 R10 K19 ["Checkbox"]
  GETTABLEKS R14 R10 K20 ["TextInput"]
  GETTABLEKS R15 R2 K21 ["PureComponent"]
  LOADK R17 K22 ["VersionsTableCell"]
  NAMECALL R15 R15 K23 ["extend"]
  CALL R15 2 1
  DUPTABLE R16 K27 [{"Version", "Description", "Restore"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K24 ["Version"]
  LOADN R17 2
  SETTABLEKS R17 R16 K25 ["Description"]
  LOADN R17 3
  SETTABLEKS R17 R16 K26 ["Restore"]
  DUPCLOSURE R17 K28 [PROTO_4]
  SETTABLEKS R17 R15 K29 ["init"]
  DUPCLOSURE R17 K30 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R12
  SETTABLEKS R17 R15 K31 ["createDescriptionComponent"]
  DUPCLOSURE R17 K32 [PROTO_10]
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R13
  SETTABLEKS R17 R15 K33 ["render"]
  MOVE R17 R5
  DUPTABLE R18 K35 [{"Localization"}]
  GETTABLEKS R19 R4 K34 ["Localization"]
  SETTABLEKS R19 R18 K34 ["Localization"]
  CALL R17 1 1
  MOVE R18 R15
  CALL R17 1 1
  MOVE R15 R17
  DUPTABLE R17 K38 [{"Enum", "Component"}]
  SETTABLEKS R16 R17 K36 ["Enum"]
  SETTABLEKS R15 R17 K37 ["Component"]
  RETURN R17 1
