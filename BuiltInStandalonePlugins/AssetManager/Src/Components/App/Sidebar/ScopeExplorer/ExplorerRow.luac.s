PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Item"]
  NAMECALL R0 R0 K1 ["setSelection"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETTABLEKS R6 R0 K2 ["Item"]
  GETTABLEKS R5 R6 K3 ["Scope"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["Scope"]
  GETTABLEKS R6 R7 K4 ["Group"]
  JUMPIFNOTEQ R5 R6 [+5]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K5 ["ICON_GROUP_DEFAULT"]
  JUMP [+3]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K6 ["ICON_USER_DEFAULT"]
  GETUPVAL R5 5
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 1
  GETTABLEKS R8 R5 K7 ["Selection"]
  GETTABLEKS R7 R8 K8 ["Id"]
  GETTABLEKS R9 R0 K2 ["Item"]
  GETTABLEKS R8 R9 K8 ["Id"]
  JUMPIFNOTEQ R7 R8 [+3]
  LOADK R6 K9 ["Selected"]
  JUMP [+1]
  LOADK R6 K10 [""]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 7
  NEWTABLE R9 4 0
  GETTABLEKS R10 R0 K12 ["Index"]
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  GETTABLEKS R10 R0 K14 ["Position"]
  SETTABLEKS R10 R9 K14 ["Position"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K15 ["OnPress"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K16 ["Tag"]
  LOADK R12 K17 ["Element X-Corner X-PadS X-Row X-Left X-Middle %*"]
  MOVE R14 R6
  NAMECALL R12 R12 K18 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLE R11 R9 R10
  DUPTABLE R10 K21 [{"Thumbnail", "Name"}]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 8
  NEWTABLE R13 4 0
  NAMECALL R14 R1 K22 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K13 ["LayoutOrder"]
  SETTABLEKS R4 R13 K23 ["Image"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K16 ["Tag"]
  LOADK R15 K24 ["ScopeIcon Icon16 X-PadM"]
  SETTABLE R15 R13 R14
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["Thumbnail"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 9
  NEWTABLE R13 4 0
  NAMECALL R14 R1 K22 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K13 ["LayoutOrder"]
  GETTABLEKS R15 R0 K2 ["Item"]
  GETTABLEKS R14 R15 K20 ["Name"]
  SETTABLEKS R14 R13 K25 ["Text"]
  GETIMPORT R14 K29 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K27 ["TextTruncate"]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K16 ["Tag"]
  LOADK R15 K30 ["Left X-PadS"]
  SETTABLE R15 R13 R14
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["Name"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R5 R3 K11 ["TextLabel"]
  GETTABLEKS R6 R3 K12 ["Image"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Controllers"]
  GETTABLEKS R8 R9 K15 ["ExplorerController"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Controllers"]
  GETTABLEKS R9 R10 K16 ["PluginController"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K17 ["Hooks"]
  GETTABLEKS R10 R11 K18 ["useExplorerState"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K19 ["Util"]
  GETTABLEKS R11 R12 K20 ["Images"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K21 ["Types"]
  CALL R11 1 1
  GETTABLEKS R13 R2 K19 ["Util"]
  GETTABLEKS R12 R13 K22 ["LayoutOrderIterator"]
  DUPCLOSURE R13 K23 [PROTO_1]
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R13 1
