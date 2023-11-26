PROTO_0:
  NEWTABLE R1 8 0
  GETIMPORT R2 K2 [UDim2.fromOffset]
  LOADN R3 28
  LOADN R4 28
  CALL R2 2 1
  SETTABLEKS R2 R1 K3 ["Size"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K4 ["Foreground"]
  DUPTABLE R2 K6 [{"Image"}]
  SETTABLEKS R0 R2 K5 ["Image"]
  SETTABLEKS R2 R1 K7 ["ForegroundStyle"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K8 ["Background"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["Dictionary"]
  GETTABLEKS R2 R3 K10 ["join"]
  GETUPVAL R3 3
  DUPTABLE R4 K12 [{"Color"}]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K13 ["ImageButtonBackground"]
  SETTABLEKS R5 R4 K11 ["Color"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K14 ["BackgroundStyle"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K15 ["Hover"]
  DUPTABLE R3 K16 [{"BackgroundStyle"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K9 ["Dictionary"]
  GETTABLEKS R4 R5 K10 ["join"]
  GETUPVAL R5 3
  DUPTABLE R6 K18 [{"Transparency", "Color"}]
  LOADK R7 K19 [0.5]
  SETTABLEKS R7 R6 K17 ["Transparency"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K20 ["ImageButtonHover"]
  SETTABLEKS R7 R6 K11 ["Color"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["BackgroundStyle"]
  SETTABLE R3 R1 R2
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K21 ["Disabled"]
  DUPTABLE R3 K16 [{"BackgroundStyle"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K9 ["Dictionary"]
  GETTABLEKS R4 R5 K10 ["join"]
  GETUPVAL R5 3
  DUPTABLE R6 K22 [{"Color", "Transparency"}]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K23 ["ButtonDisabled"]
  SETTABLEKS R7 R6 K11 ["Color"]
  LOADK R7 K19 [0.5]
  SETTABLEKS R7 R6 K17 ["Transparency"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["BackgroundStyle"]
  SETTABLE R3 R1 R2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["UI"]
  GETTABLEKS R3 R1 K9 ["Util"]
  GETTABLEKS R4 R3 K10 ["Cryo"]
  GETTABLEKS R5 R3 K11 ["StyleModifier"]
  GETTABLEKS R6 R3 K12 ["deepCopy"]
  GETTABLEKS R7 R2 K13 ["RoundBox"]
  GETTABLEKS R8 R2 K14 ["Image"]
  GETTABLEKS R10 R1 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["StyleKey"]
  GETTABLEKS R10 R2 K17 ["UIFolderData"]
  GETTABLEKS R12 R10 K13 ["RoundBox"]
  GETTABLEKS R11 R12 K18 ["style"]
  MOVE R12 R6
  MOVE R13 R11
  CALL R12 1 1
  DUPCLOSURE R13 K19 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R5
  DUPTABLE R14 K21 [{"Controls"}]
  DUPTABLE R15 K26 [{"Size", "Padding", "PauseButton", "PlayButton"}]
  GETIMPORT R16 K29 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 46
  CALL R16 4 1
  SETTABLEKS R16 R15 K22 ["Size"]
  DUPTABLE R16 K34 [{"Top", "Left", "Bottom", "Right"}]
  LOADN R17 5
  SETTABLEKS R17 R16 K30 ["Top"]
  LOADN R17 11
  SETTABLEKS R17 R16 K31 ["Left"]
  LOADN R17 11
  SETTABLEKS R17 R16 K32 ["Bottom"]
  LOADN R17 11
  SETTABLEKS R17 R16 K33 ["Right"]
  SETTABLEKS R16 R15 K23 ["Padding"]
  MOVE R16 R13
  LOADK R17 K35 ["rbxasset://textures/DeveloperFramework/MediaPlayerControls/pause_button.png"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K24 ["PauseButton"]
  MOVE R16 R13
  LOADK R17 K36 ["rbxasset://textures/DeveloperFramework/MediaPlayerControls/play_button.png"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K25 ["PlayButton"]
  SETTABLEKS R15 R14 K20 ["Controls"]
  RETURN R14 1
