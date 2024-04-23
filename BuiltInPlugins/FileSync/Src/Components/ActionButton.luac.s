PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Size"]
  JUMPIF R1 [+5]
  GETIMPORT R1 K3 [UDim2.fromOffset]
  LOADN R2 100
  LOADN R3 100
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["useState"]
  LOADB R3 0
  CALL R2 1 2
  GETUPVAL R4 1
  LOADK R6 K5 ["ActionButton"]
  NAMECALL R4 R4 K6 ["use"]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["createElement"]
  LOADK R6 K8 ["ImageButton"]
  NEWTABLE R7 8 0
  SETTABLEKS R1 R7 K0 ["Size"]
  JUMPIFNOT R2 [+2]
  LOADK R8 K9 [0.75]
  JUMP [+1]
  LOADN R8 1
  SETTABLEKS R8 R7 K10 ["BackgroundTransparency"]
  GETTABLEKS R8 R0 K11 ["LayoutOrder"]
  SETTABLEKS R8 R7 K11 ["LayoutOrder"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["Event"]
  GETTABLEKS R8 R9 K13 ["Activated"]
  GETTABLEKS R9 R0 K14 ["OnClick"]
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["Event"]
  GETTABLEKS R8 R9 K15 ["MouseEnter"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R3
  SETTABLE R9 R7 R8
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["Event"]
  GETTABLEKS R8 R9 K16 ["MouseLeave"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R3
  SETTABLE R9 R7 R8
  DUPTABLE R8 K23 [{"UICorner", "UIStroke", "UIAspectRatioConstraint", "UIListLayout", "ImageButton", "Spacer", "TextLabel"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K17 ["UICorner"]
  DUPTABLE R11 K25 [{"CornerRadius"}]
  GETIMPORT R12 K28 [UDim.new]
  LOADN R13 0
  LOADN R14 8
  CALL R12 2 1
  SETTABLEKS R12 R11 K24 ["CornerRadius"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["UICorner"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K18 ["UIStroke"]
  DUPTABLE R11 K32 [{"Color", "Transparency", "Thickness"}]
  GETTABLEKS R12 R4 K33 ["FontColor"]
  SETTABLEKS R12 R11 K29 ["Color"]
  LOADN R12 0
  SETTABLEKS R12 R11 K30 ["Transparency"]
  LOADN R12 1
  SETTABLEKS R12 R11 K31 ["Thickness"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["UIStroke"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K19 ["UIAspectRatioConstraint"]
  DUPTABLE R11 K35 [{"AspectRatio"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K34 ["AspectRatio"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K19 ["UIAspectRatioConstraint"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K20 ["UIListLayout"]
  DUPTABLE R11 K40 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
  GETIMPORT R12 K43 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K36 ["FillDirection"]
  GETIMPORT R12 K45 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K37 ["HorizontalAlignment"]
  GETIMPORT R12 K46 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K38 ["VerticalAlignment"]
  GETIMPORT R12 K47 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R12 R11 K39 ["SortOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["UIListLayout"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K48 ["ImageLabel"]
  DUPTABLE R11 K50 [{"Size", "AnchorPoint", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R12 K52 [UDim2.fromScale]
  LOADK R13 K53 [0.5]
  LOADK R14 K53 [0.5]
  CALL R12 2 1
  SETTABLEKS R12 R11 K0 ["Size"]
  GETIMPORT R12 K55 [Vector2.new]
  LOADK R13 K53 [0.5]
  LOADK R14 K56 [0.3]
  CALL R12 2 1
  SETTABLEKS R12 R11 K49 ["AnchorPoint"]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  LOADN R12 0
  SETTABLEKS R12 R11 K11 ["LayoutOrder"]
  DUPTABLE R12 K58 [{"ImageButton", "UICorner", "UIStroke", "ModifiedDot"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K48 ["ImageLabel"]
  DUPTABLE R15 K61 [{"Size", "Position", "BackgroundTransparency", "Image"}]
  GETIMPORT R16 K52 [UDim2.fromScale]
  LOADK R17 K53 [0.5]
  LOADK R18 K53 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K0 ["Size"]
  GETIMPORT R16 K52 [UDim2.fromScale]
  LOADK R17 K62 [0.25]
  LOADK R18 K62 [0.25]
  CALL R16 2 1
  SETTABLEKS R16 R15 K59 ["Position"]
  LOADN R16 1
  SETTABLEKS R16 R15 K10 ["BackgroundTransparency"]
  GETTABLEKS R17 R0 K60 ["Image"]
  ORK R16 R17 K63 [""]
  SETTABLEKS R16 R15 K60 ["Image"]
  DUPTABLE R16 K64 [{"UICorner"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["createElement"]
  LOADK R18 K17 ["UICorner"]
  DUPTABLE R19 K25 [{"CornerRadius"}]
  GETIMPORT R20 K28 [UDim.new]
  LOADN R21 0
  LOADN R22 50
  CALL R20 2 1
  SETTABLEKS R20 R19 K24 ["CornerRadius"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K17 ["UICorner"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K8 ["ImageButton"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K17 ["UICorner"]
  DUPTABLE R15 K25 [{"CornerRadius"}]
  GETIMPORT R16 K28 [UDim.new]
  LOADN R17 0
  LOADN R18 50
  CALL R16 2 1
  SETTABLEKS R16 R15 K24 ["CornerRadius"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["UICorner"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K18 ["UIStroke"]
  DUPTABLE R15 K32 [{"Color", "Transparency", "Thickness"}]
  GETTABLEKS R16 R4 K33 ["FontColor"]
  SETTABLEKS R16 R15 K29 ["Color"]
  LOADN R16 0
  SETTABLEKS R16 R15 K30 ["Transparency"]
  LOADN R16 1
  SETTABLEKS R16 R15 K31 ["Thickness"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["UIStroke"]
  GETTABLEKS R14 R0 K65 ["HasChanges"]
  JUMPIFNOT R14 [+48]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  LOADK R14 K48 ["ImageLabel"]
  DUPTABLE R15 K66 [{"Size", "Position", "Image"}]
  GETIMPORT R16 K3 [UDim2.fromOffset]
  LOADN R17 10
  LOADN R18 10
  CALL R16 2 1
  SETTABLEKS R16 R15 K0 ["Size"]
  GETIMPORT R16 K52 [UDim2.fromScale]
  LOADK R17 K67 [0.85]
  LOADK R18 K68 [0.15]
  CALL R16 2 1
  SETTABLEKS R16 R15 K59 ["Position"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K69 ["getIconForCurrentTheme"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K70 ["IconEnums"]
  GETTABLEKS R17 R18 K71 ["Notification"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K60 ["Image"]
  DUPTABLE R16 K64 [{"UICorner"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["createElement"]
  LOADK R18 K17 ["UICorner"]
  DUPTABLE R19 K25 [{"CornerRadius"}]
  GETIMPORT R20 K28 [UDim.new]
  LOADN R21 0
  LOADN R22 5
  CALL R20 2 1
  SETTABLEKS R20 R19 K24 ["CornerRadius"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K17 ["UICorner"]
  CALL R13 3 1
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K57 ["ModifiedDot"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["ImageButton"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  LOADK R10 K72 ["Frame"]
  DUPTABLE R11 K73 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K11 ["LayoutOrder"]
  GETIMPORT R12 K74 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADN R16 4
  CALL R12 4 1
  SETTABLEKS R12 R11 K0 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["Spacer"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K78 [{"Size", "BackgroundTransparency", "Text", "Style", "TextSize", "LayoutOrder"}]
  GETIMPORT R12 K74 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADK R15 K79 [0.2]
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K0 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  GETTABLEKS R13 R0 K75 ["Text"]
  ORK R12 R13 K63 [""]
  SETTABLEKS R12 R11 K75 ["Text"]
  LOADK R12 K80 ["Semibold"]
  SETTABLEKS R12 R11 K76 ["Style"]
  LOADN R12 18
  SETTABLEKS R12 R11 K77 ["TextSize"]
  LOADN R12 2
  SETTABLEKS R12 R11 K11 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K22 ["TextLabel"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FileSync"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["ModernIcons"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R4 R5 K13 ["Stylizer"]
  GETTABLEKS R5 R3 K14 ["UI"]
  GETTABLEKS R6 R5 K15 ["TextLabel"]
  DUPCLOSURE R7 K16 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R7 1
