PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K1 [+4]
  LOADK R2 K1 ["LoadingIcon was not mounted by useEffect"]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"Rotation"}]
  LOADN R5 104
  SETTABLEKS R5 R4 K4 ["Rotation"]
  NAMECALL R0 R0 K6 ["Create"]
  CALL R0 4 1
  NAMECALL R1 R0 K7 ["Play"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useRef"]
  LOADNIL R3
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useEffect"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NEWTABLE R5 0 0
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["createElement"]
  LOADK R4 K4 ["Frame"]
  NEWTABLE R5 4 0
  GETTABLEKS R6 R0 K5 ["Size"]
  SETTABLEKS R6 R5 K5 ["Size"]
  GETTABLEKS R6 R0 K6 ["LayoutOrder"]
  SETTABLEKS R6 R5 K6 ["LayoutOrder"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["Tag"]
  LOADK R7 K8 ["X-FitY X-Column Component-TextInfo"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K11 [{"TitleFrame", "StatusTextFrame"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K4 ["Frame"]
  NEWTABLE R9 2 0
  NAMECALL R10 R1 K12 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["Tag"]
  LOADK R11 K13 ["X-FitY X-Column"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K16 [{"Title", "Subtitle"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["createElement"]
  LOADK R12 K17 ["TextLabel"]
  NEWTABLE R13 4 0
  GETTABLEKS R14 R0 K14 ["Title"]
  SETTABLEKS R14 R13 K18 ["Text"]
  NAMECALL R14 R1 K12 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K6 ["LayoutOrder"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K7 ["Tag"]
  LOADK R15 K19 ["X-FitY"]
  SETTABLE R15 R13 R14
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Title"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["createElement"]
  LOADK R12 K17 ["TextLabel"]
  NEWTABLE R13 4 0
  GETTABLEKS R14 R0 K15 ["Subtitle"]
  SETTABLEKS R14 R13 K18 ["Text"]
  NAMECALL R14 R1 K12 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K6 ["LayoutOrder"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K7 ["Tag"]
  LOADK R15 K20 ["X-FitY SubtitleText"]
  SETTABLE R15 R13 R14
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Subtitle"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["TitleFrame"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K4 ["Frame"]
  NEWTABLE R9 2 0
  NAMECALL R10 R1 K12 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["Tag"]
  LOADK R11 K21 ["X-FitY X-Row StatusTextFrame"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K24 [{"IconContainer", "StatusText"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["createElement"]
  LOADK R12 K4 ["Frame"]
  NEWTABLE R13 1 0
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K7 ["Tag"]
  LOADK R15 K25 ["LoadingIconContainer"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K27 [{"LoadingIcon"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K3 ["createElement"]
  LOADK R16 K28 ["ImageLabel"]
  NEWTABLE R17 4 0
  NAMECALL R18 R1 K12 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K6 ["LayoutOrder"]
  SETTABLEKS R2 R17 K29 ["ref"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K7 ["Tag"]
  LOADK R19 K26 ["LoadingIcon"]
  SETTABLE R19 R17 R18
  CALL R15 2 1
  SETTABLEKS R15 R14 K26 ["LoadingIcon"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K22 ["IconContainer"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["createElement"]
  LOADK R12 K17 ["TextLabel"]
  NEWTABLE R13 4 0
  GETTABLEKS R14 R0 K30 ["Status"]
  SETTABLEKS R14 R13 K18 ["Text"]
  NAMECALL R14 R1 K12 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K6 ["LayoutOrder"]
  GETIMPORT R14 K32 [UDim2.new]
  LOADN R15 1
  GETUPVAL R17 4
  MINUS R16 R17
  LOADN R17 0
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K5 ["Size"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K7 ["Tag"]
  LOADK R15 K19 ["X-FitY"]
  SETTABLE R15 R13 R14
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["StatusText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K10 ["StatusTextFrame"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
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
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["LayoutOrderIterator"]
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K11 ["styles"]
  CALL R4 1 1
  LOADK R10 K12 ["IconSize"]
  NAMECALL R8 R4 K13 ["GetAttribute"]
  CALL R8 2 1
  GETTABLEKS R7 R8 K14 ["X"]
  GETTABLEKS R6 R7 K15 ["Offset"]
  LOADK R10 K16 ["IconToContentPadding"]
  NAMECALL R8 R4 K13 ["GetAttribute"]
  CALL R8 2 1
  GETTABLEKS R7 R8 K15 ["Offset"]
  ADD R5 R6 R7
  GETIMPORT R6 K18 [game]
  LOADK R8 K19 ["TweenService"]
  NAMECALL R6 R6 K20 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K23 [TweenInfo.new]
  LOADN R8 2
  GETIMPORT R9 K27 [Enum.EasingStyle.Linear]
  GETIMPORT R10 K30 [Enum.EasingDirection.In]
  LOADN R11 255
  CALL R7 4 1
  DUPCLOSURE R8 K31 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R8 1
