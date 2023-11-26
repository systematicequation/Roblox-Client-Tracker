PROTO_0:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnChanged"]
  DUPTABLE R1 K2 [{"Error"}]
  LOADK R2 K3 [""]
  SETTABLEKS R2 R1 K1 ["Error"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnChanged"]
  DUPTABLE R3 K3 [{"Error", "Image"}]
  SETTABLEKS R0 R3 K1 ["Error"]
  SETTABLEKS R1 R3 K2 ["Image"]
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  LOADK R3 K0 ["ImageRenderer"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R2 1
  LOADB R3 0
  CALL R2 1 2
  GETUPVAL R4 1
  LOADB R5 0
  CALL R4 1 2
  LOADNIL R6
  GETTABLEKS R8 R0 K2 ["Value"]
  GETTABLEKS R7 R8 K3 ["Image"]
  JUMPIFNOT R7 [+35]
  GETTABLEKS R10 R0 K2 ["Value"]
  GETTABLEKS R9 R10 K3 ["Image"]
  GETTABLEKS R8 R9 K4 ["Preview"]
  GETTABLEKS R7 R8 K5 ["Id"]
  JUMPIFNOT R7 [+9]
  GETTABLEKS R9 R0 K2 ["Value"]
  GETTABLEKS R8 R9 K3 ["Image"]
  GETTABLEKS R7 R8 K4 ["Preview"]
  GETTABLEKS R6 R7 K5 ["Id"]
  JUMP [+17]
  GETTABLEKS R9 R0 K2 ["Value"]
  GETTABLEKS R8 R9 K3 ["Image"]
  GETTABLEKS R7 R8 K6 ["File"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R9 R0 K2 ["Value"]
  GETTABLEKS R8 R9 K3 ["Image"]
  GETTABLEKS R7 R8 K6 ["File"]
  NAMECALL R7 R7 K7 ["GetTemporaryId"]
  CALL R7 1 1
  MOVE R6 R7
  JUMPIFNOT R6 [+239]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["createElement"]
  LOADK R8 K9 ["ImageButton"]
  NEWTABLE R9 4 0
  LOADK R10 K10 [""]
  SETTABLEKS R10 R9 K3 ["Image"]
  GETTABLEKS R10 R1 K11 ["PreviewSize"]
  SETTABLEKS R10 R9 K12 ["Size"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["Event"]
  GETTABLEKS R10 R11 K14 ["MouseEnter"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R3
  SETTABLE R11 R9 R10
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["Event"]
  GETTABLEKS R10 R11 K15 ["MouseLeave"]
  NEWCLOSURE R11 P1
  CAPTURE VAL R3
  SETTABLE R11 R9 R10
  DUPTABLE R10 K18 [{"Image", "Toolbar", "MetadataDialog"}]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K22 [{"AnchorPoint", "Image", "Position", "ScaleType", "Size"}]
  GETIMPORT R14 K25 [Vector2.new]
  LOADK R15 K26 [0.5]
  LOADK R16 K26 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["AnchorPoint"]
  SETTABLEKS R6 R13 K3 ["Image"]
  GETIMPORT R14 K29 [UDim2.fromScale]
  LOADK R15 K26 [0.5]
  LOADK R16 K26 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K20 ["Position"]
  GETIMPORT R14 K32 [Enum.ScaleType.Fit]
  SETTABLEKS R14 R13 K21 ["ScaleType"]
  GETIMPORT R14 K29 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K12 ["Size"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K3 ["Image"]
  JUMPIFNOT R2 [+147]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K8 ["createElement"]
  LOADK R12 K33 ["Frame"]
  DUPTABLE R13 K38 [{"ZIndex", "AnchorPoint", "Position", "Size", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
  LOADN R14 2
  SETTABLEKS R14 R13 K34 ["ZIndex"]
  GETIMPORT R14 K25 [Vector2.new]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["AnchorPoint"]
  GETIMPORT R14 K29 [UDim2.fromScale]
  LOADN R15 0
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K20 ["Position"]
  GETIMPORT R14 K39 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  GETTABLEKS R18 R1 K40 ["ToolbarHeight"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K12 ["Size"]
  GETTABLEKS R14 R1 K41 ["ToolbarTransparency"]
  SETTABLEKS R14 R13 K35 ["BackgroundTransparency"]
  LOADN R14 0
  SETTABLEKS R14 R13 K36 ["BorderSizePixel"]
  GETTABLEKS R14 R1 K42 ["ToolbarBackgroundColor"]
  SETTABLEKS R14 R13 K37 ["BackgroundColor3"]
  DUPTABLE R14 K45 [{"ExpandPreview", "ClearButton"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K50 [{"Icon", "IconPadding", "Style", "OnClick", "Size"}]
  GETTABLEKS R18 R1 K51 ["ExpandIcon"]
  SETTABLEKS R18 R17 K46 ["Icon"]
  GETTABLEKS R18 R1 K47 ["IconPadding"]
  SETTABLEKS R18 R17 K47 ["IconPadding"]
  LOADK R18 K52 ["RoundSubtle"]
  SETTABLEKS R18 R17 K48 ["Style"]
  NEWCLOSURE R18 P2
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R18 R17 K49 ["OnClick"]
  GETIMPORT R18 K54 [UDim2.fromOffset]
  GETTABLEKS R19 R1 K40 ["ToolbarHeight"]
  GETTABLEKS R20 R1 K40 ["ToolbarHeight"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K12 ["Size"]
  NEWTABLE R18 0 1
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K8 ["createElement"]
  LOADK R20 K55 ["UIAspectRatioConstraint"]
  CALL R19 1 -1
  SETLIST R18 R19 4294967295 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K43 ["ExpandPreview"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K8 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K56 [{"AnchorPoint", "Position", "Icon", "IconPadding", "Style", "OnClick", "Size"}]
  GETIMPORT R18 K25 [Vector2.new]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K19 ["AnchorPoint"]
  GETIMPORT R18 K29 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K20 ["Position"]
  GETTABLEKS R18 R1 K57 ["ClearIcon"]
  SETTABLEKS R18 R17 K46 ["Icon"]
  GETTABLEKS R18 R1 K47 ["IconPadding"]
  SETTABLEKS R18 R17 K47 ["IconPadding"]
  LOADK R18 K52 ["RoundSubtle"]
  SETTABLEKS R18 R17 K48 ["Style"]
  NEWCLOSURE R18 P3
  CAPTURE VAL R0
  SETTABLEKS R18 R17 K49 ["OnClick"]
  GETIMPORT R18 K54 [UDim2.fromOffset]
  GETTABLEKS R19 R1 K40 ["ToolbarHeight"]
  GETTABLEKS R20 R1 K40 ["ToolbarHeight"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K12 ["Size"]
  NEWTABLE R18 0 1
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K8 ["createElement"]
  LOADK R20 K55 ["UIAspectRatioConstraint"]
  DUPTABLE R21 K59 [{"AspectRatio"}]
  LOADN R22 1
  SETTABLEKS R22 R21 K58 ["AspectRatio"]
  CALL R19 2 -1
  SETLIST R18 R19 4294967295 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K44 ["ClearButton"]
  CALL R11 3 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K16 ["Toolbar"]
  JUMPIFNOT R4 [+17]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K61 [{"Image", "OnClose"}]
  GETTABLEKS R15 R0 K2 ["Value"]
  GETTABLEKS R14 R15 K3 ["Image"]
  SETTABLEKS R14 R13 K3 ["Image"]
  NEWCLOSURE R14 P4
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K60 ["OnClose"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K17 ["MetadataDialog"]
  CALL R7 3 1
  RETURN R7 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K63 [{"Icon", "IconSize", "OnClick", "Size"}]
  GETTABLEKS R10 R1 K64 ["ImportIcon"]
  SETTABLEKS R10 R9 K46 ["Icon"]
  GETIMPORT R10 K54 [UDim2.fromOffset]
  LOADN R11 28
  LOADN R12 28
  CALL R10 2 1
  SETTABLEKS R10 R9 K62 ["IconSize"]
  NEWCLOSURE R10 P5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K49 ["OnClick"]
  GETTABLEKS R10 R1 K11 ["PreviewSize"]
  SETTABLEKS R10 R9 K12 ["Size"]
  CALL R7 2 1
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["useState"]
  GETTABLEKS R5 R1 K10 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["Stylizer"]
  GETTABLEKS R5 R1 K12 ["UI"]
  GETTABLEKS R6 R5 K13 ["Button"]
  GETTABLEKS R7 R5 K14 ["Image"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K16 ["Components"]
  GETTABLEKS R11 R12 K17 ["Renderers"]
  GETTABLEKS R10 R11 K14 ["Image"]
  GETTABLEKS R9 R10 K18 ["MetadataDialog"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K19 ["Util"]
  GETTABLEKS R10 R11 K20 ["getImage"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K21 ["Resources"]
  GETTABLEKS R11 R12 K22 ["Theme"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K15 ["Src"]
  GETTABLEKS R12 R13 K23 ["Types"]
  CALL R11 1 1
  DUPCLOSURE R12 K24 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R12 1
