PROTO_0:
  MOVE R1 R0
  LOADN R2 2
  CALL R1 1 0
  GETIMPORT R1 K2 [task.wait]
  LOADN R2 1
  CALL R1 1 0
  MOVE R1 R0
  LOADN R2 1
  CALL R1 1 0
  GETIMPORT R1 K2 [task.wait]
  LOADN R2 1
  CALL R1 1 0
  GETUPVAL R1 0
  LOADN R3 109
  NAMECALL R1 R1 K3 ["CreateHumanoidModelFromUserId"]
  CALL R1 2 1
  LOADK R4 K4 ["Accessory"]
  NAMECALL R2 R1 K5 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+17]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K8 [assert]
  CALL R3 2 0
  NAMECALL R3 R2 K9 ["Destroy"]
  CALL R3 1 0
  JUMPBACK [-22]
  RETURN R1 1

PROTO_1:
  LOADK R4 K0 ["SurfaceAppearance"]
  NAMECALL R2 R1 K1 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+7]
  NAMECALL R3 R0 K2 ["Clone"]
  CALL R3 1 1
  SETTABLEKS R1 R3 K3 ["Parent"]
  RETURN R0 0
  GETTABLEKS R3 R2 K4 ["ColorMap"]
  JUMPIFNOTEQKS R3 K5 [""] [+5]
  GETTABLEKS R3 R0 K4 ["ColorMap"]
  SETTABLEKS R3 R2 K4 ["ColorMap"]
  GETTABLEKS R3 R2 K6 ["NormalMap"]
  JUMPIFNOTEQKS R3 K5 [""] [+5]
  GETTABLEKS R3 R0 K6 ["NormalMap"]
  SETTABLEKS R3 R2 K6 ["NormalMap"]
  GETTABLEKS R3 R2 K7 ["MetalnessMap"]
  JUMPIFNOTEQKS R3 K5 [""] [+5]
  GETTABLEKS R3 R0 K7 ["MetalnessMap"]
  SETTABLEKS R3 R2 K7 ["MetalnessMap"]
  GETTABLEKS R3 R2 K8 ["RoughnessMap"]
  JUMPIFNOTEQKS R3 K5 [""] [+5]
  GETTABLEKS R3 R0 K8 ["RoughnessMap"]
  SETTABLEKS R3 R2 K8 ["RoughnessMap"]
  RETURN R0 0

