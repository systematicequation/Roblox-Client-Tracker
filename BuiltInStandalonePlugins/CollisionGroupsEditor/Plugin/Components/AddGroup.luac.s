PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["textBoxRef"]
  LOADK R1 K2 [""]
  SETTABLEKS R1 R0 K3 ["text"]
  DUPTABLE R1 K5 [{"editing"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["editing"]
  SETTABLEKS R1 R0 K6 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"editing"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["editing"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["textBoxRef"]
  NAMECALL R0 R0 K4 ["getValue"]
  CALL R0 1 1
  JUMPIFEQKNIL R0 [+10]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["textBoxRef"]
  NAMECALL R0 R0 K4 ["getValue"]
  CALL R0 1 1
  NAMECALL R0 R0 K5 ["CaptureFocus"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K6 ["OnEditingChanged"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["text"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["text"]
  GETIMPORT R2 K3 [string.gsub]
  MOVE R3 R1
  LOADK R4 K4 ["^%s+"]
  LOADK R5 K5 [""]
  CALL R2 3 1
  MOVE R1 R2
  LOADB R2 0
  JUMPIFEQKS R1 K6 ["Default"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R0 [+26]
  JUMPIFEQKS R1 K5 [""] [+25]
  JUMPIF R2 [+23]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["OnGroupAdded"]
  MOVE R4 R1
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["textBoxRef"]
  NAMECALL R3 R3 K9 ["getValue"]
  CALL R3 1 1
  JUMPIFEQKNIL R3 [+24]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["textBoxRef"]
  NAMECALL R3 R3 K9 ["getValue"]
  CALL R3 1 1
  NAMECALL R3 R3 K10 ["CaptureFocus"]
  CALL R3 1 0
  JUMP [+13]
  GETUPVAL R3 0
  DUPTABLE R5 K12 [{"editing"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K11 ["editing"]
  NAMECALL R3 R3 K13 ["setState"]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K14 ["OnEditingChanged"]
  LOADB R4 0
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["textBoxRef"]
  NAMECALL R3 R3 K9 ["getValue"]
  CALL R3 1 1
  JUMPIFEQKNIL R3 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["textBoxRef"]
  NAMECALL R3 R3 K9 ["getValue"]
  CALL R3 1 1
  LOADK R4 K5 [""]
  SETTABLEKS R4 R3 K15 ["Text"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R6 R1 K3 ["Groups"]
  LENGTH R5 R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["GroupCountMax"]
  JUMPIFLE R6 R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+12]
  GETTABLEKS R6 R0 K5 ["state"]
  GETTABLEKS R5 R6 K6 ["editing"]
  JUMPIFNOT R5 [+7]
  DUPTABLE R7 K7 [{"editing"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K6 ["editing"]
  NAMECALL R5 R0 K8 ["setState"]
  CALL R5 2 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K15 [{"Size", "LayoutOrder", "AutomaticSize", "Layout", "HorizontalAlignment"}]
  GETTABLEKS R8 R1 K10 ["Size"]
  SETTABLEKS R8 R7 K10 ["Size"]
  GETTABLEKS R8 R1 K11 ["LayoutOrder"]
  SETTABLEKS R8 R7 K11 ["LayoutOrder"]
  GETIMPORT R8 K18 [Enum.AutomaticSize.X]
  SETTABLEKS R8 R7 K12 ["AutomaticSize"]
  GETIMPORT R8 K21 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K13 ["Layout"]
  GETIMPORT R8 K23 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R8 R7 K14 ["HorizontalAlignment"]
  DUPTABLE R8 K26 [{"AddButton", "TextInput"}]
  GETTABLEKS R11 R0 K5 ["state"]
  GETTABLEKS R10 R11 K6 ["editing"]
  NOT R9 R10
  JUMPIFNOT R9 [+38]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K32 [{"Style", "Text", "StyleModifier", "Size", "TextWrapped", "OnClick"}]
  LOADK R12 K33 ["Round"]
  SETTABLEKS R12 R11 K27 ["Style"]
  LOADK R13 K34 ["+ "]
  LOADK R16 K35 ["Actions"]
  LOADK R17 K36 ["AddGroup"]
  NAMECALL R14 R2 K37 ["getText"]
  CALL R14 3 1
  CONCAT R12 R13 R14
  SETTABLEKS R12 R11 K28 ["Text"]
  JUMPIFNOT R4 [+4]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K38 ["Disabled"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K29 ["StyleModifier"]
  GETTABLEKS R12 R3 K39 ["AddGroupInternalButtonSize"]
  SETTABLEKS R12 R11 K10 ["Size"]
  LOADB R12 1
  SETTABLEKS R12 R11 K30 ["TextWrapped"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K31 ["OnClick"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K24 ["AddButton"]
  GETTABLEKS R10 R0 K5 ["state"]
  GETTABLEKS R9 R10 K6 ["editing"]
  JUMPIFNOT R9 [+39]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K45 [{"Size", "TextWrapped", "TextXAlignment", "PlaceholderText", "ForwardRef", "OnTextChanged", "OnFocusLost"}]
  GETTABLEKS R12 R3 K39 ["AddGroupInternalButtonSize"]
  SETTABLEKS R12 R11 K10 ["Size"]
  LOADB R12 1
  SETTABLEKS R12 R11 K30 ["TextWrapped"]
  GETIMPORT R12 K46 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K40 ["TextXAlignment"]
  LOADK R13 K34 ["+ "]
  LOADK R16 K47 ["Info"]
  LOADK R17 K48 ["NewGroupName"]
  NAMECALL R14 R2 K37 ["getText"]
  CALL R14 3 1
  CONCAT R12 R13 R14
  SETTABLEKS R12 R11 K41 ["PlaceholderText"]
  GETTABLEKS R12 R0 K49 ["textBoxRef"]
  SETTABLEKS R12 R11 K42 ["ForwardRef"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K43 ["OnTextChanged"]
  NEWCLOSURE R12 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K44 ["OnFocusLost"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K25 ["TextInput"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R5 R4 K10 ["Button"]
  GETTABLEKS R6 R4 K11 ["Pane"]
  GETTABLEKS R7 R4 K12 ["DEPRECATED_TextInput"]
  GETTABLEKS R9 R2 K13 ["Util"]
  GETTABLEKS R8 R9 K14 ["StyleModifier"]
  GETIMPORT R9 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K15 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K16 ["PureComponent"]
  LOADK R12 K17 ["AddGroup"]
  NAMECALL R10 R10 K18 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K20 ["init"]
  DUPCLOSURE R11 K21 [PROTO_4]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K22 ["render"]
  GETTABLEKS R11 R3 K23 ["withContext"]
  DUPTABLE R12 K26 [{"Stylizer", "Localization"}]
  GETTABLEKS R13 R3 K24 ["Stylizer"]
  SETTABLEKS R13 R12 K24 ["Stylizer"]
  GETTABLEKS R13 R3 K25 ["Localization"]
  SETTABLEKS R13 R12 K25 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
