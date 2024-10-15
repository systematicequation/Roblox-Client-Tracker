PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["enable"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ContextServices"]
  GETTABLEKS R2 R3 K3 ["Stylizer"]
  LOADK R4 K4 ["ResizeNotice"]
  NAMECALL R2 R2 K2 ["use"]
  CALL R2 2 1
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K5 ["Avatar"]
  CALL R3 1 1
  GETUPVAL R4 2
  LOADB R5 1
  CALL R4 1 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K6 ["useEffect"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  NEWTABLE R7 0 1
  GETTABLEKS R9 R0 K5 ["Avatar"]
  GETTABLEKS R8 R9 K7 ["WorldModel"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K8 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["UI"]
  GETTABLEKS R6 R7 K10 ["Pane"]
  DUPTABLE R7 K16 [{"Size", "Position", "AnchorPoint", "AutomaticSize", "Visible"}]
  GETTABLEKS R8 R2 K11 ["Size"]
  SETTABLEKS R8 R7 K11 ["Size"]
  GETTABLEKS R8 R2 K12 ["Position"]
  SETTABLEKS R8 R7 K12 ["Position"]
  GETTABLEKS R8 R2 K13 ["AnchorPoint"]
  SETTABLEKS R8 R7 K13 ["AnchorPoint"]
  GETIMPORT R8 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K14 ["AutomaticSize"]
  GETTABLEKS R8 R4 K20 ["enabled"]
  JUMPIFNOT R8 [+13]
  LOADB R8 0
  GETTABLEKS R9 R3 K21 ["originalScale"]
  JUMPIFEQKNIL R9 [+9]
  GETTABLEKS R10 R0 K5 ["Avatar"]
  GETTABLEKS R9 R10 K22 ["WorldModelScale"]
  JUMPIFEQKN R9 K23 [1] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K15 ["Visible"]
  DUPTABLE R8 K25 [{"Alert"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K9 ["UI"]
  GETTABLEKS R10 R11 K24 ["Alert"]
  DUPTABLE R11 K31 [{"Title", "Description", "PrimaryAction", "OnClose", "Style"}]
  LOADK R14 K4 ["ResizeNotice"]
  LOADK R15 K26 ["Title"]
  NAMECALL R12 R1 K32 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K26 ["Title"]
  LOADK R14 K4 ["ResizeNotice"]
  LOADK R15 K27 ["Description"]
  DUPTABLE R16 K34 [{"resizePercent"}]
  GETTABLEKS R18 R3 K35 ["resizeProportion"]
  JUMPIFNOT R18 [+4]
  GETTABLEKS R18 R3 K35 ["resizeProportion"]
  MULK R17 R18 K36 [100]
  JUMP [+1]
  LOADN R17 100
  SETTABLEKS R17 R16 K33 ["resizePercent"]
  NAMECALL R12 R1 K32 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["Description"]
  DUPTABLE R12 K39 [{"Text", "OnClick"}]
  LOADK R15 K4 ["ResizeNotice"]
  LOADK R16 K40 ["RevertAction"]
  NAMECALL R13 R1 K32 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K37 ["Text"]
  GETTABLEKS R13 R3 K41 ["revertScale"]
  SETTABLEKS R13 R12 K38 ["OnClick"]
  SETTABLEKS R12 R11 K28 ["PrimaryAction"]
  GETTABLEKS R12 R4 K42 ["disable"]
  SETTABLEKS R12 R11 K29 ["OnClose"]
  LOADK R12 K43 ["Success"]
  SETTABLEKS R12 R11 K30 ["Style"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K24 ["Alert"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Theme"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K13 ["Hooks"]
  GETTABLEKS R6 R7 K14 ["useToggleState"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K13 ["Hooks"]
  GETTABLEKS R7 R8 K15 ["useResizeAvatarHelper"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R7 1
