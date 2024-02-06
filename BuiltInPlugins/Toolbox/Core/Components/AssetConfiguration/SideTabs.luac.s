PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"hoveredIndex"}]
  SETTABLEKS R0 R3 K0 ["hoveredIndex"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"hoveredIndex"}]
  LOADN R4 0
  SETTABLEKS R4 R3 K0 ["hoveredIndex"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R2 K1 [{"hoveredIndex"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K0 ["hoveredIndex"]
  SETTABLEKS R2 R0 K2 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["onItemEntered"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onItemLeft"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ItemClickCallBack"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ItemClickCallBack"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["ItemClickCallBack"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  MULK R8 R3 K0 [0.4]
  DUPTABLE R9 K2 [{"UIListLayout"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["createElement"]
  LOADK R11 K1 ["UIListLayout"]
  DUPTABLE R12 K9 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R13 K12 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K4 ["FillDirection"]
  GETIMPORT R13 K14 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R13 R12 K5 ["HorizontalAlignment"]
  GETIMPORT R13 K16 [Enum.VerticalAlignment.Top]
  SETTABLEKS R13 R12 K6 ["VerticalAlignment"]
  GETIMPORT R13 K18 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K7 ["SortOrder"]
  GETIMPORT R13 K21 [UDim.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K8 ["Padding"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K1 ["UIListLayout"]
  GETTABLEKS R10 R6 K22 ["current"]
  LOADN R11 0
  JUMPIFNOT R10 [+4]
  GETTABLEKS R12 R10 K23 ["AbsoluteSize"]
  GETTABLEKS R11 R12 K24 ["X"]
  GETIMPORT R12 K26 [pairs]
  MOVE R13 R1
  CALL R12 1 3
  FORGPREP_NEXT R12
  GETUPVAL R18 1
  GETTABLEKS R20 R0 K27 ["props"]
  GETTABLEKS R19 R20 K28 ["Localization"]
  CALL R18 1 1
  GETTABLEKS R19 R16 K29 ["name"]
  GETTABLE R17 R18 R19
  JUMPIFEQ R16 R2 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  GETTABLEKS R20 R4 K30 ["sideTab"]
  GETTABLEKS R19 R20 K31 ["contentColor"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  LOADK R21 K32 ["Frame"]
  DUPTABLE R22 K35 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R23 K37 [UDim2.new]
  LOADK R24 K38 [0.5]
  LOADN R25 0
  LOADN R26 0
  MOVE R27 R3
  CALL R23 4 1
  SETTABLEKS R23 R22 K33 ["Size"]
  LOADN R23 1
  SETTABLEKS R23 R22 K34 ["BackgroundTransparency"]
  SETTABLEKS R15 R22 K17 ["LayoutOrder"]
  DUPTABLE R23 K43 [{"Icon", "Text", "Selection", "Error"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K3 ["createElement"]
  LOADK R25 K44 ["ImageButton"]
  NEWTABLE R26 8 0
  GETIMPORT R27 K46 [Vector2.new]
  LOADN R28 0
  LOADK R29 K38 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K47 ["AnchorPoint"]
  GETIMPORT R27 K37 [UDim2.new]
  LOADN R28 0
  LOADN R29 0
  LOADK R30 K38 [0.5]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K48 ["Position"]
  GETIMPORT R27 K37 [UDim2.new]
  LOADN R28 0
  MOVE R29 R8
  LOADN R30 0
  MOVE R31 R8
  CALL R27 4 1
  SETTABLEKS R27 R26 K33 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K34 ["BackgroundTransparency"]
  SETTABLEKS R19 R26 K49 ["ImageColor3"]
  GETTABLEKS R27 R16 K50 ["image"]
  SETTABLEKS R27 R26 K51 ["Image"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K52 ["Event"]
  GETTABLEKS R27 R28 K53 ["Activated"]
  NEWCLOSURE R28 P0
  CAPTURE VAL R0
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLE R28 R26 R27
  LOADN R27 1
  SETTABLEKS R27 R26 K17 ["LayoutOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K39 ["Icon"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K3 ["createElement"]
  LOADK R25 K54 ["TextButton"]
  NEWTABLE R26 16 0
  GETIMPORT R27 K37 [UDim2.new]
  LOADN R28 0
  MULK R29 R8 K55 [2]
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K48 ["Position"]
  GETIMPORT R27 K37 [UDim2.new]
  LOADN R28 1
  MINUS R29 R8
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K33 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K34 ["BackgroundTransparency"]
  SETTABLEKS R17 R26 K40 ["Text"]
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K56 ["FONT"]
  SETTABLEKS R27 R26 K57 ["Font"]
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K58 ["FONT_SIZE_LARGE"]
  SETTABLEKS R27 R26 K59 ["TextSize"]
  GETIMPORT R27 K62 [Enum.TextXAlignment.Left]
  SETTABLEKS R27 R26 K60 ["TextXAlignment"]
  GETTABLEKS R28 R4 K30 ["sideTab"]
  GETTABLEKS R27 R28 K63 ["textColor"]
  SETTABLEKS R27 R26 K64 ["TextColor3"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K52 ["Event"]
  GETTABLEKS R27 R28 K53 ["Activated"]
  NEWCLOSURE R28 P1
  CAPTURE VAL R0
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLE R28 R26 R27
  LOADN R27 2
  SETTABLEKS R27 R26 K17 ["LayoutOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K40 ["Text"]
  MOVE R24 R18
  JUMPIFNOT R24 [+80]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K3 ["createElement"]
  LOADK R25 K32 ["Frame"]
  DUPTABLE R26 K68 [{"Position", "Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "ZIndex", "LayoutOrder"}]
  GETIMPORT R27 K37 [UDim2.new]
  LOADK R28 K69 [-0.5]
  LOADN R29 0
  LOADN R30 0
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K48 ["Position"]
  GETIMPORT R27 K37 [UDim2.new]
  LOADN R28 0
  MOVE R29 R11
  LOADN R30 1
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K33 ["Size"]
  GETTABLEKS R27 R7 K70 ["selecteBarTrans"]
  SETTABLEKS R27 R26 K34 ["BackgroundTransparency"]
  GETTABLEKS R27 R7 K71 ["selecteBarColor"]
  SETTABLEKS R27 R26 K65 ["BackgroundColor3"]
  LOADN R27 0
  SETTABLEKS R27 R26 K66 ["BorderSizePixel"]
  GETTABLEKS R27 R7 K72 ["selecteBarZindex"]
  SETTABLEKS R27 R26 K67 ["ZIndex"]
  LOADN R27 0
  SETTABLEKS R27 R26 K17 ["LayoutOrder"]
  DUPTABLE R27 K74 [{"Indicator"}]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K3 ["createElement"]
  LOADK R29 K32 ["Frame"]
  DUPTABLE R30 K75 [{"Position", "Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R31 K37 [UDim2.new]
  LOADN R32 0
  LOADN R33 0
  LOADN R34 0
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K48 ["Position"]
  GETIMPORT R31 K37 [UDim2.new]
  LOADN R32 0
  LOADN R33 4
  LOADN R34 1
  LOADN R35 0
  CALL R31 4 1
  SETTABLEKS R31 R30 K33 ["Size"]
  GETTABLEKS R31 R7 K76 ["selecteIndicatorTrans"]
  SETTABLEKS R31 R30 K34 ["BackgroundTransparency"]
  GETTABLEKS R31 R7 K77 ["selecteIndicatorColor"]
  SETTABLEKS R31 R30 K65 ["BackgroundColor3"]
  LOADN R31 0
  SETTABLEKS R31 R30 K66 ["BorderSizePixel"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K73 ["Indicator"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K41 ["Selection"]
  GETTABLEKS R25 R0 K27 ["props"]
  GETTABLEKS R24 R25 K78 ["tabHasErrors"]
  GETTABLEKS R25 R16 K29 ["name"]
  CALL R24 1 1
  JUMPIFNOT R24 [+46]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K3 ["createElement"]
  LOADK R25 K44 ["ImageButton"]
  NEWTABLE R26 8 0
  LOADN R27 1
  SETTABLEKS R27 R26 K34 ["BackgroundTransparency"]
  GETIMPORT R27 K37 [UDim2.new]
  LOADN R28 0
  LOADN R29 20
  LOADN R30 0
  LOADN R31 20
  CALL R27 4 1
  SETTABLEKS R27 R26 K33 ["Size"]
  GETIMPORT R27 K37 [UDim2.new]
  LOADN R28 1
  LOADN R29 236
  LOADK R30 K38 [0.5]
  LOADN R31 246
  CALL R27 4 1
  SETTABLEKS R27 R26 K48 ["Position"]
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K79 ["ERROR_ICON"]
  SETTABLEKS R27 R26 K51 ["Image"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K52 ["Event"]
  GETTABLEKS R27 R28 K53 ["Activated"]
  NEWCLOSURE R28 P2
  CAPTURE VAL R0
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLE R28 R26 R27
  LOADN R27 3
  SETTABLEKS R27 R26 K17 ["LayoutOrder"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K42 ["Error"]
  CALL R20 3 1
  SETTABLE R20 R9 R17
  FORGLOOP R12 2 [-301]
  RETURN R9 1

PROTO_7:
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 4 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["Size"]
  GETTABLEKS R5 R1 K4 ["Position"]
  GETTABLEKS R6 R1 K5 ["Items"]
  GETTABLEKS R7 R1 K6 ["ItemHeight"]
  GETTABLEKS R8 R1 K7 ["CurrentTab"]
  GETTABLEKS R9 R1 K8 ["SelectParentRef"]
  GETTABLEKS R10 R2 K9 ["sideTab"]
  MOVE R13 R6
  MOVE R14 R8
  MOVE R15 R7
  MOVE R16 R2
  LOADNIL R17
  MOVE R18 R9
  MOVE R19 R10
  NAMECALL R11 R0 K10 ["createSideButtons"]
  CALL R11 8 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["createElement"]
  LOADK R13 K12 ["Frame"]
  DUPTABLE R14 K15 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
  SETTABLEKS R5 R14 K4 ["Position"]
  SETTABLEKS R4 R14 K3 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K13 ["BackgroundTransparency"]
  LOADN R15 0
  SETTABLEKS R15 R14 K14 ["BorderSizePixel"]
  SETTABLEKS R3 R14 K2 ["LayoutOrder"]
  MOVE R15 R11
  CALL R12 3 -1
  RETURN R12 -1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["tabErrors"]
  JUMPIFNOT R1 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["tabErrors"]
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+11]
  GETIMPORT R2 K2 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  JUMPIFNOTEQKB R6 TRUE [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 2 [-5]
  LOADB R1 0
  RETURN R1 1

PROTO_11:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K1 [{"tabHasErrors"}]
  NEWCLOSURE R3 P0
  CAPTURE REF R0
  SETTABLEKS R3 R2 K0 ["tabHasErrors"]
  CLOSEUPVALS R0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K8 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K11 ["ContextHelper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K12 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R5 K13 ["Images"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Core"]
  GETTABLEKS R11 R12 K14 ["Localization"]
  GETTABLEKS R10 R11 K15 ["getLocalizedSideTabsMap"]
  CALL R9 1 1
  GETTABLEKS R10 R6 K16 ["withLocalization"]
  GETTABLEKS R11 R4 K17 ["ContextServices"]
  GETTABLEKS R12 R11 K18 ["withContext"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K9 ["Core"]
  GETTABLEKS R16 R17 K10 ["Util"]
  GETTABLEKS R15 R16 K19 ["SharedFlags"]
  GETTABLEKS R14 R15 K20 ["getFFlagToolboxCleanupLegacyContext"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K21 ["PureComponent"]
  LOADK R16 K22 ["SideTabs"]
  NAMECALL R14 R14 K23 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K24 [PROTO_2]
  SETTABLEKS R15 R14 K25 ["init"]
  DUPCLOSURE R15 K26 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R15 R14 K27 ["createSideButtons"]
  MOVE R15 R13
  CALL R15 0 1
  JUMPIF R15 [+4]
  DUPCLOSURE R15 K28 [PROTO_8]
  CAPTURE VAL R10
  SETTABLEKS R15 R14 K29 ["render"]
  MOVE R16 R13
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  LOADK R15 K29 ["render"]
  JUMP [+1]
  LOADK R15 K30 ["renderContent"]
  DUPCLOSURE R16 K31 [PROTO_9]
  CAPTURE VAL R2
  SETTABLE R16 R14 R15
  DUPCLOSURE R15 K32 [PROTO_11]
  MOVE R16 R12
  DUPTABLE R17 K34 [{"Stylizer", "Localization"}]
  GETTABLEKS R18 R11 K33 ["Stylizer"]
  SETTABLEKS R18 R17 K33 ["Stylizer"]
  GETTABLEKS R18 R11 K14 ["Localization"]
  SETTABLEKS R18 R17 K14 ["Localization"]
  CALL R16 1 1
  MOVE R17 R14
  CALL R16 1 1
  MOVE R14 R16
  GETTABLEKS R16 R3 K35 ["connect"]
  MOVE R17 R15
  CALL R16 1 1
  MOVE R17 R14
  CALL R16 1 -1
  RETURN R16 -1
