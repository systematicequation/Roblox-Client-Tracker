PROTO_0:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["MaterialSettings"]
  GETTABLE R5 R2 R6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["FillMode"]
  GETTABLE R4 R5 R6
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["Fill"]
  JUMPIFNOTEQ R4 R5 [+28]
  GETTABLEKS R3 R0 K4 ["_localization"]
  LOADK R5 K5 ["Operations"]
  LOADK R6 K6 ["FillDescription"]
  DUPTABLE R7 K8 [{"material"}]
  GETTABLEKS R8 R0 K4 ["_localization"]
  LOADK R10 K9 ["Materials"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["MaterialSettings"]
  GETTABLE R13 R2 R14
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K10 ["SourceMaterial"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K11 ["Name"]
  NAMECALL R8 R8 K12 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["material"]
  NAMECALL R3 R3 K12 ["getText"]
  CALL R3 4 1
  JUMP [+44]
  GETTABLEKS R3 R0 K4 ["_localization"]
  LOADK R5 K5 ["Operations"]
  LOADK R6 K13 ["ReplaceDescription"]
  DUPTABLE R7 K16 [{"source", "target"}]
  GETTABLEKS R8 R0 K4 ["_localization"]
  LOADK R10 K9 ["Materials"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["MaterialSettings"]
  GETTABLE R13 R2 R14
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K10 ["SourceMaterial"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K11 ["Name"]
  NAMECALL R8 R8 K12 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K14 ["source"]
  GETTABLEKS R8 R0 K4 ["_localization"]
  LOADK R10 K9 ["Materials"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["MaterialSettings"]
  GETTABLE R13 R2 R14
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K17 ["TargetMaterial"]
  GETTABLE R12 R13 R14
  GETTABLEKS R11 R12 K11 ["Name"]
  NAMECALL R8 R8 K12 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["target"]
  NAMECALL R3 R3 K12 ["getText"]
  CALL R3 4 1
  GETUPVAL R4 3
  GETTABLEKS R5 R0 K4 ["_localization"]
  LOADK R7 K5 ["Operations"]
  LOADK R9 K18 ["%*Name"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K1 ["MaterialSettings"]
  GETTABLE R12 R2 R13
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K2 ["FillMode"]
  GETTABLE R11 R12 R13
  NAMECALL R9 R9 K19 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  NAMECALL R5 R5 K12 ["getText"]
  CALL R5 3 1
  MOVE R6 R3
  GETTABLEKS R7 R0 K20 ["_services"]
  CALL R4 3 1
  SETTABLEKS R4 R0 K21 ["_operation"]
  GETTABLEKS R4 R0 K21 ["_operation"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K22 ["join"]
  DUPTABLE R7 K24 [{"Payload"}]
  SETTABLEKS R2 R7 K23 ["Payload"]
  MOVE R8 R1
  CALL R6 2 -1
  NAMECALL R4 R4 K25 ["start"]
  CALL R4 -1 0
  GETTABLEKS R4 R0 K26 ["OnOperationChanged"]
  NAMECALL R4 R4 K27 ["Fire"]
  CALL R4 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["TransformSettings"]
  NEWTABLE R5 2 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["SourceMaterial"]
  DUPTABLE R7 K4 [{"Schema"}]
  DUPTABLE R8 K6 [{"AllowAir"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K5 ["AllowAir"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  SETTABLE R7 R5 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["TargetMaterial"]
  DUPTABLE R7 K4 [{"Schema"}]
  DUPTABLE R8 K6 [{"AllowAir"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K5 ["AllowAir"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["MaterialSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["Apply"]
  DUPTABLE R7 K13 [{"Hidden", "Label", "Schema", "Value"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K10 ["Hidden"]
  LOADK R8 K14 [""]
  SETTABLEKS R8 R7 K11 ["Label"]
  DUPTABLE R8 K16 [{"OnClick"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K15 ["OnClick"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K12 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K17 ["_overrides"]
  RETURN R0 0

PROTO_3:
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
  GETTABLEKS R5 R6 K15 ["Material"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K13 ["Schemas"]
  GETTABLEKS R7 R8 K14 ["Settings"]
  GETTABLEKS R6 R7 K16 ["Selection"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K17 ["Types"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K18 ["Category"]
  GETTABLEKS R8 R6 K19 ["FillMode"]
  GETTABLEKS R9 R6 K20 ["Gizmo"]
  GETTABLEKS R10 R6 K21 ["MaterialSettings"]
  GETTABLEKS R11 R6 K22 ["Tab"]
  GETTABLEKS R12 R6 K23 ["Tool"]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K24 ["Util"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R13 K25 ["Operations"]
  GETTABLEKS R15 R16 K26 ["FillOperation"]
  CALL R14 1 1
  NEWTABLE R15 0 2
  DUPTABLE R16 K30 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R17 0 0
  SETTABLEKS R17 R16 K27 ["Defaults"]
  GETTABLEKS R17 R7 K31 ["SelectionSettings"]
  SETTABLEKS R17 R16 K28 ["Id"]
  MOVE R18 R3
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADNIL R17
  JUMP [+1]
  MOVE R17 R5
  SETTABLEKS R17 R16 K29 ["Schema"]
  DUPTABLE R17 K30 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R18 4 0
  GETTABLEKS R19 R10 K19 ["FillMode"]
  GETTABLEKS R20 R8 K32 ["Fill"]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R10 K33 ["SourceMaterial"]
  GETIMPORT R20 K36 [Enum.Material.Grass]
  SETTABLE R20 R18 R19
  GETTABLEKS R19 R10 K37 ["TargetMaterial"]
  GETIMPORT R20 K36 [Enum.Material.Grass]
  SETTABLE R20 R18 R19
  SETTABLEKS R18 R17 K27 ["Defaults"]
  GETTABLEKS R18 R7 K21 ["MaterialSettings"]
  SETTABLEKS R18 R17 K28 ["Id"]
  MOVE R19 R3
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  LOADNIL R18
  JUMP [+1]
  MOVE R18 R4
  SETTABLEKS R18 R17 K29 ["Schema"]
  SETLIST R15 R16 2 [1]
  NEWTABLE R16 0 1
  DUPTABLE R17 K38 [{"Id", "Schema"}]
  GETTABLEKS R18 R9 K39 ["Region"]
  SETTABLEKS R18 R17 K28 ["Id"]
  DUPTABLE R18 K43 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R19 R9 K39 ["Region"]
  SETTABLEKS R19 R18 K40 ["Type"]
  LOADB R19 1
  SETTABLEKS R19 R18 K41 ["Wireframe"]
  LOADB R19 0
  SETTABLEKS R19 R18 K42 ["Rotation"]
  SETTABLEKS R18 R17 K29 ["Schema"]
  SETLIST R16 R17 1 [1]
  GETTABLEKS R19 R12 K32 ["Fill"]
  GETTABLEKS R20 R11 K44 ["Edit"]
  MOVE R21 R15
  MOVE R22 R16
  NAMECALL R17 R2 K45 ["new"]
  CALL R17 5 1
  DUPCLOSURE R18 K46 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R1
  SETTABLEKS R18 R17 K47 ["startOperation"]
  DUPCLOSURE R18 K48 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R18 R17 K49 ["init"]
  DUPCLOSURE R18 K50 [PROTO_3]
  SETTABLEKS R18 R17 K51 ["operation"]
  RETURN R17 1
