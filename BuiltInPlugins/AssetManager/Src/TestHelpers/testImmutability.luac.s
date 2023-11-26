PROTO_0:
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+8]
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["table"] [+22]
  JUMPIF R0 [+1]
  LOADK R0 K3 ["nil"]
  JUMPIF R1 [+1]
  LOADK R1 K3 ["nil"]
  GETIMPORT R2 K5 [error]
  GETIMPORT R3 K8 [string.format]
  LOADK R4 K9 ["Expected to compare two tables, got %s and %s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K11 [tostring]
  CALL R5 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K11 [tostring]
  CALL R6 1 1
  CALL R3 3 -1
  CALL R2 -1 0
  LOADN R2 0
  GETIMPORT R3 K13 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  ADDK R2 R2 K14 [1]
  FORGLOOP R3 2 [-2]
  LOADN R3 0
  GETIMPORT R4 K13 [pairs]
  MOVE R5 R0
  CALL R4 1 3
  FORGPREP_NEXT R4
  ADDK R3 R3 K14 [1]
  GETTABLE R9 R1 R7
  FASTCALL1 TYPE R8 [+3]
  MOVE R11 R8
  GETIMPORT R10 K1 [type]
  CALL R10 1 1
  JUMPIFNOTEQKS R10 K2 ["table"] [+6]
  GETUPVAL R10 0
  MOVE R11 R8
  MOVE R12 R9
  CALL R10 2 0
  JUMP [+10]
  JUMPIFEQ R8 R9 [+9]
  GETIMPORT R10 K5 [error]
  GETIMPORT R11 K8 [string.format]
  LOADK R12 K15 ["the field \"%s\" no longer matches"]
  MOVE R13 R7
  CALL R11 2 -1
  CALL R10 -1 0
  FORGLOOP R4 2 [-25]
  JUMPIFEQ R3 R2 [+11]
  GETIMPORT R4 K5 [error]
  GETIMPORT R5 K8 [string.format]
  LOADK R6 K16 ["Number of keys mismatch : %d vs %d"]
  MOVE R7 R3
  MOVE R8 R2
  CALL R5 3 -1
  CALL R4 -1 -1
  RETURN R4 -1
  LOADB R4 1
  RETURN R4 1

PROTO_1:
  FASTCALL1 TYPE R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["function"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Expected a reducer to test"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [type]
  CALL R4 1 1
  JUMPIFEQKS R4 K6 ["table"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Expected an action to test"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  MOVE R2 R0
  LOADNIL R3
  DUPTABLE R4 K8 [{"type"}]
  LOADK R5 K9 ["__nil__"]
  SETTABLEKS R5 R4 K0 ["type"]
  CALL R2 2 1
  GETUPVAL R3 0
  MOVE R4 R2
  NEWTABLE R5 0 0
  CALL R3 2 1
  GETUPVAL R5 1
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 1
  FASTCALL2K ASSERT R5 K10 [+4]
  LOADK R6 K10 ["deepJoin mutates fields"]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  MOVE R4 R0
  MOVE R5 R2
  MOVE R6 R1
  CALL R4 2 0
  GETUPVAL R4 1
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R1 R2 K8 ["deepJoin"]
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R2
  DUPCLOSURE R3 K10 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
