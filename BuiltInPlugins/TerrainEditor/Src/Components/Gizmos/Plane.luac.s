PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Tool"]
  GETTABLEKS R3 R0 K1 ["Value"]
  GETTABLEKS R4 R0 K2 ["Save"]
  CALL R1 3 2
  GETTABLEKS R4 R0 K1 ["Value"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["BrushSettings"]
  GETTABLE R3 R4 R5
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["PlaneLock"]
  GETTABLE R5 R3 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["Manual"]
  JUMPIFNOTEQ R5 R6 [+54]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["ManualPlaneLock"]
  GETTABLE R5 R3 R6
  JUMPIFNOT R5 [+48]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 5
  NEWTABLE R6 0 0
  DUPTABLE R7 K10 [{"Dragger", "Grid"}]
  GETTABLEKS R9 R0 K0 ["Tool"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K11 ["Mock"]
  JUMPIFEQ R9 R10 [+8]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 7
  MOVE R10 R1
  CALL R8 2 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K8 ["Dragger"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K15 [{"AlwaysOnTop", "Size", "Transform"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K6 ["ManualPlaneLock"]
  GETTABLE R11 R3 R12
  SETTABLEKS R11 R10 K12 ["AlwaysOnTop"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K16 ["BaseSize"]
  GETTABLE R11 R3 R12
  SETTABLEKS R11 R10 K13 ["Size"]
  SETTABLEKS R2 R10 K14 ["Transform"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Grid"]
  CALL R4 3 1
  RETURN R4 1
  LOADNIL R4
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["DraggerFramework"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R0 K4 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K4 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R4 R5 K11 ["Pane"]
  GETIMPORT R5 K7 [require]
  GETTABLEKS R7 R1 K12 ["DraggerTools"]
  GETTABLEKS R6 R7 K13 ["DraggerToolComponent"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K14 ["Src"]
  GETTABLEKS R6 R7 K15 ["Hooks"]
  GETIMPORT R7 K7 [require]
  GETTABLEKS R8 R6 K16 ["usePlane"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K17 ["Components"]
  GETTABLEKS R10 R11 K18 ["Gizmos"]
  GETTABLEKS R9 R10 K19 ["Grid"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K20 ["Types"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K21 ["BrushSettings"]
  GETTABLEKS R11 R9 K22 ["Categories"]
  GETTABLEKS R12 R9 K23 ["PlaneLock"]
  GETTABLEKS R13 R9 K24 ["Tools"]
  DUPCLOSURE R14 K25 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R5
  CAPTURE VAL R8
  RETURN R14 1
