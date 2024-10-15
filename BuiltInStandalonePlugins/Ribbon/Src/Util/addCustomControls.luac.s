PROTO_0:
  GETTABLEKS R3 R0 K0 ["Uri"]
  GETTABLEKS R2 R3 K1 ["PluginId"]
  GETTABLEKS R4 R1 K0 ["Uri"]
  GETTABLEKS R3 R4 K1 ["PluginId"]
  JUMPIFNOTEQ R2 R3 [+14]
  GETTABLEKS R4 R0 K0 ["Uri"]
  GETTABLEKS R3 R4 K2 ["ItemId"]
  GETTABLEKS R5 R1 K0 ["Uri"]
  GETTABLEKS R4 R5 K2 ["ItemId"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R4 R0 K0 ["Uri"]
  GETTABLEKS R3 R4 K1 ["PluginId"]
  GETTABLEKS R5 R1 K0 ["Uri"]
  GETTABLEKS R4 R5 K1 ["PluginId"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R5 0
  FASTCALL1 ASSERT R5 [+2]
  GETIMPORT R4 K1 [assert]
  CALL R4 1 0
  JUMPIFEQKNIL R3 [+4]
  LENGTH R4 R3
  JUMPIFNOTEQKN R4 K2 [0] [+2]
  RETURN R0 0
  GETIMPORT R4 K5 [table.sort]
  MOVE R5 R3
  DUPCLOSURE R6 K6 [PROTO_0]
  CALL R4 2 0
  LOADB R4 0
  MOVE R5 R3
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R11 R9 K7 ["PreferredToolbarUri"]
  GETTABLEKS R10 R11 K8 ["PluginId"]
  GETTABLEKS R11 R0 K8 ["PluginId"]
  JUMPIFNOTEQ R10 R11 [+42]
  GETTABLEKS R11 R9 K7 ["PreferredToolbarUri"]
  GETTABLEKS R10 R11 K9 ["DataModel"]
  GETTABLEKS R11 R0 K9 ["DataModel"]
  JUMPIFNOTEQ R10 R11 [+34]
  GETTABLEKS R11 R9 K7 ["PreferredToolbarUri"]
  GETTABLEKS R10 R11 K10 ["PluginType"]
  GETTABLEKS R11 R0 K10 ["PluginType"]
  JUMPIFNOTEQ R10 R11 [+26]
  GETTABLEKS R11 R9 K7 ["PreferredToolbarUri"]
  GETTABLEKS R10 R11 K11 ["ItemId"]
  LOADK R12 K12 ["Tabs/%*"]
  MOVE R14 R1
  NAMECALL R12 R12 K13 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  JUMPIFNOTEQ R10 R11 [+14]
  LOADB R4 1
  GETUPVAL R10 1
  MOVE R11 R2
  GETTABLEKS R12 R9 K14 ["Controls"]
  CALL R10 2 0
  GETUPVAL R12 2
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K16 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-50]
  JUMPIFNOT R4 [+4]
  GETIMPORT R5 K18 [table.remove]
  MOVE R6 R2
  CALL R5 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Dash"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["append"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["SharedFlags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAddSeparatorsBetweenCustomTools"]
  CALL R4 1 1
  CALL R4 0 1
  DUPTABLE R5 K15 [{"Type", "Size"}]
  LOADK R6 K16 ["Separator"]
  SETTABLEKS R6 R5 K13 ["Type"]
  LOADK R6 K17 ["Large"]
  SETTABLEKS R6 R5 K14 ["Size"]
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  SETGLOBAL R6 K19 ["addCustomControls"]
  GETGLOBAL R6 K19 ["addCustomControls"]
  RETURN R6 1
