PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 1

PROTO_1:
  SUBK R5 R1 K0 [1]
  LOADN R6 1
  GETTABLEKS R7 R0 K1 ["_sliceX"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R4 K4 [math.clamp]
  CALL R4 3 1
  SUBK R6 R2 K0 [1]
  LOADN R7 1
  GETTABLEKS R8 R0 K5 ["_sliceZ"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R5 K4 [math.clamp]
  CALL R5 3 1
  MOVE R11 R1
  MOVE R12 R2
  NAMECALL R9 R0 K6 ["getIndex"]
  CALL R9 3 1
  GETTABLE R8 R3 R9
  MOVE R12 R4
  MOVE R13 R2
  NAMECALL R10 R0 K6 ["getIndex"]
  CALL R10 3 1
  GETTABLE R9 R3 R10
  SUB R7 R8 R9
  GETUPVAL R8 0
  DIV R6 R7 R8
  MOVE R12 R1
  MOVE R13 R2
  NAMECALL R10 R0 K6 ["getIndex"]
  CALL R10 3 1
  GETTABLE R9 R3 R10
  MOVE R13 R1
  MOVE R14 R5
  NAMECALL R11 R0 K6 ["getIndex"]
  CALL R11 3 1
  GETTABLE R10 R3 R11
  SUB R8 R9 R10
  GETUPVAL R9 0
  DIV R7 R8 R9
  GETIMPORT R8 K9 [Vector2.new]
  MOVE R9 R6
  MOVE R10 R7
  CALL R8 2 -1
  RETURN R8 -1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["NoiseScale"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K0 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["NoiseStrength"]
  GETTABLE R2 R3 R4
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["AdvancedNoise"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K4 ["Children"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["Offset"]
  GETTABLE R3 R4 R5
  GETTABLEKS R8 R0 K0 ["_payload"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["BuildSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["AdvancedNoise"]
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K4 ["Children"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["Seed"]
  GETTABLE R4 R5 R6
  NEWTABLE R5 0 4
  LOADK R6 K8 [0.003]
  LOADK R7 K9 [0.008]
  LOADK R8 K10 [0.016]
  LOADK R9 K11 [0.04]
  SETLIST R5 R6 4 [1]
  NEWTABLE R6 0 4
  LOADK R7 K12 [0.1]
  LOADK R8 K13 [0.05]
  LOADK R9 K14 [0.02]
  LOADK R10 K15 [0.0125]
  SETLIST R6 R7 4 [1]
  MULK R7 R1 K16 [10]
  GETIMPORT R8 K19 [Instance.new]
  LOADK R9 K20 ["Noise"]
  CALL R8 1 1
  GETIMPORT R9 K24 [Enum.NoiseType.SimplexGabor]
  SETTABLEKS R9 R8 K22 ["NoiseType"]
  SETTABLEKS R4 R8 K7 ["Seed"]
  NEWTABLE R9 0 2
  GETTABLEKS R11 R0 K25 ["_sliceX"]
  GETTABLEKS R12 R0 K26 ["_sliceZ"]
  MUL R10 R11 R12
  LOADN R11 0
  SETLIST R9 R10 2 [1]
  LOADN R12 1
  LOADN R10 4
  LOADN R11 1
  FORNPREP R10
  LOADN R15 1
  GETTABLEKS R16 R0 K27 ["_noiseMap"]
  LENGTH R13 R16
  LOADN R14 1
  FORNPREP R13
  GETTABLEKS R17 R0 K27 ["_noiseMap"]
  GETTABLE R16 R17 R15
  SETTABLE R16 R9 R15
  FORNLOOP R13
  LOADN R15 1
  GETTABLEKS R13 R0 K25 ["_sliceX"]
  LOADN R14 1
  FORNPREP R13
  LOADN R18 1
  GETTABLEKS R16 R0 K26 ["_sliceZ"]
  LOADN R17 1
  FORNPREP R16
  GETUPVAL R25 2
  MUL R24 R15 R25
  GETUPVAL R26 2
  DIVK R25 R26 K28 [2]
  ADD R23 R24 R25
  GETTABLEKS R24 R3 K29 ["X"]
  ADD R22 R23 R24
  MOVE R23 R4
  GETUPVAL R27 2
  MUL R26 R18 R27
  GETUPVAL R28 2
  DIVK R27 R28 K28 [2]
  ADD R25 R26 R27
  GETTABLEKS R26 R3 K30 ["Y"]
  ADD R24 R25 R26
  FASTCALL VECTOR [+2]
  GETIMPORT R21 K32 [Vector3.new]
  CALL R21 3 1
  GETTABLE R22 R5 R12
  MUL R20 R21 R22
  MUL R19 R20 R7
  LOADN R21 208
  MOVE R24 R15
  MOVE R25 R18
  MOVE R26 R9
  NAMECALL R22 R0 K33 ["getHeightGradient"]
  CALL R22 4 1
  MUL R20 R21 R22
  GETTABLEKS R23 R20 K30 ["Y"]
  MINUS R22 R23
  LOADN R23 0
  GETTABLEKS R24 R20 K29 ["X"]
  FASTCALL VECTOR [+2]
  GETIMPORT R21 K32 [Vector3.new]
  CALL R21 3 1
  MOVE R24 R19
  MOVE R25 R21
  NAMECALL R22 R8 K34 ["SampleDirectional"]
  CALL R22 3 1
  MOVE R25 R15
  MOVE R26 R18
  NAMECALL R23 R0 K35 ["getIndex"]
  CALL R23 3 1
  GETTABLEKS R24 R0 K27 ["_noiseMap"]
  GETTABLE R25 R24 R23
  GETTABLE R28 R6 R12
  MUL R27 R28 R2
  MUL R26 R27 R22
  ADD R25 R25 R26
  SETTABLE R25 R24 R23
  FORNLOOP R16
  FORNLOOP R13
  FORNLOOP R10
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["NoiseScale"]
  GETTABLE R1 R2 R3
  GETTABLEKS R4 R0 K0 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["NoiseStrength"]
  GETTABLE R2 R3 R4
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["AdvancedNoise"]
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K4 ["Children"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["Offset"]
  GETTABLE R3 R4 R5
  GETTABLEKS R8 R0 K0 ["_payload"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["BuildSettings"]
  GETTABLE R7 R8 R9
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["AdvancedNoise"]
  GETTABLE R6 R7 R8
  GETTABLEKS R5 R6 K4 ["Children"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["Seed"]
  GETTABLE R4 R5 R6
  DUPTABLE R5 K11 [{"center2d", "hillWidth", "hillHeight"}]
  GETIMPORT R6 K14 [Vector2.new]
  LOADK R7 K15 [0.5]
  LOADK R8 K15 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["center2d"]
  LOADK R6 K16 [0.2]
  SETTABLEKS R6 R5 K9 ["hillWidth"]
  LOADK R6 K17 [0.85]
  SETTABLEKS R6 R5 K10 ["hillHeight"]
  DUPTABLE R6 K22 [{"frequency", "amplitude", "offset", "seed"}]
  MULK R8 R1 K24 [5]
  MULK R7 R8 K23 [2]
  SETTABLEKS R7 R6 K18 ["frequency"]
  MULK R8 R2 K25 [0.16]
  MULK R7 R8 K23 [2]
  SETTABLEKS R7 R6 K19 ["amplitude"]
  SETTABLEKS R3 R6 K20 ["offset"]
  SETTABLEKS R4 R6 K21 ["seed"]
  GETIMPORT R7 K28 [table.create]
  GETTABLEKS R9 R0 K29 ["_sliceX"]
  GETTABLEKS R10 R0 K30 ["_sliceZ"]
  MUL R8 R9 R10
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R0 K31 ["_noiseMap"]
  LOADN R8 0
  JUMPIFNOTLT R8 R1 [+6]
  LOADN R8 0
  JUMPIFNOTLT R8 R2 [+3]
  LOADB R7 1
  JUMP [+1]
  LOADB R7 0
  JUMPIFNOT R7 [+10]
  GETIMPORT R8 K28 [table.create]
  GETTABLEKS R10 R0 K29 ["_sliceX"]
  GETTABLEKS R11 R0 K30 ["_sliceZ"]
  MUL R9 R10 R11
  LOADN R10 0
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  LOADN R11 1
  GETTABLEKS R9 R0 K29 ["_sliceX"]
  LOADN R10 1
  FORNPREP R9
  LOADN R14 1
  GETTABLEKS R12 R0 K30 ["_sliceZ"]
  LOADN R13 1
  FORNPREP R12
  MOVE R17 R11
  MOVE R18 R14
  NAMECALL R15 R0 K32 ["getIndex"]
  CALL R15 3 1
  GETIMPORT R16 K14 [Vector2.new]
  GETTABLEKS R18 R0 K29 ["_sliceX"]
  DIV R17 R11 R18
  GETTABLEKS R19 R0 K30 ["_sliceZ"]
  DIV R18 R14 R19
  CALL R16 2 1
  GETUPVAL R17 2
  MOVE R18 R16
  MOVE R19 R5
  LOADNIL R20
  CALL R17 3 1
  GETTABLEKS R18 R0 K31 ["_noiseMap"]
  SETTABLE R17 R18 R15
  JUMPIFNOT R7 [+7]
  GETUPVAL R18 2
  MOVE R19 R16
  MOVE R20 R5
  MOVE R21 R6
  CALL R18 3 1
  SUB R19 R18 R17
  SETTABLE R19 R8 R15
  FORNLOOP R12
  FORNLOOP R9
  JUMPIF R7 [+1]
  RETURN R0 0
  NAMECALL R9 R0 K33 ["addErosion"]
  CALL R9 1 0
  LOADN R11 1
  GETTABLEKS R9 R0 K29 ["_sliceX"]
  LOADN R10 1
  FORNPREP R9
  LOADN R14 1
  GETTABLEKS R12 R0 K30 ["_sliceZ"]
  LOADN R13 1
  FORNPREP R12
  MOVE R17 R11
  MOVE R18 R14
  NAMECALL R15 R0 K32 ["getIndex"]
  CALL R15 3 1
  GETTABLEKS R16 R0 K31 ["_noiseMap"]
  GETTABLE R17 R16 R15
  GETTABLE R18 R8 R15
  ADD R17 R17 R18
  SETTABLE R17 R16 R15
  FORNLOOP R12
  FORNLOOP R9
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  MUL R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["_heightMap"]
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  LOADN R6 1
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  LOADN R5 1
  FORNPREP R4
  MOVE R9 R3
  MOVE R10 R6
  NAMECALL R7 R0 K6 ["getIndex"]
  CALL R7 3 1
  GETTABLEKS R10 R0 K7 ["_noiseMap"]
  GETTABLE R9 R10 R7
  LOADN R10 255
  LOADN R11 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R8 K10 [math.clamp]
  CALL R8 3 1
  GETTABLEKS R10 R0 K11 ["_sliceY"]
  MUL R9 R10 R8
  GETTABLEKS R10 R0 K5 ["_heightMap"]
  MOVE R12 R9
  LOADN R13 0
  GETTABLEKS R14 R0 K11 ["_sliceY"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R11 K10 [math.clamp]
  CALL R11 3 1
  SETTABLE R11 R10 R7
  FORNLOOP R4
  FORNLOOP R1
  RETURN R0 0

PROTO_5:
  GETIMPORT R2 K2 [table.create]
  GETTABLEKS R4 R0 K3 ["_sliceX"]
  GETTABLEKS R5 R0 K4 ["_sliceZ"]
  MUL R3 R4 R5
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_blendingFactorMap"]
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+33]
  DUPTABLE R2 K11 [{"CurveWidth", "Distance", "PreserveDistance", "PreserveRatio", "RoundCorner"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["CurveWidth"]
  LOADN R5 1
  SUB R4 R5 R1
  MULK R3 R4 K12 [0.9]
  SETTABLEKS R3 R2 K7 ["Distance"]
  LOADK R4 K13 [0.5]
  DIVK R5 R1 K14 [5]
  SUB R3 R4 R5
  SETTABLEKS R3 R2 K8 ["PreserveDistance"]
  LOADN R3 0
  SETTABLEKS R3 R2 K9 ["PreserveRatio"]
  LOADN R3 1
  SETTABLEKS R3 R2 K10 ["RoundCorner"]
  GETUPVAL R3 0
  GETIMPORT R4 K17 [Vector2.new]
  GETTABLEKS R5 R0 K3 ["_sliceX"]
  GETTABLEKS R6 R0 K4 ["_sliceZ"]
  CALL R4 2 1
  MOVE R5 R2
  CALL R3 2 1
  SETTABLEKS R3 R0 K5 ["_blendingFactorMap"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["BaseStamp"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["VoxelResolution"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["BuildSettings"]
  GETTABLEKS R6 R4 K14 ["Category"]
  GETTABLEKS R7 R4 K15 ["TerrainType"]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K17 ["Generation"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K18 ["GetBlendingFactorMap"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R8 K19 ["GetGaussianHillHeight"]
  CALL R10 1 1
  GETTABLEKS R13 R7 K20 ["Mountain"]
  NAMECALL R11 R1 K21 ["new"]
  CALL R11 2 1
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K23 ["init"]
  DUPCLOSURE R12 K24 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K25 ["getHeightGradient"]
  DUPCLOSURE R12 K26 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K27 ["addErosion"]
  DUPCLOSURE R12 K28 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K29 ["generateNoiseMap"]
  DUPCLOSURE R12 K30 [PROTO_4]
  SETTABLEKS R12 R11 K31 ["generateHeightMap"]
  DUPCLOSURE R12 K32 [PROTO_5]
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K33 ["updateBlendingFactorMap"]
  RETURN R11 1
