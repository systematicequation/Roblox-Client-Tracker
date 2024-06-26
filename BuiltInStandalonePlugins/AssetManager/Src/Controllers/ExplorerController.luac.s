PROTO_0:
  NEWTABLE R0 0 0
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["_pluginController"]
  NAMECALL R3 R3 K1 ["getUser"]
  CALL R3 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K4 [table.insert]
  CALL R1 -1 0
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K5 ["_visibleGroups"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  DUPTABLE R6 K9 [{"Name", "Id", "Scope"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["_groups"]
  GETTABLE R7 R8 R5
  JUMPIF R7 [+5]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R8 R5
  GETIMPORT R7 K12 [tostring]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["Name"]
  SETTABLEKS R5 R6 K7 ["Id"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["Scope"]
  GETTABLEKS R7 R8 K13 ["Group"]
  SETTABLEKS R7 R6 K8 ["Scope"]
  FASTCALL2 TABLE_INSERT R0 R6 [+5]
  MOVE R8 R0
  MOVE R9 R6
  GETIMPORT R7 K4 [table.insert]
  CALL R7 2 0
  FORGLOOP R1 2 [-30]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["data"]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["_groups"]
  GETTABLEKS R8 R6 K2 ["id"]
  GETTABLEKS R9 R6 K3 ["name"]
  SETTABLE R9 R7 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["_visibleGroups"]
  GETTABLEKS R9 R6 K2 ["id"]
  FASTCALL2 TABLE_INSERT R8 R9 [+3]
  GETIMPORT R7 K7 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-19]
  GETUPVAL R2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["populateExplorerItems"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K9 ["_explorerItems"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K10 ["OnExplorerItemsChanged"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["_explorerItems"]
  NAMECALL R2 R2 K11 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETIMPORT R1 K1 [warn]
  LOADK R3 K2 ["Error fetching groups: %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R3 K10 [{"_isMock", "_networking", "_pluginController", "explorerItems", "_groups", "_visibleGroups", "_selection", "_expansion", "OnExplorerItemsChanged", "OnExpansionChanged"}]
  SETTABLEKS R2 R3 K0 ["_isMock"]
  SETTABLEKS R1 R3 K1 ["_networking"]
  SETTABLEKS R0 R3 K2 ["_pluginController"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K3 ["explorerItems"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K4 ["_groups"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K5 ["_visibleGroups"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K6 ["_selection"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K7 ["_expansion"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K8 ["OnExplorerItemsChanged"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K9 ["OnExpansionChanged"]
  GETTABLEKS R4 R3 K2 ["_pluginController"]
  NAMECALL R4 R4 K12 ["getUser"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["_selection"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  SETTABLEKS R4 R3 K13 ["populateExplorerItems"]
  GETTABLEKS R4 R3 K13 ["populateExplorerItems"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K14 ["_explorerItems"]
  GETTABLEKS R4 R3 K1 ["_networking"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R3
  DUPCLOSURE R7 K15 [PROTO_2]
  CAPTURE UPVAL U2
  NAMECALL R4 R4 K16 ["fetchGroupsAsync"]
  CALL R4 3 0
  GETUPVAL R6 3
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K18 [setmetatable]
  CALL R4 2 0
  RETURN R3 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  MOVE R3 R0
  MOVE R4 R1
  LOADB R5 1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["_explorerItems"]
  RETURN R1 1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["_expansion"]
  RETURN R1 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_selection"]
  RETURN R1 1

PROTO_9:
  SETTABLEKS R1 R0 K0 ["_selection"]
  GETTABLEKS R3 R0 K1 ["_pluginController"]
  GETTABLEKS R2 R3 K2 ["OnSelectionChanged"]
  MOVE R4 R1
  NAMECALL R2 R2 K3 ["Fire"]
  CALL R2 2 0
  RETURN R0 0

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
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R3 R2 K9 ["ContextItem"]
  GETTABLEKS R5 R1 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Signal"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K14 ["Flags"]
  GETTABLEKS R7 R8 K15 ["getFFlagDebugAmrOutput"]
  CALL R6 1 1
  LOADK R9 K16 ["ExplorerController"]
  NAMECALL R7 R3 K17 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K18 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K19 ["new"]
  DUPCLOSURE R8 K20 [PROTO_4]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K21 ["mock"]
  DUPCLOSURE R8 K22 [PROTO_5]
  SETTABLEKS R8 R7 K23 ["destroy"]
  DUPCLOSURE R8 K24 [PROTO_6]
  SETTABLEKS R8 R7 K25 ["getExplorerItems"]
  DUPCLOSURE R8 K26 [PROTO_7]
  SETTABLEKS R8 R7 K27 ["getExpansion"]
  DUPCLOSURE R8 K28 [PROTO_8]
  SETTABLEKS R8 R7 K29 ["getSelection"]
  DUPCLOSURE R8 K30 [PROTO_9]
  SETTABLEKS R8 R7 K31 ["setSelection"]
  RETURN R7 1
