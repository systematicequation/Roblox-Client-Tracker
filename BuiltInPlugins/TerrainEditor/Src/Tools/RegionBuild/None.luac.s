MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Tools"]
  GETTABLEKS R2 R3 K8 ["BaseTool"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagTerrainEditorRemoveSchema"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Schemas"]
  GETTABLEKS R5 R6 K12 ["Settings"]
  GETTABLEKS R4 R5 K13 ["Build"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K14 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K15 ["BuildSettings"]
  GETTABLEKS R6 R4 K16 ["Category"]
  GETTABLEKS R7 R4 K17 ["Gizmo"]
  GETTABLEKS R8 R4 K18 ["MaterialUnit"]
  GETTABLEKS R9 R4 K19 ["Tab"]
  GETTABLEKS R10 R4 K20 ["TerrainType"]
  NEWTABLE R11 0 1
  DUPTABLE R12 K24 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R13 0 0
  SETTABLEKS R13 R12 K21 ["Defaults"]
  GETTABLEKS R13 R6 K15 ["BuildSettings"]
  SETTABLEKS R13 R12 K22 ["Id"]
  MOVE R14 R2
  CALL R14 0 1
  JUMPIFNOT R14 [+2]
  LOADNIL R13
  JUMP [+1]
  MOVE R13 R3
  SETTABLEKS R13 R12 K23 ["Schema"]
  SETLIST R11 R12 1 [1]
  NEWTABLE R12 0 0
  GETTABLEKS R15 R10 K25 ["None"]
  GETTABLEKS R16 R9 K25 ["None"]
  MOVE R17 R11
  MOVE R18 R12
  NAMECALL R13 R1 K26 ["new"]
  CALL R13 5 1
  RETURN R13 1
