MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Packages"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R3 R0 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["Src"]
  GETTABLEKS R1 R2 K6 ["Flags"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R3 R1 K9 ["getFFlagDebugAssetImporterPackageMigration"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R4 R0 K10 ["RoactCompat"]
  CALL R3 1 -1
  RETURN R3 -1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R0 K11 ["_Index"]
  GETTABLEKS R5 R6 K12 ["Roact"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 -1
  RETURN R3 -1
