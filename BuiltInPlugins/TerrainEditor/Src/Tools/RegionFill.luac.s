PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getPayload"]
  CALL R0 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["MaterialSettings"]
  GETTABLE R3 R0 R4
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["FillMode"]
  GETTABLE R2 R3 R4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["Fill"]
  JUMPIFNOTEQ R2 R3 [+30]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["_localization"]
  LOADK R3 K5 ["Operations"]
  LOADK R4 K6 ["FillDescription"]
  DUPTABLE R5 K8 [{"material"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["_localization"]
  LOADK R8 K9 ["Materials"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["MaterialSettings"]
  GETTABLE R11 R0 R12
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K10 ["SourceMaterial"]
  GETTABLE R10 R11 R12
  GETTABLEKS R9 R10 K11 ["Name"]
  NAMECALL R6 R6 K12 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["material"]
  NAMECALL R1 R1 K12 ["getText"]
  CALL R1 4 1
  JUMP [+47]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["_localization"]
  LOADK R3 K5 ["Operations"]
  LOADK R4 K13 ["ReplaceDescription"]
  DUPTABLE R5 K16 [{"source", "target"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["_localization"]
  LOADK R8 K9 ["Materials"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["MaterialSettings"]
  GETTABLE R11 R0 R12
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K10 ["SourceMaterial"]
  GETTABLE R10 R11 R12
  GETTABLEKS R9 R10 K11 ["Name"]
  NAMECALL R6 R6 K12 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K14 ["source"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["_localization"]
  LOADK R8 K9 ["Materials"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["MaterialSettings"]
  GETTABLE R11 R0 R12
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K17 ["TargetMaterial"]
  GETTABLE R10 R11 R12
  GETTABLEKS R9 R10 K11 ["Name"]
  NAMECALL R6 R6 K12 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K15 ["target"]
  NAMECALL R1 R1 K12 ["getText"]
  CALL R1 4 1
  GETUPVAL R2 0
  GETUPVAL R3 4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["_localization"]
  LOADK R6 K5 ["Operations"]
  LOADK R8 K18 ["%*Name"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["MaterialSettings"]
  GETTABLE R11 R0 R12
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K2 ["FillMode"]
  GETTABLE R10 R11 R12
  NAMECALL R8 R8 K19 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  NAMECALL R4 R4 K12 ["getText"]
  CALL R4 3 1
  MOVE R5 R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K20 ["_services"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K21 ["_operation"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K21 ["_operation"]
  DUPTABLE R4 K23 [{"Payload"}]
  SETTABLEKS R0 R4 K22 ["Payload"]
  NAMECALL R2 R2 K24 ["start"]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K25 ["OnOperationChanged"]
  NAMECALL R2 R2 K26 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
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
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R9 R8 K15 ["OnClick"]
  SETTABLEKS R8 R7 K3 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K12 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K17 ["_overrides"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Schemas"]
  GETTABLEKS R4 R5 K10 ["Settings"]
  GETTABLEKS R3 R4 K11 ["Material"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Schemas"]
  GETTABLEKS R5 R6 K10 ["Settings"]
  GETTABLEKS R4 R5 K12 ["Selection"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K13 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["Categories"]
  GETTABLEKS R6 R4 K15 ["FillMode"]
  GETTABLEKS R7 R4 K16 ["Gizmo"]
  GETTABLEKS R8 R4 K17 ["MaterialSettings"]
  GETTABLEKS R9 R4 K18 ["ToolCategories"]
  GETTABLEKS R10 R4 K19 ["Tools"]
  GETTABLEKS R12 R0 K8 ["Src"]
  GETTABLEKS R11 R12 K20 ["Util"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R11 K21 ["Operations"]
  GETTABLEKS R13 R14 K22 ["FillOperation"]
  CALL R12 1 1
  NEWTABLE R13 0 2
  DUPTABLE R14 K26 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R15 0 0
  SETTABLEKS R15 R14 K23 ["Defaults"]
  GETTABLEKS R15 R5 K27 ["SelectionSettings"]
  SETTABLEKS R15 R14 K24 ["Id"]
  SETTABLEKS R3 R14 K25 ["Schema"]
  DUPTABLE R15 K26 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R16 4 0
  GETTABLEKS R17 R8 K15 ["FillMode"]
  GETTABLEKS R18 R6 K28 ["Fill"]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R8 K29 ["SourceMaterial"]
  GETIMPORT R18 K32 [Enum.Material.Grass]
  SETTABLE R18 R16 R17
  GETTABLEKS R17 R8 K33 ["TargetMaterial"]
  GETIMPORT R18 K32 [Enum.Material.Grass]
  SETTABLE R18 R16 R17
  SETTABLEKS R16 R15 K23 ["Defaults"]
  GETTABLEKS R16 R5 K17 ["MaterialSettings"]
  SETTABLEKS R16 R15 K24 ["Id"]
  SETTABLEKS R2 R15 K25 ["Schema"]
  SETLIST R13 R14 2 [1]
  NEWTABLE R14 0 1
  DUPTABLE R15 K34 [{"Id", "Schema"}]
  GETTABLEKS R16 R7 K35 ["Region"]
  SETTABLEKS R16 R15 K24 ["Id"]
  DUPTABLE R16 K39 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R17 R7 K35 ["Region"]
  SETTABLEKS R17 R16 K36 ["Type"]
  LOADB R17 1
  SETTABLEKS R17 R16 K37 ["Wireframe"]
  LOADB R17 0
  SETTABLEKS R17 R16 K38 ["Rotation"]
  SETTABLEKS R16 R15 K25 ["Schema"]
  SETLIST R14 R15 1 [1]
  GETTABLEKS R17 R10 K28 ["Fill"]
  GETTABLEKS R18 R9 K40 ["Edit"]
  MOVE R19 R13
  MOVE R20 R14
  NAMECALL R15 R1 K41 ["new"]
  CALL R15 5 1
  DUPCLOSURE R16 K42 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R12
  SETTABLEKS R16 R15 K43 ["init"]
  DUPCLOSURE R16 K44 [PROTO_2]
  SETTABLEKS R16 R15 K45 ["operation"]
  RETURN R15 1
