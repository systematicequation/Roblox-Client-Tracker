MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K10 [".ItemRow"]
  DUPTABLE R5 K12 [{"Size"}]
  GETIMPORT R6 K15 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 50
  CALL R6 4 1
  SETTABLEKS R6 R5 K11 ["Size"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K16 ["> .ThumbnailContainer"]
  DUPTABLE R9 K12 [{"Size"}]
  GETIMPORT R10 K18 [UDim2.fromOffset]
  LOADN R11 50
  LOADN R12 50
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["Size"]
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K19 ["> .Thumbnail"]
  DUPTABLE R13 K12 [{"Size"}]
  GETIMPORT R14 K18 [UDim2.fromOffset]
  LOADN R15 30
  LOADN R16 30
  CALL R14 2 1
  SETTABLEKS R14 R13 K11 ["Size"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  DUPTABLE R7 K21 [{"ThumbnailSize"}]
  LOADN R8 50
  SETTABLEKS R8 R7 K20 ["ThumbnailSize"]
  CALL R3 4 -1
  RETURN R3 -1
