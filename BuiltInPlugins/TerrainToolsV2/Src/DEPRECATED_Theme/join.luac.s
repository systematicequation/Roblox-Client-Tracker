PROTO_0:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  LOADN R3 1
  LOADK R5 K0 ["#"]
  FASTCALL1 SELECT_VARARG R5 [+3]
  GETIMPORT R4 K2 [select]
  GETVARARGS R6 4294967295
  CALL R4 -1 1
  MOVE R1 R4
  LOADN R2 1
  FORNPREP R1
  FASTCALL1 SELECT_VARARG R3 [+4]
  GETIMPORT R4 K2 [select]
  MOVE R5 R3
  GETVARARGS R6 4294967295
  CALL R4 -1 1
  GETIMPORT R5 K4 [pairs]
  MOVE R6 R4
  CALL R5 1 3
  FORGPREP_NEXT R5
  SETTABLE R9 R0 R8
  FORGLOOP R5 2 [-2]
  FORNLOOP R1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
