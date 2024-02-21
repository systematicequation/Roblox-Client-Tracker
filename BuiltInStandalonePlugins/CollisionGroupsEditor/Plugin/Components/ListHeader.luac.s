PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K2 ["Stylizer"]
  GETTABLEKS R3 R4 K3 ["ListHeader"]
  LOADNIL R4
  GETUPVAL R5 0
  JUMPIFNOT R5 [+23]
  GETTABLEKS R5 R1 K4 ["SelectedGroupName"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["CursorGroupName"]
  JUMPIFEQ R5 R6 [+3]
  JUMPIFNOTEQKS R5 K6 [""] [+3]
  LOADK R4 K6 [""]
  JUMP [+30]
  LOADK R8 K7 ["Info"]
  LOADK R9 K8 ["CanCollideWith"]
  NEWTABLE R10 0 1
  MOVE R11 R5
  SETLIST R10 R11 1 [1]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 4 1
  MOVE R4 R6
  JUMP [+18]
  GETTABLEKS R5 R1 K4 ["SelectedGroupName"]
  JUMPIFEQKS R5 K6 [""] [+14]
  LOADK R7 K7 ["Info"]
  LOADK R8 K8 ["CanCollideWith"]
  NEWTABLE R9 0 1
  GETTABLEKS R10 R1 K4 ["SelectedGroupName"]
  SETLIST R9 R10 1 [1]
  NAMECALL R5 R2 K9 ["getText"]
  CALL R5 4 1
  MOVE R4 R5
  JUMP [+1]
  LOADK R4 K6 [""]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K15 [{"Size", "LayoutOrder", "Layout", "Padding"}]
  GETIMPORT R8 K18 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["GroupRowHeight"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K11 ["Size"]
  GETTABLEKS R8 R1 K12 ["LayoutOrder"]
  SETTABLEKS R8 R7 K12 ["LayoutOrder"]
  GETIMPORT R8 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R8 R7 K13 ["Layout"]
  GETTABLEKS R8 R3 K14 ["Padding"]
  SETTABLEKS R8 R7 K14 ["Padding"]
  DUPTABLE R8 K26 [{"GroupCountDisplay", "LabelPane"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K28 [{"GroupCount", "LayoutOrder"}]
  GETTABLEKS R12 R1 K27 ["GroupCount"]
  SETTABLEKS R12 R11 K27 ["GroupCount"]
  LOADN R12 1
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K24 ["GroupCountDisplay"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K10 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K30 [{"Style", "Size", "LayoutOrder", "Layout", "Padding"}]
  LOADK R12 K31 ["GroupLabel"]
  SETTABLEKS R12 R11 K29 ["Style"]
  GETIMPORT R12 K18 [UDim2.new]
  LOADN R13 1
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K32 ["GroupRowWidth"]
  MINUS R14 R15
  LOADN R15 0
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K19 ["GroupRowHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K11 ["Size"]
  LOADN R12 2
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  GETIMPORT R12 K23 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K13 ["Layout"]
  GETTABLEKS R12 R3 K33 ["LabelPanePadding"]
  SETTABLEKS R12 R11 K14 ["Padding"]
  DUPTABLE R12 K35 [{"TextLabel"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K39 [{"Size", "Text", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R16 K18 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K11 ["Size"]
  SETTABLEKS R4 R15 K36 ["Text"]
  GETIMPORT R16 K41 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K37 ["TextXAlignment"]
  GETIMPORT R16 K43 [Enum.TextYAlignment.Center]
  SETTABLEKS R16 R15 K38 ["TextYAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["TextLabel"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K25 ["LabelPane"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LocalizationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R3 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["Pane"]
  GETTABLEKS R7 R5 K15 ["TextLabel"]
  GETIMPORT R8 K8 [require]
  GETIMPORT R12 K5 [script]
  GETTABLEKS R11 R12 K6 ["Parent"]
  GETTABLEKS R10 R11 K6 ["Parent"]
  GETTABLEKS R9 R10 K16 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETIMPORT R12 K5 [script]
  GETTABLEKS R11 R12 K6 ["Parent"]
  GETTABLEKS R10 R11 K17 ["GroupCountDisplay"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K18 ["Component"]
  LOADK R12 K19 ["ListHeader"]
  NAMECALL R10 R10 K20 ["extend"]
  CALL R10 2 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K21 ["SelectionCollisionGroup"]
  NAMECALL R11 R11 K22 ["GetFastFlag"]
  CALL R11 2 1
  DUPCLOSURE R12 K23 [PROTO_0]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R12 R10 K24 ["render"]
  GETTABLEKS R12 R4 K25 ["withContext"]
  DUPTABLE R13 K28 [{"Stylizer", "Localization"}]
  GETTABLEKS R14 R4 K26 ["Stylizer"]
  SETTABLEKS R14 R13 K26 ["Stylizer"]
  GETTABLEKS R14 R4 K27 ["Localization"]
  SETTABLEKS R14 R13 K27 ["Localization"]
  CALL R12 1 1
  MOVE R13 R10
  CALL R12 1 1
  MOVE R10 R12
  RETURN R10 1
