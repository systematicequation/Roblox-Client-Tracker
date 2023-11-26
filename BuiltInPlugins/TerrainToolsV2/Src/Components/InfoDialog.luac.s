PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showingDialog"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showingDialog"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["OnClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"showingDialog"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["showingDialog"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["close"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showingDialog"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showingDialog"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K1 [spawn]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Title"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["MainText"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["SubText"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["LinkInfo"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R6 R5 K6 ["Text"]
  JUMPIF R6 [+1]
  LOADK R6 K7 [""]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K8 ["Image"]
  GETIMPORT R8 K12 [Enum.Font.SourceSansBold]
  GETIMPORT R9 K14 [Enum.Font.SourceSans]
  GETUPVAL R10 0
  MOVE R12 R3
  LOADN R13 20
  MOVE R14 R8
  GETIMPORT R15 K17 [Vector2.new]
  LOADN R16 144
  LOADK R17 K18 [∞]
  CALL R15 2 -1
  NAMECALL R10 R10 K19 ["GetTextSize"]
  CALL R10 -1 1
  GETUPVAL R11 0
  MOVE R13 R4
  LOADN R14 20
  MOVE R15 R9
  GETIMPORT R16 K17 [Vector2.new]
  LOADN R17 144
  LOADK R18 K18 [∞]
  CALL R16 2 -1
  NAMECALL R11 R11 K19 ["GetTextSize"]
  CALL R11 -1 1
  JUMPIFNOT R5 [+13]
  GETUPVAL R12 0
  MOVE R14 R6
  LOADN R15 20
  MOVE R16 R9
  GETIMPORT R17 K17 [Vector2.new]
  LOADN R18 144
  LOADK R19 K18 [∞]
  CALL R17 2 -1
  NAMECALL R12 R12 K19 ["GetTextSize"]
  CALL R12 -1 1
  JUMPIF R12 [+5]
  GETIMPORT R12 K17 [Vector2.new]
  LOADN R13 0
  LOADN R14 0
  CALL R12 2 1
  GETTABLEKS R14 R10 K20 ["X"]
  GETTABLEKS R16 R11 K20 ["X"]
  GETTABLEKS R17 R12 K20 ["X"]
  FASTCALL2 MATH_MAX R16 R17 [+3]
  GETIMPORT R15 K23 [math.max]
  CALL R15 2 1
  FASTCALL2 MATH_MAX R14 R15 [+3]
  GETIMPORT R13 K23 [math.max]
  CALL R13 2 1
  LOADN R15 64
  ADD R14 R15 R13
  GETTABLEKS R18 R10 K25 ["Y"]
  ADDK R17 R18 K24 [8]
  GETTABLEKS R18 R11 K25 ["Y"]
  ADD R16 R17 R18
  JUMPIFNOT R5 [+5]
  LOADN R18 8
  GETTABLEKS R19 R12 K25 ["Y"]
  ADD R17 R18 R19
  JUMPIF R17 [+1]
  LOADN R17 0
  ADD R15 R16 R17
  GETTABLEKS R17 R0 K26 ["state"]
  GETTABLEKS R16 R17 K27 ["showingDialog"]
  JUMPIFNOT R16 [+233]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K28 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K35 [{"Enabled", "Modal", "Title", "OnClose", "OnButtonPressed", "Buttons", "MinContentSize"}]
  LOADB R19 1
  SETTABLEKS R19 R18 K29 ["Enabled"]
  LOADB R19 0
  SETTABLEKS R19 R18 K30 ["Modal"]
  SETTABLEKS R2 R18 K2 ["Title"]
  GETTABLEKS R19 R0 K36 ["close"]
  SETTABLEKS R19 R18 K31 ["OnClose"]
  GETTABLEKS R19 R0 K36 ["close"]
  SETTABLEKS R19 R18 K32 ["OnButtonPressed"]
  NEWTABLE R19 0 1
  DUPTABLE R20 K39 [{"Key", "Text", "Style"}]
  LOADK R21 K40 ["OK"]
  SETTABLEKS R21 R20 K37 ["Key"]
  LOADK R23 K41 ["Action"]
  LOADK R24 K40 ["OK"]
  NAMECALL R21 R1 K42 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K6 ["Text"]
  LOADK R21 K43 ["RoundPrimary"]
  SETTABLEKS R21 R20 K38 ["Style"]
  SETLIST R19 R20 1 [1]
  SETTABLEKS R19 R18 K33 ["Buttons"]
  GETIMPORT R19 K17 [Vector2.new]
  MOVE R20 R14
  MOVE R21 R15
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["MinContentSize"]
  DUPTABLE R19 K46 [{"Icon", "TextSection"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K28 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K48 [{"Size"}]
  GETIMPORT R23 K50 [UDim2.new]
  LOADN R24 0
  LOADN R25 44
  LOADN R26 0
  LOADN R27 44
  CALL R23 4 1
  SETTABLEKS R23 R22 K47 ["Size"]
  DUPTABLE R23 K52 [{"Decoration"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K28 ["createElement"]
  GETUPVAL R25 4
  DUPTABLE R26 K53 [{"Style"}]
  DUPTABLE R27 K54 [{"Image"}]
  SETTABLEKS R7 R27 K8 ["Image"]
  SETTABLEKS R27 R26 K38 ["Style"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K51 ["Decoration"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K44 ["Icon"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K28 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K56 [{"Position", "Size"}]
  GETIMPORT R23 K50 [UDim2.new]
  LOADN R24 0
  LOADN R25 64
  LOADN R26 0
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K55 ["Position"]
  GETIMPORT R23 K50 [UDim2.new]
  LOADN R24 1
  LOADN R25 192
  LOADN R26 1
  LOADN R27 0
  CALL R23 4 1
  SETTABLEKS R23 R22 K47 ["Size"]
  DUPTABLE R23 K59 [{"UIListLayout", "MainText", "SubText", "Link"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K28 ["createElement"]
  LOADK R25 K57 ["UIListLayout"]
  DUPTABLE R26 K62 [{"SortOrder", "Padding"}]
  GETIMPORT R27 K64 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R27 R26 K60 ["SortOrder"]
  GETIMPORT R27 K66 [UDim.new]
  LOADN R28 0
  LOADN R29 8
  CALL R27 2 1
  SETTABLEKS R27 R26 K61 ["Padding"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K57 ["UIListLayout"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K28 ["createElement"]
  GETUPVAL R25 5
  DUPTABLE R26 K69 [{"LayoutOrder", "Size", "Text", "Font", "TextSize", "TextXAlignment"}]
  LOADN R27 1
  SETTABLEKS R27 R26 K63 ["LayoutOrder"]
  GETIMPORT R27 K50 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R31 R10 K25 ["Y"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K47 ["Size"]
  SETTABLEKS R3 R26 K6 ["Text"]
  SETTABLEKS R8 R26 K10 ["Font"]
  LOADN R27 20
  SETTABLEKS R27 R26 K67 ["TextSize"]
  GETIMPORT R27 K71 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K68 ["TextXAlignment"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K3 ["MainText"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K28 ["createElement"]
  GETUPVAL R25 5
  DUPTABLE R26 K73 [{"LayoutOrder", "Size", "Text", "TextWrapped", "Font", "TextSize", "TextXAlignment"}]
  LOADN R27 2
  SETTABLEKS R27 R26 K63 ["LayoutOrder"]
  GETIMPORT R27 K50 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R31 R11 K25 ["Y"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K47 ["Size"]
  SETTABLEKS R4 R26 K6 ["Text"]
  LOADB R27 1
  SETTABLEKS R27 R26 K72 ["TextWrapped"]
  SETTABLEKS R9 R26 K10 ["Font"]
  LOADN R27 20
  SETTABLEKS R27 R26 K67 ["TextSize"]
  GETIMPORT R27 K71 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K68 ["TextXAlignment"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K4 ["SubText"]
  MOVE R24 R5
  JUMPIFNOT R24 [+35]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K28 ["createElement"]
  GETUPVAL R25 6
  DUPTABLE R26 K75 [{"LayoutOrder", "Size", "Text", "TextWrapped", "TextSize", "TextXAlignment", "OnClick"}]
  LOADN R27 3
  SETTABLEKS R27 R26 K63 ["LayoutOrder"]
  GETIMPORT R27 K50 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R31 R12 K25 ["Y"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K47 ["Size"]
  SETTABLEKS R6 R26 K6 ["Text"]
  LOADB R27 1
  SETTABLEKS R27 R26 K72 ["TextWrapped"]
  LOADN R27 20
  SETTABLEKS R27 R26 K67 ["TextSize"]
  GETIMPORT R27 K71 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K68 ["TextXAlignment"]
  GETTABLEKS R27 R5 K74 ["OnClick"]
  SETTABLEKS R27 R26 K74 ["OnClick"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K58 ["Link"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K45 ["TextSection"]
  CALL R16 3 1
  RETURN R16 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R1 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Container"]
  GETTABLEKS R7 R1 K10 ["UI"]
  GETTABLEKS R8 R7 K12 ["LinkText"]
  GETTABLEKS R9 R7 K13 ["Image"]
  GETTABLEKS R10 R7 K14 ["StyledDialog"]
  GETTABLEKS R11 R7 K15 ["TextLabel"]
  GETTABLEKS R12 R2 K16 ["PureComponent"]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K17 ["Name"]
  NAMECALL R12 R12 K18 ["extend"]
  CALL R12 2 1
  GETIMPORT R13 K20 [game]
  LOADK R15 K21 ["TextService"]
  NAMECALL R13 R13 K22 ["GetService"]
  CALL R13 2 1
  DUPCLOSURE R14 K23 [PROTO_1]
  SETTABLEKS R14 R12 K24 ["init"]
  DUPCLOSURE R14 K25 [PROTO_3]
  SETTABLEKS R14 R12 K26 ["didMount"]
  DUPCLOSURE R14 K27 [PROTO_4]
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R8
  SETTABLEKS R14 R12 K28 ["render"]
  MOVE R14 R4
  DUPTABLE R15 K30 [{"Localization"}]
  GETTABLEKS R16 R3 K29 ["Localization"]
  SETTABLEKS R16 R15 K29 ["Localization"]
  CALL R14 1 1
  MOVE R15 R12
  CALL R14 1 1
  MOVE R12 R14
  RETURN R12 1
