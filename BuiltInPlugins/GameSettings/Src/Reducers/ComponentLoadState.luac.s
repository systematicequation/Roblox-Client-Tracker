PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  NEWTABLE R4 1 0
  GETTABLEKS R5 R1 K2 ["componentName"]
  GETTABLEKS R6 R1 K3 ["loadState"]
  SETTABLE R6 R4 R5
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["createReducer"]
  NEWTABLE R4 0 0
  DUPTABLE R5 K10 [{"SetComponentLoadState"}]
  DUPCLOSURE R6 K11 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K9 ["SetComponentLoadState"]
  CALL R3 2 -1
  RETURN R3 -1
