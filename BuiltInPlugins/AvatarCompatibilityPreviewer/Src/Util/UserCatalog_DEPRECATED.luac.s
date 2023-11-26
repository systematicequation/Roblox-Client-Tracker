PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["CatalogName"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["catalogFolder"]
  CALL R0 0 1
  JUMPIFEQKNIL R0 [+2]
  RETURN R0 1
  GETIMPORT R1 K3 [Instance.new]
  LOADK R2 K4 ["Folder"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["CatalogName"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K7 ["Parent"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["catalogFolder"]
  CALL R1 0 1
  JUMPIFNOTEQKNIL R1 [+3]
  LOADNIL R2
  RETURN R2 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  MOVE R4 R0
  NAMECALL R2 R1 K4 ["FindFirstChild"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCAvatarService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["Constants"]
  CALL R2 1 1
  NEWTABLE R3 4 0
  LOADK R4 K13 ["Catalog"]
  SETTABLEKS R4 R3 K14 ["CatalogName"]
  DUPCLOSURE R4 K15 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K16 ["catalogFolder"]
  DUPCLOSURE R4 K17 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K18 ["catalogFolderOrCreate"]
  DUPCLOSURE R4 K19 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K20 ["getItemById"]
  RETURN R3 1
