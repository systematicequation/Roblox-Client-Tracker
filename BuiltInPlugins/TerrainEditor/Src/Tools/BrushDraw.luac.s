PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnFormChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["OnGizmoChanged"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+23]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["Set"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["BrushSettings"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["_pluginController"]
  NEWTABLE R3 1 0
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K3 ["PlaneTransform"]
  GETIMPORT R5 K6 [CFrame.Angles]
  LOADK R6 K7 [1.5707963267949]
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLE R5 R3 R4
  CALL R0 3 0
  JUMP [+25]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["Set"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["BrushSettings"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K8 ["Storage"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["_pluginController"]
  NEWTABLE R4 1 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K3 ["PlaneTransform"]
  GETIMPORT R6 K6 [CFrame.Angles]
  LOADK R7 K7 [1.5707963267949]
  LOADN R8 0
  LOADN R9 0
  CALL R6 3 1
  SETTABLE R6 R4 R5
  CALL R0 4 0
  GETIMPORT R0 K11 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U3
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BrushSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["ManualPlaneLock"]
  DUPTABLE R7 K4 [{"Schema"}]
  DUPTABLE R8 K6 [{"OnReset"}]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U5
  SETTABLEKS R9 R8 K5 ["OnReset"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K7 ["_overrides"]
  RETURN R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
  GETUPVAL R2 0
  LOADK R3 K0 ["Draw"]
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

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K13 ["Schemas"]
  GETTABLEKS R5 R6 K14 ["Settings"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Schemas"]
  GETTABLEKS R7 R8 K14 ["Settings"]
  GETTABLEKS R6 R7 K15 ["Brush"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K13 ["Schemas"]
  GETTABLEKS R8 R9 K14 ["Settings"]
  GETTABLEKS R7 R8 K16 ["Material"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K17 ["Util"]
  GETTABLEKS R9 R10 K18 ["Operations"]
  GETTABLEKS R8 R9 K19 ["DrawOperation"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K20 ["Types"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K21 ["BrushMode"]
  GETTABLEKS R10 R8 K22 ["BrushSettings"]
  GETTABLEKS R11 R8 K23 ["BrushShape"]
  GETTABLEKS R12 R8 K24 ["Category"]
  GETTABLEKS R13 R8 K25 ["Gizmo"]
  GETTABLEKS R14 R8 K26 ["MaterialSettings"]
  GETTABLEKS R15 R8 K27 ["PivotPosition"]
  GETTABLEKS R16 R8 K28 ["Snapping"]
  GETTABLEKS R17 R8 K29 ["Tab"]
  GETTABLEKS R18 R8 K30 ["Tool"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K17 ["Util"]
  GETTABLEKS R20 R21 K31 ["SettingsHelper"]
  CALL R19 1 1
  NEWTABLE R20 0 2
  DUPTABLE R21 K35 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R22 16 0
  GETTABLEKS R23 R10 K21 ["BrushMode"]
  GETTABLEKS R24 R9 K36 ["Add"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R10 K23 ["BrushShape"]
  GETTABLEKS R24 R11 K37 ["Sphere"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R10 K38 ["BrushSize"]
  DUPTABLE R24 K42 [{"Height", "Locked", "Size"}]
  LOADN R25 6
  SETTABLEKS R25 R24 K39 ["Height"]
  LOADB R25 1
  SETTABLEKS R25 R24 K40 ["Locked"]
  LOADN R25 6
  SETTABLEKS R25 R24 K41 ["Size"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R10 K27 ["PivotPosition"]
  GETTABLEKS R24 R15 K43 ["Center"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R10 K28 ["Snapping"]
  GETTABLEKS R24 R16 K44 ["Off"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R10 K45 ["State"]
  DUPTABLE R24 K47 [{"Position"}]
  LOADN R26 0
  LOADN R27 0
  LOADN R28 0
  FASTCALL VECTOR [+2]
  GETIMPORT R25 K50 [Vector3.new]
  CALL R25 3 1
  SETTABLEKS R25 R24 K46 ["Position"]
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R10 K51 ["IgnoreWater"]
  LOADB R24 0
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R10 K52 ["IgnoreParts"]
  LOADB R24 1
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R10 K53 ["TemporarySmooth"]
  LOADB R24 0
  SETTABLE R24 R22 R23
  GETTABLEKS R23 R10 K54 ["WaterAutofill"]
  LOADB R24 0
  SETTABLE R24 R22 R23
  SETTABLEKS R22 R21 K32 ["Defaults"]
  GETTABLEKS R22 R12 K22 ["BrushSettings"]
  SETTABLEKS R22 R21 K33 ["Id"]
  MOVE R23 R3
  CALL R23 0 1
  JUMPIFNOT R23 [+2]
  LOADNIL R22
  JUMP [+1]
  MOVE R22 R5
  SETTABLEKS R22 R21 K34 ["Schema"]
  DUPTABLE R22 K35 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R23 2 0
  GETTABLEKS R24 R14 K55 ["AutoMaterial"]
  LOADB R25 0
  SETTABLE R25 R23 R24
  GETTABLEKS R24 R14 K56 ["SourceMaterial"]
  GETIMPORT R25 K59 [Enum.Material.Grass]
  SETTABLE R25 R23 R24
  SETTABLEKS R23 R22 K32 ["Defaults"]
  GETTABLEKS R23 R12 K26 ["MaterialSettings"]
  SETTABLEKS R23 R22 K33 ["Id"]
  MOVE R24 R3
  CALL R24 0 1
  JUMPIFNOT R24 [+2]
  LOADNIL R23
  JUMP [+1]
  MOVE R23 R6
  SETTABLEKS R23 R22 K34 ["Schema"]
  SETLIST R20 R21 2 [1]
  NEWTABLE R21 0 2
  DUPTABLE R22 K60 [{"Id", "Schema"}]
  GETTABLEKS R23 R13 K61 ["Plane"]
  SETTABLEKS R23 R22 K33 ["Id"]
  DUPTABLE R23 K63 [{"Type"}]
  GETTABLEKS R24 R13 K61 ["Plane"]
  SETTABLEKS R24 R23 K62 ["Type"]
  SETTABLEKS R23 R22 K34 ["Schema"]
  DUPTABLE R23 K60 [{"Id", "Schema"}]
  GETTABLEKS R24 R13 K15 ["Brush"]
  SETTABLEKS R24 R23 K33 ["Id"]
  DUPTABLE R24 K63 [{"Type"}]
  GETTABLEKS R25 R13 K15 ["Brush"]
  SETTABLEKS R25 R24 K62 ["Type"]
  SETTABLEKS R24 R23 K34 ["Schema"]
  SETLIST R21 R22 2 [1]
  GETTABLEKS R24 R18 K64 ["Draw"]
  GETTABLEKS R25 R17 K65 ["Edit"]
  MOVE R26 R20
  MOVE R27 R21
  NAMECALL R22 R2 K49 ["new"]
  CALL R22 5 1
  DUPCLOSURE R23 K66 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE VAL R5
  SETTABLEKS R23 R22 K67 ["init"]
  DUPCLOSURE R23 K68 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K69 ["saveForm"]
  DUPCLOSURE R23 K70 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K71 ["saveGizmos"]
  DUPCLOSURE R23 K72 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R23 R22 K73 ["startOperation"]
  DUPCLOSURE R23 K74 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K75 ["activate"]
  DUPCLOSURE R23 K76 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K77 ["deactivate"]
  RETURN R22 1
