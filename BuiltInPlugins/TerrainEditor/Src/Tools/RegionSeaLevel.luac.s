PROTO_0:
  GETTABLEKS R2 R0 K0 ["_operation"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["start"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K2 ["OnOperationChanged"]
  NAMECALL R2 R2 K3 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  NEWTABLE R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["MaterialSettings"]
  NEWTABLE R5 4 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["FillMode"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["Replace"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["SourceMaterial"]
  GETIMPORT R7 K8 [Enum.Material.Air]
  SETTABLE R7 R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["TargetMaterial"]
  GETIMPORT R7 K11 [Enum.Material.Water]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["SelectionSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K13 ["Size"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K14 ["SeaLevelSettings"]
  GETTABLE R8 R2 R9
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K13 ["Size"]
  GETTABLE R7 R8 R9
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K15 ["Transform"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K14 ["SeaLevelSettings"]
  GETTABLE R8 R2 R9
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K15 ["Transform"]
  GETTABLE R7 R8 R9
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  MOVE R2 R3
  GETTABLEKS R3 R0 K16 ["_localization"]
  LOADK R5 K17 ["Operations"]
  LOADK R6 K18 ["CreateName"]
  NAMECALL R3 R3 K19 ["getText"]
  CALL R3 3 1
  GETTABLEKS R4 R0 K16 ["_localization"]
  LOADK R6 K17 ["Operations"]
  LOADK R7 K20 ["CreateDescription"]
  NAMECALL R4 R4 K19 ["getText"]
  CALL R4 3 1
  GETUPVAL R5 5
  MOVE R6 R3
  MOVE R7 R4
  GETTABLEKS R8 R0 K21 ["_services"]
  CALL R5 3 1
  SETTABLEKS R5 R0 K22 ["_operation"]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K23 ["join"]
  DUPTABLE R8 K25 [{"Payload"}]
  SETTABLEKS R2 R8 K24 ["Payload"]
  MOVE R9 R1
  CALL R7 2 -1
  NAMECALL R5 R0 K26 ["startOperation"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_2:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  NEWTABLE R3 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["MaterialSettings"]
  NEWTABLE R5 4 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["FillMode"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["Replace"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["SourceMaterial"]
  GETIMPORT R7 K8 [Enum.Material.Water]
  SETTABLE R7 R5 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["TargetMaterial"]
  GETIMPORT R7 K11 [Enum.Material.Air]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["SelectionSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K13 ["Size"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K14 ["SeaLevelSettings"]
  GETTABLE R8 R2 R9
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K13 ["Size"]
  GETTABLE R7 R8 R9
  SETTABLE R7 R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K15 ["Transform"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K14 ["SeaLevelSettings"]
  GETTABLE R8 R2 R9
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K15 ["Transform"]
  GETTABLE R7 R8 R9
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  GETTABLEKS R4 R0 K16 ["_localization"]
  LOADK R6 K17 ["Operations"]
  LOADK R7 K18 ["EvaporateName"]
  NAMECALL R4 R4 K19 ["getText"]
  CALL R4 3 1
  GETTABLEKS R5 R0 K16 ["_localization"]
  LOADK R7 K17 ["Operations"]
  LOADK R8 K20 ["EvaporateDescription"]
  NAMECALL R5 R5 K19 ["getText"]
  CALL R5 3 1
  GETUPVAL R6 5
  MOVE R7 R4
  MOVE R8 R5
  GETTABLEKS R9 R0 K21 ["_services"]
  CALL R6 3 1
  SETTABLEKS R6 R0 K22 ["_operation"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K23 ["join"]
  DUPTABLE R9 K25 [{"Payload"}]
  SETTABLEKS R3 R9 K24 ["Payload"]
  MOVE R10 R1
  CALL R8 2 -1
  NAMECALL R6 R0 K26 ["startOperation"]
  CALL R6 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["evaporate"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["create"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["SeaLevelSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["Evaporate"]
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
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["Create"]
  DUPTABLE R7 K7 [{"Hidden", "Label", "Schema", "Value"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K3 ["Hidden"]
  LOADK R8 K8 [""]
  SETTABLEKS R8 R7 K4 ["Label"]
  DUPTABLE R8 K10 [{"OnClick"}]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K9 ["OnClick"]
  SETTABLEKS R8 R7 K5 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K12 ["_overrides"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

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
  GETTABLEKS R5 R6 K15 ["SeaLevel"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K16 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K17 ["Category"]
  GETTABLEKS R7 R5 K18 ["FillMode"]
  GETTABLEKS R8 R5 K19 ["Gizmo"]
  GETTABLEKS R9 R5 K20 ["MaterialSettings"]
  GETTABLEKS R10 R5 K21 ["SeaLevelSettings"]
  GETTABLEKS R11 R5 K22 ["SelectionSettings"]
  GETTABLEKS R12 R5 K23 ["Tab"]
  GETTABLEKS R13 R5 K24 ["Tool"]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K25 ["Util"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R14 K26 ["Operations"]
  GETTABLEKS R16 R17 K27 ["FillOperation"]
  CALL R15 1 1
  NEWTABLE R16 0 1
  DUPTABLE R17 K31 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R18 4 0
  GETTABLEKS R19 R10 K32 ["Size"]
  LOADN R21 64
  LOADN R22 32
  LOADN R23 64
  FASTCALL VECTOR [+2]
  GETIMPORT R20 K35 [Vector3.new]
  CALL R20 3 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R10 K36 ["SnapToVoxels"]
  LOADB R20 1
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R10 K37 ["Transform"]
  GETIMPORT R20 K39 [CFrame.new]
  CALL R20 0 1
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K28 ["Defaults"]
  GETTABLEKS R18 R6 K21 ["SeaLevelSettings"]
  SETTABLEKS R18 R17 K29 ["Id"]
  MOVE R19 R3
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  MOVE R18 R4
  SETTABLEKS R18 R17 K30 ["Schema"]
  SETLIST R16 R17 1 [1]
  NEWTABLE R17 0 1
  DUPTABLE R18 K40 [{"Id", "Schema"}]
  GETTABLEKS R19 R8 K41 ["Region"]
  SETTABLEKS R19 R18 K29 ["Id"]
  DUPTABLE R19 K45 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R20 R8 K41 ["Region"]
  SETTABLEKS R20 R19 K42 ["Type"]
  LOADB R20 0
  SETTABLEKS R20 R19 K43 ["Wireframe"]
  LOADB R20 0
  SETTABLEKS R20 R19 K44 ["Rotation"]
  SETTABLEKS R19 R18 K30 ["Schema"]
  SETLIST R17 R18 1 [1]
  GETTABLEKS R20 R13 K15 ["SeaLevel"]
  GETTABLEKS R21 R12 K46 ["Edit"]
  MOVE R22 R16
  MOVE R23 R17
  NAMECALL R18 R2 K34 ["new"]
  CALL R18 5 1
  DUPCLOSURE R19 K47 [PROTO_0]
  SETTABLEKS R19 R18 K48 ["startOperation"]
  DUPCLOSURE R19 K49 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K50 ["create"]
  DUPCLOSURE R19 K51 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K52 ["evaporate"]
  DUPCLOSURE R19 K53 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K54 ["init"]
  DUPCLOSURE R19 K55 [PROTO_6]
  SETTABLEKS R19 R18 K56 ["operation"]
  RETURN R18 1
