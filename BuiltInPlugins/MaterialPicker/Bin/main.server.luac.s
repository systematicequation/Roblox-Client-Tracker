PROTO_0:
  GETIMPORT R0 K1 [plugin]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Name"]
  SETTABLEKS R1 R0 K2 ["Name"]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["createElement"]
  GETUPVAL R1 2
  DUPTABLE R2 K5 [{"Plugin"}]
  GETIMPORT R3 K1 [plugin]
  SETTABLEKS R3 R2 K4 ["Plugin"]
  CALL R0 2 1
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K6 ["createRoot"]
  GETIMPORT R2 K9 [Instance.new]
  LOADK R3 K10 ["Frame"]
  CALL R2 1 -1
  CALL R1 -1 1
  SETUPVAL R1 3
  GETUPVAL R1 3
  MOVE R3 R0
  NAMECALL R1 R1 K11 ["render"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R0 0
  LOADNIL R2
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [plugin]
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K6 [require]
  GETTABLEKS R3 R0 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["launch"]
  LOADK R3 K10 ["MaterialPicker"]
  GETTABLEKS R4 R0 K11 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K12 ["isCli"]
  CALL R2 0 1
  JUMPIF R2 [+4]
  GETTABLEKS R2 R1 K13 ["hasInternalPermission"]
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K15 [game]
  LOADK R4 K16 ["EnableMaterialPicker"]
  NAMECALL R2 R2 K17 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K6 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K18 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K19 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K20 ["MainPlugin"]
  CALL R4 1 1
  LOADNIL R5
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE REF R5
  CAPTURE VAL R3
  GETIMPORT R8 K1 [plugin]
  GETTABLEKS R7 R8 K21 ["Unloading"]
  NEWCLOSURE R9 P1
  CAPTURE REF R5
  NAMECALL R7 R7 K22 ["Connect"]
  CALL R7 2 0
  MOVE R7 R6
  CALL R7 0 0
  CLOSEUPVALS R5
  RETURN R0 0
