PROTO_0:
  FASTCALL2K ASSERT R0 K0 [+5]
  MOVE R3 R0
  LOADK R4 K0 ["PluginActionsController.new() requires a plugin"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  DUPTABLE R3 K4 [{"_pluginActions"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["new"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["_pluginActions"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K7 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  MOVE R4 R1
  LOADB R5 1
  NAMECALL R2 R0 K0 ["SetEnabled"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  MOVE R4 R1
  LOADB R5 0
  NAMECALL R2 R0 K0 ["SetEnabled"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R3 R0 K0 ["_pluginActions"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["get"]
  CALL R3 2 1
  SETTABLEKS R2 R3 K2 ["Enabled"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R4 R0 K0 ["_pluginActions"]
  MOVE R6 R1
  NAMECALL R4 R4 K1 ["get"]
  CALL R4 2 1
  GETTABLEKS R3 R4 K2 ["Triggered"]
  MOVE R5 R2
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["ContextServices"]
  GETTABLEKS R3 R2 K8 ["ContextItem"]
  GETTABLEKS R4 R2 K9 ["PluginActions"]
  LOADK R7 K10 ["PluginActionsController"]
  NAMECALL R5 R3 K11 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K13 ["new"]
  DUPCLOSURE R6 K14 [PROTO_1]
  SETTABLEKS R6 R5 K15 ["Enable"]
  DUPCLOSURE R6 K16 [PROTO_2]
  SETTABLEKS R6 R5 K17 ["Disable"]
  DUPCLOSURE R6 K18 [PROTO_3]
  SETTABLEKS R6 R5 K19 ["SetEnabled"]
  DUPCLOSURE R6 K20 [PROTO_4]
  SETTABLEKS R6 R5 K21 ["Connect"]
  RETURN R5 1
