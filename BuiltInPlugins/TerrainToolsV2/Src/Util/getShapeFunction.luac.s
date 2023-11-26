PROTO_0:
  MOVE R5 R0
  NAMECALL R3 R1 K0 ["VectorToObjectSpace"]
  CALL R3 2 1
  GETTABLEKS R6 R2 K1 ["x"]
  GETTABLEKS R8 R3 K1 ["x"]
  FASTCALL1 MATH_ABS R8 [+2]
  GETIMPORT R7 K4 [math.abs]
  CALL R7 1 1
  SUB R5 R6 R7
  GETTABLEKS R7 R2 K5 ["y"]
  GETTABLEKS R9 R3 K5 ["y"]
  FASTCALL1 MATH_ABS R9 [+2]
  GETIMPORT R8 K4 [math.abs]
  CALL R8 1 1
  SUB R6 R7 R8
  GETTABLEKS R8 R2 K6 ["z"]
  GETTABLEKS R10 R3 K6 ["z"]
  FASTCALL1 MATH_ABS R10 [+2]
  GETIMPORT R9 K4 [math.abs]
  CALL R9 1 1
  SUB R7 R8 R9
  LOADN R8 1
  FASTCALL MATH_MIN [+2]
  GETIMPORT R4 K8 [math.min]
  CALL R4 4 1
  RETURN R4 1

PROTO_1:
  MOVE R5 R0
  NAMECALL R3 R1 K0 ["VectorToObjectSpace"]
  CALL R3 2 1
  GETTABLEKS R6 R2 K1 ["x"]
  GETTABLEKS R7 R2 K2 ["y"]
  GETTABLEKS R8 R2 K3 ["z"]
  FASTCALL MATH_MIN [+2]
  GETIMPORT R5 K6 [math.min]
  CALL R5 3 1
  GETTABLEKS R6 R3 K7 ["Magnitude"]
  SUB R4 R5 R6
  GETTABLEKS R7 R2 K1 ["x"]
  GETTABLEKS R9 R3 K1 ["x"]
  FASTCALL1 MATH_ABS R9 [+2]
  GETIMPORT R8 K9 [math.abs]
  CALL R8 1 1
  SUB R6 R7 R8
  MOVE R7 R4
  LOADN R8 1
  FASTCALL MATH_MIN [+2]
  GETIMPORT R5 K6 [math.min]
  CALL R5 3 1
  RETURN R5 1

PROTO_2:
  MOVE R5 R0
  NAMECALL R3 R1 K0 ["VectorToObjectSpace"]
  CALL R3 2 1
  GETTABLEKS R5 R2 K1 ["y"]
  GETTABLEKS R6 R2 K2 ["z"]
  FASTCALL2 MATH_MIN R5 R6 [+3]
  GETIMPORT R4 K5 [math.min]
  CALL R4 2 1
  GETTABLEKS R9 R3 K1 ["y"]
  GETTABLEKS R10 R3 K1 ["y"]
  MUL R8 R9 R10
  GETTABLEKS R10 R3 K2 ["z"]
  GETTABLEKS R11 R3 K2 ["z"]
  MUL R9 R10 R11
  ADD R7 R8 R9
  FASTCALL1 MATH_SQRT R7 [+2]
  GETIMPORT R6 K7 [math.sqrt]
  CALL R6 1 1
  SUB R5 R4 R6
  GETTABLEKS R8 R2 K8 ["x"]
  GETTABLEKS R10 R3 K8 ["x"]
  FASTCALL1 MATH_ABS R10 [+2]
  GETIMPORT R9 K10 [math.abs]
  CALL R9 1 1
  SUB R7 R8 R9
  MOVE R8 R5
  LOADN R9 1
  FASTCALL MATH_MIN [+2]
  GETIMPORT R6 K5 [math.min]
  CALL R6 3 1
  RETURN R6 1

