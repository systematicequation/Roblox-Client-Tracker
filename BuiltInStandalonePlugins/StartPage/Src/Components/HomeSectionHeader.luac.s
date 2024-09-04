PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnButtonClick"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnButtonClick"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  LOADK R3 K0 ["PointingHand"]
  CALL R2 1 2
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["createElement"]
  LOADK R5 K2 ["Frame"]
  NEWTABLE R6 4 0
  GETTABLEKS R7 R0 K3 ["Size"]
  SETTABLEKS R7 R6 K3 ["Size"]
  GETTABLEKS R7 R0 K4 ["Position"]
  SETTABLEKS R7 R6 K4 ["Position"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["Tag"]
  LOADK R8 K6 ["X-ColumnM X-Transparent"]
  SETTABLE R8 R6 R7
  NEWTABLE R7 0 1
  GETTABLEKS R9 R0 K7 ["HasParentLoaded"]
  JUMPIFNOT R9 [+179]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K1 ["createElement"]
  LOADK R9 K2 ["Frame"]
  NEWTABLE R10 1 0
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K5 ["Tag"]
  LOADK R12 K8 ["X-FitY X-Transparent"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K11 [{"TitleDesc", "Button"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K1 ["createElement"]
  LOADK R13 K2 ["Frame"]
  NEWTABLE R14 2 0
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K12 ["LayoutOrder"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K5 ["Tag"]
  LOADK R16 K13 ["X-Fit X-ColumnM X-Transparent"]
  SETTABLE R16 R14 R15
  NEWTABLE R15 0 2
  GETTABLEKS R17 R0 K7 ["HasParentLoaded"]
  JUMPIFNOT R17 [+20]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K1 ["createElement"]
  LOADK R17 K14 ["TextLabel"]
  NEWTABLE R18 4 0
  GETTABLEKS R19 R0 K15 ["Title"]
  SETTABLEKS R19 R18 K16 ["Text"]
  LOADN R19 32
  SETTABLEKS R19 R18 K17 ["TextSize"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K5 ["Tag"]
  LOADK R20 K18 ["X-Fit StartPage-FontBold StartPage-TextColor X-Transparent"]
  SETTABLE R20 R18 R19
  CALL R16 2 1
  JUMP [+1]
  LOADNIL R16
  GETTABLEKS R18 R0 K7 ["HasParentLoaded"]
  JUMPIFNOT R18 [+27]
  GETTABLEKS R18 R0 K19 ["Description"]
  JUMPIFNOT R18 [+24]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K1 ["createElement"]
  LOADK R18 K14 ["TextLabel"]
  NEWTABLE R19 4 0
  GETTABLEKS R20 R0 K19 ["Description"]
  SETTABLEKS R20 R19 K16 ["Text"]
  LOADB R20 1
  SETTABLEKS R20 R19 K20 ["TextWrapped"]
  GETIMPORT R20 K24 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K22 ["TextXAlignment"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K5 ["Tag"]
  LOADK R21 K25 ["X-Fit StartPage-Font StartPage-TextColor X-Transparent StartPage-TextSize"]
  SETTABLE R21 R19 R20
  CALL R17 2 1
  JUMP [+1]
  LOADNIL R17
  SETLIST R15 R16 2 [1]
  CALL R12 3 1
  SETTABLEKS R12 R11 K9 ["TitleDesc"]
  GETTABLEKS R13 R0 K7 ["HasParentLoaded"]
  JUMPIFNOT R13 [+82]
  GETTABLEKS R13 R0 K26 ["ButtonText"]
  JUMPIFNOT R13 [+79]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K1 ["createElement"]
  LOADK R13 K2 ["Frame"]
  NEWTABLE R14 2 0
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K12 ["LayoutOrder"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K5 ["Tag"]
  LOADK R16 K27 ["X-Fill X-Right X-Transparent"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K28 [{"Button"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K1 ["createElement"]
  LOADK R17 K29 ["ImageButton"]
  NEWTABLE R18 4 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K30 ["Event"]
  GETTABLEKS R19 R20 K31 ["Activated"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R0
  SETTABLE R20 R18 R19
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K30 ["Event"]
  GETTABLEKS R19 R20 K32 ["MouseEnter"]
  SETTABLE R2 R18 R19
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K30 ["Event"]
  GETTABLEKS R19 R20 K33 ["MouseLeave"]
  SETTABLE R3 R18 R19
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K5 ["Tag"]
  LOADK R20 K34 ["StartPage-Border StartPage-ButtonPadding StartPage-RoundedCorner8 StartPage-PageBackground X-Fit X-Middle X-Row"]
  SETTABLE R20 R18 R19
  NEWTABLE R19 0 1
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K1 ["createElement"]
  LOADK R21 K14 ["TextLabel"]
  NEWTABLE R22 4 0
  GETTABLEKS R23 R0 K26 ["ButtonText"]
  SETTABLEKS R23 R22 K16 ["Text"]
  LOADB R23 1
  SETTABLEKS R23 R22 K20 ["TextWrapped"]
  GETIMPORT R23 K24 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K22 ["TextXAlignment"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K5 ["Tag"]
  LOADK R24 K35 ["X-Fit StartPage-FontBold StartPage-TextColor X-Transparent StartPage-TextSize"]
  SETTABLE R24 R22 R23
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  SETTABLEKS R16 R15 K10 ["Button"]
  CALL R12 3 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K10 ["Button"]
  CALL R8 3 1
  JUMP [+17]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K1 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K36 ["Component"]
  DUPTABLE R10 K37 [{"Size"}]
  GETIMPORT R11 K40 [UDim2.new]
  LOADK R12 K41 [0.4]
  LOADN R13 0
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K3 ["Size"]
  CALL R8 2 1
  SETLIST R7 R8 1 [1]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Components"]
  GETTABLEKS R3 R4 K10 ["Shimmer"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K11 ["Hooks"]
  GETTABLEKS R4 R5 K12 ["useCursor"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K14 ["Util"]
  GETTABLEKS R5 R6 K15 ["counter"]
  DUPCLOSURE R6 K16 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R6 1
