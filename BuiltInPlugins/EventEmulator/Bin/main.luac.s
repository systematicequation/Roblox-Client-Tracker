PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Name"]
  SETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["createElement"]
  GETUPVAL R1 3
  DUPTABLE R2 K5 [{"Plugin", "ClickableWhenViewportHidden", "pluginLoaderContext"}]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K2 ["Plugin"]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["ClickableWhenViewportHidden"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K4 ["pluginLoaderContext"]
  CALL R0 2 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["mount"]
  MOVE R2 R0
  CALL R1 1 1
  SETUPVAL R1 5
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R2 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R2 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["MainPlugin"]
  CALL R4 1 1
  LOADNIL R5
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE REF R5
  GETTABLEKS R7 R0 K9 ["Unloading"]
  NEWCLOSURE R9 P1
  CAPTURE REF R5
  CAPTURE VAL R3
  NAMECALL R7 R7 K10 ["Connect"]
  CALL R7 2 0
  GETTABLEKS R7 R2 K11 ["Name"]
  SETTABLEKS R7 R0 K11 ["Name"]
  GETTABLEKS R7 R3 K12 ["createElement"]
  MOVE R8 R4
  DUPTABLE R9 K16 [{"Plugin", "ClickableWhenViewportHidden", "pluginLoaderContext"}]
  SETTABLEKS R0 R9 K13 ["Plugin"]
  LOADB R10 1
  SETTABLEKS R10 R9 K14 ["ClickableWhenViewportHidden"]
  SETTABLEKS R1 R9 K15 ["pluginLoaderContext"]
  CALL R7 2 1
  GETTABLEKS R8 R3 K17 ["mount"]
  MOVE R9 R7
  CALL R8 1 1
  MOVE R5 R8
  CLOSEUPVALS R5
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_2]
  RETURN R0 1
