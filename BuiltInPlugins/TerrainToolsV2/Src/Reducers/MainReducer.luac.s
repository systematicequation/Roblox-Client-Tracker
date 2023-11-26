PROTO_0:
  MOVE R2 R0
  JUMPIF R2 [+109]
  DUPTABLE R2 K18 [{"Tools", "GenerateTool", "ImportLocalTool", "RegionTool", "FillTool", "MaterialTool", "AddTool", "SubtractTool", "GrowTool", "ErodeTool", "SmoothTool", "FlattenTool", "SeaLevelTool", "ReplaceTool", "PaintTool", "DrawTool", "SculptTool", "BaseTool"}]
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K0 ["Tools"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K1 ["GenerateTool"]
  GETUPVAL R3 2
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["ImportLocalTool"]
  GETUPVAL R3 3
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["RegionTool"]
  GETUPVAL R3 4
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["FillTool"]
  GETUPVAL R3 5
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K5 ["MaterialTool"]
  GETUPVAL R3 6
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K6 ["AddTool"]
  GETUPVAL R3 7
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K7 ["SubtractTool"]
  GETUPVAL R3 8
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K8 ["GrowTool"]
  GETUPVAL R3 9
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K9 ["ErodeTool"]
  GETUPVAL R3 10
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K10 ["SmoothTool"]
  GETUPVAL R3 11
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K11 ["FlattenTool"]
  GETUPVAL R3 12
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K12 ["SeaLevelTool"]
  GETUPVAL R3 13
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K13 ["ReplaceTool"]
  GETUPVAL R3 14
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K14 ["PaintTool"]
  GETUPVAL R3 15
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K15 ["DrawTool"]
  GETUPVAL R3 16
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K16 ["SculptTool"]
  GETUPVAL R3 17
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLEKS R3 R2 K17 ["BaseTool"]
  GETTABLEKS R3 R1 K19 ["type"]
  GETUPVAL R5 18
  GETTABLEKS R4 R5 K20 ["Name"]
  JUMPIFNOTEQ R3 R4 [+21]
  GETTABLEKS R3 R1 K21 ["toolName"]
  GETUPVAL R6 19
  GETTABLEKS R5 R6 K22 ["Dictionary"]
  GETTABLEKS R4 R5 K23 ["join"]
  MOVE R5 R2
  NEWTABLE R6 1 0
  GETUPVAL R8 20
  GETTABLE R7 R8 R3
  GETTABLE R8 R2 R3
  GETTABLEKS R9 R1 K24 ["toolAction"]
  CALL R7 2 1
  SETTABLE R7 R6 R3
  CALL R4 2 1
  MOVE R2 R4
  RETURN R2 1
  GETUPVAL R5 19
  GETTABLEKS R4 R5 K22 ["Dictionary"]
  GETTABLEKS R3 R4 K23 ["join"]
  MOVE R4 R2
  DUPTABLE R5 K25 [{"Tools"}]
  GETUPVAL R6 0
  GETTABLEKS R7 R2 K0 ["Tools"]
  MOVE R8 R1
  CALL R6 2 1
  SETTABLEKS R6 R5 K0 ["Tools"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K7 ["Src"]
  GETTABLEKS R2 R3 K8 ["Reducers"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K9 ["Tools"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R2 K10 ["AddTool"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R2 K11 ["BaseTool"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R2 K12 ["DrawTool"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R2 K13 ["ErodeTool"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R2 K14 ["FillTool"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R2 K15 ["FlattenTool"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R2 K16 ["GenerateTool"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R2 K17 ["GrowTool"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R2 K18 ["ImportLocalTool"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R2 K19 ["MaterialTool"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R2 K20 ["PaintTool"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R2 K21 ["RegionTool"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R2 K22 ["SeaLevelTool"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R2 K23 ["ReplaceTool"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R2 K24 ["SculptTool"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R2 K25 ["SmoothTool"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R2 K26 ["SubtractTool"]
  CALL R20 1 1
  DUPTABLE R21 K27 [{"GenerateTool", "ImportLocalTool", "RegionTool", "FillTool", "AddTool", "SubtractTool", "GrowTool", "MaterialTool", "ErodeTool", "SmoothTool", "FlattenTool", "SeaLevelTool", "ReplaceTool", "PaintTool", "DrawTool", "SculptTool", "BaseTool"}]
  SETTABLEKS R10 R21 K16 ["GenerateTool"]
  SETTABLEKS R12 R21 K18 ["ImportLocalTool"]
  SETTABLEKS R15 R21 K21 ["RegionTool"]
  SETTABLEKS R8 R21 K14 ["FillTool"]
  SETTABLEKS R4 R21 K10 ["AddTool"]
  SETTABLEKS R20 R21 K26 ["SubtractTool"]
  SETTABLEKS R11 R21 K17 ["GrowTool"]
  SETTABLEKS R13 R21 K19 ["MaterialTool"]
  SETTABLEKS R7 R21 K13 ["ErodeTool"]
  SETTABLEKS R19 R21 K25 ["SmoothTool"]
  SETTABLEKS R9 R21 K15 ["FlattenTool"]
  SETTABLEKS R16 R21 K22 ["SeaLevelTool"]
  SETTABLEKS R17 R21 K23 ["ReplaceTool"]
  SETTABLEKS R14 R21 K20 ["PaintTool"]
  SETTABLEKS R6 R21 K12 ["DrawTool"]
  SETTABLEKS R18 R21 K24 ["SculptTool"]
  SETTABLEKS R5 R21 K11 ["BaseTool"]
  GETTABLEKS R23 R0 K7 ["Src"]
  GETTABLEKS R22 R23 K28 ["Actions"]
  GETTABLEKS R23 R22 K29 ["ApplyToolAction"]
  DUPCLOSURE R24 K30 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R20
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R19
  CAPTURE VAL R9
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R18
  CAPTURE VAL R5
  CAPTURE VAL R23
  CAPTURE VAL R1
  CAPTURE VAL R21
  RETURN R24 1
