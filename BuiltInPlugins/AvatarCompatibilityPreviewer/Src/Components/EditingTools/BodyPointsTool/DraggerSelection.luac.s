PROTO_0:
  DUPTABLE R2 K4 [{"SelectionChanged", "draggerContext", "_selection", "_setSelectedPointNames"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K0 ["SelectionChanged"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["draggerContext"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["_selection"]
  SETTABLEKS R0 R2 K3 ["_setSelectedPointNames"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K7 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_selection"]
  RETURN R1 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["name"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["find"]
  GETTABLEKS R3 R0 K1 ["points"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K2 [+4]
  LOADK R5 K2 ["Could not find point by name"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  RETURN R2 1

PROTO_4:
  GETIMPORT R2 K2 [table.find]
  MOVE R3 R1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["MULTI_SELECT_PHONY_TARGET"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+15]
  LENGTH R3 R1
  JUMPIFNOTEQKN R3 K4 [1] [+2]
  RETURN R0 0
  GETIMPORT R3 K6 [table.clone]
  MOVE R4 R1
  CALL R3 1 1
  MOVE R1 R3
  GETIMPORT R3 K8 [table.remove]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  GETTABLEKS R3 R0 K9 ["draggerContext"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R4 R0 K9 ["draggerContext"]
  GETTABLEKS R3 R4 K10 ["points"]
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R0 0
  LOADB R5 0
  GETTABLEKS R6 R0 K9 ["draggerContext"]
  JUMPIFEQKNIL R6 [+5]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K13 [assert]
  CALL R4 2 0
  LENGTH R4 R1
  LOADN R5 1
  JUMPIFNOTLT R5 R4 [+72]
  GETTABLEKS R6 R0 K9 ["draggerContext"]
  LENGTH R8 R1
  GETTABLE R7 R1 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["find"]
  GETTABLEKS R9 R6 K10 ["points"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R7
  CALL R8 2 1
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  FASTCALL2K ASSERT R10 K14 [+4]
  LOADK R11 K14 ["Could not find point by name"]
  GETIMPORT R9 K13 [assert]
  CALL R9 2 0
  MOVE R5 R8
  GETTABLEKS R4 R5 K15 ["limb"]
  NEWTABLE R5 0 1
  LENGTH R7 R1
  GETTABLE R6 R1 R7
  SETLIST R5 R6 1 [1]
  LENGTH R9 R1
  SUBK R8 R9 K4 [1]
  LOADN R6 1
  LOADN R7 255
  FORNPREP R6
  GETTABLEKS R10 R0 K9 ["draggerContext"]
  GETTABLE R11 R1 R8
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["find"]
  GETTABLEKS R13 R10 K10 ["points"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R11
  CALL R12 2 1
  JUMPIFNOTEQKNIL R12 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  FASTCALL2K ASSERT R14 K14 [+4]
  LOADK R15 K14 ["Could not find point by name"]
  GETIMPORT R13 K13 [assert]
  CALL R13 2 0
  MOVE R9 R12
  GETTABLEKS R10 R9 K15 ["limb"]
  JUMPIFNOTEQ R10 R4 [+8]
  MOVE R11 R5
  LOADN R12 1
  GETTABLE R13 R1 R8
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R10 K17 [table.insert]
  CALL R10 3 0
  FORNLOOP R6
  MOVE R1 R5
  SETTABLEKS R1 R0 K18 ["_selection"]
  GETTABLEKS R4 R0 K19 ["_setSelectedPointNames"]
  MOVE R5 R1
  CALL R4 1 0
  GETTABLEKS R4 R0 K20 ["SelectionChanged"]
  NAMECALL R4 R4 K21 ["Fire"]
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K8 ["DraggerFramework"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R2 K9 ["Utility"]
  GETTABLEKS R4 R5 K10 ["Signal"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Components"]
  GETTABLEKS R7 R8 K13 ["EditingTools"]
  GETTABLEKS R6 R7 K14 ["BodyPointsTool"]
  GETTABLEKS R5 R6 K15 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K16 ["Util"]
  GETTABLEKS R6 R7 K17 ["Constants"]
  CALL R5 1 1
  NEWTABLE R6 4 0
  SETTABLEKS R6 R6 K18 ["__index"]
  DUPCLOSURE R7 K19 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K20 ["new"]
  DUPCLOSURE R7 K21 [PROTO_1]
  SETTABLEKS R7 R6 K22 ["Get"]
  DUPCLOSURE R7 K23 [PROTO_3]
  CAPTURE VAL R1
  DUPCLOSURE R8 K24 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R8 R6 K25 ["Set"]
  RETURN R6 1
