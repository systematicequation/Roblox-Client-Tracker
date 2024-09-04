PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 [95206881]
  LOADB R3 0
  NAMECALL R0 R0 K1 ["openPlace"]
  CALL R0 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  LOADK R4 K1 ["PointingHand"]
  CALL R3 1 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K2 ["createElement"]
  LOADK R6 K3 ["ImageButton"]
  NEWTABLE R7 8 0
  GETTABLEKS R8 R0 K4 ["Size"]
  SETTABLEKS R8 R7 K4 ["Size"]
  GETTABLEKS R8 R0 K5 ["Position"]
  SETTABLEKS R8 R7 K5 ["Position"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K6 ["Event"]
  GETTABLEKS R8 R9 K7 ["Activated"]
  DUPCLOSURE R9 K8 [PROTO_0]
  CAPTURE UPVAL U4
  SETTABLE R9 R7 R8
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K6 ["Event"]
  GETTABLEKS R8 R9 K9 ["MouseEnter"]
  SETTABLE R3 R7 R8
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K6 ["Event"]
  GETTABLEKS R8 R9 K10 ["MouseLeave"]
  SETTABLE R4 R7 R8
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K11 ["Tag"]
  LOADK R9 K12 ["X-Row X-Middle StartPage-MenuBackground StartPage-ButtonPadding StartPage-RoundedCorner8"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K15 [{"PlusIcon", "Text"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K2 ["createElement"]
  LOADK R10 K16 ["Frame"]
  NEWTABLE R11 4 0
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 0
  LOADN R14 24
  LOADN R15 0
  LOADN R16 24
  CALL R12 4 1
  SETTABLEKS R12 R11 K4 ["Size"]
  MOVE R12 R2
  CALL R12 0 1
  SETTABLEKS R12 R11 K20 ["LayoutOrder"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K11 ["Tag"]
  LOADK R13 K21 ["X-PadS X-Corner StartPage-ButtonBackgroundColor"]
  SETTABLE R13 R11 R12
  NEWTABLE R12 0 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K2 ["createElement"]
  GETUPVAL R14 5
  NEWTABLE R15 1 0
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K11 ["Tag"]
  LOADK R17 K22 ["StartPage-PlusIcon X-AnchorCenter"]
  SETTABLE R17 R15 R16
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["PlusIcon"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K2 ["createElement"]
  LOADK R10 K23 ["TextLabel"]
  NEWTABLE R11 4 0
  LOADK R14 K24 ["Plugin"]
  LOADK R15 K25 ["NewFile"]
  NAMECALL R12 R1 K26 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K14 ["Text"]
  MOVE R12 R2
  CALL R12 0 1
  SETTABLEKS R12 R11 K20 ["LayoutOrder"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K11 ["Tag"]
  LOADK R13 K27 ["X-Fit X-Pad X-Transparent StartPage-TextSize StartPage-FontBold StartPage-TextColor"]
  SETTABLE R13 R11 R12
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["Text"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
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
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETTABLEKS R3 R4 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["counter"]
  GETTABLEKS R5 R2 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["Image"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K16 ["Services"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K17 ["StartPageManager"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K18 ["Hooks"]
  GETTABLEKS R10 R11 K19 ["useCursor"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R6
  RETURN R10 1
