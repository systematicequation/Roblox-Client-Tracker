PROTO_0:
  GETTABLEKS R3 R0 K0 ["range"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["StartKey"]
  GETTABLE R2 R3 R4
  GETTABLEKS R4 R1 K0 ["range"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["StartKey"]
  GETTABLE R3 R4 R5
  GETTABLEKS R5 R0 K0 ["range"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["EndKey"]
  GETTABLE R4 R5 R6
  GETTABLEKS R6 R1 K0 ["range"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["EndKey"]
  GETTABLE R5 R6 R7
  GETTABLEKS R6 R2 K3 ["line"]
  GETTABLEKS R7 R3 K3 ["line"]
  JUMPIFNOTEQ R6 R7 [+7]
  GETTABLEKS R6 R2 K4 ["character"]
  GETTABLEKS R7 R3 K4 ["character"]
  JUMPIFEQ R6 R7 [+3]
  LOADB R6 0
  RETURN R6 1
  GETTABLEKS R6 R4 K3 ["line"]
  GETTABLEKS R7 R5 K3 ["line"]
  JUMPIFNOTEQ R6 R7 [+7]
  GETTABLEKS R6 R4 K4 ["character"]
  GETTABLEKS R7 R5 K4 ["character"]
  JUMPIFEQ R6 R7 [+3]
  LOADB R6 0
  RETURN R6 1
  GETTABLEKS R6 R0 K5 ["message"]
  GETTABLEKS R7 R1 K5 ["message"]
  JUMPIFEQ R6 R7 [+3]
  LOADB R6 0
  RETURN R6 1
  GETTABLEKS R7 R0 K6 ["suggestions"]
  LENGTH R6 R7
  GETTABLEKS R8 R1 K6 ["suggestions"]
  LENGTH R7 R8
  JUMPIFEQ R6 R7 [+3]
  LOADB R6 0
  RETURN R6 1
  GETTABLEKS R6 R0 K6 ["suggestions"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R12 R1 K6 ["suggestions"]
  GETTABLE R11 R12 R9
  JUMPIFEQ R10 R11 [+3]
  LOADB R11 0
  RETURN R11 1
  FORGLOOP R6 2 [-8]
  LOADB R6 1
  RETURN R6 1

PROTO_1:
  DUPTABLE R8 K7 [{"range", "code", "codeDescription", "instanceName", "message", "severity", "suggestions"}]
  SETTABLEKS R0 R8 K0 ["range"]
  SETTABLEKS R1 R8 K1 ["code"]
  SETTABLEKS R6 R8 K2 ["codeDescription"]
  SETTABLEKS R2 R8 K3 ["instanceName"]
  SETTABLEKS R3 R8 K4 ["message"]
  SETTABLEKS R4 R8 K5 ["severity"]
  SETTABLEKS R5 R8 K6 ["suggestions"]
  GETUPVAL R9 0
  FASTCALL2 SETMETATABLE R8 R9 [+3]
  GETIMPORT R7 K9 [setmetatable]
  CALL R7 2 1
  RETURN R7 1

PROTO_2:
  DUPTABLE R1 K5 [{"range", "code", "message", "severity", "codeDescription"}]
  GETTABLEKS R2 R0 K0 ["range"]
  SETTABLEKS R2 R1 K0 ["range"]
  GETTABLEKS R2 R0 K1 ["code"]
  SETTABLEKS R2 R1 K1 ["code"]
  GETTABLEKS R2 R0 K2 ["message"]
  SETTABLEKS R2 R1 K2 ["message"]
  GETTABLEKS R2 R0 K3 ["severity"]
  SETTABLEKS R2 R1 K3 ["severity"]
  GETTABLEKS R2 R0 K4 ["codeDescription"]
  SETTABLEKS R2 R1 K4 ["codeDescription"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R3 R0 K3 ["Src"]
  GETTABLEKS R2 R3 K4 ["Util"]
  GETTABLEKS R1 R2 K5 ["ScriptAnalysis"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["Constants"]
  CALL R2 1 1
  NEWTABLE R3 4 0
  SETTABLEKS R3 R3 K9 ["__index"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K11 ["__eq"]
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K13 ["new"]
  DUPCLOSURE R4 K14 [PROTO_2]
  SETTABLEKS R4 R3 K15 ["GetDataForLinter"]
  RETURN R3 1
