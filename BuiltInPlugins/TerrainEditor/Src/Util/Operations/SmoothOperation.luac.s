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
  LOADK R3 K8 ["Smooth"]
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
  GETTABLEKS R8 R9 K14 ["BrushShape"]
  GETTABLE R7 R3 R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K0 ["State"]
  GETTABLE R8 R3 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K15 ["IgnoreWater"]
  GETTABLE R9 R3 R10
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K17 ["Strength"]
  GETTABLE R11 R3 R12
  ORK R10 R11 K16 [1]
  LOADB R11 0
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K18 ["Sphere"]
  JUMPIFNOTEQ R7 R12 [+6]
  LOADN R12 2
  JUMPIFLT R12 R6 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K19 ["Cylinder"]
  JUMPIFNOTEQ R7 R13 [+5]
  LOADB R12 1
  LOADN R13 2
  JUMPIFLT R13 R6 [+2]
  MOVE R12 R11
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K18 ["Sphere"]
  JUMPIFNOTEQ R7 R15 [+3]
  MOVE R14 R6
  JUMP [+1]
  MOVE R14 R5
  GETUPVAL R15 4
  MUL R13 R14 R15
  GETUPVAL R15 4
  MUL R14 R6 R15
  MULK R15 R14 K20 [0.5]
  GETUPVAL R16 5
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K21 ["PivotPosition"]
  GETTABLE R17 R3 R18
  GETTABLEKS R18 R8 K22 ["Position"]
  MOVE R19 R13
  CALL R16 3 1
  GETUPVAL R17 6
  GETTABLEKS R18 R2 K22 ["Position"]
  MOVE R19 R16
  MOVE R20 R15
  CALL R17 3 1
  LENGTH R19 R17
  GETTABLE R18 R17 R19
  SETTABLEKS R18 R2 K22 ["Position"]
  MOVE R18 R17
  LOADNIL R19
  LOADNIL R20
  FORGPREP R18
  GETUPVAL R23 7
  MOVE R24 R22
  MOVE R25 R15
  MOVE R26 R13
  CALL R23 3 2
  GETIMPORT R25 K25 [Region3.new]
  MOVE R26 R23
  MOVE R27 R24
  CALL R25 2 1
  GETTABLEKS R28 R24 K26 ["X"]
  GETTABLEKS R29 R23 K26 ["X"]
  SUB R27 R28 R29
  MULK R26 R27 K20 [0.5]
  GETTABLEKS R29 R23 K26 ["X"]
  GETUPVAL R31 4
  MULK R30 R31 K20 [0.5]
  SUB R28 R29 R30
  GETTABLEKS R29 R22 K26 ["X"]
  SUB R27 R28 R29
  GETTABLEKS R30 R23 K27 ["Y"]
  GETUPVAL R32 4
  MULK R31 R32 K20 [0.5]
  SUB R29 R30 R31
  GETTABLEKS R30 R22 K27 ["Y"]
  SUB R28 R29 R30
  GETTABLEKS R31 R23 K28 ["Z"]
  GETUPVAL R33 4
  MULK R32 R33 K20 [0.5]
  SUB R30 R31 R32
  GETTABLEKS R31 R22 K28 ["Z"]
  SUB R29 R30 R31
  LOADNIL R30
  LOADNIL R31
  GETUPVAL R33 8
  GETTABLEKS R32 R33 K29 ["Terrain"]
  MOVE R34 R25
  GETUPVAL R35 4
  NAMECALL R32 R32 K30 ["ReadVoxels"]
  CALL R32 3 2
  GETUPVAL R35 8
  GETTABLEKS R34 R35 K29 ["Terrain"]
  MOVE R36 R25
  GETUPVAL R37 4
  MOVE R38 R10
  NAMECALL R34 R34 K31 ["SmoothRegion"]
  CALL R34 4 2
  LOADNIL R36
  SETTABLEKS R36 R32 K13 ["Size"]
  LOADNIL R36
  SETTABLEKS R36 R33 K13 ["Size"]
  LOADNIL R36
  GETUPVAL R37 9
  CALL R37 0 1
  JUMPIFNOT R37 [+4]
  GETIMPORT R37 K34 [os.clock]
  CALL R37 0 1
  MOVE R36 R37
  MOVE R37 R33
  LOADNIL R38
  LOADNIL R39
  FORGPREP R37
  JUMPIFNOT R12 [+5]
  GETUPVAL R44 4
  MUL R43 R40 R44
  ADD R42 R43 R27
  POWK R30 R42 K35 [2]
  JUMP [+1]
  LOADNIL R30
  GETTABLE R42 R34 R40
  GETTABLE R43 R35 R40
  GETTABLE R44 R32 R40
  MOVE R45 R41
  LOADNIL R46
  LOADNIL R47
  FORGPREP R45
  JUMPIFNOT R11 [+6]
  GETUPVAL R53 4
  MUL R52 R48 R53
  ADD R51 R52 R28
  POWK R50 R51 K35 [2]
  ADD R31 R30 R50
  JUMP [+1]
  LOADNIL R31
  GETTABLE R50 R42 R48
  GETTABLE R51 R43 R48
  GETTABLE R52 R44 R48
  MOVE R53 R49
  LOADNIL R54
  LOADNIL R55
  FORGPREP R53
  GETTABLE R58 R52 R56
  LOADN R59 1
  LOADN R60 1
  JUMPIFNOT R12 [+26]
  GETUPVAL R64 4
  MUL R63 R56 R64
  ADD R62 R63 R29
  POWK R61 R62 K35 [2]
  JUMPIFNOT R11 [+6]
  ADD R63 R31 R61
  FASTCALL1 MATH_SQRT R63 [+2]
  GETIMPORT R62 K38 [math.sqrt]
  CALL R62 1 1
  JUMP [+5]
  ADD R63 R30 R61
  FASTCALL1 MATH_SQRT R63 [+2]
  GETIMPORT R62 K38 [math.sqrt]
  CALL R62 1 1
  GETUPVAL R63 10
  MOVE R64 R62
  MOVE R65 R26
  CALL R63 2 1
  MOVE R59 R63
  GETUPVAL R63 11
  MOVE R64 R62
  MOVE R65 R26
  CALL R63 2 1
  MOVE R60 R63
  JUMPIFNOT R9 [+7]
  GETIMPORT R61 K42 [Enum.Material.Water]
  JUMPIFNOTEQ R58 R61 [+4]
  SETTABLE R57 R43 R56
  SETTABLE R58 R50 R56
  RETURN R0 0
  GETTABLE R61 R50 R56
  LOADB R62 1
  GETIMPORT R63 K44 [Enum.Material.Air]
  JUMPIFEQ R61 R63 [+7]
  GETTABLE R63 R51 R56
  LOADN R64 0
  JUMPIFLE R63 R64 [+2]
  LOADB R62 0 +1
  LOADB R62 1
  GETTABLE R67 R51 R56
  SUB R66 R67 R57
  MUL R65 R66 R10
  MUL R64 R65 R59
  MUL R63 R64 R60
  ADD R65 R57 R63
  LOADN R66 0
  LOADN R67 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R64 K46 [math.clamp]
  CALL R64 3 1
  GETTABLE R65 R51 R56
  JUMPIFEQ R64 R65 [+16]
  SETTABLE R64 R51 R56
  JUMPIFNOT R62 [+7]
  GETUPVAL R66 12
  GETTABLEKS R65 R66 K47 ["MinimumSmooth"]
  JUMPIFNOTLE R65 R64 [+3]
  SETTABLE R58 R50 R56
  JUMP [+6]
  LOADN R65 0
  JUMPIFNOTLE R64 R65 [+4]
  GETIMPORT R65 K44 [Enum.Material.Air]
  SETTABLE R65 R50 R56
  FORGLOOP R53 2 [-81]
  FORGLOOP R45 2 [-98]
  FORGLOOP R37 2 [-114]
  GETUPVAL R37 9
  CALL R37 0 1
  JUMPIFNOT R37 [+10]
  GETUPVAL R40 13
  GETTABLEKS R39 R40 K48 ["NormalizeBrushTimer"]
  MOVE R40 R36
  MOVE R41 R6
  MOVE R42 R5
  CALL R39 3 -1
  NAMECALL R37 R1 K49 ["addTimeStatistic"]
  CALL R37 -1 0
  GETUPVAL R38 8
  GETTABLEKS R37 R38 K29 ["Terrain"]
  MOVE R39 R25
  GETUPVAL R40 4
  MOVE R41 R34
  MOVE R42 R35
  NAMECALL R37 R37 K50 ["WriteVoxels"]
  CALL R37 5 0
  FORGLOOP R18 2 [-216]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K4 ["ProfileTools"]
  CALL R18 0 1
  JUMPIFNOT R18 [+3]
  GETIMPORT R18 K52 [debug.profileend]
  CALL R18 0 0
  LOADB R18 1
  LOADN R19 0
  RETURN R18 2

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ChangeHistoryService"]
  LOADK R4 K1 ["Smooth"]
  NAMECALL R2 R2 K2 ["SetWaypoint"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
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
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  NEWCLOSURE R4 P2
  CAPTURE VAL R1
  GETUPVAL R6 13
  GETTABLEKS R5 R6 K1 ["new"]
  DUPTABLE R6 K7 [{"Budget", "OnFinish", "OnStart", "OnStep", "Name"}]
  LOADK R7 K8 [0.005]
  SETTABLEKS R7 R6 K2 ["Budget"]
  SETTABLEKS R4 R6 K3 ["OnFinish"]
  SETTABLEKS R2 R6 K4 ["OnStart"]
  SETTABLEKS R3 R6 K5 ["OnStep"]
  SETTABLEKS R0 R6 K6 ["Name"]
  CALL R5 1 -1
  RETURN R5 -1

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
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K10 ["Util"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R3 K11 ["AnalyticsHelper"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R3 K12 ["Operations"]
  GETTABLEKS R6 R7 K13 ["BaseOperation"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K14 ["CalculateBrushOccupancy"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K15 ["CalculateMagnitudePercent"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R3 K16 ["ClampVoxelBoundaries"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R3 K17 ["ConvertForPivot"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R3 K18 ["getDraggedPositions"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K19 ["Types"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K20 ["BrushShape"]
  GETTABLEKS R13 R11 K21 ["BrushSettings"]
  GETTABLEKS R14 R11 K22 ["Category"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K6 ["Src"]
  GETTABLEKS R17 R18 K10 ["Util"]
  GETTABLEKS R16 R17 K23 ["DebugFlags"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K24 ["Flags"]
  GETTABLEKS R17 R18 K25 ["getFFlagTerrainEditorTimeStatistic"]
  CALL R16 1 1
  DUPCLOSURE R17 K26 [PROTO_3]
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R17 1
