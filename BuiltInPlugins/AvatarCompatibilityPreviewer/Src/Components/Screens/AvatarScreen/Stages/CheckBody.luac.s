PROTO_0:
  DUPTABLE R2 K2 [{"AssetId", "AssetType"}]
  SETTABLEKS R1 R2 K0 ["AssetId"]
  SETTABLEKS R0 R2 K1 ["AssetType"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["List"]
  GETTABLEKS R1 R2 K1 ["join"]
  GETTABLEKS R3 R0 K2 ["avatarAssets"]
  GETTABLEKS R2 R3 K3 ["clothing"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["collectArray"]
  GETTABLEKS R5 R0 K2 ["avatarAssets"]
  GETTABLEKS R4 R5 K5 ["accessories"]
  DUPCLOSURE R5 K6 [PROTO_0]
  CALL R3 2 -1
  CALL R1 -1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETTABLEKS R5 R0 K2 ["avatarAssets"]
  GETTABLEKS R4 R5 K7 ["skinTone"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K2 ["avatarAssets"]
  GETTABLEKS R4 R5 K8 ["patches"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["avatarAssets"]
  GETUPVAL R3 2
  CALL R3 0 1
  GETTABLEKS R4 R0 K2 ["Dummy"]
  JUMPIFNOTEQKNIL R4 [+3]
  LOADNIL R4
  RETURN R4 1
  GETTABLEKS R5 R0 K2 ["Dummy"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["Fragment"]
  NEWTABLE R6 0 0
  DUPTABLE R7 K10 [{"EquippedItemsSidebar", "AnimationController"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K12 [{"OnClothingLayerOrderChanged"}]
  SETTABLEKS R3 R10 K11 ["OnClothingLayerOrderChanged"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K8 ["EquippedItemsSidebar"]
  GETTABLEKS R8 R2 K13 ["animation"]
  JUMPIFNOT R8 [+14]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K15 [{"Dummy", "AnimationId"}]
  GETTABLEKS R11 R0 K2 ["Dummy"]
  SETTABLEKS R11 R10 K2 ["Dummy"]
  GETTABLEKS R11 R2 K13 ["animation"]
  SETTABLEKS R11 R10 K14 ["AnimationId"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["AnimationController"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  DUPTABLE R0 K1 [{"fov"}]
  LOADN R1 50
  SETTABLEKS R1 R0 K0 ["fov"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["AnimationController"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K13 ["EquippedItemsSidebar"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K14 ["Parent"]
  GETTABLEKS R7 R8 K15 ["StageType"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K17 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K16 ["Util"]
  GETTABLEKS R9 R10 K18 ["EquipmentStateContext"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K19 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K10 ["Src"]
  GETTABLEKS R12 R13 K16 ["Util"]
  GETTABLEKS R11 R12 K20 ["createHumanoidDescriptionWithSkinTone_DEPRECATED"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K16 ["Util"]
  GETTABLEKS R12 R13 K21 ["patchHumanoidDescription_DEPRECATED"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K22 ["Hooks"]
  GETTABLEKS R13 R14 K23 ["useOnClothingLayerOrderChanged"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K24 ["Flags"]
  GETTABLEKS R14 R15 K25 ["getFFlagAvatarPreviewerKeepAccessoriesInCheckFace"]
  CALL R13 1 1
  DUPCLOSURE R14 K26 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R10
  DUPCLOSURE R15 K27 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R4
  DUPTABLE R16 K32 [{"tabs", "render", "getHumanoidDescription_DEPRECATED", "getPreviewCameraModifications"}]
  NEWTABLE R17 0 4
  LOADK R18 K33 ["animations"]
  LOADK R19 K34 ["clothing"]
  LOADK R20 K35 ["accessories"]
  LOADK R21 K36 ["body"]
  SETLIST R17 R18 4 [1]
  SETTABLEKS R17 R16 K28 ["tabs"]
  SETTABLEKS R15 R16 K29 ["render"]
  MOVE R18 R13
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADNIL R17
  JUMP [+1]
  MOVE R17 R14
  SETTABLEKS R17 R16 K30 ["getHumanoidDescription_DEPRECATED"]
  DUPCLOSURE R17 K37 [PROTO_3]
  SETTABLEKS R17 R16 K31 ["getPreviewCameraModifications"]
  RETURN R16 1
