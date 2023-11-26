PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["baseSizeHeightLocked"]
  NOT R0 R1
  JUMPIF R0 [+11]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["brushShape"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["Sphere"]
  JUMPIFNOTEQ R1 R2 [+2]
  LOADB R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["dispatchSetBaseSizeHeightLocked"]
  MOVE R2 R0
  CALL R1 1 0
  JUMPIFNOT R0 [+11]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K5 ["dispatchChangeHeight"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K6 ["baseSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchChangeBaseSize"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["baseSizeHeightLocked"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["dispatchChangeHeight"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchChangeHeight"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["baseSizeHeightLocked"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["dispatchChangeBaseSize"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchChooseBrushShape"]
  JUMPIFNOT R1 [+36]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchChooseBrushShape"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["Sphere"]
  JUMPIFNOTEQ R0 R1 [+25]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["baseSizeHeightLocked"]
  JUMPIF R1 [+18]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["dispatchSetBaseSizeHeightLocked"]
  LOADB R2 1
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K5 ["dispatchChangeHeight"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K6 ["baseSize"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetFixedPlane"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetFixedPlane"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["dispatchSetHeightPicker"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["dispatchSetHeightPicker"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetBrushMode"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetBrushMode"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  LOADB R0 1
  LOADB R1 0
  LOADB R2 0
  LOADB R3 1
  LOADB R4 0
  LOADB R5 0
  LOADB R6 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["None"]
  LOADB R8 0
  LOADNIL R9
  LOADB R10 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K2 ["planeLock"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K3 ["Manual"]
  JUMPIFNOTEQ R11 R12 [+10]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K4 ["ToolUsesPlaneLock"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K1 ["props"]
  GETTABLEKS R12 R13 K5 ["toolName"]
  GETTABLE R10 R11 R12
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K6 ["PluginActionsController"]
  LOADK R13 K7 ["EditPlane"]
  MOVE R14 R10
  NAMECALL R11 R11 K8 ["SetEnabled"]
  CALL R11 3 0
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K9 ["dispatchSetPlaneLock"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R0 R11 K2 ["planeLock"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K10 ["dispatchSetAutoMaterial"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R1 R11 K11 ["autoMaterial"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K12 ["dispatchSetIgnoreWater"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R2 R11 K13 ["ignoreWater"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K14 ["dispatchSetIgnoreParts"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R3 R11 K15 ["ignoreParts"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K16 ["dispatchSetSnapToVoxels"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R4 R11 K17 ["snapToVoxels"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K18 ["dispatchSetEditPlaneMode"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R6 R11 K19 ["editPlaneMode"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K20 ["dispatchSetPlaneCFrame"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R7 R11 K21 ["planeCFrame"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K22 ["dispatchSetFixedPlane"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R5 R11 K23 ["fixedPlane"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K24 ["dispatchSetHeightPicker"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R8 R11 K25 ["heightPicker"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["props"]
  GETTABLEKS R11 R12 K26 ["dispatchSetPlaneLockActive"]
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["props"]
  GETTABLEKS R9 R11 K27 ["PlaneLockActive"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K28 ["terrainBrush"]
  DUPTABLE R13 K43 [{"autoMaterial", "baseSizeHeightLocked", "brushMode", "brushShape", "cursorHeight", "cursorSize", "fixedPlane", "flattenMode", "heightPicker", "ignoreWater", "ignoreParts", "material", "replaceMaterial", "source", "target", "pivot", "planeLock", "editPlaneMode", "planeCFrame", "planeLockActive", "planePositionY", "snapToVoxels", "strength"}]
  SETTABLEKS R1 R13 K11 ["autoMaterial"]
  GETUPVAL R15 4
  JUMPIFNOT R15 [+6]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K29 ["baseSizeHeightLocked"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K29 ["baseSizeHeightLocked"]
  GETUPVAL R15 4
  JUMPIFNOT R15 [+12]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K30 ["brushMode"]
  JUMPIF R14 [+7]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K44 ["BrushMode"]
  GETTABLEKS R14 R15 K45 ["Add"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K30 ["brushMode"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K31 ["brushShape"]
  JUMPIF R14 [+3]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K46 ["Sphere"]
  SETTABLEKS R14 R13 K31 ["brushShape"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K47 ["height"]
  JUMPIF R14 [+3]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K48 ["INITIAL_BRUSH_SIZE"]
  SETTABLEKS R14 R13 K32 ["cursorHeight"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K49 ["baseSize"]
  JUMPIF R14 [+3]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K48 ["INITIAL_BRUSH_SIZE"]
  SETTABLEKS R14 R13 K33 ["cursorSize"]
  SETTABLEKS R5 R13 K23 ["fixedPlane"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K34 ["flattenMode"]
  SETTABLEKS R14 R13 K34 ["flattenMode"]
  SETTABLEKS R8 R13 K25 ["heightPicker"]
  SETTABLEKS R2 R13 K13 ["ignoreWater"]
  SETTABLEKS R3 R13 K15 ["ignoreParts"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K35 ["material"]
  SETTABLEKS R14 R13 K35 ["material"]
  GETUPVAL R15 4
  JUMPIFNOT R15 [+6]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K36 ["replaceMaterial"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K36 ["replaceMaterial"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K37 ["source"]
  SETTABLEKS R14 R13 K37 ["source"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K38 ["target"]
  SETTABLEKS R14 R13 K38 ["target"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K39 ["pivot"]
  JUMPIF R14 [+3]
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K50 ["Center"]
  SETTABLEKS R14 R13 K39 ["pivot"]
  SETTABLEKS R0 R13 K2 ["planeLock"]
  SETTABLEKS R6 R13 K19 ["editPlaneMode"]
  SETTABLEKS R7 R13 K21 ["planeCFrame"]
  SETTABLEKS R9 R13 K40 ["planeLockActive"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K41 ["planePositionY"]
  SETTABLEKS R14 R13 K41 ["planePositionY"]
  SETTABLEKS R4 R13 K17 ["snapToVoxels"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K1 ["props"]
  GETTABLEKS R14 R15 K42 ["strength"]
  JUMPIF R14 [+3]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K51 ["INITIAL_BRUSH_STRENGTH"]
  SETTABLEKS R14 R13 K42 ["strength"]
  NAMECALL R11 R11 K52 ["updateSettings"]
  CALL R11 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["terrainBrush"]
  NAMECALL R0 R0 K1 ["start"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R0 K1 [spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ToolId"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["toolName"]
  GETTABLE R2 R3 R4
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Cannot use BaseBrush if brush type is not known"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["connections"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K7 ["toggleBaseSizeHeightLocked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["setBaseSize"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["setHeight"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K10 ["setBrushShape"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["setFixedPlane"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["setBrushMode"]
  NEWCLOSURE R1 P6
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  SETTABLEKS R1 R0 K13 ["updateBrushProperties"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["startBrush"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["toolName"]
  JUMPIFNOTEQ R0 R1 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["terrainBrush"]
  NAMECALL R1 R1 K3 ["stop"]
  CALL R1 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["ToolUsesPlaneLock"]
  GETUPVAL R3 2
  NAMECALL R3 R3 K5 ["getActiveTool"]
  CALL R3 1 1
  GETTABLE R1 R2 R3
  JUMPIF R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K6 ["dispatchSetPlaneLockActive"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["toolName"]
  JUMPIFNOTEQ R0 R1 [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["startBrush"]
  CALL R1 0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["ToolUsesPlaneLock"]
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["dispatchSetPlaneLockActive"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["dispatchChangeBaseSize"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["dispatchChangeBaseSize"]
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["dispatchChangeHeight"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["dispatchChangeHeight"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchChangeStrength"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchChangeStrength"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchChangePlanePositionY"]
  JUMPIFNOT R1 [+13]
  MULK R3 R0 K2 [1000]
  FASTCALL1 MATH_FLOOR R3 [+2]
  GETIMPORT R2 K5 [math.floor]
  CALL R2 1 1
  DIVK R1 R2 K2 [1000]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["dispatchChangePlanePositionY"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetHeightPicker"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["dispatchSetHeightPicker"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  JUMPIF R1 [+27]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["dispatchSetMaterial"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["dispatchSetMaterial"]
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["dispatchSetSourceMaterial"]
  JUMPIFNOT R2 [+21]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["dispatchSetSourceMaterial"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["dispatchSetTargetMaterial"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["dispatchSetTargetMaterial"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["dispatchSetEditPlaneMode"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["dispatchSetEditPlaneMode"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["editPlaneMode"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginActivationController"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["PluginActionsController"]
  GETTABLEKS R4 R0 K3 ["connections"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  NAMECALL R5 R1 K4 ["subscribeToToolDeactivated"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K7 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R0 K3 ["connections"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R5 R1 K8 ["subscribeToToolActivated"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K7 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R0 K3 ["connections"]
  GETTABLEKS R5 R0 K9 ["terrainBrush"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  NAMECALL R5 R5 K10 ["subscribeToRequestBrushSizeChanged"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K7 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R0 K3 ["connections"]
  GETTABLEKS R5 R0 K9 ["terrainBrush"]
  NEWCLOSURE R7 P3
  CAPTURE VAL R0
  NAMECALL R5 R5 K11 ["subscribeToRequestBrushStrengthChanged"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K7 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R0 K3 ["connections"]
  GETTABLEKS R5 R0 K9 ["terrainBrush"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R0
  NAMECALL R5 R5 K12 ["subscribeToPlanePositionYChanged"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K7 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R0 K3 ["connections"]
  GETTABLEKS R5 R0 K9 ["terrainBrush"]
  NEWCLOSURE R7 P5
  CAPTURE VAL R0
  NAMECALL R5 R5 K13 ["subscribeToHeightPickerSet"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K7 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R0 K3 ["connections"]
  GETTABLEKS R5 R0 K9 ["terrainBrush"]
  NEWCLOSURE R7 P6
  CAPTURE VAL R0
  NAMECALL R5 R5 K14 ["subscribeToMaterialSelectRequested"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K7 [table.insert]
  CALL R3 -1 0
  GETTABLEKS R4 R0 K3 ["connections"]
  LOADK R7 K15 ["EditPlane"]
  NEWCLOSURE R8 P7
  CAPTURE VAL R0
  NAMECALL R5 R2 K16 ["Connect"]
  CALL R5 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K7 [table.insert]
  CALL R3 -1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R3 R0 K0 ["updateBrushProperties"]
  CALL R3 0 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  DUPTABLE R2 K5 [{"terrain", "mouse", "analytics", "tool"}]
  GETTABLEKS R4 R0 K6 ["props"]
  GETTABLEKS R3 R4 K7 ["Terrain"]
  NAMECALL R3 R3 K8 ["get"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["terrain"]
  GETTABLEKS R4 R0 K6 ["props"]
  GETTABLEKS R3 R4 K9 ["Mouse"]
  NAMECALL R3 R3 K8 ["get"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["mouse"]
  GETTABLEKS R4 R0 K6 ["props"]
  GETTABLEKS R3 R4 K10 ["Analytics"]
  SETTABLEKS R3 R2 K3 ["analytics"]
  GETTABLEKS R4 R0 K6 ["props"]
  GETTABLEKS R3 R4 K11 ["toolName"]
  SETTABLEKS R3 R2 K4 ["tool"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K12 ["terrainBrush"]
  NAMECALL R1 R0 K13 ["_connectEvents"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K14 ["updateBrushProperties"]
  CALL R1 0 0
  GETTABLEKS R1 R0 K15 ["startBrush"]
  CALL R1 0 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["connections"]
  JUMPIFNOT R1 [+16]
  GETTABLEKS R4 R0 K0 ["connections"]
  LENGTH R3 R4
  LOADN R1 1
  LOADN R2 255
  FORNPREP R1
  GETTABLEKS R5 R0 K0 ["connections"]
  GETTABLE R4 R5 R3
  NAMECALL R4 R4 K1 ["Disconnect"]
  CALL R4 1 0
  FORNLOOP R1
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["connections"]
  GETTABLEKS R1 R0 K2 ["terrainBrush"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["terrainBrush"]
  NAMECALL R1 R1 K3 ["destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["terrainBrush"]
  RETURN R0 0

PROTO_22:
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["LayoutOrder"]
  ORK R1 R2 K0 [1]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K3 ["isSubsection"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R3 R4 K4 ["allowAir"]
  GETTABLEKS R5 R0 K1 ["props"]
  GETTABLEKS R4 R5 K5 ["autoMaterial"]
  GETTABLEKS R6 R0 K1 ["props"]
  GETTABLEKS R5 R6 K6 ["baseSize"]
  GETTABLEKS R7 R0 K1 ["props"]
  GETTABLEKS R6 R7 K7 ["baseSizeHeightLocked"]
  GETTABLEKS R8 R0 K1 ["props"]
  GETTABLEKS R7 R8 K8 ["brushMode"]
  GETTABLEKS R9 R0 K1 ["props"]
  GETTABLEKS R8 R9 K9 ["brushShape"]
  GETTABLEKS R10 R0 K1 ["props"]
  GETTABLEKS R9 R10 K10 ["editPlaneMode"]
  JUMPIFNOT R9 [+4]
  GETTABLEKS R10 R0 K1 ["props"]
  GETTABLEKS R9 R10 K11 ["PlaneLockActive"]
  GETTABLEKS R11 R0 K1 ["props"]
  GETTABLEKS R10 R11 K12 ["fixedPlane"]
  GETTABLEKS R12 R0 K1 ["props"]
  GETTABLEKS R11 R12 K13 ["flattenMode"]
  GETTABLEKS R13 R0 K1 ["props"]
  GETTABLEKS R12 R13 K14 ["height"]
  GETTABLEKS R14 R0 K1 ["props"]
  GETTABLEKS R13 R14 K15 ["heightPicker"]
  GETTABLEKS R15 R0 K1 ["props"]
  GETTABLEKS R14 R15 K16 ["ignoreWater"]
  GETTABLEKS R16 R0 K1 ["props"]
  GETTABLEKS R15 R16 K17 ["ignoreParts"]
  GETTABLEKS R17 R0 K1 ["props"]
  GETTABLEKS R16 R17 K18 ["material"]
  GETTABLEKS R18 R0 K1 ["props"]
  GETTABLEKS R17 R18 K19 ["replaceMaterial"]
  GETTABLEKS R19 R0 K1 ["props"]
  GETTABLEKS R18 R19 K20 ["source"]
  GETTABLEKS R20 R0 K1 ["props"]
  GETTABLEKS R19 R20 K21 ["target"]
  GETTABLEKS R21 R0 K1 ["props"]
  GETTABLEKS R20 R21 K22 ["pivot"]
  GETTABLEKS R22 R0 K1 ["props"]
  GETTABLEKS R21 R22 K23 ["planeCFrame"]
  GETTABLEKS R23 R0 K1 ["props"]
  GETTABLEKS R22 R23 K24 ["planeLock"]
  GETTABLEKS R24 R0 K1 ["props"]
  GETTABLEKS R23 R24 K25 ["disablePlaneLock"]
  GETTABLEKS R25 R0 K1 ["props"]
  GETTABLEKS R24 R25 K26 ["disableIgnoreWater"]
  GETTABLEKS R26 R0 K1 ["props"]
  GETTABLEKS R25 R26 K27 ["planePositionY"]
  GETTABLEKS R27 R0 K1 ["props"]
  GETTABLEKS R26 R27 K28 ["snapToVoxels"]
  GETTABLEKS R28 R0 K1 ["props"]
  GETTABLEKS R27 R28 K29 ["strength"]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K30 ["createFragment"]
  DUPTABLE R29 K33 [{"BrushSettings", "MaterialSettings"}]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K34 ["createElement"]
  GETUPVAL R31 1
  NEWTABLE R32 64 0
  SETTABLEKS R1 R32 K2 ["LayoutOrder"]
  SETTABLEKS R2 R32 K3 ["isSubsection"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K35 ["toolName"]
  SETTABLEKS R33 R32 K36 ["currentTool"]
  SETTABLEKS R5 R32 K6 ["baseSize"]
  SETTABLEKS R6 R32 K7 ["baseSizeHeightLocked"]
  GETUPVAL R34 2
  JUMPIFNOT R34 [+2]
  MOVE R33 R7
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K8 ["brushMode"]
  SETTABLEKS R8 R32 K9 ["brushShape"]
  SETTABLEKS R10 R32 K12 ["fixedPlane"]
  SETTABLEKS R11 R32 K13 ["flattenMode"]
  SETTABLEKS R12 R32 K14 ["height"]
  SETTABLEKS R13 R32 K15 ["heightPicker"]
  SETTABLEKS R14 R32 K16 ["ignoreWater"]
  SETTABLEKS R15 R32 K17 ["ignoreParts"]
  SETTABLEKS R20 R32 K22 ["pivot"]
  SETTABLEKS R22 R32 K24 ["planeLock"]
  SETTABLEKS R23 R32 K25 ["disablePlaneLock"]
  SETTABLEKS R24 R32 K26 ["disableIgnoreWater"]
  SETTABLEKS R25 R32 K27 ["planePositionY"]
  SETTABLEKS R26 R32 K28 ["snapToVoxels"]
  SETTABLEKS R9 R32 K10 ["editPlaneMode"]
  SETTABLEKS R21 R32 K23 ["planeCFrame"]
  SETTABLEKS R27 R32 K29 ["strength"]
  GETTABLEKS R33 R0 K37 ["setBaseSize"]
  SETTABLEKS R33 R32 K37 ["setBaseSize"]
  GETUPVAL R34 2
  JUMPIFNOT R34 [+3]
  GETTABLEKS R33 R0 K38 ["setBrushMode"]
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K38 ["setBrushMode"]
  GETTABLEKS R33 R0 K39 ["setBrushShape"]
  SETTABLEKS R33 R32 K39 ["setBrushShape"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K40 ["dispatchSetEditPlaneMode"]
  SETTABLEKS R33 R32 K41 ["setEditPlaneMode"]
  GETTABLEKS R33 R0 K42 ["setFixedPlane"]
  SETTABLEKS R33 R32 K42 ["setFixedPlane"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K43 ["dispatchChooseFlattenMode"]
  SETTABLEKS R33 R32 K44 ["setFlattenMode"]
  GETTABLEKS R33 R0 K45 ["setHeight"]
  SETTABLEKS R33 R32 K45 ["setHeight"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K46 ["dispatchSetHeightPicker"]
  SETTABLEKS R33 R32 K47 ["setHeightPicker"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K48 ["dispatchSetIgnoreWater"]
  SETTABLEKS R33 R32 K49 ["setIgnoreWater"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K50 ["dispatchSetIgnoreParts"]
  SETTABLEKS R33 R32 K51 ["setIgnoreParts"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K52 ["dispatchChangePivot"]
  SETTABLEKS R33 R32 K53 ["setPivot"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K54 ["dispatchSetPlaneCFrame"]
  SETTABLEKS R33 R32 K55 ["setPlaneCFrame"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K56 ["dispatchSetPlaneLock"]
  SETTABLEKS R33 R32 K57 ["setPlaneLock"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K58 ["dispatchChangePlanePositionY"]
  SETTABLEKS R33 R32 K59 ["setPlanePositionY"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K60 ["dispatchSetSnapToVoxels"]
  SETTABLEKS R33 R32 K61 ["setSnapToVoxels"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K62 ["dispatchChangeStrength"]
  SETTABLEKS R33 R32 K63 ["setStrength"]
  GETTABLEKS R33 R0 K64 ["toggleBaseSizeHeightLocked"]
  SETTABLEKS R33 R32 K64 ["toggleBaseSizeHeightLocked"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K31 ["BrushSettings"]
  MOVE R30 R16
  JUMPIFNOT R30 [+84]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K34 ["createElement"]
  GETUPVAL R31 3
  DUPTABLE R32 K71 [{"LayoutOrder", "AllowAir", "autoMaterial", "currentTool", "material", "replaceMaterial", "source", "target", "setAutoMaterial", "setMaterial", "setReplaceMaterial", "setSource", "setTarget"}]
  ADDK R33 R1 K0 [1]
  SETTABLEKS R33 R32 K2 ["LayoutOrder"]
  SETTABLEKS R3 R32 K65 ["AllowAir"]
  SETTABLEKS R4 R32 K5 ["autoMaterial"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K35 ["toolName"]
  SETTABLEKS R33 R32 K36 ["currentTool"]
  SETTABLEKS R16 R32 K18 ["material"]
  GETUPVAL R34 2
  JUMPIFNOT R34 [+2]
  MOVE R33 R17
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K19 ["replaceMaterial"]
  GETUPVAL R34 2
  JUMPIFNOT R34 [+2]
  MOVE R33 R18
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K20 ["source"]
  GETUPVAL R34 2
  JUMPIFNOT R34 [+2]
  MOVE R33 R19
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K21 ["target"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K72 ["dispatchSetAutoMaterial"]
  SETTABLEKS R33 R32 K66 ["setAutoMaterial"]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K73 ["dispatchSetMaterial"]
  SETTABLEKS R33 R32 K67 ["setMaterial"]
  GETUPVAL R34 2
  JUMPIFNOT R34 [+5]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K74 ["dispatchSetReplaceMaterial"]
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K68 ["setReplaceMaterial"]
  GETUPVAL R34 2
  JUMPIFNOT R34 [+5]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K75 ["dispatchSetSourceMaterial"]
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K69 ["setSource"]
  GETUPVAL R34 2
  JUMPIFNOT R34 [+5]
  GETTABLEKS R34 R0 K1 ["props"]
  GETTABLEKS R33 R34 K76 ["dispatchSetTargetMaterial"]
  JUMP [+1]
  LOADNIL R33
  SETTABLEKS R33 R32 K70 ["setTarget"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K32 ["MaterialSettings"]
  CALL R28 1 -1
  RETURN R28 -1

PROTO_23:
  DUPTABLE R2 K1 [{"PlaneLockActive"}]
  GETTABLEKS R4 R0 K2 ["BaseTool"]
  GETTABLEKS R3 R4 K3 ["planeLockActive"]
  SETTABLEKS R3 R2 K0 ["PlaneLockActive"]
  RETURN R2 1

PROTO_24:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["BaseTool"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["BaseTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_26:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  DUPTABLE R2 K1 [{"dispatchSetPlaneLockActive"}]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K0 ["dispatchSetPlaneLockActive"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K12 ["ApplyToolAction"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K13 ["SetPlaneLockActive"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K14 ["ContextServices"]
  GETTABLEKS R9 R8 K15 ["withContext"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K10 ["Src"]
  GETTABLEKS R11 R12 K16 ["ContextItems"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K17 ["TerrainInterfaces"]
  GETTABLEKS R12 R13 K18 ["TerrainBrushInstance"]
  CALL R11 1 1
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K19 ["Components"]
  GETTABLEKS R13 R14 K20 ["Tools"]
  GETTABLEKS R12 R13 K21 ["ToolParts"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R12 K22 ["BrushSettings"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R12 K23 ["MaterialSettings"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K24 ["Util"]
  GETTABLEKS R16 R17 K25 ["Constants"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K10 ["Src"]
  GETTABLEKS R18 R19 K24 ["Util"]
  GETTABLEKS R17 R18 K26 ["TerrainEnums"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K27 ["BrushShape"]
  GETTABLEKS R18 R16 K28 ["PivotType"]
  GETTABLEKS R19 R16 K29 ["PlaneLockType"]
  GETIMPORT R20 K31 [game]
  LOADK R22 K32 ["TerrainEditorOverhaul"]
  NAMECALL R20 R20 K33 ["GetFastFlag"]
  CALL R20 2 1
  GETTABLEKS R21 R2 K34 ["PureComponent"]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K35 ["Name"]
  NAMECALL R21 R21 K36 ["extend"]
  CALL R21 2 1
  DUPCLOSURE R22 K37 [PROTO_9]
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE VAL R15
  CAPTURE VAL R20
  CAPTURE VAL R18
  SETTABLEKS R22 R21 K38 ["init"]
  DUPCLOSURE R22 K39 [PROTO_18]
  CAPTURE VAL R15
  SETTABLEKS R22 R21 K40 ["_connectEvents"]
  DUPCLOSURE R22 K41 [PROTO_19]
  SETTABLEKS R22 R21 K42 ["didUpdate"]
  DUPCLOSURE R22 K43 [PROTO_20]
  CAPTURE VAL R11
  SETTABLEKS R22 R21 K44 ["didMount"]
  DUPCLOSURE R22 K45 [PROTO_21]
  SETTABLEKS R22 R21 K46 ["willUnmount"]
  DUPCLOSURE R22 K47 [PROTO_22]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R20
  CAPTURE VAL R14
  SETTABLEKS R22 R21 K48 ["render"]
  MOVE R22 R9
  DUPTABLE R23 K54 [{"Mouse", "Analytics", "Terrain", "PluginActivationController", "PluginActionsController"}]
  GETTABLEKS R24 R8 K49 ["Mouse"]
  SETTABLEKS R24 R23 K49 ["Mouse"]
  GETTABLEKS R24 R8 K50 ["Analytics"]
  SETTABLEKS R24 R23 K50 ["Analytics"]
  GETTABLEKS R24 R10 K51 ["Terrain"]
  SETTABLEKS R24 R23 K51 ["Terrain"]
  GETTABLEKS R24 R10 K52 ["PluginActivationController"]
  SETTABLEKS R24 R23 K52 ["PluginActivationController"]
  GETTABLEKS R24 R10 K53 ["PluginActionsController"]
  SETTABLEKS R24 R23 K53 ["PluginActionsController"]
  CALL R22 1 1
  MOVE R23 R21
  CALL R22 1 1
  MOVE R21 R22
  DUPCLOSURE R22 K55 [PROTO_23]
  DUPCLOSURE R23 K56 [PROTO_26]
  CAPTURE VAL R6
  CAPTURE VAL R7
  GETTABLEKS R24 R4 K57 ["connect"]
  MOVE R25 R22
  MOVE R26 R23
  CALL R24 2 1
  MOVE R25 R21
  CALL R24 1 -1
  RETURN R24 -1
