PROTO_0:
  DUPTABLE R1 K1 [{"state"}]
  SETTABLEKS R0 R1 K0 ["state"]
  RETURN R1 1

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
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  MOVE R4 R2
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K11 ["Name"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CALL R4 2 -1
  RETURN R4 -1
