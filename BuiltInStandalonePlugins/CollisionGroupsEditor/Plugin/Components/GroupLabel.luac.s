PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"pressed"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["pressed"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["Group"]
  GETTABLEKS R0 R1 K5 ["UISelected"]
  JUMPIFNOT R0 [+18]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["Group"]
  GETTABLEKS R0 R1 K6 ["Name"]
  JUMPIFEQKS R0 K7 ["Default"] [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["Group"]
  GETTABLEKS R0 R1 K8 ["OnRenamed"]
  CALL R0 0 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["Group"]
  GETTABLEKS R0 R1 K9 ["OnSelected"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"pressed"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["pressed"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["OnRowHovered"]
  MOVE R3 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K2 ["Group"]
  GETTABLEKS R4 R5 K3 ["Name"]
  LOADB R5 1
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["OnRowHovered"]
  MOVE R3 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K2 ["Group"]
  GETTABLEKS R4 R5 K3 ["Name"]
  LOADB R5 0
  CALL R2 3 0
  GETUPVAL R2 0
  DUPTABLE R4 K5 [{"pressed"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K4 ["pressed"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"pressed"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["pressed"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onClick"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onPress"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onMouseEnter"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onMouseLeave"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R5 R1 K3 ["Group"]
  GETTABLEKS R4 R5 K4 ["Renaming"]
  LOADNIL R5
  GETTABLEKS R7 R0 K5 ["state"]
  GETTABLEKS R6 R7 K6 ["pressed"]
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["Pressed"]
  JUMP [+16]
  GETTABLEKS R7 R1 K3 ["Group"]
  GETTABLEKS R6 R7 K8 ["UISelected"]
  JUMPIFNOT R6 [+5]
  JUMPIF R4 [+4]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["Selected"]
  JUMP [+6]
  GETTABLEKS R6 R1 K10 ["Hovered"]
  JUMPIFNOT R6 [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K11 ["Hover"]
  GETTABLEKS R7 R1 K3 ["Group"]
  GETTABLEKS R6 R7 K12 ["Name"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K13 ["createElement"]
  GETUPVAL R8 2
  NEWTABLE R9 16 0
  LOADK R10 K14 ["GroupLabel"]
  SETTABLEKS R10 R9 K15 ["Style"]
  SETTABLEKS R5 R9 K16 ["StyleModifier"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K17 ["GroupLabelFixedSize"]
  SETTABLEKS R10 R9 K18 ["Size"]
  GETTABLEKS R10 R1 K19 ["LayoutOrder"]
  SETTABLEKS R10 R9 K19 ["LayoutOrder"]
  GETIMPORT R10 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K24 ["Layout"]
  GETTABLEKS R10 R0 K25 ["onClick"]
  SETTABLEKS R10 R9 K26 ["OnClick"]
  GETTABLEKS R10 R0 K27 ["onPress"]
  SETTABLEKS R10 R9 K28 ["OnPress"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K29 ["Event"]
  GETTABLEKS R10 R11 K30 ["MouseEnter"]
  GETTABLEKS R11 R0 K31 ["onMouseEnter"]
  SETTABLE R11 R9 R10
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K29 ["Event"]
  GETTABLEKS R10 R11 K32 ["MouseLeave"]
  GETTABLEKS R11 R0 K33 ["onMouseLeave"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K37 [{"SetMembershipButton", "GroupRenameTextBox", "Text"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K39 [{"Style", "TooltipMessage", "OnClick", "LayoutOrder"}]
  LOADK R14 K40 ["SetMembership"]
  SETTABLEKS R14 R13 K15 ["Style"]
  LOADK R16 K41 ["Tooltip"]
  LOADK R17 K42 ["Add"]
  NAMECALL R14 R3 K43 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K38 ["TooltipMessage"]
  GETTABLEKS R15 R1 K3 ["Group"]
  GETTABLEKS R14 R15 K44 ["OnMembershipSet"]
  SETTABLEKS R14 R13 K26 ["OnClick"]
  LOADN R14 1
  SETTABLEKS R14 R13 K19 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K34 ["SetMembershipButton"]
  MOVE R11 R4
  JUMPIFNOT R11 [+19]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K45 [{"Size", "Group", "LayoutOrder"}]
  GETTABLEKS R15 R2 K46 ["GroupLabelStyle"]
  GETTABLEKS R14 R15 K47 ["GroupNameLabelSize"]
  SETTABLEKS R14 R13 K18 ["Size"]
  GETTABLEKS R14 R1 K3 ["Group"]
  SETTABLEKS R14 R13 K3 ["Group"]
  LOADN R14 2
  SETTABLEKS R14 R13 K19 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K35 ["GroupRenameTextBox"]
  NOT R11 R4
  JUMPIFNOT R11 [+45]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K51 [{"Size", "Style", "LayoutOrder", "Text", "TextWrapped", "TextTruncate", "TextXAlignment", "StyleModifier"}]
  GETTABLEKS R15 R2 K46 ["GroupLabelStyle"]
  GETTABLEKS R14 R15 K47 ["GroupNameLabelSize"]
  SETTABLEKS R14 R13 K18 ["Size"]
  LOADK R14 K14 ["GroupLabel"]
  SETTABLEKS R14 R13 K15 ["Style"]
  LOADN R14 3
  SETTABLEKS R14 R13 K19 ["LayoutOrder"]
  SETTABLEKS R6 R13 K36 ["Text"]
  LOADB R14 1
  SETTABLEKS R14 R13 K48 ["TextWrapped"]
  GETIMPORT R14 K53 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K49 ["TextTruncate"]
  GETIMPORT R14 K55 [Enum.TextXAlignment.Right]
  SETTABLEKS R14 R13 K50 ["TextXAlignment"]
  SETTABLEKS R5 R13 K16 ["StyleModifier"]
  DUPTABLE R14 K57 [{"HoverArea"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K59 [{"Cursor"}]
  LOADK R18 K60 ["PointingHand"]
  SETTABLEKS R18 R17 K58 ["Cursor"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K56 ["HoverArea"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K36 ["Text"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["HoverArea"]
  GETTABLEKS R6 R4 K11 ["Pane"]
  GETTABLEKS R7 R4 K12 ["TextLabel"]
  GETTABLEKS R9 R2 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["StyleModifier"]
  GETIMPORT R9 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K15 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K16 ["GroupRenameTextBox"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K17 ["GroupButton"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K18 ["PureComponent"]
  LOADK R14 K19 ["GroupLabel"]
  NAMECALL R12 R12 K20 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K21 [PROTO_4]
  SETTABLEKS R13 R12 K22 ["init"]
  DUPCLOSURE R13 K23 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R5
  SETTABLEKS R13 R12 K24 ["render"]
  GETTABLEKS R13 R3 K25 ["withContext"]
  DUPTABLE R14 K28 [{"Stylizer", "Localization"}]
  GETTABLEKS R15 R3 K26 ["Stylizer"]
  SETTABLEKS R15 R14 K26 ["Stylizer"]
  GETTABLEKS R15 R3 K27 ["Localization"]
  SETTABLEKS R15 R14 K27 ["Localization"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
