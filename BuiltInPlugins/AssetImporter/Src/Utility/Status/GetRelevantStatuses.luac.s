PROTO_0:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_NEXT R3
  NEWTABLE R8 0 0
  SETTABLE R8 R2 R6
  GETIMPORT R8 K1 [pairs]
  MOVE R9 R7
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETUPVAL R13 0
  GETTABLEKS R14 R12 K2 ["StatusType"]
  MOVE R15 R1
  CALL R13 2 1
  JUMPIFNOT R13 [+7]
  GETTABLE R14 R2 R6
  FASTCALL2 TABLE_INSERT R14 R12 [+4]
  MOVE R15 R12
  GETIMPORT R13 K5 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-14]
  FORGLOOP R3 2 [-24]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K7 ["Utility"]
  GETTABLEKS R4 R5 K8 ["Status"]
  GETTABLEKS R3 R4 K9 ["StatusIsRelevant"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
