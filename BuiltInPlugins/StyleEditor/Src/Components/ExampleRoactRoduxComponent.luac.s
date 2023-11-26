PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  CALL R1 1 -1
  RETURN R1 -1

PROTO_1:
  DUPTABLE R2 K1 [{"DefaultStateObject"}]
  GETTABLEKS R3 R0 K0 ["DefaultStateObject"]
  SETTABLEKS R3 R2 K0 ["DefaultStateObject"]
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"dispatchExampleAction"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchExampleAction"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R4 K11 ["Analytics"]
  GETTABLEKS R7 R4 K12 ["Localization"]
  GETTABLEKS R9 R3 K13 ["Style"]
  GETTABLEKS R8 R9 K14 ["Stylizer"]
  GETTABLEKS R9 R3 K15 ["UI"]
  GETTABLEKS R10 R9 K16 ["Pane"]
  GETTABLEKS R12 R0 K17 ["Src"]
  GETTABLEKS R11 R12 K18 ["Actions"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R11 K19 ["ExampleAction"]
  CALL R12 1 1
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K20 ["Reducers"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R13 K21 ["ExampleReducer"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K22 ["PureComponent"]
  LOADK R17 K23 ["ExampleRoactRoduxComponent"]
  NAMECALL R15 R15 K24 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K25 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R16 R15 K26 ["render"]
  MOVE R16 R5
  DUPTABLE R17 K27 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R6 R17 K11 ["Analytics"]
  SETTABLEKS R7 R17 K12 ["Localization"]
  SETTABLEKS R8 R17 K14 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  GETTABLEKS R16 R2 K28 ["connect"]
  DUPCLOSURE R17 K29 [PROTO_1]
  DUPCLOSURE R18 K30 [PROTO_3]
  CAPTURE VAL R12
  CALL R16 2 1
  MOVE R17 R15
  CALL R16 1 -1
  RETURN R16 -1