PROTO_2:
  NAMECALL R2 R1 K0 ["GetDescendants"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K1 ["MeshPart"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 0
  MOVE R8 R0
  MOVE R9 R6
  CALL R7 2 0
  FORGLOOP R2 2 [-10]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 1
  RETURN R2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["StudioAssetService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETUPVAL R3 2
  JUMPIFNOT R3 [+38]
  LOADK R5 K4 ["SurfaceAppearance"]
  NAMECALL R3 R0 K5 ["FindFirstChildWhichIsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R5 R3 K6 ["ColorMap"]
  JUMPIFEQKS R5 K7 [""] [+4]
  GETTABLEKS R4 R3 K6 ["ColorMap"]
  JUMP [+2]
  GETTABLEKS R4 R0 K8 ["TextureID"]
  GETUPVAL R5 3
  JUMPIFNOT R5 [+14]
  GETTABLEKS R7 R0 K9 ["MeshId"]
  MOVE R8 R4
  MOVE R9 R1
  NAMECALL R5 R2 K10 ["RequestAvatarAutosetupAsync"]
  CALL R5 4 1
  JUMPIFEQKNIL R3 [+5]
  GETUPVAL R6 4
  MOVE R7 R3
  MOVE R8 R5
  CALL R6 2 0
  RETURN R5 1
  GETTABLEKS R7 R0 K9 ["MeshId"]
  MOVE R8 R4
  MOVE R9 R1
  NAMECALL R5 R2 K10 ["RequestAvatarAutosetupAsync"]
  CALL R5 4 -1
  RETURN R5 -1
  GETTABLEKS R5 R0 K9 ["MeshId"]
  GETTABLEKS R6 R0 K8 ["TextureID"]
  MOVE R7 R1
  NAMECALL R3 R2 K10 ["RequestAvatarAutosetupAsync"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["updateEtaSignal"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["updateEtaSignal"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["Connect"]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["signal"]
  JUMPIFEQKNIL R3 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["signal"]
  NAMECALL R3 R3 K3 ["Wait"]
  CALL R3 1 0
  JUMPIFEQKNIL R2 [+4]
  NAMECALL R3 R2 K4 ["Disconnect"]
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["result"]
  RETURN R3 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 3
  GETTABLEKS R4 R0 K1 ["signal"]
  GETTABLEKS R5 R0 K2 ["result"]
  GETTABLEKS R6 R0 K3 ["updateEtaSignal"]
  SETLIST R3 R4 3 [1]
  CALL R1 2 1
  DUPTABLE R2 K6 [{"startAutoSetupAsync", "autoSetupClickedSignal"}]
  SETTABLEKS R1 R2 K4 ["startAutoSetupAsync"]
  GETTABLEKS R3 R0 K5 ["autoSetupClickedSignal"]
  SETTABLEKS R3 R2 K5 ["autoSetupClickedSignal"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["Provider"]
  DUPTABLE R5 K10 [{"value"}]
  SETTABLEKS R2 R5 K9 ["value"]
  GETTABLEKS R6 R0 K11 ["children"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["signal"]
  NAMECALL R0 R0 K1 ["Wait"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["current"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["result"]
  RETURN R0 1
  GETUPVAL R0 1
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["current"]
  GETIMPORT R0 K5 [error]
  LOADK R1 K6 ["Mock error"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  LOADB R2 0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useCallback"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K2 ["signal"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  DUPTABLE R3 K5 [{"startAutoSetupAsync", "autoSetupClickedSignal"}]
  SETTABLEKS R2 R3 K3 ["startAutoSetupAsync"]
  GETTABLEKS R4 R0 K4 ["autoSetupClickedSignal"]
  SETTABLEKS R4 R3 K4 ["autoSetupClickedSignal"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["Provider"]
  DUPTABLE R6 K9 [{"value"}]
  SETTABLEKS R3 R6 K8 ["value"]
  GETTABLEKS R7 R0 K10 ["children"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Players"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K12 ["Src"]
  GETTABLEKS R5 R6 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K12 ["Src"]
  GETTABLEKS R5 R6 K15 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K12 ["Src"]
  GETTABLEKS R7 R8 K16 ["Flags"]
  GETTABLEKS R6 R7 K17 ["getFFlagDebugAvatarPreviewerMockAutoSetup"]
  CALL R5 1 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K18 ["AvatarAutosetupUseSurfaceAppearance"]
  LOADB R9 0
  NAMECALL R6 R6 K19 ["DefineFastFlag"]
  CALL R6 3 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K20 ["AvatarAutosetupUseAllMaps"]
  LOADB R10 0
  NAMECALL R7 R7 K19 ["DefineFastFlag"]
  CALL R7 3 1
  DUPCLOSURE R8 K21 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R3
  DUPCLOSURE R9 K22 [PROTO_1]
  DUPCLOSURE R10 K23 [PROTO_2]
  CAPTURE VAL R9
  DUPCLOSURE R11 K24 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R10
  DUPTABLE R12 K27 [{"startAutoSetupAsync", "autoSetupClickedSignal"}]
  SETTABLEKS R11 R12 K25 ["startAutoSetupAsync"]
  LOADNIL R13
  SETTABLEKS R13 R12 K26 ["autoSetupClickedSignal"]
  GETTABLEKS R13 R2 K28 ["createContext"]
  MOVE R14 R12
  CALL R13 1 1
  DUPCLOSURE R14 K29 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R13
  DUPCLOSURE R15 K30 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R13
  DUPTABLE R16 K33 [{"Context", "MockProviders"}]
  SETTABLEKS R13 R16 K31 ["Context"]
  DUPTABLE R17 K36 [{"Success", "FailsOnce"}]
  SETTABLEKS R14 R17 K34 ["Success"]
  SETTABLEKS R15 R17 K35 ["FailsOnce"]
  SETTABLEKS R17 R16 K32 ["MockProviders"]
  RETURN R16 1
