PROTO_0:
  GETIMPORT R3 K2 [Vector2.zero]
  GETIMPORT R4 K2 [Vector2.zero]
  GETIMPORT R5 K2 [Vector2.zero]
  LENGTH R6 R0
  JUMPIFNOTEQKN R6 K3 [0] [+2]
  RETURN R3 3
  LENGTH R6 R0
  JUMPIFNOTEQKN R6 K4 [1] [+10]
  GETUPVAL R6 0
  GETTABLEN R8 R0 1
  GETTABLEKS R7 R8 K5 ["Position"]
  MOVE R8 R1
  MOVE R9 R2
  CALL R6 3 1
  MOVE R3 R6
  RETURN R3 3
  GETUPVAL R6 0
  GETTABLEN R8 R0 1
  GETTABLEKS R7 R8 K5 ["Position"]
  MOVE R8 R1
  MOVE R9 R2
  CALL R6 3 1
  GETTABLEKS R7 R6 K6 ["x"]
  GETTABLEKS R8 R6 K6 ["x"]
  GETTABLEKS R9 R6 K7 ["y"]
  GETTABLEKS R10 R6 K7 ["y"]
  MOVE R11 R0
  LOADNIL R12
  LOADNIL R13
  FORGPREP R11
  GETUPVAL R16 0
  GETTABLEKS R17 R15 K5 ["Position"]
  MOVE R18 R1
  MOVE R19 R2
  CALL R16 3 1
  GETTABLEKS R19 R16 K6 ["x"]
  FASTCALL2 MATH_MIN R7 R19 [+4]
  MOVE R18 R7
  GETIMPORT R17 K10 [math.min]
  CALL R17 2 1
  MOVE R7 R17
  GETTABLEKS R19 R16 K7 ["y"]
  FASTCALL2 MATH_MIN R9 R19 [+4]
  MOVE R18 R9
  GETIMPORT R17 K10 [math.min]
  CALL R17 2 1
  MOVE R9 R17
  GETTABLEKS R19 R16 K6 ["x"]
  FASTCALL2 MATH_MAX R8 R19 [+4]
  MOVE R18 R8
  GETIMPORT R17 K12 [math.max]
  CALL R17 2 1
  MOVE R8 R17
  GETTABLEKS R19 R16 K7 ["y"]
  FASTCALL2 MATH_MAX R10 R19 [+4]
  MOVE R18 R10
  GETIMPORT R17 K12 [math.max]
  CALL R17 2 1
  MOVE R10 R17
  GETTABLEKS R20 R16 K6 ["x"]
  GETTABLEKS R22 R15 K13 ["LeftTangent"]
  GETTABLEKS R21 R22 K6 ["x"]
  ADD R19 R20 R21
  FASTCALL2 MATH_MIN R7 R19 [+4]
  MOVE R18 R7
  GETIMPORT R17 K10 [math.min]
  CALL R17 2 1
  MOVE R7 R17
  GETTABLEKS R20 R16 K7 ["y"]
  GETTABLEKS R22 R15 K13 ["LeftTangent"]
  GETTABLEKS R21 R22 K7 ["y"]
  ADD R19 R20 R21
  FASTCALL2 MATH_MIN R9 R19 [+4]
  MOVE R18 R9
  GETIMPORT R17 K10 [math.min]
  CALL R17 2 1
  MOVE R9 R17
  GETTABLEKS R20 R16 K6 ["x"]
  GETTABLEKS R22 R15 K13 ["LeftTangent"]
  GETTABLEKS R21 R22 K6 ["x"]
  ADD R19 R20 R21
  FASTCALL2 MATH_MAX R8 R19 [+4]
  MOVE R18 R8
  GETIMPORT R17 K12 [math.max]
  CALL R17 2 1
  MOVE R8 R17
  GETTABLEKS R20 R16 K7 ["y"]
  GETTABLEKS R22 R15 K13 ["LeftTangent"]
  GETTABLEKS R21 R22 K7 ["y"]
  ADD R19 R20 R21
  FASTCALL2 MATH_MAX R10 R19 [+4]
  MOVE R18 R10
  GETIMPORT R17 K12 [math.max]
  CALL R17 2 1
  MOVE R10 R17
  GETTABLEKS R20 R16 K6 ["x"]
  GETTABLEKS R22 R15 K14 ["RightTangent"]
  GETTABLEKS R21 R22 K6 ["x"]
  ADD R19 R20 R21
  FASTCALL2 MATH_MIN R7 R19 [+4]
  MOVE R18 R7
  GETIMPORT R17 K10 [math.min]
  CALL R17 2 1
  MOVE R7 R17
  GETTABLEKS R20 R16 K7 ["y"]
  GETTABLEKS R22 R15 K14 ["RightTangent"]
  GETTABLEKS R21 R22 K7 ["y"]
  ADD R19 R20 R21
  FASTCALL2 MATH_MIN R9 R19 [+4]
  MOVE R18 R9
  GETIMPORT R17 K10 [math.min]
  CALL R17 2 1
  MOVE R9 R17
  GETTABLEKS R20 R16 K6 ["x"]
  GETTABLEKS R22 R15 K14 ["RightTangent"]
  GETTABLEKS R21 R22 K6 ["x"]
  ADD R19 R20 R21
  FASTCALL2 MATH_MAX R8 R19 [+4]
  MOVE R18 R8
  GETIMPORT R17 K12 [math.max]
  CALL R17 2 1
  MOVE R8 R17
  GETTABLEKS R20 R16 K7 ["y"]
  GETTABLEKS R22 R15 K14 ["RightTangent"]
  GETTABLEKS R21 R22 K7 ["y"]
  ADD R19 R20 R21
  FASTCALL2 MATH_MAX R10 R19 [+4]
  MOVE R18 R10
  GETIMPORT R17 K12 [math.max]
  CALL R17 2 1
  MOVE R10 R17
  FORGLOOP R11 2 [-155]
  GETIMPORT R11 K16 [Vector2.new]
  MOVE R12 R7
  MOVE R13 R9
  CALL R11 2 1
  MOVE R3 R11
  GETIMPORT R11 K16 [Vector2.new]
  MOVE R12 R8
  MOVE R13 R10
  CALL R11 2 1
  MOVE R4 R11
  GETIMPORT R11 K16 [Vector2.new]
  SUB R12 R8 R7
  SUB R13 R10 R9
  CALL R11 2 1
  MOVE R5 R11
  RETURN R3 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["getAbsPosFromUDim2"]
  CALL R0 1 1
  DUPCLOSURE R1 K6 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
