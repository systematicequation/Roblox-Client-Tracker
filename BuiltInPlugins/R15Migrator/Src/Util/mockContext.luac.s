PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Expected story to be a table"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["provideMockContext"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["TestHelpers"]
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Reducers"]
  GETTABLEKS R6 R7 K12 ["MainReducer"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Resources"]
  GETTABLEKS R7 R8 K14 ["MakeTheme"]
  CALL R6 1 1
  NEWTABLE R7 0 4
  GETTABLEKS R9 R4 K15 ["Analytics"]
  GETTABLEKS R8 R9 K16 ["mock"]
  CALL R8 0 1
  GETTABLEKS R10 R4 K17 ["Localization"]
  GETTABLEKS R9 R10 K16 ["mock"]
  CALL R9 0 1
  GETTABLEKS R11 R4 K18 ["Store"]
  GETTABLEKS R10 R11 K19 ["new"]
  GETTABLEKS R12 R1 K18 ["Store"]
  GETTABLEKS R11 R12 K19 ["new"]
  MOVE R12 R5
  LOADNIL R13
  LOADNIL R14
  LOADNIL R15
  CALL R11 4 -1
  CALL R10 -1 1
  MOVE R11 R6
  LOADB R12 1
  CALL R11 1 -1
  SETLIST R7 R8 4294967295 [1]
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R8 1
