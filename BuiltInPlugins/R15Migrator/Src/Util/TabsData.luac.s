PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R3 1
  NOT R2 R3
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K1 [assert]
  CALL R1 1 0
  NEWTABLE R1 0 0
  SETUPVAL R1 1
  NEWTABLE R1 0 0
  SETUPVAL R1 0
  GETUPVAL R1 2
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R6 1
  DUPTABLE R7 K5 [{"Tooltip", "Key", "Icon"}]
  LOADK R10 K6 ["Tabs"]
  MOVE R11 R5
  NAMECALL R8 R0 K7 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K2 ["Tooltip"]
  SETTABLEKS R5 R7 K3 ["Key"]
  GETIMPORT R8 K10 [string.format]
  LOADK R9 K11 ["rbxasset://textures/R15Migrator/Icon_%sTab.png"]
  MOVE R10 R5
  CALL R8 2 1
  SETTABLEKS R8 R7 K4 ["Icon"]
  SETTABLE R7 R6 R5
  GETUPVAL R7 0
  GETUPVAL R9 1
  GETTABLE R8 R9 R5
  FASTCALL2 TABLE_INSERT R7 R8 [+3]
  GETIMPORT R6 K14 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-28]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLE R2 R3 R0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  LOADK R1 K0 ["Summary"]
  SETTABLEKS R1 R0 K0 ["Summary"]
  LOADK R1 K1 ["CharacterConversion"]
  SETTABLEKS R1 R0 K1 ["CharacterConversion"]
  LOADK R1 K2 ["AnimationConversion"]
  SETTABLEKS R1 R0 K2 ["AnimationConversion"]
  LOADK R1 K3 ["ScriptConversion"]
  SETTABLEKS R1 R0 K3 ["ScriptConversion"]
  NEWTABLE R1 0 4
  GETTABLEKS R2 R0 K0 ["Summary"]
  GETTABLEKS R3 R0 K1 ["CharacterConversion"]
  GETTABLEKS R4 R0 K2 ["AnimationConversion"]
  GETTABLEKS R5 R0 K3 ["ScriptConversion"]
  SETLIST R1 R2 4 [1]
  LOADNIL R2
  LOADNIL R3
  NEWCLOSURE R4 P0
  CAPTURE REF R3
  CAPTURE REF R2
  CAPTURE VAL R1
  NEWCLOSURE R5 P1
  CAPTURE VAL R4
  CAPTURE REF R3
  SETTABLEKS R5 R0 K4 ["getOrderedTabsData"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R4
  CAPTURE REF R2
  SETTABLEKS R5 R0 K5 ["getIndividualTabData"]
  CLOSEUPVALS R2
  RETURN R0 1
