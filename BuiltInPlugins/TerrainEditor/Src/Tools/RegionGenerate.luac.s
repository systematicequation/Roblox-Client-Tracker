PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+163]
  GETIMPORT R0 K2 [Region3int16.new]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["_region"]
  GETTABLEKS R1 R2 K4 ["Min"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["_region"]
  GETTABLEKS R3 R4 K5 ["Max"]
  GETIMPORT R4 K7 [Vector3int16.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SUB R2 R3 R4
  CALL R0 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["_services"]
  GETTABLEKS R1 R2 K9 ["Terrain"]
  MOVE R3 R0
  NAMECALL R1 R1 K10 ["CopyRegion"]
  CALL R1 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["_services"]
  GETTABLEKS R2 R3 K9 ["Terrain"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["_terrainRegion"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["_region"]
  GETTABLEKS R5 R6 K4 ["Min"]
  LOADB R6 1
  NAMECALL R2 R2 K12 ["PasteRegion"]
  CALL R2 4 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+50]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K13 ["Set"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K14 ["TransformSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["_pluginController"]
  NEWTABLE R5 4 0
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K16 ["TerrainRegion"]
  SETTABLE R1 R5 R6
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K17 ["TerrainRegionSize"]
  GETUPVAL R9 6
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K18 ["SelectionSettings"]
  GETTABLE R8 R9 R10
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K19 ["Size"]
  GETTABLE R7 R8 R9
  SETTABLE R7 R5 R6
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K20 ["TerrainRegionTransform"]
  GETUPVAL R9 6
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K18 ["SelectionSettings"]
  GETTABLE R8 R9 R10
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K21 ["Transform"]
  GETTABLE R7 R8 R9
  SETTABLE R7 R5 R6
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K22 ["TransformMode"]
  GETUPVAL R8 8
  GETTABLEKS R7 R8 K23 ["Import"]
  SETTABLE R7 R5 R6
  CALL R2 3 0
  JUMP [+52]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K13 ["Set"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K14 ["TransformSettings"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K24 ["Storage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["_pluginController"]
  NEWTABLE R6 4 0
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K16 ["TerrainRegion"]
  SETTABLE R1 R6 R7
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K17 ["TerrainRegionSize"]
  GETUPVAL R10 6
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K18 ["SelectionSettings"]
  GETTABLE R9 R10 R11
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K19 ["Size"]
  GETTABLE R8 R9 R10
  SETTABLE R8 R6 R7
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K20 ["TerrainRegionTransform"]
  GETUPVAL R10 6
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K18 ["SelectionSettings"]
  GETTABLE R9 R10 R11
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K21 ["Transform"]
  GETTABLE R8 R9 R10
  SETTABLE R8 R6 R7
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K22 ["TransformMode"]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K23 ["Import"]
  SETTABLE R8 R6 R7
  CALL R2 4 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K25 ["_toolController"]
  GETTABLEKS R2 R3 K26 ["selectTabAndTool"]
  GETUPVAL R4 10
  GETTABLEKS R3 R4 K27 ["Edit"]
  GETUPVAL R5 11
  GETTABLEKS R4 R5 K21 ["Transform"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_operation"]
  NAMECALL R0 R0 K1 ["wasCanceled"]
  CALL R0 1 1
  JUMPIF R0 [+46]
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["_analytics"]
  LOADK R3 K4 ["RegionProperties"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["getRegionPayload"]
  MOVE R5 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["_operation"]
  NAMECALL R6 R6 K6 ["getTimeTaken"]
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["Generate"]
  CALL R4 3 -1
  NAMECALL R1 R1 K8 ["report"]
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["_analytics"]
  LOADK R3 K9 ["Usage"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["Generate"]
  LOADN R5 1
  NAMECALL R1 R1 K8 ["report"]
  CALL R1 4 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["_operationFinishedConnection"]
  NAMECALL R1 R1 K11 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K10 ["_operationFinishedConnection"]
  RETURN R0 0

PROTO_2:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["_localization"]
  LOADK R5 K2 ["Operations"]
  LOADK R6 K3 ["GenerateName"]
  NAMECALL R3 R3 K4 ["getText"]
  CALL R3 3 1
  GETTABLEKS R4 R0 K1 ["_localization"]
  LOADK R6 K2 ["Operations"]
  LOADK R7 K5 ["GenerateDescription"]
  NAMECALL R4 R4 K4 ["getText"]
  CALL R4 3 1
  GETUPVAL R5 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["SelectionSettings"]
  GETTABLE R7 R2 R8
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["Transform"]
  GETTABLE R6 R7 R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["SelectionSettings"]
  GETTABLE R8 R2 R9
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["Size"]
  GETTABLE R7 R8 R9
  LOADB R8 1
  CALL R5 3 1
  SETTABLEKS R5 R0 K9 ["_region"]
  GETTABLEKS R6 R0 K10 ["_services"]
  GETTABLEKS R5 R6 K11 ["Terrain"]
  GETTABLEKS R7 R0 K9 ["_region"]
  NAMECALL R5 R5 K12 ["CopyRegion"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K13 ["_terrainRegion"]
  GETUPVAL R5 3
  MOVE R6 R3
  MOVE R7 R4
  GETTABLEKS R8 R0 K10 ["_services"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CALL R5 4 1
  SETTABLEKS R5 R0 K14 ["_operation"]
  GETUPVAL R5 12
  CALL R5 0 1
  JUMPIFNOT R5 [+13]
  GETTABLEKS R6 R0 K14 ["_operation"]
  GETTABLEKS R5 R6 K15 ["Finished"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U13
  CAPTURE UPVAL U11
  NAMECALL R5 R5 K16 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K17 ["_operationFinishedConnection"]
  GETTABLEKS R5 R0 K14 ["_operation"]
  GETUPVAL R8 14
  GETTABLEKS R7 R8 K18 ["join"]
  DUPTABLE R8 K20 [{"Payload"}]
  SETTABLEKS R2 R8 K19 ["Payload"]
  MOVE R9 R1
  CALL R7 2 -1
  NAMECALL R5 R5 K21 ["start"]
  CALL R5 -1 0
  GETTABLEKS R5 R0 K22 ["OnOperationChanged"]
  NAMECALL R5 R5 K23 ["Fire"]
  CALL R5 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BiomeSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["Generate"]
  DUPTABLE R7 K7 [{"Hidden", "Label", "Schema", "Value"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K3 ["Hidden"]
  LOADK R8 K8 [""]
  SETTABLEKS R8 R7 K4 ["Label"]
  DUPTABLE R8 K10 [{"OnClick"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K9 ["OnClick"]
  SETTABLEKS R8 R7 K5 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K11 ["_overrides"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["activate"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETTABLEKS R1 R0 K1 ["_analytics"]
  LOADK R3 K2 ["Activated"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["Generate"]
  NAMECALL R1 R1 K4 ["report"]
  CALL R1 3 0
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
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Schemas"]
  GETTABLEKS R3 R4 K12 ["Settings"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K13 ["Flags"]
  GETTABLEKS R5 R6 K14 ["getFFlagTerrainEditorSubformComponent"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K13 ["Flags"]
  GETTABLEKS R6 R7 K15 ["getFFlagTerrainEditorAnalytics"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K16 ["Biome"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K17 ["Selection"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R3 K18 ["Transform"]
  CALL R8 1 1
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K19 ["Util"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R9 K20 ["AnalyticsHelper"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R9 K21 ["ConvertTransformToRegion"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R9 K22 ["SettingsHelper"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K19 ["Util"]
  GETTABLEKS R15 R16 K23 ["Operations"]
  GETTABLEKS R14 R15 K24 ["GenerateOperation"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K25 ["Types"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K16 ["Biome"]
  GETTABLEKS R16 R14 K26 ["BiomeSettings"]
  GETTABLEKS R17 R14 K27 ["Category"]
  GETTABLEKS R18 R14 K28 ["Gizmo"]
  GETTABLEKS R19 R14 K29 ["SelectionSettings"]
  GETTABLEKS R20 R14 K30 ["Tab"]
  GETTABLEKS R21 R14 K31 ["Tool"]
  GETTABLEKS R22 R14 K32 ["TransformMode"]
  GETTABLEKS R23 R14 K33 ["TransformSettings"]
  GETIMPORT R24 K5 [require]
  GETTABLEKS R27 R0 K10 ["Src"]
  GETTABLEKS R26 R27 K13 ["Flags"]
  GETTABLEKS R25 R26 K34 ["getFFlagTerrainEditorGenerateTransform"]
  CALL R24 1 1
  NEWTABLE R25 0 2
  DUPTABLE R26 K38 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R27 0 0
  SETTABLEKS R27 R26 K35 ["Defaults"]
  GETTABLEKS R27 R17 K29 ["SelectionSettings"]
  SETTABLEKS R27 R26 K36 ["Id"]
  MOVE R28 R4
  CALL R28 0 1
  JUMPIFNOT R28 [+2]
  LOADNIL R27
  JUMP [+1]
  MOVE R27 R7
  SETTABLEKS R27 R26 K37 ["Schema"]
  DUPTABLE R27 K38 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R28 8 0
  GETTABLEKS R29 R16 K39 ["Biomes"]
  NEWTABLE R30 4 0
  GETTABLEKS R31 R15 K40 ["Mountains"]
  LOADB R32 1
  SETTABLE R32 R30 R31
  GETTABLEKS R31 R15 K41 ["Hills"]
  LOADB R32 1
  SETTABLE R32 R30 R31
  GETTABLEKS R31 R15 K42 ["Plains"]
  LOADB R32 1
  SETTABLE R32 R30 R31
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R16 K43 ["BiomeBlending"]
  LOADK R30 K44 [0.25]
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R16 K45 ["BiomeSize"]
  LOADN R30 100
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R16 K46 ["Caves"]
  LOADB R30 1
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R16 K47 ["Seed"]
  LOADK R30 K48 [618033988]
  SETTABLE R30 R28 R29
  SETTABLEKS R28 R27 K35 ["Defaults"]
  GETTABLEKS R28 R17 K26 ["BiomeSettings"]
  SETTABLEKS R28 R27 K36 ["Id"]
  MOVE R29 R4
  CALL R29 0 1
  JUMPIFNOT R29 [+2]
  LOADNIL R28
  JUMP [+1]
  MOVE R28 R6
  SETTABLEKS R28 R27 K37 ["Schema"]
  SETLIST R25 R26 2 [1]
  NEWTABLE R26 0 1
  DUPTABLE R27 K49 [{"Id", "Schema"}]
  GETTABLEKS R28 R18 K50 ["Region"]
  SETTABLEKS R28 R27 K36 ["Id"]
  DUPTABLE R28 K54 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R29 R18 K50 ["Region"]
  SETTABLEKS R29 R28 K51 ["Type"]
  LOADB R29 0
  SETTABLEKS R29 R28 K52 ["Wireframe"]
  LOADB R29 0
  SETTABLEKS R29 R28 K53 ["Rotation"]
  SETTABLEKS R28 R27 K37 ["Schema"]
  SETLIST R26 R27 1 [1]
  GETTABLEKS R29 R21 K55 ["Generate"]
  GETTABLEKS R30 R20 K56 ["Create"]
  MOVE R31 R25
  MOVE R32 R26
  NAMECALL R27 R2 K57 ["new"]
  CALL R27 5 1
  DUPCLOSURE R28 K58 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R13
  CAPTURE VAL R24
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R23
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R1
  SETTABLEKS R28 R27 K59 ["startOperation"]
  DUPCLOSURE R28 K60 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R16
  SETTABLEKS R28 R27 K61 ["init"]
  DUPCLOSURE R28 K62 [PROTO_5]
  SETTABLEKS R28 R27 K63 ["operation"]
  DUPCLOSURE R28 K64 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R21
  SETTABLEKS R28 R27 K65 ["activate"]
  RETURN R27 1
