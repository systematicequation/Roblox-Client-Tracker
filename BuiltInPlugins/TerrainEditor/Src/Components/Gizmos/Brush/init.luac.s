PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R3 R0 K0 ["Value"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  GETTABLE R2 R3 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["BrushShape"]
  GETTABLE R3 R2 R4
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["BrushSize"]
  GETTABLE R4 R2 R5
  GETTABLEKS R6 R4 K4 ["Size"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["VoxelResolution"]
  MUL R5 R6 R7
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K6 ["Sphere"]
  JUMPIFNOTEQ R3 R7 [+3]
  MOVE R6 R5
  JUMP [+6]
  GETTABLEKS R7 R4 K7 ["Height"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["VoxelResolution"]
  MUL R6 R7 R8
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["PlaneLock"]
  GETTABLE R7 R2 R8
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["PlaneTransform"]
  GETTABLE R8 R2 R9
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K10 ["ManualPlaneLock"]
  GETTABLE R9 R2 R10
  GETUPVAL R10 5
  GETTABLEKS R11 R0 K11 ["Tool"]
  GETTABLEKS R12 R0 K0 ["Value"]
  JUMPIFNOT R9 [+7]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K12 ["Manual"]
  JUMPIFNOTEQ R7 R14 [+3]
  DUPCLOSURE R13 K13 [PROTO_0]
  JUMP [+2]
  GETTABLEKS R13 R0 K14 ["Save"]
  CALL R10 3 2
  GETUPVAL R12 7
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K15 ["PivotPosition"]
  GETTABLE R13 R2 R14
  GETTABLEKS R14 R10 K16 ["Position"]
  MOVE R15 R6
  CALL R12 3 1
  GETUPVAL R13 8
  LOADK R15 K17 ["Brush"]
  NAMECALL R13 R13 K18 ["use"]
  CALL R13 2 1
  GETTABLEKS R15 R13 K19 ["CenterRadiusMultiplier"]
  GETTABLEKS R16 R10 K20 ["Distance"]
  MUL R14 R15 R16
  GETTABLEKS R15 R13 K21 ["CenterTransparency"]
  GETTABLEKS R16 R13 K22 ["Color"]
  GETTABLEKS R17 R13 K23 ["MainTransparency"]
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K12 ["Manual"]
  JUMPIFNOTEQ R7 R19 [+3]
  MOVE R18 R8
  JUMP [+9]
  GETIMPORT R18 K26 [CFrame.lookAt]
  FASTCALL VECTOR [+2]
  GETIMPORT R19 K29 [Vector3.new]
  CALL R19 0 1
  GETTABLEKS R20 R11 K30 ["Normal"]
  CALL R18 2 1
  GETUPVAL R19 7
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K15 ["PivotPosition"]
  GETTABLE R20 R2 R21
  GETTABLEKS R21 R11 K16 ["Position"]
  MOVE R22 R6
  CALL R19 3 1
  GETUPVAL R21 9
  CALL R21 0 1
  JUMPIFNOT R21 [+14]
  LOADB R20 1
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K31 ["Auto"]
  JUMPIFEQ R7 R21 [+16]
  LOADB R20 0
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K12 ["Manual"]
  JUMPIFNOTEQ R7 R21 [+10]
  NOT R20 R9
  JUMP [+7]
  LOADB R20 0
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K32 ["Off"]
  JUMPIFEQ R7 R21 [+2]
  NOT R20 R9
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K12 ["Manual"]
  JUMPIFNOTEQ R7 R22 [+6]
  GETTABLEKS R23 R8 K16 ["Position"]
  SUB R22 R8 R23
  ADD R21 R22 R19
  JUMP [+7]
  GETIMPORT R21 K26 [CFrame.lookAt]
  MOVE R22 R19
  GETTABLEKS R24 R11 K30 ["Normal"]
  ADD R23 R19 R24
  CALL R21 2 1
  GETTABLEKS R22 R0 K11 ["Tool"]
  GETUPVAL R24 10
  GETTABLEKS R23 R24 K33 ["Flatten"]
  JUMPIFNOTEQ R22 R23 [+65]
  LOADB R20 1
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K34 ["FlattenPlane"]
  GETTABLE R22 R2 R23
  GETUPVAL R24 11
  GETTABLEKS R23 R24 K31 ["Auto"]
  JUMPIFNOTEQ R22 R23 [+20]
  GETIMPORT R22 K26 [CFrame.lookAt]
  FASTCALL VECTOR [+2]
  GETIMPORT R23 K29 [Vector3.new]
  CALL R23 0 1
  GETIMPORT R24 K36 [Vector3.yAxis]
  CALL R22 2 1
  MOVE R18 R22
  GETIMPORT R22 K26 [CFrame.lookAt]
  MOVE R23 R19
  GETIMPORT R25 K36 [Vector3.yAxis]
  ADD R24 R19 R25
  CALL R22 2 1
  MOVE R21 R22
  JUMP [+35]
  GETIMPORT R22 K26 [CFrame.lookAt]
  FASTCALL VECTOR [+2]
  GETIMPORT R23 K29 [Vector3.new]
  CALL R23 0 1
  GETIMPORT R24 K36 [Vector3.yAxis]
  CALL R22 2 1
  MOVE R18 R22
  GETTABLEKS R23 R19 K37 ["X"]
  LOADN R24 0
  GETTABLEKS R25 R19 K38 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K29 [Vector3.new]
  CALL R22 3 1
  GETIMPORT R24 K36 [Vector3.yAxis]
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K39 ["FixedYPlane"]
  GETTABLE R25 R2 R26
  MUL R23 R24 R25
  ADD R19 R22 R23
  GETIMPORT R22 K26 [CFrame.lookAt]
  MOVE R23 R19
  GETIMPORT R25 K36 [Vector3.yAxis]
  ADD R24 R19 R25
  CALL R22 2 1
  MOVE R21 R22
  JUMPIFNOT R9 [+7]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K12 ["Manual"]
  JUMPIFNOTEQ R7 R22 [+3]
  LOADNIL R22
  RETURN R22 1
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K6 ["Sphere"]
  JUMPIFNOTEQ R3 R23 [+23]
  GETUPVAL R23 12
  GETTABLEKS R22 R23 K40 ["createElement"]
  GETUPVAL R23 13
  DUPTABLE R24 K44 [{"Adornee", "CFrame", "Color", "Radius", "Transparency"}]
  SETTABLEKS R1 R24 K41 ["Adornee"]
  GETIMPORT R25 K45 [CFrame.new]
  MOVE R26 R12
  CALL R25 1 1
  SETTABLEKS R25 R24 K24 ["CFrame"]
  SETTABLEKS R16 R24 K22 ["Color"]
  DIVK R25 R5 K46 [2]
  SETTABLEKS R25 R24 K42 ["Radius"]
  SETTABLEKS R17 R24 K43 ["Transparency"]
  CALL R22 2 1
  JUMP [+66]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K47 ["Cube"]
  JUMPIFNOTEQ R3 R23 [+29]
  GETUPVAL R23 12
  GETTABLEKS R22 R23 K40 ["createElement"]
  GETUPVAL R23 14
  DUPTABLE R24 K48 [{"Adornee", "CFrame", "Color", "Size", "Transparency"}]
  SETTABLEKS R1 R24 K41 ["Adornee"]
  GETIMPORT R25 K45 [CFrame.new]
  MOVE R26 R12
  CALL R25 1 1
  SETTABLEKS R25 R24 K24 ["CFrame"]
  SETTABLEKS R16 R24 K22 ["Color"]
  MOVE R26 R5
  MOVE R27 R6
  MOVE R28 R5
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K29 [Vector3.new]
  CALL R25 3 1
  SETTABLEKS R25 R24 K4 ["Size"]
  SETTABLEKS R17 R24 K43 ["Transparency"]
  CALL R22 2 1
  JUMP [+33]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K49 ["Cylinder"]
  JUMPIFNOTEQ R3 R23 [+28]
  GETUPVAL R23 12
  GETTABLEKS R22 R23 K40 ["createElement"]
  GETUPVAL R23 15
  DUPTABLE R24 K50 [{"Adornee", "CFrame", "Color", "Height", "Radius", "Transparency"}]
  SETTABLEKS R1 R24 K41 ["Adornee"]
  GETIMPORT R26 K52 [CFrame.Angles]
  LOADK R27 K53 [1.5707963267949]
  LOADN R28 0
  LOADN R29 0
  CALL R26 3 1
  ADD R25 R26 R12
  SETTABLEKS R25 R24 K24 ["CFrame"]
  SETTABLEKS R16 R24 K22 ["Color"]
  SETTABLEKS R6 R24 K7 ["Height"]
  DIVK R25 R5 K46 [2]
  SETTABLEKS R25 R24 K42 ["Radius"]
  SETTABLEKS R17 R24 K43 ["Transparency"]
  CALL R22 2 1
  JUMP [+1]
  LOADNIL R22
  GETUPVAL R24 16
  GETTABLEKS R23 R24 K54 ["createPortal"]
  DUPTABLE R24 K57 [{"BrushVisual", "Grid"}]
  GETUPVAL R26 12
  GETTABLEKS R25 R26 K40 ["createElement"]
  LOADK R26 K58 ["Folder"]
  NEWTABLE R27 0 0
  DUPTABLE R28 K61 [{"Cursor", "Central"}]
  SETTABLEKS R22 R28 K59 ["Cursor"]
  GETUPVAL R30 12
  GETTABLEKS R29 R30 K40 ["createElement"]
  LOADK R30 K62 ["SphereHandleAdornment"]
  DUPTABLE R31 K65 [{"Adornee", "AlwaysOnTop", "CFrame", "Color", "Radius", "Transparency", "ZIndex"}]
  SETTABLEKS R1 R31 K41 ["Adornee"]
  LOADB R32 1
  SETTABLEKS R32 R31 K63 ["AlwaysOnTop"]
  GETIMPORT R32 K45 [CFrame.new]
  MOVE R33 R12
  CALL R32 1 1
  SETTABLEKS R32 R31 K24 ["CFrame"]
  SETTABLEKS R16 R31 K22 ["Color"]
  SETTABLEKS R14 R31 K42 ["Radius"]
  SETTABLEKS R15 R31 K43 ["Transparency"]
  LOADN R32 1
  SETTABLEKS R32 R31 K64 ["ZIndex"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K60 ["Central"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K55 ["BrushVisual"]
  JUMPIFNOT R20 [+22]
  GETUPVAL R26 12
  GETTABLEKS R25 R26 K40 ["createElement"]
  GETUPVAL R26 17
  DUPTABLE R27 K68 [{"AlwaysOnTop", "Center", "Size", "Transform"}]
  LOADB R28 1
  SETTABLEKS R28 R27 K63 ["AlwaysOnTop"]
  SETTABLEKS R18 R27 K66 ["Center"]
  GETUPVAL R31 2
  GETTABLEKS R30 R31 K3 ["BrushSize"]
  GETTABLE R29 R2 R30
  GETTABLEKS R28 R29 K4 ["Size"]
  SETTABLEKS R28 R27 K4 ["Size"]
  SETTABLEKS R21 R27 K67 ["Transform"]
  CALL R25 2 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K56 ["Grid"]
  GETUPVAL R25 18
  CALL R23 2 -1
  RETURN R23 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactRoblox"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Stylizer"]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Hooks"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K14 ["useRaycast"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K15 ["useTerrain"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K16 ["Resources"]
  GETTABLEKS R10 R11 K17 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K12 ["Src"]
  GETTABLEKS R12 R13 K18 ["Util"]
  GETTABLEKS R11 R12 K19 ["ConvertForPivot"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K20 ["Box"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K21 ["Cylinder"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K22 ["Sphere"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K12 ["Src"]
  GETTABLEKS R17 R18 K23 ["Components"]
  GETTABLEKS R16 R17 K24 ["Gizmos"]
  GETTABLEKS R15 R16 K25 ["Grid"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R0 K12 ["Src"]
  GETTABLEKS R16 R17 K26 ["Types"]
  CALL R15 1 1
  GETTABLEKS R16 R15 K27 ["BrushSettings"]
  GETTABLEKS R17 R15 K28 ["BrushShape"]
  GETTABLEKS R18 R15 K29 ["Category"]
  GETTABLEKS R19 R15 K30 ["FlattenPlane"]
  GETTABLEKS R20 R15 K31 ["PlaneLock"]
  GETTABLEKS R21 R15 K32 ["Tool"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K12 ["Src"]
  GETTABLEKS R24 R25 K16 ["Resources"]
  GETTABLEKS R23 R24 K33 ["Theme"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K12 ["Src"]
  GETTABLEKS R25 R26 K34 ["Flags"]
  GETTABLEKS R24 R25 K35 ["getFFlagTerrainEditorMiscBrushImprovements"]
  CALL R23 1 1
  GETIMPORT R24 K37 [game]
  LOADK R26 K38 ["CoreGui"]
  NAMECALL R24 R24 K39 ["GetService"]
  CALL R24 2 1
  DUPCLOSURE R25 K40 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R23
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R24
  RETURN R25 1
