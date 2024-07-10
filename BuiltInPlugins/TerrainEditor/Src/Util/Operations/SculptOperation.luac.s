PROTO_0:
  GETTABLEKS R3 R0 K0 ["Payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["BrushSize"]
  GETTABLE R3 R2 R4
  GETTABLEKS R4 R3 K3 ["Height"]
  GETTABLEKS R5 R3 K4 ["Size"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["BrushShape"]
  GETTABLE R6 R2 R7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["State"]
  GETTABLE R7 R2 R8
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["Sphere"]
  JUMPIFNOTEQ R6 R10 [+3]
  MOVE R9 R5
  JUMP [+1]
  MOVE R9 R4
  GETUPVAL R10 3
  MUL R8 R9 R10
  GETUPVAL R9 4
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K8 ["PivotPosition"]
  GETTABLE R10 R2 R11
  GETTABLEKS R11 R7 K9 ["Position"]
  MOVE R12 R8
  CALL R9 3 1
  DUPTABLE R10 K10 [{"Position"}]
  SETTABLEKS R9 R10 K9 ["Position"]
  SETTABLEKS R10 R0 K6 ["State"]
  RETURN R0 0

PROTO_1:
  LOADN R4 1
  LOADN R5 1
  GETUPVAL R6 0
  JUMPIFNOT R6 [+12]
  GETUPVAL R6 1
  GETTABLEKS R7 R1 K0 ["Magnitude"]
  GETUPVAL R8 2
  CALL R6 2 1
  MOVE R4 R6
  GETUPVAL R6 3
  GETTABLEKS R7 R1 K0 ["Magnitude"]
  GETUPVAL R8 2
  CALL R6 2 1
  MOVE R5 R6
  JUMPIFEQKN R2 K1 [0] [+4]
  LOADK R6 K2 [0.5]
  JUMPIFNOTLE R4 R6 [+2]
  RETURN R0 0
  LOADB R6 0
  GETUPVAL R8 4
  LENGTH R7 R8
  GETUPVAL R8 4
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  ADD R13 R0 R12
  LOADB R14 0
  GETTABLEKS R15 R13 K3 ["X"]
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+10]
  GETTABLEKS R15 R13 K3 ["X"]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K3 ["X"]
  JUMPIFLE R15 R16 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  LOADB R15 0
  GETTABLEKS R16 R13 K4 ["Y"]
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+10]
  GETTABLEKS R16 R13 K4 ["Y"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K4 ["Y"]
  JUMPIFLE R16 R17 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  LOADB R16 0
  GETTABLEKS R17 R13 K5 ["Z"]
  LOADN R18 0
  JUMPIFNOTLT R18 R17 [+10]
  GETTABLEKS R17 R13 K5 ["Z"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K5 ["Z"]
  JUMPIFLE R17 R18 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  JUMPIFNOT R14 [+34]
  JUMPIFNOT R15 [+33]
  JUMPIFNOT R16 [+32]
  GETUPVAL R20 6
  GETTABLEKS R21 R13 K3 ["X"]
  GETTABLE R19 R20 R21
  GETTABLEKS R20 R13 K4 ["Y"]
  GETTABLE R18 R19 R20
  GETTABLEKS R19 R13 K5 ["Z"]
  GETTABLE R17 R18 R19
  GETUPVAL R21 7
  GETTABLEKS R22 R13 K3 ["X"]
  GETTABLE R20 R21 R22
  GETTABLEKS R21 R13 K4 ["Y"]
  GETTABLE R19 R20 R21
  GETTABLEKS R20 R13 K5 ["Z"]
  GETTABLE R18 R19 R20
  GETUPVAL R19 8
  JUMPIFNOT R19 [+5]
  GETIMPORT R19 K9 [Enum.Material.Water]
  JUMPIFNOTEQ R18 R19 [+2]
  LOADN R17 0
  LOADN R19 0
  JUMPIFNOTLE R17 R19 [+2]
  LOADB R6 1
  SUB R7 R7 R17
  FORGLOOP R8 2 [-82]
  LOADN R9 1
  JUMPIFLT R2 R9 [+2]
  JUMPIFNOT R6 [+24]
  GETUPVAL R15 4
  LENGTH R14 R15
  DIV R13 R7 R14
  GETUPVAL R15 9
  ADDK R14 R15 K10 [0.05]
  MUL R12 R13 R14
  GETUPVAL R14 10
  JUMPIFNOT R14 [+8]
  GETUPVAL R16 11
  FASTCALL1 MATH_LOG R16 [+2]
  GETIMPORT R15 K15 [math.log]
  CALL R15 1 1
  DIVK R14 R15 K12 [16]
  ADDK R13 R14 K11 [0.01]
  JUMP [+3]
  GETUPVAL R15 11
  DIVK R14 R15 K16 [256]
  ADDK R13 R14 K11 [0.01]
  MUL R11 R12 R13
  MUL R10 R11 R4
  MUL R9 R10 R5
  SUB R8 R2 R9
  JUMP [+1]
  MOVE R8 R2
  GETUPVAL R9 10
  JUMPIFNOT R9 [+9]
  FASTCALL2K MATH_MAX R8 K1 [+5]
  MOVE R10 R8
  LOADK R11 K1 [0]
  GETIMPORT R9 K18 [math.max]
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+10]
  GETUPVAL R12 12
  GETTABLEKS R11 R12 K19 ["MaximumOccupancy"]
  FASTCALL2 MATH_MIN R8 R11 [+4]
  MOVE R10 R8
  GETIMPORT R9 K21 [math.min]
  CALL R9 2 1
  MOVE R8 R9
  GETUPVAL R10 13
  JUMPIFNOT R10 [+8]
  GETTABLEKS R10 R0 K4 ["Y"]
  GETUPVAL R11 13
  JUMPIFNOTLE R10 R11 [+4]
  GETIMPORT R9 K9 [Enum.Material.Water]
  JUMP [+2]
  GETIMPORT R9 K23 [Enum.Material.Air]
  GETTABLEKS R11 R0 K4 ["Y"]
  GETUPVAL R12 13
  JUMPIFNOTEQ R11 R12 [+3]
  GETUPVAL R10 14
  JUMP [+1]
  LOADN R10 1
  GETUPVAL R12 12
  GETTABLEKS R11 R12 K24 ["MinimumOccupancy"]
  JUMPIFNOTLE R8 R11 [+59]
  GETUPVAL R11 13
  JUMPIFNOT R11 [+28]
  GETTABLEKS R11 R0 K4 ["Y"]
  GETUPVAL R12 13
  JUMPIFNOTLE R11 R12 [+24]
  GETUPVAL R13 15
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  LOADN R13 0
  SETTABLE R13 R11 R12
  GETUPVAL R13 16
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  GETIMPORT R13 K23 [Enum.Material.Air]
  SETTABLE R13 R11 R12
  GETUPVAL R13 17
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  GETIMPORT R14 K9 [Enum.Material.Water]
  JUMPIFNOTEQ R9 R14 [+3]
  MOVE R13 R10
  JUMPIF R13 [+1]
  LOADN R13 0
  SETTABLE R13 R11 R12
  GETUPVAL R13 18
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  SETTABLE R9 R11 R12
  RETURN R0 0
  GETUPVAL R11 13
  JUMPIFNOT R11 [+46]
  GETTABLEKS R11 R0 K4 ["Y"]
  GETUPVAL R12 13
  JUMPIFNOTLE R11 R12 [+42]
  GETUPVAL R13 15
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  SETTABLE R8 R11 R12
  GETUPVAL R13 16
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  SETTABLE R3 R11 R12
  GETUPVAL R13 17
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  SETTABLE R10 R11 R12
  GETUPVAL R13 18
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  SETTABLE R9 R11 R12
  RETURN R0 0
  GETUPVAL R13 17
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  SETTABLE R8 R11 R12
  RETURN R0 0

PROTO_2:
  LOADN R4 1
  LOADN R5 1
  GETUPVAL R6 0
  JUMPIFNOT R6 [+12]
  GETUPVAL R6 1
  GETTABLEKS R7 R1 K0 ["Magnitude"]
  GETUPVAL R8 2
  CALL R6 2 1
  MOVE R4 R6
  GETUPVAL R6 3
  GETTABLEKS R7 R1 K0 ["Magnitude"]
  GETUPVAL R8 2
  CALL R6 2 1
  MOVE R5 R6
  JUMPIFEQKN R2 K1 [1] [+4]
  LOADK R6 K2 [0.5]
  JUMPIFNOTLT R4 R6 [+2]
  RETURN R0 0
  LOADB R6 0
  GETUPVAL R8 4
  LENGTH R7 R8
  LOADN R8 0
  GETUPVAL R9 4
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  ADD R14 R0 R13
  LOADB R15 0
  GETTABLEKS R16 R14 K3 ["X"]
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+10]
  GETTABLEKS R16 R14 K3 ["X"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K3 ["X"]
  JUMPIFLT R16 R17 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  LOADB R16 0
  GETTABLEKS R17 R14 K4 ["Y"]
  LOADN R18 0
  JUMPIFNOTLT R18 R17 [+10]
  GETTABLEKS R17 R14 K4 ["Y"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K4 ["Y"]
  JUMPIFLT R17 R18 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  LOADB R17 0
  GETTABLEKS R18 R14 K5 ["Z"]
  LOADN R19 0
  JUMPIFNOTLT R19 R18 [+10]
  GETTABLEKS R18 R14 K5 ["Z"]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K5 ["Z"]
  JUMPIFLT R18 R19 [+2]
  LOADB R17 0 +1
  LOADB R17 1
  JUMPIFNOT R15 [+35]
  JUMPIFNOT R16 [+34]
  JUMPIFNOT R17 [+33]
  GETUPVAL R21 6
  GETTABLEKS R22 R14 K3 ["X"]
  GETTABLE R20 R21 R22
  GETTABLEKS R21 R14 K4 ["Y"]
  GETTABLE R19 R20 R21
  GETTABLEKS R20 R14 K5 ["Z"]
  GETTABLE R18 R19 R20
  GETUPVAL R22 7
  GETTABLEKS R23 R14 K3 ["X"]
  GETTABLE R21 R22 R23
  GETTABLEKS R22 R14 K4 ["Y"]
  GETTABLE R20 R21 R22
  GETTABLEKS R21 R14 K5 ["Z"]
  GETTABLE R19 R20 R21
  GETUPVAL R20 8
  JUMPIFNOT R20 [+5]
  GETIMPORT R20 K9 [Enum.Material.Water]
  JUMPIFNOTEQ R19 R20 [+2]
  LOADN R18 0
  LOADN R20 1
  JUMPIFNOTLE R20 R18 [+2]
  LOADB R6 1
  ADDK R8 R8 K1 [1]
  ADD R7 R7 R18
  FORGLOOP R9 2 [-83]
  JUMPIFNOTEQKN R8 K10 [0] [+3]
  LOADN R7 0
  JUMP [+1]
  DIV R7 R7 R8
  LOADN R10 0
  JUMPIFLT R10 R2 [+2]
  JUMPIFNOT R6 [+21]
  GETUPVAL R15 9
  ADDK R14 R15 K11 [0.05]
  MUL R13 R7 R14
  GETUPVAL R15 10
  JUMPIFNOT R15 [+8]
  GETUPVAL R17 11
  FASTCALL1 MATH_LOG R17 [+2]
  GETIMPORT R16 K16 [math.log]
  CALL R16 1 1
  DIVK R15 R16 K13 [32]
  ADDK R14 R15 K12 [0.01]
  JUMP [+3]
  GETUPVAL R16 11
  DIVK R15 R16 K17 [256]
  ADDK R14 R15 K12 [0.01]
  MUL R12 R13 R14
  MUL R11 R12 R4
  MUL R10 R11 R5
  ADD R9 R2 R10
  JUMP [+1]
  MOVE R9 R2
  GETUPVAL R13 12
  GETTABLEKS R12 R13 K18 ["MaximumOccupancy"]
  FASTCALL2 MATH_MIN R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K20 [math.min]
  CALL R10 2 1
  MOVE R9 R10
  GETIMPORT R10 K22 [Enum.Material.Air]
  JUMPIFNOTEQ R3 R10 [+36]
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+33]
  GETUPVAL R11 13
  JUMPIFNOT R11 [+11]
  GETUPVAL R10 14
  GETTABLEKS R11 R0 K3 ["X"]
  GETTABLEKS R12 R0 K4 ["Y"]
  GETTABLEKS R13 R0 K5 ["Z"]
  GETUPVAL R14 7
  GETUPVAL R15 5
  CALL R10 5 1
  JUMP [+1]
  GETUPVAL R10 15
  GETUPVAL R11 8
  JUMPIFNOT R11 [+6]
  GETIMPORT R11 K9 [Enum.Material.Water]
  JUMPIFNOTEQ R10 R11 [+3]
  GETIMPORT R10 K22 [Enum.Material.Air]
  GETUPVAL R13 16
  GETTABLEKS R14 R0 K3 ["X"]
  GETTABLE R12 R13 R14
  GETTABLEKS R13 R0 K4 ["Y"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K5 ["Z"]
  SETTABLE R10 R11 R12
  JUMPIFEQ R9 R2 [+11]
  GETUPVAL R12 17
  GETTABLEKS R13 R0 K3 ["X"]
  GETTABLE R11 R12 R13
  GETTABLEKS R12 R0 K4 ["Y"]
  GETTABLE R10 R11 R12
  GETTABLEKS R11 R0 K5 ["Z"]
  SETTABLE R9 R10 R11
  RETURN R0 0

PROTO_3:
  LOADB R1 1
  LOADB R2 1
  LOADB R3 1
  LOADN R6 255
  LOADN R4 1
  LOADN R5 1
  FORNPREP R4
  LOADN R9 255
  LOADN R7 1
  LOADN R8 1
  FORNPREP R7
  LOADN R12 255
  LOADN R10 1
  LOADN R11 1
  FORNPREP R10
  MOVE R15 R6
  MOVE R16 R9
  MOVE R17 R12
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K2 [Vector3.new]
  CALL R14 3 1
  ADD R13 R0 R14
  LOADB R14 0
  GETTABLEKS R15 R13 K3 ["X"]
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+10]
  GETTABLEKS R15 R13 K3 ["X"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["X"]
  JUMPIFLE R15 R16 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  LOADB R15 0
  GETTABLEKS R16 R13 K4 ["Y"]
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+10]
  GETTABLEKS R16 R13 K4 ["Y"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["Y"]
  JUMPIFLE R16 R17 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  LOADB R16 0
  GETTABLEKS R17 R13 K5 ["Z"]
  LOADN R18 0
  JUMPIFNOTLT R18 R17 [+10]
  GETTABLEKS R17 R13 K5 ["Z"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K5 ["Z"]
  JUMPIFLE R17 R18 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  JUMPIFNOT R14 [+69]
  JUMPIFNOT R15 [+68]
  JUMPIFNOT R16 [+67]
  JUMPIFNOTEQKN R6 K6 [0] [+5]
  JUMPIFNOTEQKN R9 K6 [0] [+3]
  JUMPIFEQKN R12 K6 [0] [+62]
  GETUPVAL R20 1
  GETTABLEKS R21 R13 K3 ["X"]
  GETTABLE R19 R20 R21
  GETTABLEKS R20 R13 K4 ["Y"]
  GETTABLE R18 R19 R20
  GETTABLEKS R19 R13 K5 ["Z"]
  GETTABLE R17 R18 R19
  GETUPVAL R21 2
  GETTABLEKS R22 R13 K3 ["X"]
  GETTABLE R20 R21 R22
  GETTABLEKS R21 R13 K4 ["Y"]
  GETTABLE R19 R20 R21
  GETTABLEKS R20 R13 K5 ["Z"]
  GETTABLE R18 R19 R20
  GETUPVAL R23 1
  GETTABLEKS R24 R13 K3 ["X"]
  GETTABLE R22 R23 R24
  GETTABLEKS R23 R13 K4 ["Y"]
  GETTABLE R21 R22 R23
  GETTABLEKS R22 R13 K5 ["Z"]
  GETTABLE R20 R21 R22
  GETIMPORT R21 K10 [Enum.Material.Water]
  JUMPIFEQ R20 R21 [+2]
  LOADB R19 0 +1
  LOADB R19 1
  GETUPVAL R20 3
  JUMPIFNOT R20 [+2]
  JUMPIFNOT R19 [+1]
  LOADN R18 0
  LOADN R20 0
  JUMPIFNOTLT R20 R18 [+2]
  LOADB R1 0
  LOADN R20 1
  JUMPIFNOTLT R18 R20 [+2]
  LOADB R2 0
  GETIMPORT R20 K10 [Enum.Material.Water]
  JUMPIFEQ R17 R20 [+2]
  LOADB R3 1
  JUMPIF R2 [+7]
  JUMPIF R1 [+6]
  GETUPVAL R20 4
  JUMPIFNOT R20 [+1]
  JUMPIFNOT R3 [+3]
  LOADB R20 0
  LOADB R21 0
  RETURN R20 2
  FORNLOOP R10
  FORNLOOP R7
  FORNLOOP R4
  RETURN R1 3

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 3
  GETUPVAL R8 1
  GETTABLEKS R9 R0 K0 ["X"]
  GETTABLE R7 R8 R9
  GETTABLEKS R8 R0 K1 ["Y"]
  GETTABLE R6 R7 R8
  GETTABLEKS R7 R0 K2 ["Z"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K3 ["Add"]
  JUMPIFNOTEQ R7 R8 [+9]
  MOVE R6 R3
  JUMPIF R6 [+14]
  JUMPIFEQKN R5 K4 [0] [+3]
  MOVE R6 R1
  JUMPIFNOT R6 [+10]
  MOVE R6 R2
  JUMP [+8]
  MOVE R6 R2
  JUMPIF R6 [+6]
  LOADB R6 0
  JUMPIFNOTEQKN R5 K5 [1] [+4]
  NOT R6 R1
  JUMPIFNOT R6 [+1]
  MOVE R6 R3
  LOADB R7 0
  GETUPVAL R8 2
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K6 ["Subtract"]
  JUMPIFNOTEQ R8 R9 [+4]
  GETUPVAL R7 4
  JUMPIFNOT R7 [+1]
  MOVE R7 R4
  JUMPIFNOT R6 [+1]
  JUMPIFNOT R7 [+203]
  LOADN R10 255
  LOADN R8 1
  LOADN R9 1
  FORNPREP R8
  LOADN R13 255
  LOADN R11 1
  LOADN R12 1
  FORNPREP R11
  LOADN R16 255
  LOADN R14 1
  LOADN R15 1
  FORNPREP R14
  MOVE R18 R10
  MOVE R19 R13
  MOVE R20 R16
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K9 [Vector3.new]
  CALL R17 3 1
  ADD R18 R0 R17
  LOADB R19 0
  GETTABLEKS R20 R18 K0 ["X"]
  LOADN R21 0
  JUMPIFNOTLT R21 R20 [+10]
  GETTABLEKS R20 R18 K0 ["X"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K0 ["X"]
  JUMPIFLE R20 R21 [+2]
  LOADB R19 0 +1
  LOADB R19 1
  LOADB R20 0
  GETTABLEKS R21 R18 K1 ["Y"]
  LOADN R22 0
  JUMPIFNOTLT R22 R21 [+10]
  GETTABLEKS R21 R18 K1 ["Y"]
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K1 ["Y"]
  JUMPIFLE R21 R22 [+2]
  LOADB R20 0 +1
  LOADB R20 1
  LOADB R21 0
  GETTABLEKS R22 R18 K2 ["Z"]
  LOADN R23 0
  JUMPIFNOTLT R23 R22 [+10]
  GETTABLEKS R22 R18 K2 ["Z"]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K2 ["Z"]
  JUMPIFLE R22 R23 [+2]
  LOADB R21 0 +1
  LOADB R21 1
  JUMPIFNOT R19 [+134]
  JUMPIFNOT R20 [+133]
  JUMPIFNOT R21 [+132]
  JUMPIFNOTEQKN R10 K4 [0] [+5]
  JUMPIFNOTEQKN R13 K4 [0] [+3]
  JUMPIFEQKN R16 K4 [0] [+127]
  GETUPVAL R25 1
  GETTABLEKS R26 R18 K0 ["X"]
  GETTABLE R24 R25 R26
  GETTABLEKS R25 R18 K1 ["Y"]
  GETTABLE R23 R24 R25
  GETTABLEKS R24 R18 K2 ["Z"]
  GETTABLE R22 R23 R24
  GETUPVAL R26 6
  GETTABLEKS R27 R18 K0 ["X"]
  GETTABLE R25 R26 R27
  GETTABLEKS R26 R18 K1 ["Y"]
  GETTABLE R24 R25 R26
  GETTABLEKS R25 R18 K2 ["Z"]
  GETTABLE R23 R24 R25
  GETUPVAL R24 7
  JUMPIFNOT R24 [+6]
  GETIMPORT R25 K13 [Enum.Material.Water]
  JUMPIFEQ R23 R25 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  JUMPIFNOT R24 [+1]
  LOADN R22 0
  LOADB R25 0
  LOADB R26 0
  GETUPVAL R27 4
  JUMPIFNOT R27 [+6]
  GETIMPORT R28 K13 [Enum.Material.Water]
  JUMPIFEQ R23 R28 [+2]
  LOADB R27 0 +1
  LOADB R27 1
  GETUPVAL R28 2
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K3 ["Add"]
  JUMPIFNOTEQ R28 R29 [+13]
  LOADN R28 1
  JUMPIFLT R22 R28 [+2]
  LOADB R26 0 +1
  LOADB R26 1
  JUMPIFEQKN R5 K4 [0] [+2]
  JUMPIFNOT R1 [+21]
  JUMPIFNOTEQKN R22 K4 [0] [+20]
  LOADB R26 0
  JUMP [+17]
  GETUPVAL R28 2
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K6 ["Subtract"]
  JUMPIFNOTEQ R28 R29 [+12]
  LOADN R28 0
  JUMPIFLT R28 R22 [+2]
  LOADB R25 0 +1
  LOADB R25 1
  JUMPIFNOTEQKN R5 K5 [1] [+5]
  JUMPIF R1 [+3]
  JUMPIFNOTEQKN R22 K5 [1] [+2]
  LOADB R25 0
  JUMPIF R26 [+2]
  JUMPIF R25 [+1]
  JUMPIFNOT R27 [+48]
  GETUPVAL R29 8
  GETTABLEKS R31 R18 K0 ["X"]
  GETUPVAL R34 5
  GETTABLEKS R33 R34 K0 ["X"]
  GETTABLEKS R35 R18 K1 ["Y"]
  GETUPVAL R38 5
  GETTABLEKS R37 R38 K0 ["X"]
  GETTABLEKS R38 R18 K2 ["Z"]
  MUL R36 R37 R38
  ADD R34 R35 R36
  MUL R32 R33 R34
  ADD R30 R31 R32
  GETTABLE R28 R29 R30
  JUMPIF R28 [+29]
  GETUPVAL R28 8
  GETTABLEKS R30 R18 K0 ["X"]
  GETUPVAL R33 5
  GETTABLEKS R32 R33 K0 ["X"]
  GETTABLEKS R34 R18 K1 ["Y"]
  GETUPVAL R37 5
  GETTABLEKS R36 R37 K0 ["X"]
  GETTABLEKS R37 R18 K2 ["Z"]
  MUL R35 R36 R37
  ADD R33 R34 R35
  MUL R31 R32 R33
  ADD R29 R30 R31
  LOADB R30 1
  SETTABLE R30 R28 R29
  GETUPVAL R28 9
  ADDK R28 R28 K5 [1]
  SETUPVAL R28 9
  GETUPVAL R29 10
  FASTCALL2 TABLE_INSERT R29 R18 [+4]
  MOVE R30 R18
  GETIMPORT R28 K16 [table.insert]
  CALL R28 2 0
  FORNLOOP R14
  FORNLOOP R11
  FORNLOOP R8
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to step without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["ProfileTools"]
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETIMPORT R2 K7 [debug.profilebegin]
  LOADK R3 K8 ["Sculpt"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K0 ["State"]
  GETTABLEKS R4 R0 K9 ["Payload"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["BrushSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K11 ["BrushSize"]
  GETTABLE R4 R3 R5
  GETTABLEKS R5 R4 K12 ["Height"]
  GETTABLEKS R6 R4 K13 ["Size"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["BrushMode"]
  GETTABLE R7 R3 R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K15 ["BrushShape"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K16 ["IgnoreWater"]
  GETTABLE R9 R3 R10
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K17 ["Strength"]
  GETTABLE R10 R3 R11
  GETUPVAL R12 3
  CALL R12 0 1
  JUMPIFNOT R12 [+5]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K18 ["WaterAutofill"]
  GETTABLE R11 R3 R12
  JUMP [+1]
  LOADNIL R11
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K0 ["State"]
  GETTABLE R12 R3 R13
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K19 ["TemporarySmooth"]
  GETTABLE R13 R3 R14
  LOADB R14 0
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K20 ["Sphere"]
  JUMPIFNOTEQ R8 R15 [+6]
  LOADN R15 2
  JUMPIFLT R15 R6 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K21 ["Cylinder"]
  JUMPIFNOTEQ R8 R16 [+5]
  LOADB R15 1
  LOADN R16 2
  JUMPIFLT R16 R6 [+2]
  MOVE R15 R14
  JUMPIFNOT R13 [+28]
  GETTABLEKS R16 R2 K22 ["Smooth"]
  JUMPIF R16 [+15]
  GETUPVAL R16 5
  LOADK R17 K22 ["Smooth"]
  GETUPVAL R18 6
  CALL R16 2 1
  DUPTABLE R19 K23 [{"Payload"}]
  GETTABLEKS R20 R0 K9 ["Payload"]
  SETTABLEKS R20 R19 K9 ["Payload"]
  NAMECALL R17 R16 K24 ["start"]
  CALL R17 2 0
  SETTABLEKS R16 R2 K22 ["Smooth"]
  JUMP [+7]
  GETTABLEKS R16 R2 K22 ["Smooth"]
  GETTABLEKS R18 R0 K9 ["Payload"]
  NAMECALL R16 R16 K25 ["updatePayload"]
  CALL R16 2 0
  LOADB R16 1
  LOADN R17 0
  RETURN R16 2
  GETTABLEKS R16 R2 K22 ["Smooth"]
  JUMPIFNOT R16 [+12]
  GETTABLEKS R16 R2 K22 ["Smooth"]
  NAMECALL R16 R16 K26 ["cancel"]
  CALL R16 1 0
  LOADNIL R16
  SETTABLEKS R16 R2 K22 ["Smooth"]
  GETTABLEKS R16 R12 K27 ["Position"]
  SETTABLEKS R16 R2 K27 ["Position"]
  GETTABLEKS R17 R0 K9 ["Payload"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K28 ["MaterialSettings"]
  GETTABLE R16 R17 R18
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K29 ["AutoMaterial"]
  GETTABLE R17 R16 R18
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K30 ["SourceMaterial"]
  GETTABLE R18 R16 R19
  GETUPVAL R22 4
  GETTABLEKS R21 R22 K20 ["Sphere"]
  JUMPIFNOTEQ R8 R21 [+3]
  MOVE R20 R6
  JUMP [+1]
  MOVE R20 R5
  GETUPVAL R21 8
  MUL R19 R20 R21
  GETUPVAL R21 8
  MUL R20 R6 R21
  MULK R21 R20 K31 [0.5]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 1
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K34 [Vector3.new]
  CALL R22 3 1
  GETUPVAL R23 9
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K35 ["PivotPosition"]
  GETTABLE R24 R3 R25
  GETTABLEKS R25 R12 K27 ["Position"]
  MOVE R26 R19
  CALL R23 3 1
  GETUPVAL R24 10
  GETTABLEKS R25 R2 K27 ["Position"]
  MOVE R26 R23
  MOVE R27 R21
  CALL R24 3 1
  LENGTH R26 R24
  GETTABLE R25 R24 R26
  SETTABLEKS R25 R2 K27 ["Position"]
  MOVE R25 R24
  LOADNIL R26
  LOADNIL R27
  FORGPREP R25
  GETUPVAL R30 11
  MOVE R31 R29
  MOVE R32 R21
  MOVE R33 R19
  CALL R30 3 2
  GETIMPORT R32 K37 [Region3.new]
  MOVE R33 R30
  MOVE R34 R31
  CALL R32 2 1
  GETTABLEKS R35 R31 K38 ["X"]
  GETTABLEKS R36 R30 K38 ["X"]
  SUB R34 R35 R36
  MULK R33 R34 K31 [0.5]
  NEWTABLE R34 0 0
  GETUPVAL R36 6
  GETTABLEKS R35 R36 K39 ["Terrain"]
  MOVE R37 R32
  GETUPVAL R38 8
  NAMECALL R35 R35 K40 ["ReadVoxels"]
  CALL R35 3 2
  GETUPVAL R38 6
  GETTABLEKS R37 R38 K39 ["Terrain"]
  MOVE R39 R32
  GETUPVAL R40 8
  NAMECALL R37 R37 K40 ["ReadVoxels"]
  CALL R37 3 2
  LOADNIL R39
  LOADNIL R40
  JUMPIFNOT R11 [+10]
  GETUPVAL R42 6
  GETTABLEKS R41 R42 K39 ["Terrain"]
  MOVE R43 R32
  GETUPVAL R44 8
  NAMECALL R41 R41 K40 ["ReadVoxels"]
  CALL R41 3 2
  MOVE R39 R41
  MOVE R40 R42
  LOADNIL R41
  GETUPVAL R42 12
  CALL R42 0 1
  JUMPIFNOT R42 [+4]
  GETIMPORT R42 K43 [os.clock]
  CALL R42 0 1
  MOVE R41 R42
  LOADNIL R42
  SETTABLEKS R42 R35 K13 ["Size"]
  LOADNIL R42
  SETTABLEKS R42 R36 K13 ["Size"]
  LENGTH R42 R35
  GETTABLEN R44 R35 1
  LENGTH R43 R44
  GETTABLEN R46 R35 1
  GETTABLEN R45 R46 1
  LENGTH R44 R45
  GETIMPORT R45 K46 [table.create]
  MUL R47 R42 R43
  MUL R46 R47 R44
  LOADB R47 0
  CALL R45 2 1
  LOADN R46 0
  MOVE R48 R42
  MOVE R49 R43
  MOVE R50 R44
  FASTCALL VECTOR [+2]
  GETIMPORT R47 K34 [Vector3.new]
  CALL R47 3 1
  LOADNIL R48
  LOADNIL R49
  JUMPIFNOT R11 [+11]
  GETUPVAL R51 13
  GETTABLEKS R50 R51 K47 ["Subtract"]
  JUMPIFNOTEQ R7 R50 [+7]
  GETUPVAL R50 14
  MOVE R51 R35
  MOVE R52 R36
  CALL R50 2 2
  MOVE R48 R50
  MOVE R49 R51
  GETTABLEKS R54 R29 K38 ["X"]
  GETTABLEKS R55 R30 K38 ["X"]
  SUB R53 R54 R55
  GETUPVAL R54 8
  DIV R52 R53 R54
  FASTCALL1 MATH_ROUND R52 [+2]
  GETIMPORT R51 K50 [math.round]
  CALL R51 1 1
  GETTABLEKS R55 R29 K51 ["Y"]
  GETTABLEKS R56 R30 K51 ["Y"]
  SUB R54 R55 R56
  GETUPVAL R55 8
  DIV R53 R54 R55
  FASTCALL1 MATH_ROUND R53 [+2]
  GETIMPORT R52 K50 [math.round]
  CALL R52 1 1
  GETTABLEKS R56 R29 K52 ["Z"]
  GETTABLEKS R57 R30 K52 ["Z"]
  SUB R55 R56 R57
  GETUPVAL R56 8
  DIV R54 R55 R56
  FASTCALL1 MATH_ROUND R54 [+2]
  GETIMPORT R53 K50 [math.round]
  CALL R53 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R50 K34 [Vector3.new]
  CALL R50 3 1
  LOADN R53 255
  LOADN R51 1
  LOADN R52 1
  FORNPREP R51
  LOADN R56 255
  LOADN R54 1
  LOADN R55 1
  FORNPREP R54
  LOADN R59 255
  LOADN R57 1
  LOADN R58 1
  FORNPREP R57
  MOVE R62 R53
  MOVE R63 R56
  MOVE R64 R59
  FASTCALL VECTOR [+2]
  GETIMPORT R61 K34 [Vector3.new]
  CALL R61 3 1
  ADD R60 R50 R61
  LOADB R61 0
  GETTABLEKS R62 R60 K38 ["X"]
  LOADN R63 0
  JUMPIFNOTLT R63 R62 [+9]
  GETTABLEKS R62 R60 K38 ["X"]
  GETTABLEKS R63 R47 K38 ["X"]
  JUMPIFLE R62 R63 [+2]
  LOADB R61 0 +1
  LOADB R61 1
  LOADB R62 0
  GETTABLEKS R63 R60 K51 ["Y"]
  LOADN R64 0
  JUMPIFNOTLT R64 R63 [+9]
  GETTABLEKS R63 R60 K51 ["Y"]
  GETTABLEKS R64 R47 K51 ["Y"]
  JUMPIFLE R63 R64 [+2]
  LOADB R62 0 +1
  LOADB R62 1
  LOADB R63 0
  GETTABLEKS R64 R60 K52 ["Z"]
  LOADN R65 0
  JUMPIFNOTLT R65 R64 [+9]
  GETTABLEKS R64 R60 K52 ["Z"]
  GETTABLEKS R65 R47 K52 ["Z"]
  JUMPIFLE R64 R65 [+2]
  LOADB R63 0 +1
  LOADB R63 1
  JUMPIFNOT R61 [+26]
  JUMPIFNOT R62 [+25]
  JUMPIFNOT R63 [+24]
  GETTABLEKS R65 R60 K38 ["X"]
  GETTABLEKS R67 R47 K38 ["X"]
  GETTABLEKS R69 R60 K51 ["Y"]
  GETTABLEKS R71 R47 K38 ["X"]
  GETTABLEKS R72 R60 K52 ["Z"]
  MUL R70 R71 R72
  ADD R68 R69 R70
  MUL R66 R67 R68
  ADD R64 R65 R66
  LOADB R65 1
  SETTABLE R65 R45 R64
  ADDK R46 R46 K53 [1]
  FASTCALL2 TABLE_INSERT R34 R60 [+5]
  MOVE R65 R34
  MOVE R66 R60
  GETIMPORT R64 K55 [table.insert]
  CALL R64 2 0
  FORNLOOP R57
  FORNLOOP R54
  FORNLOOP R51
  NEWCLOSURE R51 P0
  CAPTURE VAL R15
  CAPTURE UPVAL U15
  CAPTURE VAL R33
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE VAL R47
  CAPTURE VAL R36
  CAPTURE VAL R35
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE UPVAL U18
  CAPTURE VAL R6
  CAPTURE UPVAL U19
  CAPTURE REF R48
  CAPTURE REF R49
  CAPTURE REF R40
  CAPTURE REF R39
  CAPTURE VAL R38
  CAPTURE VAL R37
  NEWCLOSURE R52 P1
  CAPTURE VAL R15
  CAPTURE UPVAL U15
  CAPTURE VAL R33
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE VAL R47
  CAPTURE VAL R36
  CAPTURE VAL R35
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE UPVAL U18
  CAPTURE VAL R6
  CAPTURE UPVAL U19
  CAPTURE VAL R17
  CAPTURE UPVAL U20
  CAPTURE VAL R18
  CAPTURE VAL R37
  CAPTURE VAL R38
  NEWCLOSURE R53 P2
  CAPTURE VAL R47
  CAPTURE VAL R35
  CAPTURE VAL R36
  CAPTURE VAL R9
  CAPTURE REF R48
  NEWCLOSURE R54 P3
  CAPTURE VAL R53
  CAPTURE VAL R36
  CAPTURE VAL R7
  CAPTURE UPVAL U13
  CAPTURE REF R48
  CAPTURE VAL R47
  CAPTURE VAL R35
  CAPTURE VAL R9
  CAPTURE VAL R45
  CAPTURE REF R46
  CAPTURE VAL R34
  LENGTH R55 R34
  LOADN R56 0
  JUMPIFNOTLT R56 R55 [+107]
  GETIMPORT R55 K57 [table.remove]
  MOVE R56 R34
  CALL R55 1 1
  GETTABLEKS R59 R55 K38 ["X"]
  GETTABLE R58 R36 R59
  GETTABLEKS R59 R55 K51 ["Y"]
  GETTABLE R57 R58 R59
  GETTABLEKS R58 R55 K52 ["Z"]
  GETTABLE R56 R57 R58
  GETTABLEKS R60 R55 K38 ["X"]
  GETTABLE R59 R35 R60
  GETTABLEKS R60 R55 K51 ["Y"]
  GETTABLE R58 R59 R60
  GETTABLEKS R59 R55 K52 ["Z"]
  GETTABLE R57 R58 R59
  JUMPIFNOT R9 [+5]
  LOADB R58 1
  GETIMPORT R59 K61 [Enum.Material.Water]
  JUMPIFEQ R57 R59 [+7]
  GETIMPORT R59 K63 [Enum.Material.Air]
  JUMPIFEQ R57 R59 [+2]
  LOADB R58 0 +1
  LOADB R58 1
  LOADK R64 K31 [0.5]
  LOADK R65 K31 [0.5]
  LOADK R66 K31 [0.5]
  FASTCALL VECTOR [+2]
  GETIMPORT R63 K34 [Vector3.new]
  CALL R63 3 1
  SUB R62 R55 R63
  GETUPVAL R63 8
  MUL R61 R62 R63
  ADD R60 R30 R61
  SUB R59 R60 R29
  JUMPIFNOT R48 [+9]
  GETIMPORT R60 K61 [Enum.Material.Water]
  JUMPIFNOTEQ R57 R60 [+6]
  MOVE R60 R54
  MOVE R61 R55
  MOVE R62 R58
  CALL R60 2 0
  JUMP [+49]
  GETUPVAL R61 13
  GETTABLEKS R60 R61 K47 ["Subtract"]
  JUMPIFNOTEQ R7 R60 [+18]
  LOADN R60 0
  JUMPIFNOTLT R60 R56 [+15]
  JUMPIF R58 [+13]
  JUMPIFNOT R9 [+5]
  GETIMPORT R60 K61 [Enum.Material.Water]
  JUMPIFNOTEQ R57 R60 [+2]
  LOADN R56 0
  MOVE R60 R51
  MOVE R61 R55
  MOVE R62 R59
  MOVE R63 R56
  MOVE R64 R57
  CALL R60 4 0
  JUMP [+23]
  GETUPVAL R61 13
  GETTABLEKS R60 R61 K64 ["Add"]
  JUMPIFNOTEQ R7 R60 [+19]
  LOADN R60 1
  JUMPIFLT R56 R60 [+2]
  JUMPIFNOT R58 [+14]
  JUMPIFNOT R9 [+7]
  GETIMPORT R60 K61 [Enum.Material.Water]
  JUMPIFNOTEQ R57 R60 [+4]
  GETIMPORT R57 K63 [Enum.Material.Air]
  LOADN R56 0
  MOVE R60 R52
  MOVE R61 R55
  MOVE R62 R59
  MOVE R63 R56
  MOVE R64 R57
  CALL R60 4 0
  MOVE R60 R54
  MOVE R61 R55
  MOVE R62 R58
  CALL R60 2 0
  JUMPBACK [-110]
  GETUPVAL R55 12
  CALL R55 0 1
  JUMPIFNOT R55 [+9]
  GETUPVAL R58 21
  GETTABLEKS R57 R58 K65 ["NormalizeDepthFirstSearch"]
  MOVE R58 R41
  MOVE R59 R46
  CALL R57 2 -1
  NAMECALL R55 R1 K66 ["addTimeStatistic"]
  CALL R55 -1 0
  JUMPIFNOT R48 [+10]
  GETUPVAL R56 6
  GETTABLEKS R55 R56 K39 ["Terrain"]
  MOVE R57 R32
  GETUPVAL R58 8
  MOVE R59 R39
  MOVE R60 R40
  NAMECALL R55 R55 K67 ["WriteVoxels"]
  CALL R55 5 0
  GETUPVAL R56 6
  GETTABLEKS R55 R56 K39 ["Terrain"]
  MOVE R57 R32
  GETUPVAL R58 8
  MOVE R59 R37
  MOVE R60 R38
  NAMECALL R55 R55 K67 ["WriteVoxels"]
  CALL R55 5 0
  CLOSEUPVALS R39
  FORGLOOP R25 2 [-426]
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K4 ["ProfileTools"]
  CALL R25 0 1
  JUMPIFNOT R25 [+3]
  GETIMPORT R25 K69 [debug.profileend]
  CALL R25 0 0
  LOADB R25 1
  LOADN R26 0
  RETURN R25 2

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChangeHistoryService"]
  LOADK R4 K1 ["Sculpt"]
  NAMECALL R2 R2 K2 ["SetWaypoint"]
  CALL R2 2 0
  GETTABLEKS R3 R0 K3 ["State"]
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Tried to step without starting first."]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K3 ["State"]
  GETTABLEKS R2 R3 K7 ["Smooth"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R3 R0 K3 ["State"]
  GETTABLEKS R2 R3 K7 ["Smooth"]
  NAMECALL R2 R2 K8 ["cancel"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  GETUPVAL R6 21
  GETTABLEKS R5 R6 K1 ["new"]
  DUPTABLE R6 K6 [{"Name", "OnFinish", "OnStart", "OnStep"}]
  SETTABLEKS R0 R6 K2 ["Name"]
  SETTABLEKS R4 R6 K3 ["OnFinish"]
  SETTABLEKS R2 R6 K4 ["OnStart"]
  SETTABLEKS R3 R6 K5 ["OnStep"]
  CALL R5 1 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Util"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["AnalyticsHelper"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["CalculateAutoMaterial"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R5 R1 K10 ["CalculateBrushOccupancy"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R1 K11 ["CalculateMagnitudePercent"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R7 R1 K12 ["CalculateWaterLevel"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R8 R1 K13 ["ClampVoxelBoundaries"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R9 R1 K14 ["ConvertForPivot"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R10 R1 K15 ["getDraggedPositions"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R13 R0 K4 ["Src"]
  GETTABLEKS R12 R13 K16 ["Resources"]
  GETTABLEKS R11 R12 K17 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K18 ["VoxelResolution"]
  GETIMPORT R12 K7 [require]
  GETTABLEKS R16 R0 K4 ["Src"]
  GETTABLEKS R15 R16 K5 ["Util"]
  GETTABLEKS R14 R15 K19 ["Operations"]
  GETTABLEKS R13 R14 K20 ["SmoothOperation"]
  CALL R12 1 1
  GETIMPORT R13 K7 [require]
  GETTABLEKS R17 R0 K4 ["Src"]
  GETTABLEKS R16 R17 K5 ["Util"]
  GETTABLEKS R15 R16 K19 ["Operations"]
  GETTABLEKS R14 R15 K21 ["BaseOperation"]
  CALL R13 1 1
  GETIMPORT R14 K7 [require]
  GETTABLEKS R16 R0 K4 ["Src"]
  GETTABLEKS R15 R16 K22 ["Types"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K23 ["BrushMode"]
  GETTABLEKS R16 R14 K24 ["BrushSettings"]
  GETTABLEKS R17 R14 K25 ["BrushShape"]
  GETTABLEKS R18 R14 K26 ["Category"]
  GETTABLEKS R19 R14 K27 ["MaterialSettings"]
  GETIMPORT R20 K7 [require]
  GETTABLEKS R23 R0 K4 ["Src"]
  GETTABLEKS R22 R23 K5 ["Util"]
  GETTABLEKS R21 R22 K28 ["DebugFlags"]
  CALL R20 1 1
  GETIMPORT R21 K7 [require]
  GETTABLEKS R24 R0 K4 ["Src"]
  GETTABLEKS R23 R24 K29 ["Flags"]
  GETTABLEKS R22 R23 K30 ["getFFlagTerrainEditorWaterAutofill"]
  CALL R21 1 1
  GETIMPORT R22 K7 [require]
  GETTABLEKS R25 R0 K4 ["Src"]
  GETTABLEKS R24 R25 K29 ["Flags"]
  GETTABLEKS R23 R24 K31 ["getFFlagTerrainEditorTimeStatistic"]
  CALL R22 1 1
  GETIMPORT R23 K7 [require]
  GETTABLEKS R26 R0 K4 ["Src"]
  GETTABLEKS R25 R26 K29 ["Flags"]
  GETTABLEKS R24 R25 K32 ["getFFlagTerrainEditorMiscBrushImprovements"]
  CALL R23 1 1
  MOVE R24 R23
  CALL R24 0 1
  NEWTABLE R25 0 6
  LOADN R27 255
  LOADN R28 0
  LOADN R29 0
  FASTCALL VECTOR [+2]
  GETIMPORT R26 K35 [Vector3.new]
  CALL R26 3 1
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  FASTCALL VECTOR [+2]
  GETIMPORT R27 K35 [Vector3.new]
  CALL R27 3 1
  LOADN R29 0
  LOADN R30 255
  LOADN R31 0
  FASTCALL VECTOR [+2]
  GETIMPORT R28 K35 [Vector3.new]
  CALL R28 3 1
  LOADN R30 0
  LOADN R31 1
  LOADN R32 0
  FASTCALL VECTOR [+2]
  GETIMPORT R29 K35 [Vector3.new]
  CALL R29 3 1
  LOADN R31 0
  LOADN R32 0
  LOADN R33 255
  FASTCALL VECTOR [+2]
  GETIMPORT R30 K35 [Vector3.new]
  CALL R30 3 1
  LOADN R32 0
  LOADN R33 0
  LOADN R34 1
  FASTCALL VECTOR [+2]
  GETIMPORT R31 K35 [Vector3.new]
  CALL R31 3 1
  SETLIST R25 R26 6 [1]
  DUPCLOSURE R26 K36 [PROTO_7]
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R12
  CAPTURE VAL R19
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R22
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R25
  CAPTURE VAL R24
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R13
  RETURN R26 1
