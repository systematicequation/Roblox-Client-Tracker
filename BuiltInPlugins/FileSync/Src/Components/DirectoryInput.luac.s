PROTO_0:
  GETTABLEKS R1 R0 K0 ["SyncPath"]
  GETTABLEKS R2 R0 K1 ["Size"]
  JUMPIF R2 [+7]
  GETIMPORT R2 K4 [UDim2.new]
  LOADN R3 1
  LOADN R4 20
  LOADN R5 0
  LOADN R6 20
  CALL R2 4 1
  GETUPVAL R3 0
  LOADK R5 K5 ["DirectoryInput"]
  NAMECALL R3 R3 K6 ["use"]
  CALL R3 2 1
  GETUPVAL R4 1
  NAMECALL R4 R4 K6 ["use"]
  CALL R4 1 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["new"]
  CALL R5 0 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["createElement"]
  LOADK R7 K8 ["Frame"]
  DUPTABLE R8 K11 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K9 ["BackgroundTransparency"]
  SETTABLEKS R2 R8 K1 ["Size"]
  GETTABLEKS R9 R0 K10 ["LayoutOrder"]
  SETTABLEKS R9 R8 K10 ["LayoutOrder"]
  DUPTABLE R9 K17 [{"ListLayout", "ButtonsUIPadding", "LocalDirectoryLabel", "SpacerDir", "DirectoryFrame"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K7 ["createElement"]
  LOADK R11 K18 ["UIListLayout"]
  DUPTABLE R12 K22 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R13 K25 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K19 ["FillDirection"]
  GETIMPORT R13 K27 [UDim.new]
  LOADN R14 0
  LOADN R15 2
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["Padding"]
  GETIMPORT R13 K28 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K21 ["SortOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["ListLayout"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K7 ["createElement"]
  LOADK R11 K29 ["UIPadding"]
  DUPTABLE R12 K31 [{"PaddingRight"}]
  GETIMPORT R13 K27 [UDim.new]
  LOADN R14 0
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K32 ["SIDE_PADDING"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["PaddingRight"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["ButtonsUIPadding"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K36 [{"Text", "Style", "TextXAlignment", "BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADK R15 K37 ["Labels"]
  LOADK R16 K38 ["LocalDirectory"]
  NAMECALL R13 R4 K39 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K33 ["Text"]
  LOADK R13 K40 ["Basic"]
  SETTABLEKS R13 R12 K34 ["Style"]
  GETIMPORT R13 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K35 ["TextXAlignment"]
  LOADN R13 1
  SETTABLEKS R13 R12 K9 ["BackgroundTransparency"]
  GETIMPORT R13 K4 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K1 ["Size"]
  NAMECALL R13 R5 K43 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K10 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["LocalDirectoryLabel"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K7 ["createElement"]
  LOADK R11 K8 ["Frame"]
  DUPTABLE R12 K44 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  NAMECALL R13 R5 K43 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K10 ["LayoutOrder"]
  GETIMPORT R13 K4 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 8
  CALL R13 4 1
  SETTABLEKS R13 R12 K1 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K9 ["BackgroundTransparency"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["SpacerDir"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K7 ["createElement"]
  LOADK R11 K8 ["Frame"]
  DUPTABLE R12 K11 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K9 ["BackgroundTransparency"]
  GETIMPORT R13 K4 [UDim2.new]
  LOADN R14 1
  LOADN R15 20
  LOADN R16 0
  LOADN R17 20
  CALL R13 4 1
  SETTABLEKS R13 R12 K1 ["Size"]
  NAMECALL R13 R5 K43 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K10 ["LayoutOrder"]
  DUPTABLE R13 K46 [{"DirectoryInput", "FolderImageLabel"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K7 ["createElement"]
  LOADK R15 K47 ["TextButton"]
  NEWTABLE R16 16 0
  JUMPIFNOT R1 [+6]
  JUMPIFEQKS R1 K48 [""] [+5]
  LOADK R18 K49 ["  "]
  MOVE R19 R1
  CONCAT R17 R18 R19
  JUMP [+5]
  LOADK R19 K37 ["Labels"]
  LOADK R20 K50 ["SelectFolder"]
  NAMECALL R17 R4 K39 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K33 ["Text"]
  GETIMPORT R17 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K35 ["TextXAlignment"]
  GETTABLEKS R17 R3 K51 ["FontColor"]
  SETTABLEKS R17 R16 K52 ["TextColor3"]
  GETTABLEKS R17 R3 K51 ["FontColor"]
  SETTABLEKS R17 R16 K53 ["BorderColor3"]
  GETIMPORT R17 K4 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K54 ["Position"]
  GETIMPORT R17 K4 [UDim2.new]
  LOADN R18 1
  LOADN R19 231
  LOADN R20 0
  LOADN R21 25
  CALL R17 4 1
  SETTABLEKS R17 R16 K1 ["Size"]
  GETTABLEKS R17 R3 K55 ["DirectoryBackgroundColor"]
  SETTABLEKS R17 R16 K56 ["BackgroundColor3"]
  GETTABLEKS R17 R3 K57 ["DirectoryBorderSize"]
  SETTABLEKS R17 R16 K58 ["BorderSizePixel"]
  GETTABLEKS R17 R3 K59 ["RegularFont"]
  SETTABLEKS R17 R16 K60 ["Font"]
  LOADN R17 18
  SETTABLEKS R17 R16 K61 ["TextSize"]
  GETIMPORT R17 K64 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R17 R16 K62 ["TextTruncate"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K65 ["Event"]
  GETTABLEKS R17 R18 K66 ["Activated"]
  GETTABLEKS R18 R0 K67 ["Callback"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  SETTABLEKS R14 R13 K5 ["DirectoryInput"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K7 ["createElement"]
  LOADK R15 K68 ["ImageLabel"]
  DUPTABLE R16 K70 [{"Image", "BackgroundTransparency", "Size", "Position"}]
  GETUPVAL R18 6
  GETTABLEKS R17 R18 K71 ["getIconForCurrentTheme"]
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K72 ["IconEnums"]
  GETTABLEKS R18 R19 K73 ["Open"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K69 ["Image"]
  LOADN R17 1
  SETTABLEKS R17 R16 K9 ["BackgroundTransparency"]
  GETIMPORT R17 K4 [UDim2.new]
  LOADN R18 0
  LOADN R19 16
  LOADN R20 0
  LOADN R21 16
  CALL R17 4 1
  SETTABLEKS R17 R16 K1 ["Size"]
  GETIMPORT R17 K4 [UDim2.new]
  LOADN R18 1
  LOADN R19 206
  LOADN R20 0
  LOADN R21 4
  CALL R17 4 1
  SETTABLEKS R17 R16 K54 ["Position"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K45 ["FolderImageLabel"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K16 ["DirectoryFrame"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["FileSync"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["ModernIcons"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K13 ["ContextServices"]
  GETTABLEKS R5 R6 K14 ["Localization"]
  GETTABLEKS R7 R4 K13 ["ContextServices"]
  GETTABLEKS R6 R7 K15 ["Stylizer"]
  GETTABLEKS R7 R4 K16 ["UI"]
  GETTABLEKS R8 R7 K17 ["TextLabel"]
  GETTABLEKS R9 R4 K9 ["Util"]
  GETTABLEKS R10 R9 K18 ["LayoutOrderIterator"]
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  RETURN R11 1