PROTO_3:
  MOVE R5 R0
  NAMECALL R3 R1 K0 ["VectorToObjectSpace"]
  CALL R3 2 1
  GETTABLEKS R5 R2 K1 ["x"]
  GETTABLEKS R6 R2 K2 ["z"]
  FASTCALL2 MATH_MIN R5 R6 [+3]
  GETIMPORT R4 K5 [math.min]
  CALL R4 2 1
  GETTABLEKS R9 R3 K1 ["x"]
  GETTABLEKS R10 R3 K1 ["x"]
  MUL R8 R9 R10
  GETTABLEKS R10 R3 K2 ["z"]
  GETTABLEKS R11 R3 K2 ["z"]
  MUL R9 R10 R11
  ADD R7 R8 R9
  FASTCALL1 MATH_SQRT R7 [+2]
  GETIMPORT R6 K7 [math.sqrt]
  CALL R6 1 1
  SUB R5 R4 R6
  GETTABLEKS R8 R2 K8 ["y"]
  GETTABLEKS R10 R3 K8 ["y"]
  FASTCALL1 MATH_ABS R10 [+2]
  GETIMPORT R9 K10 [math.abs]
  CALL R9 1 1
  SUB R7 R8 R9
  MOVE R8 R5
  LOADN R9 1
  FASTCALL MATH_MIN [+2]
  GETIMPORT R6 K5 [math.min]
  CALL R6 3 1
  RETURN R6 1

PROTO_4:
  MOVE R5 R0
  NAMECALL R3 R1 K0 ["VectorToObjectSpace"]
  CALL R3 2 1
  GETTABLEKS R5 R2 K1 ["y"]
  GETTABLEKS R6 R2 K2 ["z"]
  DIV R4 R5 R6
  GETTABLEKS R7 R2 K3 ["x"]
  GETTABLEKS R9 R3 K3 ["x"]
  FASTCALL1 MATH_ABS R9 [+2]
  GETIMPORT R8 K6 [math.abs]
  CALL R8 1 1
  SUB R6 R7 R8
  GETTABLEKS R8 R2 K1 ["y"]
  GETTABLEKS R10 R3 K1 ["y"]
  FASTCALL1 MATH_ABS R10 [+2]
  GETIMPORT R9 K6 [math.abs]
  CALL R9 1 1
  SUB R7 R8 R9
  GETTABLEKS R9 R2 K2 ["z"]
  GETTABLEKS R11 R3 K2 ["z"]
  FASTCALL1 MATH_ABS R11 [+2]
  GETIMPORT R10 K6 [math.abs]
  CALL R10 1 1
  SUB R8 R9 R10
  LOADN R9 1
  FASTCALL MATH_MIN [+2]
  GETIMPORT R5 K8 [math.min]
  CALL R5 4 1
  GETTABLEKS R9 R3 K2 ["z"]
  MUL R8 R9 R4
  GETTABLEKS R9 R3 K1 ["y"]
  SUB R7 R8 R9
  LOADN R8 1
  JUMPIFNOTLT R8 R7 [+3]
  MOVE R6 R5
  JUMPIF R6 [+1]
  LOADN R6 0
  RETURN R6 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  LOADK R3 K0 ["getShapeFunction() got invalid shape \"%s\""]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K2 [tostring]
  CALL R5 1 1
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K5 [assert]
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TerrainEnums"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["Shape"]
  NEWTABLE R2 8 0
  GETTABLEKS R3 R1 K7 ["Block"]
  DUPCLOSURE R4 K8 [PROTO_0]
  SETTABLE R4 R2 R3
  GETTABLEKS R3 R1 K9 ["Ball"]
  DUPCLOSURE R4 K10 [PROTO_1]
  SETTABLE R4 R2 R3
  GETTABLEKS R3 R1 K11 ["CylinderRotate"]
  DUPCLOSURE R4 K12 [PROTO_2]
  SETTABLE R4 R2 R3
  GETTABLEKS R3 R1 K13 ["Cylinder"]
  DUPCLOSURE R4 K14 [PROTO_3]
  SETTABLE R4 R2 R3
  GETTABLEKS R3 R1 K15 ["Wedge"]
  DUPCLOSURE R4 K16 [PROTO_4]
  SETTABLE R4 R2 R3
  DUPCLOSURE R3 K17 [PROTO_5]
  CAPTURE VAL R2
  RETURN R3 1
