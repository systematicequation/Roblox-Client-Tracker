PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  LOADK R1 K1 ["Frame"]
  NEWTABLE R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Tag"]
  GETUPVAL R4 1
  LOADK R5 K3 ["Component-ActivityHistoryLoadingIndicator"]
  LOADK R6 K4 ["X-Center"]
  LOADK R7 K5 ["X-Middle"]
  CALL R4 3 1
  SETTABLE R4 R2 R3
  DUPTABLE R3 K7 [{"LoadingIndicator"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  NEWTABLE R6 0 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K6 ["LoadingIndicator"]
  CALL R0 3 -1
  RETURN R0 -1

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
  GETTABLEKS R4 R2 K8 ["Styling"]
  GETTABLEKS R3 R4 K9 ["joinTags"]
  GETTABLEKS R4 R2 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["LoadingIndicator"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R6 1
