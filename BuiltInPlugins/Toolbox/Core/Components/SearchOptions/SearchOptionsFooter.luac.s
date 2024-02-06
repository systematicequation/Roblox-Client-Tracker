PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["onButtonClicked"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["onButtonClicked"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onButtonClicked"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onButtonClicked"]
  LOADK R1 K1 ["Cancel"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onButtonClicked"]
  LOADK R1 K1 ["Apply"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Stylizer"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Localization"]
  LOADK R4 K3 ["General"]
  LOADK R5 K4 ["SearchOptionsApply"]
  NAMECALL R2 R2 K5 ["getText"]
  CALL R2 3 1
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Localization"]
  LOADK R5 K3 ["General"]
  LOADK R6 K6 ["SearchOptionsCancel"]
  NAMECALL R3 R3 K5 ["getText"]
  CALL R3 3 1
  GETUPVAL R6 0
  MOVE R7 R2
  LOADNIL R8
  LOADNIL R9
  GETIMPORT R10 K10 [Vector2.new]
  LOADN R11 0
  LOADN R12 0
  CALL R10 2 -1
  CALL R6 -1 1
  GETTABLEKS R5 R6 K11 ["X"]
  ADDK R4 R5 K7 [20]
  GETUPVAL R7 0
  MOVE R8 R3
  LOADNIL R9
  LOADNIL R10
  GETIMPORT R11 K10 [Vector2.new]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 -1
  CALL R7 -1 1
  GETTABLEKS R6 R7 K11 ["X"]
  ADDK R5 R6 K7 [20]
  GETTABLEKS R7 R1 K12 ["searchOptions"]
  GETTABLEKS R6 R7 K13 ["cancelButton"]
  GETTABLEKS R8 R1 K12 ["searchOptions"]
  GETTABLEKS R7 R8 K14 ["applyButton"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["createElement"]
  LOADK R9 K16 ["Frame"]
  DUPTABLE R10 K22 [{"AnchorPoint", "Position", "LayoutOrder", "Size", "BackgroundTransparency"}]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K17 ["AnchorPoint"]
  SETTABLEKS R11 R10 K17 ["AnchorPoint"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K18 ["Position"]
  SETTABLEKS R11 R10 K18 ["Position"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K19 ["LayoutOrder"]
  SETTABLEKS R11 R10 K19 ["LayoutOrder"]
  GETIMPORT R11 K24 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K25 ["FOOTER_BUTTON_HEIGHT"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K20 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K21 ["BackgroundTransparency"]
  DUPTABLE R11 K29 [{"UIListLayout", "CancelButton", "ApplyButton"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K15 ["createElement"]
  LOADK R13 K26 ["UIListLayout"]
  DUPTABLE R14 K34 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R15 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K30 ["FillDirection"]
  GETIMPORT R15 K39 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R15 R14 K31 ["HorizontalAlignment"]
  GETIMPORT R15 K40 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K32 ["SortOrder"]
  GETIMPORT R15 K42 [UDim.new]
  LOADN R16 0
  LOADN R17 10
  CALL R15 2 1
  SETTABLEKS R15 R14 K33 ["Padding"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["UIListLayout"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 3
  NEWTABLE R14 8 0
  LOADN R15 1
  SETTABLEKS R15 R14 K19 ["LayoutOrder"]
  GETIMPORT R15 K24 [UDim2.new]
  LOADN R16 0
  LOADN R18 55
  FASTCALL2 MATH_MAX R18 R5 [+4]
  MOVE R19 R5
  GETIMPORT R17 K45 [math.max]
  CALL R17 2 1
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K20 ["Size"]
  GETTABLEKS R15 R6 K46 ["backgroundColor"]
  SETTABLEKS R15 R14 K47 ["BackgroundColor3"]
  GETTABLEKS R15 R6 K48 ["borderColor"]
  SETTABLEKS R15 R14 K49 ["BorderColor3"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K50 ["Event"]
  GETTABLEKS R15 R16 K51 ["Activated"]
  NEWCLOSURE R16 P0
  CAPTURE VAL R0
  SETTABLE R16 R14 R15
  DUPTABLE R15 K53 [{"TextLabel"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K15 ["createElement"]
  LOADK R17 K52 ["TextLabel"]
  DUPTABLE R18 K58 [{"Size", "BackgroundTransparency", "Font", "TextSize", "Text", "TextColor3"}]
  GETIMPORT R19 K24 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K20 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K21 ["BackgroundTransparency"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K59 ["FONT"]
  SETTABLEKS R19 R18 K54 ["Font"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K60 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R19 R18 K55 ["TextSize"]
  SETTABLEKS R3 R18 K56 ["Text"]
  GETTABLEKS R19 R6 K61 ["textColor"]
  SETTABLEKS R19 R18 K57 ["TextColor3"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K52 ["TextLabel"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K27 ["CancelButton"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 3
  NEWTABLE R14 8 0
  LOADN R15 2
  SETTABLEKS R15 R14 K19 ["LayoutOrder"]
  GETIMPORT R15 K24 [UDim2.new]
  LOADN R16 0
  LOADN R18 55
  FASTCALL2 MATH_MAX R18 R4 [+4]
  MOVE R19 R4
  GETIMPORT R17 K45 [math.max]
  CALL R17 2 1
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K20 ["Size"]
  GETTABLEKS R15 R7 K46 ["backgroundColor"]
  SETTABLEKS R15 R14 K47 ["BackgroundColor3"]
  GETTABLEKS R15 R7 K48 ["borderColor"]
  SETTABLEKS R15 R14 K49 ["BorderColor3"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K50 ["Event"]
  GETTABLEKS R15 R16 K51 ["Activated"]
  NEWCLOSURE R16 P1
  CAPTURE VAL R0
  SETTABLE R16 R14 R15
  DUPTABLE R15 K53 [{"TextLabel"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K15 ["createElement"]
  LOADK R17 K52 ["TextLabel"]
  DUPTABLE R18 K58 [{"Size", "BackgroundTransparency", "Font", "TextSize", "Text", "TextColor3"}]
  GETIMPORT R19 K24 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K20 ["Size"]
  LOADN R19 1
  SETTABLEKS R19 R18 K21 ["BackgroundTransparency"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K59 ["FONT"]
  SETTABLEKS R19 R18 K54 ["Font"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K60 ["FONT_SIZE_MEDIUM"]
  SETTABLEKS R19 R18 K55 ["TextSize"]
  SETTABLEKS R2 R18 K56 ["Text"]
  GETTABLEKS R19 R7 K61 ["textColor"]
  SETTABLEKS R19 R18 K57 ["TextColor3"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K52 ["TextLabel"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K28 ["ApplyButton"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["SharedFlags"]
  GETTABLEKS R2 R3 K8 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K9 ["Packages"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K10 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R2 K11 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Core"]
  GETTABLEKS R7 R8 K6 ["Util"]
  GETTABLEKS R6 R7 K12 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Core"]
  GETTABLEKS R8 R9 K6 ["Util"]
  GETTABLEKS R7 R8 K13 ["ContextHelper"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K14 ["withLocalization"]
  GETTABLEKS R8 R4 K15 ["ContextServices"]
  GETTABLEKS R9 R8 K16 ["withContext"]
  GETTABLEKS R11 R4 K6 ["Util"]
  GETTABLEKS R10 R11 K17 ["GetTextSize"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K5 ["Core"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K19 ["RoundButton"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R16 R0 K5 ["Core"]
  GETTABLEKS R15 R16 K6 ["Util"]
  GETTABLEKS R14 R15 K7 ["SharedFlags"]
  GETTABLEKS R13 R14 K20 ["getFFlagToolboxCleanupLegacyContext"]
  CALL R12 1 1
  GETTABLEKS R13 R3 K21 ["PureComponent"]
  LOADK R15 K22 ["SearchOptionsFooter"]
  NAMECALL R13 R13 K23 ["extend"]
  CALL R13 2 1
  MOVE R14 R1
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADNIL R14
  RETURN R14 1
  DUPCLOSURE R14 K24 [PROTO_1]
  SETTABLEKS R14 R13 K25 ["init"]
  MOVE R14 R12
  CALL R14 0 1
  JUMPIF R14 [+4]
  DUPCLOSURE R14 K26 [PROTO_3]
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K27 ["render"]
  MOVE R15 R12
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADK R14 K27 ["render"]
  JUMP [+1]
  LOADK R14 K28 ["renderContent"]
  DUPCLOSURE R15 K29 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R11
  SETTABLE R15 R13 R14
  MOVE R14 R9
  DUPTABLE R15 K32 [{"Localization", "Stylizer"}]
  GETTABLEKS R16 R8 K30 ["Localization"]
  SETTABLEKS R16 R15 K30 ["Localization"]
  GETTABLEKS R16 R8 K31 ["Stylizer"]
  SETTABLEKS R16 R15 K31 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
