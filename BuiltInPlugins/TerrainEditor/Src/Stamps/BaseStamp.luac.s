PROTO_0:
  DUPTABLE R2 K1 [{"_terrainType"}]
  SETTABLEKS R1 R2 K0 ["_terrainType"]
  FASTCALL2 SETMETATABLE R2 R0 [+5]
  MOVE R4 R2
  MOVE R5 R0
  GETIMPORT R3 K3 [setmetatable]
  CALL R3 2 0
  SETTABLEKS R0 R0 K4 ["__index"]
  RETURN R2 1

PROTO_1:
  SETTABLEKS R2 R0 K0 ["_services"]
  SETTABLEKS R1 R0 K1 ["_payload"]
  NAMECALL R3 R0 K2 ["setupRegion"]
  CALL R3 1 0
  RETURN R0 1

PROTO_2:
  JUMPIFNOT R2 [+51]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["OperationSource"]
  GETTABLE R3 R4 R5
  JUMPIFNOTEQKS R3 K2 ["Gizmo"] [+42]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Transform"]
  GETTABLE R3 R4 R5
  GETTABLEKS R6 R0 K4 ["_payload"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["BuildSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Transform"]
  GETTABLE R4 R5 R6
  JUMPIFNOTEQ R3 R4 [+22]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLE R3 R4 R5
  GETTABLEKS R6 R0 K4 ["_payload"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["BuildSettings"]
  GETTABLE R5 R6 R7
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Size"]
  GETTABLE R4 R5 R6
  JUMPIFNOTEQ R3 R4 [+2]
  RETURN R0 0
  SETTABLEKS R1 R0 K4 ["_payload"]
  JUMPIFNOT R2 [+39]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Transform"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+8]
  GETTABLEKS R5 R0 K6 ["_region"]
  NAMECALL R3 R0 K7 ["revertRegion"]
  CALL R3 2 0
  NAMECALL R3 R0 K8 ["setupRegion"]
  CALL R3 1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["BuildSettings"]
  GETTABLE R4 R2 R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["BlendingEdge"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+4]
  MOVE R6 R3
  NAMECALL R4 R0 K10 ["updateBlendingFactorMap"]
  CALL R4 2 0
  NAMECALL R3 R0 K11 ["generateStamp"]
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_terrainType"]
  RETURN R1 1

PROTO_4:
  GETTABLEKS R4 R0 K0 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Transform"]
  GETTABLE R2 R3 R4
  GETTABLEKS R1 R2 K3 ["Position"]
  GETTABLEKS R5 R0 K0 ["_payload"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["BuildSettings"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLE R3 R4 R5
  DIVK R2 R3 K4 [2]
  GETIMPORT R3 K8 [Region3.new]
  SUB R4 R1 R2
  ADD R5 R1 R2
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["_region"]
  GETTABLEKS R3 R0 K9 ["_region"]
  GETUPVAL R5 2
  NAMECALL R3 R3 K10 ["ExpandToGrid"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K9 ["_region"]
  GETTABLEKS R6 R0 K9 ["_region"]
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLEKS R4 R5 K11 ["X"]
  GETUPVAL R5 2
  DIV R3 R4 R5
  SETTABLEKS R3 R0 K12 ["_sliceX"]
  GETTABLEKS R6 R0 K9 ["_region"]
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLEKS R4 R5 K13 ["Y"]
  GETUPVAL R5 2
  DIV R3 R4 R5
  SETTABLEKS R3 R0 K14 ["_sliceY"]
  GETTABLEKS R6 R0 K9 ["_region"]
  GETTABLEKS R5 R6 K5 ["Size"]
  GETTABLEKS R4 R5 K15 ["Z"]
  GETUPVAL R5 2
  DIV R3 R4 R5
  SETTABLEKS R3 R0 K16 ["_sliceZ"]
  GETTABLEKS R5 R0 K9 ["_region"]
  NAMECALL R3 R0 K17 ["cacheRegion"]
  CALL R3 2 0
  GETTABLEKS R7 R0 K0 ["_payload"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["BuildSettings"]
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K18 ["BlendingEdge"]
  GETTABLE R5 R6 R7
  NAMECALL R3 R0 K19 ["updateBlendingFactorMap"]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R5 R0 K0 ["_sliceZ"]
  SUBK R6 R1 K1 [1]
  MUL R4 R5 R6
  ADD R3 R4 R2
  RETURN R3 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_region"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R2 R0 K0 ["_region"]
  GETTABLEKS R1 R2 K1 ["Size"]
  GETIMPORT R2 K4 [Vector3.zero]
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 0
  GETTABLEKS R4 R0 K5 ["_payload"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["BuildSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["BlendingEdge"]
  GETTABLE R2 R3 R4
  LOADN R3 0
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  SETTABLEKS R1 R0 K8 ["_addBlending"]
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K12 ["TG_GenerateNoise"]
  CALL R1 1 0
  NAMECALL R1 R0 K13 ["generateNoiseMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K16 ["TG_GenerateHeight"]
  CALL R1 1 0
  NAMECALL R1 R0 K17 ["generateHeightMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K18 ["TG_BlendHeight"]
  CALL R1 1 0
  NAMECALL R1 R0 K19 ["blendHeightMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K20 ["TG_GenerateOccupancyMap"]
  CALL R1 1 0
  NAMECALL R1 R0 K21 ["generateOccupancyMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K22 ["TG_GenerateSlopeMap"]
  CALL R1 1 0
  NAMECALL R1 R0 K23 ["generateSlopeMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K24 ["TG_GenerateMaterial"]
  CALL R1 1 0
  NAMECALL R1 R0 K25 ["generateMaterialMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETTABLEKS R1 R0 K8 ["_addBlending"]
  JUMPIFNOT R1 [+10]
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K26 ["TG_BlendMaterialMap"]
  CALL R1 1 0
  NAMECALL R1 R0 K27 ["blendMaterialMap"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETIMPORT R1 K11 [debug.profilebegin]
  LOADK R2 K28 ["TG_PostProcessing"]
  CALL R1 1 0
  NAMECALL R1 R0 K29 ["postProcessing"]
  CALL R1 1 0
  GETIMPORT R1 K15 [debug.profileend]
  CALL R1 0 0
  GETTABLEKS R2 R0 K30 ["_services"]
  GETTABLEKS R1 R2 K31 ["Terrain"]
  GETTABLEKS R3 R0 K0 ["_region"]
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K32 ["_materialMap"]
  GETTABLEKS R6 R0 K33 ["_occupancyMap"]
  NAMECALL R1 R1 K34 ["WriteVoxels"]
  CALL R1 5 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  MUL R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["_noiseMap"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Amplitude"]
  GETTABLE R1 R2 R3
  DIVK R2 R1 K3 [2]
  GETTABLEKS R4 R0 K4 ["_sliceY"]
  LOADN R6 1
  SUB R5 R6 R2
  MUL R3 R4 R5
  GETIMPORT R4 K7 [table.create]
  GETTABLEKS R6 R0 K8 ["_sliceX"]
  GETTABLEKS R7 R0 K9 ["_sliceZ"]
  MUL R5 R6 R7
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R0 K10 ["_heightMap"]
  LOADN R6 1
  GETTABLEKS R4 R0 K8 ["_sliceX"]
  LOADN R5 1
  FORNPREP R4
  LOADN R9 1
  GETTABLEKS R7 R0 K9 ["_sliceZ"]
  LOADN R8 1
  FORNPREP R7
  MOVE R12 R6
  MOVE R13 R9
  NAMECALL R10 R0 K11 ["getIndex"]
  CALL R10 3 1
  GETTABLEKS R12 R0 K12 ["_noiseMap"]
  GETTABLE R11 R12 R10
  GETTABLEKS R14 R0 K4 ["_sliceY"]
  MUL R13 R14 R2
  MUL R12 R13 R11
  ADD R13 R3 R12
  GETTABLEKS R14 R0 K10 ["_heightMap"]
  MOVE R16 R13
  LOADN R17 1
  GETTABLEKS R18 R0 K4 ["_sliceY"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R15 K15 [math.clamp]
  CALL R15 3 1
  SETTABLE R15 R14 R10
  FORNLOOP R7
  FORNLOOP R4
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  MUL R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["_slopeMap"]
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R3 R0 K3 ["_sliceX"]
  GETTABLEKS R4 R0 K4 ["_sliceZ"]
  MUL R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["_minNeighborHeight"]
  NEWTABLE R1 0 8
  NEWTABLE R2 0 2
  LOADN R3 255
  LOADN R4 0
  SETLIST R2 R3 2 [1]
  NEWTABLE R3 0 2
  LOADN R4 1
  LOADN R5 0
  SETLIST R3 R4 2 [1]
  NEWTABLE R4 0 2
  LOADN R5 0
  LOADN R6 255
  SETLIST R4 R5 2 [1]
  NEWTABLE R5 0 2
  LOADN R6 0
  LOADN R7 1
  SETLIST R5 R6 2 [1]
  NEWTABLE R6 0 2
  LOADN R7 255
  LOADN R8 255
  SETLIST R6 R7 2 [1]
  NEWTABLE R7 0 2
  LOADN R8 255
  LOADN R9 1
  SETLIST R7 R8 2 [1]
  NEWTABLE R8 0 2
  LOADN R9 1
  LOADN R10 255
  SETLIST R8 R9 2 [1]
  NEWTABLE R9 0 2
  LOADN R10 1
  LOADN R11 1
  SETLIST R9 R10 2 [1]
  SETLIST R1 R2 8 [1]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+108]
  LOADN R4 1
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R5 R0 K4 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R4
  MOVE R11 R7
  NAMECALL R8 R0 K7 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R11 R0 K8 ["_heightMap"]
  GETTABLE R10 R11 R8
  FASTCALL1 MATH_FLOOR R10 [+2]
  GETIMPORT R9 K11 [math.floor]
  CALL R9 1 1
  LOADN R10 0
  LOADN R11 0
  GETTABLEKS R12 R0 K6 ["_minNeighborHeight"]
  SETTABLE R9 R12 R8
  MOVE R12 R1
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  GETTABLEN R18 R16 1
  ADD R17 R4 R18
  GETTABLEN R19 R16 2
  ADD R18 R7 R19
  LOADB R19 0
  LOADN R20 0
  JUMPIFNOTLT R20 R17 [+16]
  LOADB R19 0
  GETTABLEKS R20 R0 K3 ["_sliceX"]
  JUMPIFNOTLE R17 R20 [+11]
  LOADB R19 0
  LOADN R20 0
  JUMPIFNOTLT R20 R18 [+7]
  GETTABLEKS R20 R0 K4 ["_sliceZ"]
  JUMPIFLE R18 R20 [+2]
  LOADB R19 0 +1
  LOADB R19 1
  JUMPIFNOT R19 [+9]
  GETTABLEKS R21 R0 K8 ["_heightMap"]
  MOVE R24 R17
  MOVE R25 R18
  NAMECALL R22 R0 K7 ["getIndex"]
  CALL R22 3 1
  GETTABLE R20 R21 R22
  JUMP [+1]
  LOADN R20 0
  GETTABLEKS R21 R0 K6 ["_minNeighborHeight"]
  GETTABLEKS R24 R0 K6 ["_minNeighborHeight"]
  GETTABLE R23 R24 R8
  FASTCALL1 MATH_FLOOR R20 [+3]
  MOVE R25 R20
  GETIMPORT R24 K11 [math.floor]
  CALL R24 1 1
  FASTCALL2 MATH_MIN R23 R24 [+3]
  GETIMPORT R22 K13 [math.min]
  CALL R22 2 1
  SETTABLE R22 R21 R8
  GETTABLEN R21 R16 1
  JUMPIFEQKN R21 K14 [0] [+4]
  GETTABLEN R21 R16 2
  JUMPIFNOTEQKN R21 K14 [0] [+9]
  JUMPIFNOT R19 [+7]
  SUB R22 R20 R9
  FASTCALL1 MATH_ABS R22 [+2]
  GETIMPORT R21 K16 [math.abs]
  CALL R21 1 1
  ADD R10 R10 R21
  ADDK R11 R11 K17 [1]
  FORGLOOP R12 2 [-65]
  GETTABLEKS R12 R0 K5 ["_slopeMap"]
  DIV R14 R10 R11
  FASTCALL1 MATH_ATAN R14 [+2]
  GETIMPORT R13 K19 [math.atan]
  CALL R13 1 1
  SETTABLE R13 R12 R8
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0
  LOADN R4 1
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R5 R0 K4 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R4
  MOVE R11 R7
  NAMECALL R8 R0 K7 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R10 R0 K8 ["_heightMap"]
  GETTABLE R9 R10 R8
  GETTABLEKS R10 R0 K3 ["_sliceX"]
  LOADN R11 1
  JUMPIFNOTLT R11 R10 [+42]
  SUBK R11 R4 K17 [1]
  LOADN R12 1
  GETTABLEKS R13 R0 K3 ["_sliceX"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R10 K21 [math.clamp]
  CALL R10 3 1
  ADDK R12 R4 K17 [1]
  LOADN R13 1
  GETTABLEKS R14 R0 K3 ["_sliceX"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R11 K21 [math.clamp]
  CALL R11 3 1
  GETTABLEKS R13 R0 K3 ["_sliceX"]
  JUMPIFNOTLT R4 R13 [+11]
  GETTABLEKS R14 R0 K8 ["_heightMap"]
  MOVE R17 R11
  MOVE R18 R7
  NAMECALL R15 R0 K7 ["getIndex"]
  CALL R15 3 1
  GETTABLE R13 R14 R15
  SUB R12 R13 R9
  JUMP [+9]
  GETTABLEKS R14 R0 K8 ["_heightMap"]
  MOVE R17 R10
  MOVE R18 R7
  NAMECALL R15 R0 K7 ["getIndex"]
  CALL R15 3 1
  GETTABLE R13 R14 R15
  SUB R12 R9 R13
  SETGLOBAL R12 K22 ["dx"]
  GETTABLEKS R10 R0 K4 ["_sliceZ"]
  LOADN R11 1
  JUMPIFNOTLT R11 R10 [+42]
  SUBK R11 R7 K17 [1]
  LOADN R12 1
  GETTABLEKS R13 R0 K4 ["_sliceZ"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R10 K21 [math.clamp]
  CALL R10 3 1
  ADDK R12 R7 K17 [1]
  LOADN R13 1
  GETTABLEKS R14 R0 K4 ["_sliceZ"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R11 K21 [math.clamp]
  CALL R11 3 1
  GETTABLEKS R13 R0 K4 ["_sliceZ"]
  JUMPIFNOTLT R7 R13 [+11]
  GETTABLEKS R14 R0 K8 ["_heightMap"]
  MOVE R17 R4
  MOVE R18 R11
  NAMECALL R15 R0 K7 ["getIndex"]
  CALL R15 3 1
  GETTABLE R13 R14 R15
  SUB R12 R13 R9
  JUMP [+9]
  GETTABLEKS R14 R0 K8 ["_heightMap"]
  MOVE R17 R4
  MOVE R18 R10
  NAMECALL R15 R0 K7 ["getIndex"]
  CALL R15 3 1
  GETTABLE R13 R14 R15
  SUB R12 R9 R13
  SETGLOBAL R12 K23 ["dz"]
  GETTABLEKS R10 R0 K5 ["_slopeMap"]
  GETGLOBAL R15 K22 ["dx"]
  FASTCALL1 MATH_ABS R15 [+2]
  GETIMPORT R14 K16 [math.abs]
  CALL R14 1 1
  GETGLOBAL R16 K23 ["dz"]
  FASTCALL1 MATH_ABS R16 [+2]
  GETIMPORT R15 K16 [math.abs]
  CALL R15 1 1
  ADD R13 R14 R15
  DIVK R12 R13 K24 [2]
  FASTCALL1 MATH_ATAN R12 [+2]
  GETIMPORT R11 K19 [math.atan]
  CALL R11 1 1
  SETTABLE R11 R10 R8
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K2 [table.create]
  GETTABLEKS R2 R0 K3 ["_sliceX"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["_occupancyMap"]
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R4 R0 K4 ["_occupancyMap"]
  GETIMPORT R5 K2 [table.create]
  GETTABLEKS R6 R0 K5 ["_sliceY"]
  CALL R5 1 1
  SETTABLE R5 R4 R3
  LOADN R6 1
  GETTABLEKS R4 R0 K5 ["_sliceY"]
  LOADN R5 1
  FORNPREP R4
  GETTABLEKS R8 R0 K4 ["_occupancyMap"]
  GETTABLE R7 R8 R3
  GETIMPORT R8 K2 [table.create]
  GETTABLEKS R9 R0 K6 ["_sliceZ"]
  LOADN R10 0
  CALL R8 2 1
  SETTABLE R8 R7 R6
  FORNLOOP R4
  FORNLOOP R1
  LOADN R3 1
  GETTABLEKS R1 R0 K3 ["_sliceX"]
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R5 R0 K4 ["_occupancyMap"]
  GETTABLE R4 R5 R3
  LOADN R7 1
  GETTABLEKS R5 R0 K6 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R3
  MOVE R11 R7
  NAMECALL R8 R0 K7 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R10 R0 K8 ["_heightMap"]
  GETTABLE R9 R10 R8
  FASTCALL1 MATH_FLOOR R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K11 [math.floor]
  CALL R10 1 1
  LOADN R13 1
  MOVE R11 R10
  LOADN R12 1
  FORNPREP R11
  GETTABLE R14 R4 R13
  LOADN R15 1
  SETTABLE R15 R14 R7
  FORNLOOP R11
  ADDK R13 R10 K12 [1]
  GETTABLEKS R14 R0 K5 ["_sliceY"]
  FASTCALL2 MATH_MIN R13 R14 [+3]
  GETIMPORT R12 K14 [math.min]
  CALL R12 2 1
  GETTABLE R11 R4 R12
  SUB R12 R9 R10
  SETTABLE R12 R11 R7
  FORNLOOP R5
  FORNLOOP R1
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+131]
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["MaterialLUT"]
  GETTABLE R1 R2 R3
  GETIMPORT R2 K5 [table.create]
  GETTABLEKS R3 R0 K6 ["_sliceX"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K7 ["_materialMap"]
  LOADN R4 1
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R5 R0 K7 ["_materialMap"]
  GETIMPORT R6 K5 [table.create]
  GETTABLEKS R7 R0 K8 ["_sliceY"]
  CALL R6 1 1
  SETTABLE R6 R5 R4
  LOADN R7 1
  GETTABLEKS R5 R0 K8 ["_sliceY"]
  LOADN R6 1
  FORNPREP R5
  GETTABLEKS R9 R0 K7 ["_materialMap"]
  GETTABLE R8 R9 R4
  GETIMPORT R9 K5 [table.create]
  GETTABLEKS R10 R0 K9 ["_sliceZ"]
  GETTABLEKS R11 R1 K10 ["defaultMaterial"]
  CALL R9 2 1
  SETTABLE R9 R8 R7
  FORNLOOP R5
  FORNLOOP R2
  LOADN R4 1
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  GETTABLEKS R6 R0 K7 ["_materialMap"]
  GETTABLE R5 R6 R4
  LOADN R8 1
  GETTABLEKS R6 R0 K9 ["_sliceZ"]
  LOADN R7 1
  FORNPREP R6
  MOVE R11 R4
  MOVE R12 R8
  NAMECALL R9 R0 K11 ["getIndex"]
  CALL R9 3 1
  LOADN R11 1
  GETTABLEKS R14 R0 K13 ["_minNeighborHeight"]
  GETTABLE R13 R14 R9
  SUBK R12 R13 K12 [1]
  FASTCALL2 MATH_MAX R11 R12 [+3]
  GETIMPORT R10 K16 [math.max]
  CALL R10 2 1
  GETTABLEKS R14 R0 K17 ["_heightMap"]
  GETTABLE R13 R14 R9
  FASTCALL1 MATH_CEIL R13 [+2]
  GETIMPORT R12 K19 [math.ceil]
  CALL R12 1 1
  GETTABLEKS R13 R0 K8 ["_sliceY"]
  FASTCALL2 MATH_MIN R12 R13 [+3]
  GETIMPORT R11 K21 [math.min]
  CALL R11 2 1
  GETTABLEKS R15 R0 K22 ["_slopeMap"]
  GETTABLE R14 R15 R9
  NAMECALL R12 R1 K23 ["GetSlopeIndex"]
  CALL R12 2 1
  GETTABLEKS R13 R0 K24 ["_fillBottomPositions"]
  JUMPIFNOT R13 [+15]
  GETTABLEKS R14 R0 K24 ["_fillBottomPositions"]
  GETTABLE R13 R14 R9
  JUMPIFNOT R13 [+11]
  LOADN R15 1
  GETTABLEKS R13 R0 K8 ["_sliceY"]
  LOADN R14 1
  FORNPREP R13
  GETTABLE R16 R5 R15
  GETTABLEKS R17 R1 K25 ["fillMaterial"]
  SETTABLE R17 R16 R8
  FORNLOOP R13
  JUMP [+14]
  MOVE R15 R10
  MOVE R13 R11
  LOADN R14 1
  FORNPREP R13
  GETTABLE R16 R5 R15
  SUBK R19 R15 K26 [0.5]
  GETTABLEKS R20 R0 K8 ["_sliceY"]
  MOVE R21 R12
  NAMECALL R17 R1 K27 ["GetValueByIndex"]
  CALL R17 4 1
  SETTABLE R17 R16 R8
  FORNLOOP R13
  FORNLOOP R6
  FORNLOOP R2
  RETURN R0 0
  GETIMPORT R1 K5 [table.create]
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["_materialMap"]
  GETTABLEKS R3 R0 K0 ["_payload"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BuildSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K28 ["Material"]
  GETTABLE R1 R2 R3
  DUPTABLE R2 K34 [{"HeightInPercentage", "HeightInStud", "Position", "Slope", "FillBottom"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K29 ["HeightInPercentage"]
  LOADN R3 0
  SETTABLEKS R3 R2 K30 ["HeightInStud"]
  GETIMPORT R3 K37 [Vector3.zero]
  SETTABLEKS R3 R2 K31 ["Position"]
  LOADN R3 0
  SETTABLEKS R3 R2 K32 ["Slope"]
  LOADB R3 0
  SETTABLEKS R3 R2 K33 ["FillBottom"]
  LOADN R5 1
  GETTABLEKS R3 R0 K6 ["_sliceX"]
  LOADN R4 1
  FORNPREP R3
  GETTABLEKS R6 R0 K7 ["_materialMap"]
  GETIMPORT R7 K5 [table.create]
  GETTABLEKS R8 R0 K8 ["_sliceY"]
  CALL R7 1 1
  SETTABLE R7 R6 R5
  LOADN R8 1
  GETTABLEKS R6 R0 K8 ["_sliceY"]
  LOADN R7 1
  FORNPREP R6
  GETTABLEKS R10 R0 K7 ["_materialMap"]
  GETTABLE R9 R10 R5
  GETIMPORT R10 K5 [table.create]
  GETTABLEKS R11 R0 K9 ["_sliceZ"]
  GETIMPORT R12 K40 [Enum.Material.Air]
  CALL R10 2 1
  SETTABLE R10 R9 R8
  LOADN R11 1
  GETTABLEKS R9 R0 K9 ["_sliceZ"]
  LOADN R10 1
  FORNPREP R9
  JUMPIFNOT R1 [+59]
  SUBK R13 R8 K26 [0.5]
  GETTABLEKS R14 R0 K8 ["_sliceY"]
  DIV R12 R13 R14
  SETTABLEKS R12 R2 K29 ["HeightInPercentage"]
  SUBK R13 R8 K26 [0.5]
  GETUPVAL R14 3
  MUL R12 R13 R14
  SETTABLEKS R12 R2 K30 ["HeightInStud"]
  MOVE R13 R5
  MOVE R14 R8
  MOVE R15 R11
  FASTCALL VECTOR [+2]
  GETIMPORT R12 K42 [Vector3.new]
  CALL R12 3 1
  SETTABLEKS R12 R2 K31 ["Position"]
  GETTABLEKS R13 R0 K22 ["_slopeMap"]
  MOVE R16 R5
  MOVE R17 R11
  NAMECALL R14 R0 K11 ["getIndex"]
  CALL R14 3 1
  GETTABLE R12 R13 R14
  SETTABLEKS R12 R2 K32 ["Slope"]
  GETTABLEKS R13 R0 K24 ["_fillBottomPositions"]
  JUMPIFNOT R13 [+9]
  GETTABLEKS R13 R0 K24 ["_fillBottomPositions"]
  MOVE R16 R5
  MOVE R17 R11
  NAMECALL R14 R0 K11 ["getIndex"]
  CALL R14 3 1
  GETTABLE R12 R13 R14
  JUMP [+1]
  LOADB R12 0
  SETTABLEKS R12 R2 K33 ["FillBottom"]
  GETTABLEKS R14 R0 K7 ["_materialMap"]
  GETTABLE R13 R14 R5
  GETTABLE R12 R13 R8
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K43 ["FromPreset"]
  MOVE R14 R1
  MOVE R15 R2
  CALL R13 2 1
  JUMPIF R13 [+1]
  GETUPVAL R13 5
  SETTABLE R13 R12 R11
  JUMP [+6]
  GETTABLEKS R14 R0 K7 ["_materialMap"]
  GETTABLE R13 R14 R5
  GETTABLE R12 R13 R8
  GETUPVAL R13 5
  SETTABLE R13 R12 R11
  FORNLOOP R9
  FORNLOOP R6
  FORNLOOP R3
  RETURN R0 0

PROTO_12:
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
  LOADK R4 K13 [0.7]
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

PROTO_13:
  LOADN R3 1
  GETTABLEKS R4 R0 K0 ["_heightMap"]
  LENGTH R1 R4
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R5 R0 K0 ["_heightMap"]
  GETTABLE R4 R5 R3
  GETTABLEKS R6 R0 K1 ["_heightmapCache"]
  GETTABLE R5 R6 R3
  JUMPIFNOTLT R4 R5 [+6]
  MOVE R4 R5
  GETTABLEKS R6 R0 K0 ["_heightMap"]
  SETTABLE R5 R6 R3
  JUMP [+14]
  GETTABLEKS R6 R0 K2 ["_addBlending"]
  JUMPIFNOT R6 [+11]
  GETTABLEKS R7 R0 K3 ["_blendingFactorMap"]
  GETTABLE R6 R7 R3
  GETTABLEKS R7 R0 K0 ["_heightMap"]
  LOADN R11 1
  SUB R10 R11 R6
  MUL R9 R10 R4
  MUL R10 R6 R5
  ADD R8 R9 R10
  SETTABLE R8 R7 R3
  FORNLOOP R1
  RETURN R0 0

PROTO_14:
  DUPTABLE R1 K3 [{"BlendingFactor", "EdgePosition", "Width"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["BlendingFactor"]
  LOADK R2 K4 [0.8]
  SETTABLEKS R2 R1 K1 ["EdgePosition"]
  LOADK R2 K5 [0.2]
  SETTABLEKS R2 R1 K2 ["Width"]
  LOADN R4 1
  GETTABLEKS R2 R0 K6 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R5 R0 K7 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R4
  MOVE R11 R7
  NAMECALL R8 R0 K8 ["getIndex"]
  CALL R8 3 1
  LOADN R10 1
  GETTABLEKS R13 R0 K10 ["_minNeighborHeight"]
  GETTABLE R12 R13 R8
  SUBK R11 R12 K9 [1]
  FASTCALL2 MATH_MAX R10 R11 [+3]
  GETIMPORT R9 K13 [math.max]
  CALL R9 2 1
  GETTABLEKS R13 R0 K14 ["_heightMap"]
  GETTABLE R12 R13 R8
  FASTCALL1 MATH_CEIL R12 [+2]
  GETIMPORT R11 K16 [math.ceil]
  CALL R11 1 1
  GETTABLEKS R12 R0 K17 ["_sliceY"]
  FASTCALL2 MATH_MIN R11 R12 [+3]
  GETIMPORT R10 K19 [math.min]
  CALL R10 2 1
  GETTABLEKS R12 R0 K20 ["_blendingFactorMap"]
  GETTABLE R11 R12 R8
  SETTABLEKS R11 R1 K0 ["BlendingFactor"]
  MOVE R13 R9
  MOVE R11 R10
  LOADN R12 1
  FORNPREP R11
  GETTABLEKS R17 R0 K21 ["_materialMap"]
  GETTABLE R16 R17 R4
  GETTABLE R15 R16 R13
  GETTABLE R14 R15 R7
  GETTABLEKS R18 R0 K22 ["_materialCache"]
  GETTABLE R17 R18 R4
  GETTABLE R16 R17 R13
  GETTABLE R15 R16 R7
  GETIMPORT R16 K26 [Enum.Material.Air]
  JUMPIFEQ R15 R16 [+13]
  GETTABLEKS R18 R0 K21 ["_materialMap"]
  GETTABLE R17 R18 R4
  GETTABLE R16 R17 R13
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K27 ["Blend"]
  MOVE R18 R14
  MOVE R19 R15
  MOVE R20 R1
  CALL R17 3 1
  SETTABLE R17 R16 R7
  FORNLOOP R11
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0

PROTO_15:
  RETURN R0 0

PROTO_16:
  NAMECALL R1 R0 K0 ["clearRegionCache"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R3 R0 K0 ["_region"]
  NAMECALL R1 R0 K1 ["revertRegion"]
  CALL R1 2 0
  NAMECALL R1 R0 K2 ["clearRegionCache"]
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R3 R0 K0 ["_services"]
  GETTABLEKS R2 R3 K1 ["Terrain"]
  MOVE R4 R1
  GETUPVAL R5 0
  NAMECALL R2 R2 K2 ["ReadVoxels"]
  CALL R2 3 2
  SETTABLEKS R2 R0 K3 ["_materialCache"]
  SETTABLEKS R3 R0 K4 ["_occupancyCache"]
  GETIMPORT R2 K7 [table.create]
  GETTABLEKS R4 R0 K8 ["_sliceX"]
  GETTABLEKS R5 R0 K9 ["_sliceZ"]
  MUL R3 R4 R5
  LOADN R4 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["_heightmapCache"]
  LOADN R4 1
  GETTABLEKS R2 R0 K8 ["_sliceX"]
  LOADN R3 1
  FORNPREP R2
  LOADN R7 1
  GETTABLEKS R5 R0 K9 ["_sliceZ"]
  LOADN R6 1
  FORNPREP R5
  MOVE R10 R4
  MOVE R11 R7
  NAMECALL R8 R0 K11 ["getIndex"]
  CALL R8 3 1
  GETTABLEKS R11 R0 K12 ["_sliceY"]
  LOADN R9 1
  LOADN R10 255
  FORNPREP R9
  GETTABLEKS R15 R0 K4 ["_occupancyCache"]
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R11
  GETTABLE R12 R13 R7
  JUMPIFEQKN R12 K13 [0] [+21]
  GETTABLEKS R15 R0 K3 ["_materialCache"]
  GETTABLE R14 R15 R4
  GETTABLE R13 R14 R11
  GETTABLE R12 R13 R7
  GETIMPORT R13 K17 [Enum.Material.Air]
  JUMPIFEQ R12 R13 [+12]
  GETTABLEKS R12 R0 K10 ["_heightmapCache"]
  SUBK R14 R11 K18 [1]
  GETTABLEKS R18 R0 K4 ["_occupancyCache"]
  GETTABLE R17 R18 R4
  GETTABLE R16 R17 R11
  GETTABLE R15 R16 R7
  ADD R13 R14 R15
  SETTABLE R13 R12 R8
  JUMP [+1]
  FORNLOOP R9
  FORNLOOP R5
  FORNLOOP R2
  RETURN R0 0

PROTO_19:
  JUMPIFNOT R1 [+19]
  GETTABLEKS R2 R0 K0 ["_materialCache"]
  JUMPIFNOT R2 [+16]
  GETTABLEKS R2 R0 K1 ["_occupancyCache"]
  JUMPIFNOT R2 [+13]
  GETTABLEKS R3 R0 K2 ["_services"]
  GETTABLEKS R2 R3 K3 ["Terrain"]
  MOVE R4 R1
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["_materialCache"]
  GETTABLEKS R7 R0 K1 ["_occupancyCache"]
  NAMECALL R2 R2 K4 ["WriteVoxels"]
  CALL R2 5 0
  RETURN R0 0

PROTO_20:
  LOADNIL R1
  LOADNIL R2
  SETTABLEKS R1 R0 K0 ["_materialCache"]
  SETTABLEKS R2 R0 K1 ["_occupancyCache"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_heightmapCache"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["VoxelResolution"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K11 ["BuildSettings"]
  GETTABLEKS R5 R3 K12 ["Category"]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Generation"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K15 ["GetBlendingFactorMap"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K16 ["GetMaterial"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K17 ["Flags"]
  GETTABLEKS R10 R11 K18 ["getFFlagUseMaterialLUT"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K13 ["Util"]
  GETTABLEKS R12 R13 K14 ["Generation"]
  GETTABLEKS R11 R12 K19 ["MaterialLUT"]
  CALL R10 1 1
  GETIMPORT R11 K23 [Enum.Material.Ground]
  NEWTABLE R12 32 0
  SETTABLEKS R12 R12 K24 ["__index"]
  DUPCLOSURE R13 K25 [PROTO_0]
  SETTABLEKS R13 R12 K26 ["new"]
  DUPCLOSURE R13 K27 [PROTO_1]
  SETTABLEKS R13 R12 K28 ["init"]
  DUPCLOSURE R13 K29 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K30 ["update"]
  DUPCLOSURE R13 K31 [PROTO_3]
  SETTABLEKS R13 R12 K32 ["getTerrainType"]
  DUPCLOSURE R13 K33 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K34 ["setupRegion"]
  DUPCLOSURE R13 K35 [PROTO_5]
  SETTABLEKS R13 R12 K36 ["getIndex"]
  DUPCLOSURE R13 K37 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K38 ["generateStamp"]
  DUPCLOSURE R13 K39 [PROTO_7]
  SETTABLEKS R13 R12 K40 ["generateNoiseMap"]
  DUPCLOSURE R13 K41 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K42 ["generateHeightMap"]
  DUPCLOSURE R13 K43 [PROTO_9]
  CAPTURE VAL R9
  SETTABLEKS R13 R12 K44 ["generateSlopeMap"]
  DUPCLOSURE R13 K45 [PROTO_10]
  SETTABLEKS R13 R12 K46 ["generateOccupancyMap"]
  DUPCLOSURE R13 K47 [PROTO_11]
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K48 ["generateMaterialMap"]
  DUPCLOSURE R13 K49 [PROTO_12]
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K50 ["updateBlendingFactorMap"]
  DUPCLOSURE R13 K51 [PROTO_13]
  SETTABLEKS R13 R12 K52 ["blendHeightMap"]
  DUPCLOSURE R13 K53 [PROTO_14]
  CAPTURE VAL R8
  SETTABLEKS R13 R12 K54 ["blendMaterialMap"]
  DUPCLOSURE R13 K55 [PROTO_15]
  SETTABLEKS R13 R12 K56 ["postProcessing"]
  DUPCLOSURE R13 K57 [PROTO_16]
  SETTABLEKS R13 R12 K58 ["commit"]
  DUPCLOSURE R13 K59 [PROTO_17]
  SETTABLEKS R13 R12 K60 ["destroy"]
  DUPCLOSURE R13 K61 [PROTO_18]
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K62 ["cacheRegion"]
  DUPCLOSURE R13 K63 [PROTO_19]
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K64 ["revertRegion"]
  DUPCLOSURE R13 K65 [PROTO_20]
  SETTABLEKS R13 R12 K66 ["clearRegionCache"]
  RETURN R12 1
