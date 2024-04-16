PROTO_0:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Camera"]
  CALL R0 1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["FieldOfView"]
  JUMPIFEQKNIL R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["FieldOfView"]
  SETTABLEKS R1 R0 K4 ["FieldOfView"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AnimateTargetAsset"]
  NAMECALL R0 R0 K1 ["LoadLocalAsset"]
  CALL R0 2 1
  NAMECALL R1 R0 K2 ["Clone"]
  CALL R1 1 1
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K3 ["Parent"]
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K4 ["PrimaryPart"]
  SETTABLEKS R3 R2 K4 ["PrimaryPart"]
  GETUPVAL R2 3
  MOVE R3 R1
  CALL R2 1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_3:
  GETUPVAL R1 0
  LOADK R3 K0 ["AnimationPreview"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 3 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useState"]
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K6 ["WorldModel"]
  CALL R3 1 -1
  CALL R2 -1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useState"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["useState"]
  LOADNIL R5
  CALL R4 1 2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["useEffect"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R5
  NEWTABLE R8 0 0
  CALL R6 2 0
  GETUPVAL R6 3
  LOADB R7 0
  CALL R6 1 1
  GETUPVAL R7 4
  MOVE R8 R4
  GETTABLEKS R9 R0 K8 ["AnimationId"]
  LOADNIL R10
  GETTABLEKS R12 R6 K9 ["enabled"]
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+2]
  GETTABLEKS R11 R1 K10 ["PausedAnimationAlpha"]
  CALL R7 4 0
  JUMPIFNOT R4 [+81]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 5
  NEWTABLE R9 4 0
  LOADB R10 1
  SETTABLEKS R10 R9 K12 ["Active"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["Event"]
  GETTABLEKS R10 R11 K14 ["MouseEnter"]
  GETTABLEKS R11 R6 K15 ["enable"]
  SETTABLE R11 R9 R10
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["Event"]
  GETTABLEKS R10 R11 K16 ["MouseLeave"]
  GETTABLEKS R11 R6 K15 ["enable"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K18 [{"Model"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K26 [{"Ambient", "Camera", "FocusDirection", "InitialDistance", "Model", "ShouldClone", "Static", "ImageTransparency"}]
  GETIMPORT R14 K28 [Color3.new]
  LOADN R15 1
  LOADN R16 1
  LOADN R17 1
  CALL R14 3 1
  SETTABLEKS R14 R13 K19 ["Ambient"]
  SETTABLEKS R3 R13 K20 ["Camera"]
  GETTABLEKS R16 R4 K29 ["PrimaryPart"]
  GETTABLEKS R15 R16 K30 ["CFrame"]
  GETTABLEKS R14 R15 K31 ["LookVector"]
  GETTABLEKS R18 R4 K29 ["PrimaryPart"]
  GETTABLEKS R17 R18 K30 ["CFrame"]
  GETTABLEKS R16 R17 K32 ["RightVector"]
  GETTABLEKS R17 R1 K33 ["FrontRightAngleLerp"]
  NAMECALL R14 R14 K34 ["Lerp"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K21 ["FocusDirection"]
  GETTABLEKS R14 R1 K22 ["InitialDistance"]
  SETTABLEKS R14 R13 K22 ["InitialDistance"]
  SETTABLEKS R2 R13 K17 ["Model"]
  LOADB R14 0
  SETTABLEKS R14 R13 K23 ["ShouldClone"]
  LOADB R14 1
  SETTABLEKS R14 R13 K24 ["Static"]
  GETTABLEKS R14 R0 K35 ["Transparency"]
  SETTABLEKS R14 R13 K25 ["ImageTransparency"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["Model"]
  CALL R7 3 1
  RETURN R7 1
  LOADNIL R7
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["InsertService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Resources"]
  GETTABLEKS R5 R6 K15 ["Theme"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K13 ["Src"]
  GETTABLEKS R6 R7 K16 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K13 ["Src"]
  GETTABLEKS R8 R9 K17 ["Hooks"]
  GETTABLEKS R7 R8 K18 ["useAnimationOnAnimateTarget"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K13 ["Src"]
  GETTABLEKS R9 R10 K17 ["Hooks"]
  GETTABLEKS R8 R9 K19 ["useToggleState"]
  CALL R7 1 1
  GETTABLEKS R9 R2 K20 ["ContextServices"]
  GETTABLEKS R8 R9 K21 ["Stylizer"]
  GETTABLEKS R9 R2 K22 ["UI"]
  GETTABLEKS R10 R9 K23 ["AssetRenderModel"]
  GETTABLEKS R11 R9 K24 ["Pane"]
  DUPCLOSURE R12 K25 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R10
  RETURN R12 1
