PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Message"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  LOADK R5 K4 ["Frame"]
  DUPTABLE R6 K11 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "BackgroundColor3", "BorderColor3"}]
  GETIMPORT R7 K14 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R11 R2 K15 ["Height"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K5 ["Size"]
  GETIMPORT R7 K17 [Vector2.new]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["AnchorPoint"]
  GETIMPORT R7 K14 [UDim2.new]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K7 ["Position"]
  LOADN R7 0
  SETTABLEKS R7 R6 K8 ["BackgroundTransparency"]
  GETTABLEKS R7 R2 K18 ["BackgroundColor"]
  SETTABLEKS R7 R6 K9 ["BackgroundColor3"]
  GETTABLEKS R7 R2 K19 ["BorderColor"]
  SETTABLEKS R7 R6 K10 ["BorderColor3"]
  DUPTABLE R7 K22 [{"Padding", "MessageTextLabel"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K23 ["UIPadding"]
  DUPTABLE R10 K25 [{"PaddingLeft"}]
  GETIMPORT R11 K27 [UDim.new]
  LOADN R12 0
  GETTABLEKS R13 R2 K20 ["Padding"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["PaddingLeft"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["Padding"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K31 [{"AutomaticSize", "Text", "TextWrapped"}]
  GETUPVAL R12 2
  JUMPIFNOT R12 [+3]
  GETIMPORT R11 K34 [Enum.AutomaticSize.XY]
  JUMP [+2]
  GETIMPORT R11 K36 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K28 ["AutomaticSize"]
  SETTABLEKS R3 R10 K29 ["Text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K30 ["TextWrapped"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["MessageTextLabel"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  DUPTABLE R2 K1 [{"Message"}]
  GETTABLEKS R3 R0 K0 ["Message"]
  SETTABLEKS R3 R2 K0 ["Message"]
  RETURN R2 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K10 [game]
  LOADK R6 K11 ["LocalizationToolsFixLabel"]
  NAMECALL R4 R4 K12 ["GetFastFlag"]
  CALL R4 2 1
  GETTABLEKS R5 R3 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETTABLEKS R7 R3 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["TextLabel"]
  GETTABLEKS R9 R1 K17 ["PureComponent"]
  LOADK R11 K18 ["MessageFrame"]
  NAMECALL R9 R9 K19 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K21 ["render"]
  MOVE R10 R6
  DUPTABLE R11 K23 [{"Stylizer"}]
  GETTABLEKS R12 R5 K22 ["Stylizer"]
  SETTABLEKS R12 R11 K22 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  DUPCLOSURE R10 K24 [PROTO_1]
  GETTABLEKS R11 R2 K25 ["connect"]
  MOVE R12 R10
  CALL R11 1 1
  MOVE R12 R9
  CALL R11 1 -1
  RETURN R11 -1
