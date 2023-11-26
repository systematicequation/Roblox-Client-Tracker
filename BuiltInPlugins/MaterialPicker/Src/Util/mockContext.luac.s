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
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["MaterialFramework"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R1 K9 ["TestHelpers"]
  GETTABLEKS R5 R2 K10 ["Resources"]
  GETTABLEKS R7 R2 K11 ["Context"]
  GETTABLEKS R6 R7 K12 ["StudioServices"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K10 ["Resources"]
  GETTABLEKS R8 R9 K14 ["createTheme"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K9 ["TestHelpers"]
  GETTABLEKS R9 R10 K15 ["createEmptyStore"]
  CALL R8 1 1
  NEWTABLE R9 0 5
  GETTABLEKS R11 R3 K16 ["Analytics"]
  GETTABLEKS R10 R11 K17 ["mock"]
  CALL R10 0 1
  GETTABLEKS R12 R3 K18 ["Localization"]
  GETTABLEKS R11 R12 K17 ["mock"]
  DUPTABLE R12 K20 [{"libraries"}]
  NEWTABLE R13 1 0
  GETTABLEKS R14 R5 K21 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R15 K24 [{"stringResourceTable", "translationResourceTable"}]
  GETTABLEKS R16 R5 K25 ["SourceStrings"]
  SETTABLEKS R16 R15 K22 ["stringResourceTable"]
  GETTABLEKS R16 R5 K26 ["LocalizedStrings"]
  SETTABLEKS R16 R15 K23 ["translationResourceTable"]
  SETTABLE R15 R13 R14
  SETTABLEKS R13 R12 K19 ["libraries"]
  CALL R11 1 1
  GETTABLEKS R13 R3 K27 ["Store"]
  GETTABLEKS R12 R13 K28 ["new"]
  MOVE R13 R8
  CALL R13 0 -1
  CALL R12 -1 1
  MOVE R13 R7
  LOADB R14 1
  CALL R13 1 1
  GETTABLEKS R14 R6 K17 ["mock"]
  CALL R14 0 -1
  SETLIST R9 R10 4294967295 [1]
  DUPCLOSURE R10 K29 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R9
  RETURN R10 1
