PROTO_0:
  LOADN R4 10
  FASTCALL1 MATH_LOG10 R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K2 [math.log10]
  CALL R6 1 1
  FASTCALL1 MATH_FLOOR R6 [+2]
  GETIMPORT R5 K4 [math.floor]
  CALL R5 1 1
  FASTCALL2 MATH_POW R4 R5 [+3]
  GETIMPORT R3 K6 [math.pow]
  CALL R3 2 1
  DIV R4 R0 R3
  DIV R5 R4 R1
  GETTABLEN R6 R2 1
  MOVE R7 R2
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  JUMPIFNOTLT R5 R11 [+3]
  MOVE R6 R11
  JUMP [+2]
  FORGLOOP R7 2 [-5]
  MUL R7 R6 R3
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
