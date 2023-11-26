PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["OnValueChanged"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K1 ["OnValueChanged"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["valueChanged"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["Setting"]
  GETTABLEKS R3 R1 K3 ["Disabled"]
  GETTABLEKS R4 R1 K4 ["LabelWidth"]
  GETUPVAL R5 0
  GETTABLEKS R6 R1 K5 ["Size"]
  GETTABLEKS R7 R2 K5 ["Size"]
  CALL R5 2 1
  JUMPIFNOT R3 [+4]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Disabled"]
  JUMP [+1]
  LOADNIL R6
  GETTABLEKS R7 R1 K6 ["Value"]
  LOADNIL R8
  GETTABLEKS R9 R1 K7 ["UseCheckbox"]
  JUMPIFNOT R9 [+23]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K13 [{"Checked", "Disabled", "LayoutOrder", "OnClick", "Text"}]
  SETTABLEKS R7 R11 K9 ["Checked"]
  SETTABLEKS R3 R11 K3 ["Disabled"]
  LOADN R12 2
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  GETTABLEKS R12 R0 K14 ["valueChanged"]
  SETTABLEKS R12 R11 K11 ["OnClick"]
  GETTABLEKS R12 R1 K15 ["CheckboxLabel"]
  SETTABLEKS R12 R11 K12 ["Text"]
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+18]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K17 [{"Disabled", "LayoutOrder", "OnClick", "Selected"}]
  SETTABLEKS R3 R11 K3 ["Disabled"]
  LOADN R12 2
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  GETTABLEKS R12 R0 K14 ["valueChanged"]
  SETTABLEKS R12 R11 K11 ["OnClick"]
  SETTABLEKS R7 R11 K16 ["Selected"]
  CALL R9 2 1
  MOVE R8 R9
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K22 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
  GETIMPORT R12 K25 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K18 ["HorizontalAlignment"]
  GETIMPORT R12 K28 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K19 ["Layout"]
  GETTABLEKS R12 R1 K10 ["LayoutOrder"]
  SETTABLEKS R12 R11 K10 ["LayoutOrder"]
  SETTABLEKS R5 R11 K5 ["Size"]
  GETTABLEKS R12 R2 K29 ["HorizontalSpacing"]
  SETTABLEKS R12 R11 K20 ["Spacing"]
  GETIMPORT R12 K31 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K21 ["VerticalAlignment"]
  DUPTABLE R12 K34 [{"Label", "Toggle"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K37 [{"LayoutOrder", "Size", "StyleModifier", "Text", "TextXAlignment"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K10 ["LayoutOrder"]
  GETIMPORT R16 K40 [UDim2.new]
  LOADN R17 0
  MOVE R18 R4
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K5 ["Size"]
  SETTABLEKS R6 R15 K35 ["StyleModifier"]
  GETTABLEKS R16 R1 K12 ["Text"]
  SETTABLEKS R16 R15 K12 ["Text"]
  GETIMPORT R16 K41 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K36 ["TextXAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["Label"]
  SETTABLEKS R8 R12 K33 ["Toggle"]
  CALL R9 3 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R6 R1 K10 ["Style"]
  GETTABLEKS R5 R6 K11 ["Stylizer"]
  GETTABLEKS R6 R1 K12 ["UI"]
  GETTABLEKS R7 R6 K13 ["Checkbox"]
  GETTABLEKS R8 R6 K14 ["Pane"]
  GETTABLEKS R9 R6 K15 ["TextLabel"]
  GETTABLEKS R10 R6 K16 ["ToggleButton"]
  GETTABLEKS R11 R1 K17 ["Util"]
  GETTABLEKS R12 R11 K18 ["StyleModifier"]
  GETTABLEKS R13 R11 K19 ["prioritize"]
  GETTABLEKS R14 R2 K20 ["PureComponent"]
  LOADK R16 K21 ["ToggleButtonSetting"]
  NAMECALL R14 R14 K22 ["extend"]
  CALL R14 2 1
  DUPTABLE R15 K24 [{"Disabled"}]
  LOADB R16 0
  SETTABLEKS R16 R15 K23 ["Disabled"]
  SETTABLEKS R15 R14 K25 ["defaultProps"]
  DUPCLOSURE R15 K26 [PROTO_1]
  SETTABLEKS R15 R14 K27 ["init"]
  DUPCLOSURE R15 K28 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K29 ["render"]
  MOVE R15 R4
  DUPTABLE R16 K30 [{"Stylizer"}]
  SETTABLEKS R5 R16 K11 ["Stylizer"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 -1
  RETURN R15 -1
