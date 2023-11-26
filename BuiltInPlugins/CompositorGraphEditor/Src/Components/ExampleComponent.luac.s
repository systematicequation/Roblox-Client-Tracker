PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K5 [{"Style", "Padding"}]
  LOADK R6 K6 ["Box"]
  SETTABLEKS R6 R5 K3 ["Style"]
  LOADN R6 10
  SETTABLEKS R6 R5 K4 ["Padding"]
  DUPTABLE R6 K8 [{"Text"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K10 [{"AutomaticSize", "Style", "Text"}]
  GETIMPORT R10 K13 [Enum.AutomaticSize.XY]
  SETTABLEKS R10 R9 K9 ["AutomaticSize"]
  LOADK R10 K14 ["Title"]
  SETTABLEKS R10 R9 K3 ["Style"]
  LOADK R12 K15 ["Plugin"]
  LOADK R13 K7 ["Text"]
  NAMECALL R10 R2 K16 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K7 ["Text"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["Text"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Analytics"]
  GETTABLEKS R6 R3 K11 ["Localization"]
  GETTABLEKS R8 R2 K12 ["Style"]
  GETTABLEKS R7 R8 K13 ["Stylizer"]
  GETTABLEKS R8 R2 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["Pane"]
  GETTABLEKS R10 R8 K16 ["TextLabel"]
  GETTABLEKS R11 R1 K17 ["PureComponent"]
  LOADK R13 K18 ["ExampleComponent"]
  NAMECALL R11 R11 K19 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K20 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K21 ["render"]
  MOVE R12 R4
  DUPTABLE R13 K22 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R5 R13 K10 ["Analytics"]
  SETTABLEKS R6 R13 K11 ["Localization"]
  SETTABLEKS R7 R13 K13 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
