PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  JUMPIFNOT R0 [+13]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K1 ["isRunning"]
  CALL R0 1 1
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K2 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
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
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["deactivate"]
  MOVE R2 R0
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_mouseDownConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["_mouseUpConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K4 ["_operation"]
  JUMPIFNOT R1 [+11]
  GETTABLEKS R1 R0 K4 ["_operation"]
  NAMECALL R1 R1 K5 ["isRunning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K4 ["_operation"]
  NAMECALL R1 R1 K6 ["destroy"]
  CALL R1 1 0
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
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Schemas"]
  GETTABLEKS R6 R7 K14 ["Settings"]
  GETTABLEKS R5 R6 K15 ["Brush"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K16 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K17 ["BrushSettings"]
  GETTABLEKS R7 R5 K18 ["BrushShape"]
  GETTABLEKS R8 R5 K19 ["Category"]
  GETTABLEKS R9 R5 K20 ["Gizmo"]
  GETTABLEKS R10 R5 K21 ["PivotPosition"]
  GETTABLEKS R11 R5 K22 ["Snapping"]
  GETTABLEKS R12 R5 K23 ["Tab"]
  GETTABLEKS R13 R5 K24 ["Tool"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K25 ["Util"]
  GETTABLEKS R16 R17 K26 ["Operations"]
  GETTABLEKS R15 R16 K27 ["SmoothOperation"]
  CALL R14 1 1
  NEWTABLE R15 0 1
  DUPTABLE R16 K31 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R17 8 0
  GETTABLEKS R18 R6 K18 ["BrushShape"]
  GETTABLEKS R19 R7 K32 ["Sphere"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R6 K33 ["BrushSize"]
  DUPTABLE R19 K37 [{"Height", "Locked", "Size"}]
  LOADN R20 6
  SETTABLEKS R20 R19 K34 ["Height"]
  LOADB R20 1
  SETTABLEKS R20 R19 K35 ["Locked"]
  LOADN R20 6
  SETTABLEKS R20 R19 K36 ["Size"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R6 K38 ["Strength"]
  LOADN R19 1
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R6 K21 ["PivotPosition"]
  GETTABLEKS R19 R10 K39 ["Center"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R6 K22 ["Snapping"]
  GETTABLEKS R19 R11 K40 ["Off"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R6 K41 ["State"]
  DUPTABLE R19 K43 [{"Position"}]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  FASTCALL VECTOR [+2]
  GETIMPORT R20 K46 [Vector3.new]
  CALL R20 3 1
  SETTABLEKS R20 R19 K42 ["Position"]
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R6 K47 ["IgnoreWater"]
  LOADB R19 0
  SETTABLE R19 R17 R18
  GETTABLEKS R18 R6 K48 ["IgnoreParts"]
  LOADB R19 1
  SETTABLE R19 R17 R18
  SETTABLEKS R17 R16 K28 ["Defaults"]
  GETTABLEKS R17 R8 K17 ["BrushSettings"]
  SETTABLEKS R17 R16 K29 ["Id"]
  MOVE R18 R3
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADNIL R17
  JUMP [+1]
  MOVE R17 R4
  SETTABLEKS R17 R16 K30 ["Schema"]
  SETLIST R15 R16 1 [1]
  NEWTABLE R16 0 2
  DUPTABLE R17 K49 [{"Id", "Schema"}]
  GETTABLEKS R18 R9 K15 ["Brush"]
  SETTABLEKS R18 R17 K29 ["Id"]
  DUPTABLE R18 K51 [{"Type"}]
  GETTABLEKS R19 R9 K15 ["Brush"]
  SETTABLEKS R19 R18 K50 ["Type"]
  SETTABLEKS R18 R17 K30 ["Schema"]
  DUPTABLE R18 K49 [{"Id", "Schema"}]
  GETTABLEKS R19 R9 K52 ["Plane"]
  SETTABLEKS R19 R18 K29 ["Id"]
  DUPTABLE R19 K51 [{"Type"}]
  GETTABLEKS R20 R9 K52 ["Plane"]
  SETTABLEKS R20 R19 K50 ["Type"]
  SETTABLEKS R19 R18 K30 ["Schema"]
  SETLIST R16 R17 2 [1]
  GETTABLEKS R19 R13 K53 ["Smooth"]
  GETTABLEKS R20 R12 K54 ["Edit"]
  MOVE R21 R15
  MOVE R22 R16
  NAMECALL R17 R2 K45 ["new"]
  CALL R17 5 1
  DUPCLOSURE R18 K55 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K56 ["saveForm"]
  DUPCLOSURE R18 K57 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K58 ["saveGizmos"]
  DUPCLOSURE R18 K59 [PROTO_2]
  CAPTURE VAL R14
  CAPTURE VAL R1
  SETTABLEKS R18 R17 K60 ["startOperation"]
  DUPCLOSURE R18 K61 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K62 ["activate"]
  DUPCLOSURE R18 K63 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R18 R17 K64 ["deactivate"]
  RETURN R17 1
