PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["use"]
  CALL R4 0 1
  GETUPVAL R5 4
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 1
  GETUPVAL R6 5
  MOVE R7 R4
  CALL R6 1 1
  NEWTABLE R7 4 0
  GETTABLEKS R8 R5 K2 ["ShowScopeOptions"]
  JUMPIFNOT R8 [+14]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 7
  DUPTABLE R10 K5 [{"LayoutOrder"}]
  NAMECALL R11 R1 K6 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["ScopeOptions"]
  JUMP [+41]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 8
  DUPTABLE R10 K5 [{"LayoutOrder"}]
  NAMECALL R11 R1 K6 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K8 ["SearchPanel"]
  GETTABLEKS R9 R6 K9 ["ShowSearchOptions"]
  JUMPIFNOT R9 [+12]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 9
  DUPTABLE R10 K5 [{"LayoutOrder"}]
  NAMECALL R11 R1 K6 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  CALL R8 2 1
  JUMP [+11]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 10
  DUPTABLE R10 K5 [{"LayoutOrder"}]
  NAMECALL R11 R1 K6 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["SidebarContent"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 11
  NEWTABLE R10 2 0
  GETTABLEKS R11 R0 K4 ["LayoutOrder"]
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K11 ["Tag"]
  LOADK R12 K12 ["Main X-Top X-Column"]
  SETTABLE R12 R10 R11
  MOVE R11 R7
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["Pane"]
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K11 ["ScopeExplorer"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K12 ["SearchOptions"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K13 ["SearchPanel"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K14 ["ScopeOptions"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Controllers"]
  GETTABLEKS R10 R11 K17 ["ExplorerController"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Controllers"]
  GETTABLEKS R11 R12 K18 ["PluginController"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K19 ["Hooks"]
  GETTABLEKS R12 R13 K20 ["useExplorerInfo"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K15 ["Src"]
  GETTABLEKS R14 R15 K19 ["Hooks"]
  GETTABLEKS R13 R14 K21 ["useSearchInfo"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K16 ["Controllers"]
  GETTABLEKS R14 R15 K22 ["SearchController"]
  CALL R13 1 1
  GETTABLEKS R15 R2 K23 ["Util"]
  GETTABLEKS R14 R15 K24 ["LayoutOrderIterator"]
  DUPCLOSURE R15 K25 [PROTO_0]
  CAPTURE VAL R14
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R15 1
