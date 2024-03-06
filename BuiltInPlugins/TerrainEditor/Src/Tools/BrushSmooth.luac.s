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
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  JUMPIFNOT R0 [+35]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K1 ["isRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+28]
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
  NAMECALL R0 R0 K7 ["destroy"]
  CALL R0 1 0
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
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K5 ["_mouseDownConnection"]
  GETTABLEKS R2 R1 K6 ["Button1Up"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  NAMECALL R2 R2 K4 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K7 ["_mouseUpConnection"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  GETTABLEKS R2 R0 K8 ["_analytics"]
  LOADK R4 K9 ["Activated"]
  GETUPVAL R6 2
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
  JUMPIFNOT R1 [+29]
  GETTABLEKS R1 R0 K3 ["_operation"]
  NAMECALL R1 R1 K4 ["isRunning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+23]
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
  NAMECALL R1 R1 K10 ["destroy"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K11 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  NAMECALL R1 R0 K0 ["getPayload"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["_brushTime"]
  JUMPIFNOT R2 [+27]
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
  LOADN R2 0
  SETTABLEKS R2 R0 K8 ["_brushUsages"]
  LOADN R2 0
  SETTABLEKS R2 R0 K1 ["_brushTime"]
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
  GETTABLEKS R4 R5 K12 ["getFFlagTerrainEditorSubformComponent"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagTerrainEditorAnalytics"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K14 ["Schemas"]
  GETTABLEKS R7 R8 K15 ["Settings"]
  GETTABLEKS R6 R7 K16 ["Brush"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K17 ["Util"]
  GETTABLEKS R7 R8 K18 ["AnalyticsHelper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Util"]
  GETTABLEKS R9 R10 K19 ["Operations"]
  GETTABLEKS R8 R9 K20 ["SmoothOperation"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K21 ["Types"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K22 ["BrushSettings"]
  GETTABLEKS R10 R8 K23 ["BrushShape"]
  GETTABLEKS R11 R8 K24 ["Category"]
  GETTABLEKS R12 R8 K25 ["Gizmo"]
  GETTABLEKS R13 R8 K26 ["PivotPosition"]
  GETTABLEKS R14 R8 K27 ["Snapping"]
  GETTABLEKS R15 R8 K28 ["Tab"]
  GETTABLEKS R16 R8 K29 ["Tool"]
  NEWTABLE R17 0 1
  DUPTABLE R18 K33 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R19 8 0
  GETTABLEKS R20 R9 K23 ["BrushShape"]
  GETTABLEKS R21 R10 K34 ["Sphere"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K35 ["BrushSize"]
  DUPTABLE R21 K39 [{"Height", "Locked", "Size"}]
  LOADN R22 6
  SETTABLEKS R22 R21 K36 ["Height"]
  LOADB R22 1
  SETTABLEKS R22 R21 K37 ["Locked"]
  LOADN R22 6
  SETTABLEKS R22 R21 K38 ["Size"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K40 ["Strength"]
  LOADN R21 1
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K26 ["PivotPosition"]
  GETTABLEKS R21 R13 K41 ["Center"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K27 ["Snapping"]
  GETTABLEKS R21 R14 K42 ["Off"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K43 ["State"]
  DUPTABLE R21 K45 [{"Position"}]
  LOADN R23 0
  LOADN R24 0
  LOADN R25 0
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K48 [Vector3.new]
  CALL R22 3 1
  SETTABLEKS R22 R21 K44 ["Position"]
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K49 ["IgnoreWater"]
  LOADB R21 0
  SETTABLE R21 R19 R20
  GETTABLEKS R20 R9 K50 ["IgnoreParts"]
  LOADB R21 1
  SETTABLE R21 R19 R20
  SETTABLEKS R19 R18 K30 ["Defaults"]
  GETTABLEKS R19 R11 K22 ["BrushSettings"]
  SETTABLEKS R19 R18 K31 ["Id"]
  MOVE R20 R3
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  LOADNIL R19
  JUMP [+1]
  MOVE R19 R5
  SETTABLEKS R19 R18 K32 ["Schema"]
  SETLIST R17 R18 1 [1]
  NEWTABLE R18 0 2
  DUPTABLE R19 K51 [{"Id", "Schema"}]
  GETTABLEKS R20 R12 K16 ["Brush"]
  SETTABLEKS R20 R19 K31 ["Id"]
  DUPTABLE R20 K53 [{"Type"}]
  GETTABLEKS R21 R12 K16 ["Brush"]
  SETTABLEKS R21 R20 K52 ["Type"]
  SETTABLEKS R20 R19 K32 ["Schema"]
  DUPTABLE R20 K51 [{"Id", "Schema"}]
  GETTABLEKS R21 R12 K54 ["Plane"]
  SETTABLEKS R21 R20 K31 ["Id"]
  DUPTABLE R21 K53 [{"Type"}]
  GETTABLEKS R22 R12 K54 ["Plane"]
  SETTABLEKS R22 R21 K52 ["Type"]
  SETTABLEKS R21 R20 K32 ["Schema"]
  SETLIST R18 R19 2 [1]
  GETTABLEKS R21 R16 K55 ["Smooth"]
  GETTABLEKS R22 R15 K56 ["Edit"]
  MOVE R23 R17
  MOVE R24 R18
  NAMECALL R19 R2 K47 ["new"]
  CALL R19 5 1
  DUPCLOSURE R20 K57 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K58 ["init"]
  DUPCLOSURE R20 K59 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K60 ["saveForm"]
  DUPCLOSURE R20 K61 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K62 ["saveGizmos"]
  DUPCLOSURE R20 K63 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R20 R19 K64 ["startOperation"]
  DUPCLOSURE R20 K65 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R16
  SETTABLEKS R20 R19 K66 ["activate"]
  DUPCLOSURE R20 K67 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K68 ["deactivate"]
  DUPCLOSURE R20 K69 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R16
  SETTABLEKS R20 R19 K70 ["reportAnalytics"]
  RETURN R19 1
