MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Packages"]
  GETTABLEKS R1 R2 K4 ["DraggerFramework"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R1 K7 ["Flags"]
  GETTABLEKS R3 R4 K8 ["getFFlagImprovePluginSpeedScaleDragger"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K6 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K9 ["main"]
  CALL R3 1 1
  MOVE R4 R3
  GETIMPORT R5 K11 [plugin]
  CALL R4 1 0
  RETURN R0 0
