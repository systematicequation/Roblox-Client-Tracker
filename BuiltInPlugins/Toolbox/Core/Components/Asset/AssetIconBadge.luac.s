PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["Modal"]
  GETTABLEKS R1 R0 K5 ["onTooltipTriggered"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["assetId"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["TOOLTIP_TYPE"]
  GETTABLEKS R3 R4 K8 ["HIGH_QUALITY_BADGE"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R2 K1 [{"isHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isHovered"]
  SETTABLEKS R2 R0 K2 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K3 ["onMouseEnter"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onMouseLeave"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["assetId"]
  GETTABLEKS R5 R1 K4 ["isPackage"]
  GETTABLEKS R6 R1 K5 ["floatLeft"]
  GETTABLEKS R7 R0 K6 ["onMouseEnter"]
  GETTABLEKS R8 R0 K7 ["onMouseLeave"]
  GETTABLEKS R10 R0 K8 ["state"]
  GETTABLEKS R9 R10 K9 ["isHovered"]
  GETTABLEKS R11 R1 K10 ["Modal"]
  GETTABLEKS R10 R11 K11 ["modalStatus"]
  MOVE R13 R4
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["TOOLTIP_TYPE"]
  GETTABLEKS R14 R15 K13 ["HIGH_QUALITY_BADGE"]
  NAMECALL R11 R10 K14 ["canShowCurrentTooltip"]
  CALL R11 3 1
  GETTABLEKS R13 R2 K15 ["asset"]
  GETTABLEKS R12 R13 K16 ["packages"]
  JUMPIFNOT R5 [+112]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K17 ["createElement"]
  LOADK R14 K18 ["Frame"]
  DUPTABLE R15 K24 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R16 K27 [Vector2.new]
  JUMPIFNOT R6 [+2]
  LOADN R17 0
  JUMP [+1]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K19 ["AnchorPoint"]
  GETIMPORT R16 K29 [UDim2.new]
  JUMPIFNOT R6 [+2]
  LOADK R17 K30 [0.06]
  JUMP [+1]
  LOADK R17 K31 [0.94]
  LOADN R18 0
  LOADK R19 K31 [0.94]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K20 ["Position"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K32 ["PACKAGE_BACKGROUND_SIZE"]
  SETTABLEKS R16 R15 K21 ["Size"]
  GETTABLEKS R16 R12 K33 ["backgroundColor"]
  SETTABLEKS R16 R15 K22 ["BackgroundColor3"]
  GETTABLEKS R16 R12 K34 ["backgroundTransparency"]
  SETTABLEKS R16 R15 K23 ["BackgroundTransparency"]
  DUPTABLE R16 K37 [{"UICorner", "Image"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K17 ["createElement"]
  LOADK R18 K35 ["UICorner"]
  DUPTABLE R19 K39 [{"CornerRadius"}]
  GETIMPORT R20 K41 [UDim.new]
  LOADN R21 0
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K42 ["PACKAGE_BACKGROUND_CORNER_RADIUS"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K38 ["CornerRadius"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K35 ["UICorner"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K17 ["createElement"]
  LOADK R18 K43 ["ImageLabel"]
  NEWTABLE R19 8 0
  GETIMPORT R20 K27 [Vector2.new]
  LOADK R21 K44 [0.5]
  LOADK R22 K44 [0.5]
  CALL R20 2 1
  SETTABLEKS R20 R19 K19 ["AnchorPoint"]
  GETIMPORT R20 K29 [UDim2.new]
  LOADK R21 K44 [0.5]
  LOADN R22 0
  LOADK R23 K44 [0.5]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K20 ["Position"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K45 ["PACKAGE_DETAIL_SIZE"]
  SETTABLEKS R20 R19 K21 ["Size"]
  GETTABLEKS R20 R12 K46 ["packageImage"]
  SETTABLEKS R20 R19 K36 ["Image"]
  LOADN R20 2
  SETTABLEKS R20 R19 K47 ["ZIndex"]
  LOADN R20 1
  SETTABLEKS R20 R19 K23 ["BackgroundTransparency"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K48 ["Event"]
  GETTABLEKS R20 R21 K49 ["MouseEnter"]
  SETTABLE R7 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K48 ["Event"]
  GETTABLEKS R20 R21 K50 ["MouseLeave"]
  SETTABLE R8 R19 R20
  CALL R17 2 1
  SETTABLEKS R17 R16 K36 ["Image"]
  CALL R13 3 -1
  RETURN R13 -1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K17 ["createElement"]
  LOADK R14 K43 ["ImageLabel"]
  NEWTABLE R15 8 0
  GETIMPORT R16 K27 [Vector2.new]
  JUMPIFNOT R6 [+2]
  LOADN R17 0
  JUMP [+1]
  LOADN R17 1
  LOADN R18 1
  CALL R16 2 1
  SETTABLEKS R16 R15 K19 ["AnchorPoint"]
  LOADN R16 1
  SETTABLEKS R16 R15 K23 ["BackgroundTransparency"]
  GETIMPORT R16 K29 [UDim2.new]
  JUMPIFNOT R6 [+2]
  LOADK R17 K30 [0.06]
  JUMP [+1]
  LOADK R17 K31 [0.94]
  LOADN R18 0
  LOADK R19 K51 [1.06]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K20 ["Position"]
  GETIMPORT R16 K29 [UDim2.new]
  LOADN R17 0
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K52 ["ASSET_ENDORSED_BADGE_ICON_SIZE"]
  LOADN R19 0
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K52 ["ASSET_ENDORSED_BADGE_ICON_SIZE"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K21 ["Size"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K53 ["ENDORSED_BADGE_ICON"]
  SETTABLEKS R16 R15 K36 ["Image"]
  LOADN R16 2
  SETTABLEKS R16 R15 K47 ["ZIndex"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K48 ["Event"]
  GETTABLEKS R16 R17 K49 ["MouseEnter"]
  SETTABLE R7 R15 R16
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K48 ["Event"]
  GETTABLEKS R16 R17 K50 ["MouseLeave"]
  SETTABLE R8 R15 R16
  DUPTABLE R16 K55 [{"TooltipWrapper"}]
  MOVE R17 R9
  JUMPIFNOT R17 [+17]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K17 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K57 [{"Text", "canShowCurrentTooltip", "isHovered"}]
  LOADK R22 K58 ["General"]
  LOADK R23 K59 ["EndorseBadgeTooltipText"]
  NAMECALL R20 R3 K60 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K56 ["Text"]
  SETTABLEKS R11 R19 K14 ["canShowCurrentTooltip"]
  SETTABLEKS R9 R19 K9 ["isHovered"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K54 ["TooltipWrapper"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["ContextServices"]
  GETTABLEKS R5 R4 K9 ["withContext"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K10 ["Core"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K12 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Core"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K13 ["Images"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Core"]
  GETTABLEKS R10 R11 K8 ["ContextServices"]
  GETTABLEKS R9 R10 K14 ["ModalContext"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K10 ["Core"]
  GETTABLEKS R11 R12 K15 ["Components"]
  GETTABLEKS R10 R11 K16 ["TooltipWrapper"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K17 ["PureComponent"]
  LOADK R12 K18 ["AssetIconBadge"]
  NAMECALL R10 R10 K19 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K20 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K21 ["init"]
  DUPCLOSURE R11 K22 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K23 ["render"]
  MOVE R11 R5
  DUPTABLE R12 K27 [{"Stylizer", "Localization", "Modal"}]
  GETTABLEKS R13 R4 K24 ["Stylizer"]
  SETTABLEKS R13 R12 K24 ["Stylizer"]
  GETTABLEKS R13 R4 K25 ["Localization"]
  SETTABLEKS R13 R12 K25 ["Localization"]
  SETTABLEKS R8 R12 K26 ["Modal"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
