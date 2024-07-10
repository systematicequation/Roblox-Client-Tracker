PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  LOADN R3 0
  SETTABLEKS R3 R0 K1 ["_brushTime"]
  LOADN R3 0
  SETTABLEKS R3 R0 K2 ["_brushUsages"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveForm"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_operation"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["_operation"]
  NAMECALL R4 R0 K2 ["getPayload"]
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["updatePayload"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["saveGizmos"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_operation"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R0 K1 ["_operation"]
  NAMECALL R4 R0 K2 ["getPayload"]
  CALL R4 1 -1
  NAMECALL R2 R2 K3 ["updatePayload"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  LOADK R3 K0 ["Smooth"]
  GETTABLEKS R4 R0 K1 ["_services"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["_operation"]
  GETTABLEKS R2 R0 K2 ["_operation"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["join"]
  DUPTABLE R5 K5 [{"Payload"}]
  NAMECALL R6 R0 K6 ["getPayload"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["Payload"]
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K7 ["start"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+27]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["BrushSettings"]
  GETTABLE R2 R0 R3
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["ManualPlaneLock"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+13]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["BrushSettings"]
  GETTABLE R2 R0 R3
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["PlaneLock"]
  GETTABLE R1 R2 R3
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K4 ["Manual"]
  JUMPIFEQ R1 R2 [+19]
  GETUPVAL R1 0
  NAMECALL R1 R1 K5 ["startOperation"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["BrushSettings"]
  GETTABLE R2 R0 R3
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["ManualPlaneLock"]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+4]
  GETUPVAL R1 0
  NAMECALL R1 R1 K5 ["startOperation"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  JUMPIFNOT R0 [+53]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K1 ["isRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+46]
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K2 ["_brushUsages"]
  ADDK R1 R1 K3 [1]
  SETTABLEKS R1 R0 K2 ["_brushUsages"]
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_operation"]
  NAMECALL R2 R2 K4 ["getCurrentTimeTaken"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_operation"]
  NAMECALL R3 R3 K5 ["getStepsTaken"]
  CALL R3 1 1
  DIV R1 R2 R3
  SETTABLEKS R1 R0 K6 ["_brushTime"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K7 ["getTimeStatistic"]
  CALL R0 1 1
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  JUMPIFNOT R0 [+8]
  GETUPVAL R1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["_brushStatistic"]
  ORK R3 R4 K8 [0]
  ADD R2 R3 R0
  SETTABLEKS R2 R1 K9 ["_brushStatistic"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["_operation"]
  NAMECALL R1 R1 K10 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_shortcutController"]
  NAMECALL R1 R1 K2 ["getMouse"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K1 ["_shortcutController"]
  GETTABLEKS R2 R3 K3 ["MouseDownAction"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_mouseDownConnection"]
  GETTABLEKS R2 R1 K6 ["Button1Up"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_mouseUpConnection"]
  GETTABLEKS R2 R0 K8 ["_analytics"]
  LOADK R4 K9 ["Activated"]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K10 ["Smooth"]
  NAMECALL R2 R2 K11 ["report"]
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_mouseDownConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_mouseUpConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_operation"]
  JUMPIFNOT R1 [+44]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K4 ["isRunning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+38]
  GETTABLEKS R1 R0 K5 ["_brushUsages"]
  ADDK R1 R1 K6 [1]
  SETTABLEKS R1 R0 K5 ["_brushUsages"]
  GETTABLEKS R2 R0 K3 ["_operation"]
  NAMECALL R2 R2 K7 ["getCurrentTimeTaken"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K3 ["_operation"]
  NAMECALL R3 R3 K8 ["getStepsTaken"]
  CALL R3 1 1
  DIV R1 R2 R3
  SETTABLEKS R1 R0 K9 ["_brushTime"]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K10 ["getTimeStatistic"]
  CALL R1 1 1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+7]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R4 R0 K12 ["_brushStatistic"]
  ORK R3 R4 K11 [0]
  ADD R2 R3 R1
  SETTABLEKS R2 R0 K12 ["_brushStatistic"]
  GETTABLEKS R2 R0 K3 ["_operation"]
  NAMECALL R2 R2 K13 ["destroy"]
  CALL R2 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K14 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  JUMPIFNOT R2 [+52]
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K3 ["BrushProperties"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["getBrushPayload"]
  MOVE R6 R1
  GETTABLEKS R7 R0 K1 ["_brushTime"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["Smooth"]
  CALL R5 3 -1
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K7 ["Usage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Smooth"]
  GETTABLEKS R6 R0 K8 ["_brushUsages"]
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 4 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+22]
  GETTABLEKS R2 R0 K9 ["_brushStatistic"]
  JUMPIFNOT R2 [+19]
  GETTABLEKS R2 R0 K8 ["_brushUsages"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+15]
  GETTABLEKS R2 R0 K2 ["_analytics"]
  LOADK R4 K10 ["Performance"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Smooth"]
  GETTABLEKS R7 R0 K9 ["_brushStatistic"]
  GETTABLEKS R8 R0 K8 ["_brushUsages"]
  DIV R6 R7 R8
  NAMECALL R2 R2 K6 ["report"]
  CALL R2 4 0
  LOADN R2 0
  SETTABLEKS R2 R0 K8 ["_brushUsages"]
  LOADN R2 0
  SETTABLEKS R2 R0 K1 ["_brushTime"]
  LOADN R2 0
  SETTABLEKS R2 R0 K9 ["_brushStatistic"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["BaseTool"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Flags"]
  GETTABLEKS R4 R5 K12 ["getFFlagTerrainEditorTimeStatistic"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K13 ["Util"]
  GETTABLEKS R5 R6 K14 ["AnalyticsHelper"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K15 ["Operations"]
  GETTABLEKS R6 R7 K16 ["SmoothOperation"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K17 ["Types"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K18 ["BrushSettings"]
  GETTABLEKS R8 R6 K19 ["BrushShape"]
  GETTABLEKS R9 R6 K20 ["Category"]
  GETTABLEKS R10 R6 K21 ["Gizmo"]
  GETTABLEKS R11 R6 K22 ["PivotPosition"]
  GETTABLEKS R12 R6 K23 ["PlaneLock"]
  GETTABLEKS R13 R6 K24 ["Snapping"]
  GETTABLEKS R14 R6 K25 ["Tab"]
  GETTABLEKS R15 R6 K26 ["Tool"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K11 ["Flags"]
  GETTABLEKS R17 R18 K27 ["getFFlagTerrainEditorMiscBrushImprovements"]
  CALL R16 1 1
  NEWTABLE R17 0 1
  DUPTABLE R18 K30 [{"Defaults", "Id"}]
  NEWTABLE R19 8 0
  GETTABLEKS R20 R7 K19 ["BrushShape"]
  GETTABLEKS R21 R8 K31 ["Sphere"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K32 ["BrushSize"]
  DUPTABLE R21 K36 [{"Height", "Locked", "Size"}]
  LOADN R22 6
  SETTABLEKS R22 R21 K33 ["Height"]
  LOADB R22 1
  SETTABLEKS R22 R21 K34 ["Locked"]
  LOADN R22 6
  SETTABLEKS R22 R21 K35 ["Size"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K37 ["Strength"]
  LOADN R21 1
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K22 ["PivotPosition"]
  GETTABLEKS R21 R11 K38 ["Center"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K24 ["Snapping"]
  GETTABLEKS R21 R13 K39 ["Off"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K40 ["State"]
  DUPTABLE R21 K42 [{"Position"}]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K45 [Vector3.new]
  CALL R22 3 1
  SETTABLEKS R22 R21 K41 ["Position"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K46 ["IgnoreWater"]
  LOADB R21 0
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R7 K47 ["IgnoreParts"]
  LOADB R21 1
  SETTABLE R21 R19 R20
  SETTABLEKS R19 R18 K28 ["Defaults"]
  GETTABLEKS R19 R9 K18 ["BrushSettings"]
  SETTABLEKS R19 R18 K29 ["Id"]
  SETLIST R17 R18 1 [1]
  NEWTABLE R18 0 2
  DUPTABLE R19 K49 [{"Id", "Schema"}]
  GETTABLEKS R20 R10 K50 ["Brush"]
  SETTABLEKS R20 R19 K29 ["Id"]
  DUPTABLE R20 K52 [{"Type"}]
  GETTABLEKS R21 R10 K50 ["Brush"]
  SETTABLEKS R21 R20 K51 ["Type"]
  SETTABLEKS R20 R19 K48 ["Schema"]
  DUPTABLE R20 K49 [{"Id", "Schema"}]
  GETTABLEKS R21 R10 K53 ["Plane"]
  SETTABLEKS R21 R20 K29 ["Id"]
  DUPTABLE R21 K52 [{"Type"}]
  GETTABLEKS R22 R10 K53 ["Plane"]
  SETTABLEKS R22 R21 K51 ["Type"]
  SETTABLEKS R21 R20 K48 ["Schema"]
  SETLIST R18 R19 2 [1]
  GETTABLEKS R21 R15 K54 ["Smooth"]
  GETTABLEKS R22 R14 K55 ["Edit"]
  MOVE R23 R17
  MOVE R24 R18
  NAMECALL R19 R2 K44 ["new"]
  CALL R19 5 1
  DUPCLOSURE R20 K56 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K57 ["init"]
  DUPCLOSURE R20 K58 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K59 ["saveForm"]
  DUPCLOSURE R20 K60 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K61 ["saveGizmos"]
  DUPCLOSURE R20 K62 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K63 ["startOperation"]
  DUPCLOSURE R20 K64 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R15
  SETTABLEKS R20 R19 K65 ["activate"]
  DUPCLOSURE R20 K66 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K67 ["deactivate"]
  DUPCLOSURE R20 K68 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R3
  SETTABLEKS R20 R19 K69 ["reportAnalytics"]
  RETURN R19 1
