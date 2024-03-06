PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  LOADNIL R0
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  LOADK R8 K0 ["SurfaceAppearance"]
  NAMECALL R6 R5 K1 ["FindFirstChildOfClass"]
  CALL R6 2 1
  JUMPIFNOT R6 [+2]
  GETTABLEKS R0 R6 K2 ["ColorMap"]
  FORGLOOP R1 2 [-8]
  LOADNIL R1
  JUMPIFNOT R0 [+14]
  GETUPVAL R5 1
  GETTABLEKS R2 R5 K3 ["generations"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K4 ["textureIds"]
  JUMPIFNOTEQ R7 R0 [+3]
  MOVE R1 R5
  JUMP [+2]
  FORGLOOP R2 2 [-7]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["setSelected"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["generation notification table"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R1 2 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["generations"]
  GETTABLEKS R3 R0 K4 ["uuid"]
  GETTABLE R2 R1 R3
  JUMPIF R2 [+10]
  GETIMPORT R3 K6 [warn]
  GETUPVAL R4 4
  LOADK R6 K7 ["Generation"]
  LOADK R7 K8 ["Warning"]
  NAMECALL R4 R4 K9 ["getText"]
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0
  GETTABLEKS R3 R0 K10 ["status"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K11 ["STATUS"]
  GETTABLEKS R4 R5 K12 ["COMPLETED"]
  JUMPIFNOTEQ R3 R4 [+16]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K13 ["quota"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K14 ["COMPLETED_GENERATIONS_INDEX"]
  ADD R3 R4 R5
  SETTABLEKS R3 R0 K15 ["layoutOrder"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K16 ["setSelected"]
  GETTABLEKS R4 R0 K4 ["uuid"]
  CALL R3 1 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K17 ["updateGeneration"]
  DUPTABLE R4 K20 [{"action", "uuid", "data"}]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K21 ["GENERATION_ACTIONS"]
  GETTABLEKS R5 R6 K22 ["UPDATE"]
  SETTABLEKS R5 R4 K18 ["action"]
  GETTABLEKS R5 R0 K4 ["uuid"]
  SETTABLEKS R5 R4 K4 ["uuid"]
  SETTABLEKS R0 R4 K19 ["data"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K10 ["status"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K11 ["STATUS"]
  GETTABLEKS R4 R5 K12 ["COMPLETED"]
  JUMPIFEQ R3 R4 [+2]
  RETURN R0 0
  GETTABLEKS R3 R0 K23 ["unwrappingRequest"]
  JUMPIFNOT R3 [+51]
  GETUPVAL R3 6
  GETTABLEKS R4 R2 K24 ["meshParts"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K23 ["unwrappingRequest"]
  GETTABLEKS R6 R2 K25 ["partGroup"]
  NAMECALL R4 R4 K26 ["ApplyToDataModel"]
  CALL R4 2 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K27 ["updateModelToGenerations"]
  DUPTABLE R5 K29 [{"action", "hash", "uuid"}]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K21 ["GENERATION_ACTIONS"]
  GETTABLEKS R6 R7 K30 ["REMOVE"]
  SETTABLEKS R6 R5 K18 ["action"]
  SETTABLEKS R3 R5 K28 ["hash"]
  GETTABLEKS R6 R0 K4 ["uuid"]
  SETTABLEKS R6 R5 K4 ["uuid"]
  CALL R4 1 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K27 ["updateModelToGenerations"]
  DUPTABLE R5 K29 [{"action", "hash", "uuid"}]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K21 ["GENERATION_ACTIONS"]
  GETTABLEKS R6 R7 K31 ["ADD"]
  SETTABLEKS R6 R5 K18 ["action"]
  GETUPVAL R6 6
  GETTABLEKS R7 R2 K24 ["meshParts"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K28 ["hash"]
  GETTABLEKS R6 R0 K4 ["uuid"]
  SETTABLEKS R6 R5 K4 ["uuid"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K32 ["textureIds"]
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K34 [assert]
  CALL R3 1 0
  GETTABLEKS R3 R2 K24 ["meshParts"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R8 7
  MOVE R9 R7
  GETTABLEKS R10 R0 K32 ["textureIds"]
  CALL R8 2 0
  FORGLOOP R3 2 [-6]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["preview notification table"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R1 2 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["previews"]
  GETTABLEKS R3 R0 K4 ["uuid"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+7]
  GETTABLEKS R2 R1 K5 ["imageFailed"]
  JUMPIF R2 [+4]
  LOADN R2 0
  SETTABLEKS R2 R0 K5 ["imageFailed"]
  JUMP [+11]
  GETTABLEKS R2 R0 K6 ["previewUrlFailed"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R2 R1 K5 ["imageFailed"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R3 R1 K5 ["imageFailed"]
  ADDK R2 R3 K7 [1]
  SETTABLEKS R2 R0 K5 ["imageFailed"]
  GETTABLEKS R2 R0 K8 ["status"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K9 ["STATUS"]
  GETTABLEKS R3 R4 K10 ["FAILED"]
  JUMPIFNOTEQ R2 R3 [+28]
  GETTABLEKS R2 R0 K11 ["message"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K12 ["addError"]
  GETUPVAL R4 5
  GETTABLEKS R5 R1 K13 ["meshParts"]
  CALL R4 1 1
  MOVE R5 R2
  GETUPVAL R6 6
  LOADK R8 K14 ["EntryArea"]
  LOADK R9 K15 ["ErrorAlertTitle"]
  NAMECALL R6 R6 K16 ["getText"]
  CALL R6 3 1
  GETTABLEKS R7 R0 K11 ["message"]
  LOADK R8 K17 ["error"]
  CALL R3 5 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K18 ["removePreview"]
  GETTABLEKS R4 R0 K4 ["uuid"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K19 ["updatePreview"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  CALL R0 0 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  GETUPVAL R2 2
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["useContext"]
  GETUPVAL R4 4
  CALL R3 1 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["useContext"]
  GETUPVAL R5 5
  CALL R4 1 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["useEffect"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE VAL R4
  NEWTABLE R7 0 0
  CALL R5 2 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["useEffect"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWTABLE R7 0 2
  MOVE R8 R2
  GETTABLEKS R9 R3 K4 ["setSelected"]
  SETLIST R7 R8 2 [1]
  CALL R5 2 0
  GETUPVAL R5 7
  GETUPVAL R7 8
  GETTABLEKS R6 R7 K5 ["GenerationNotificationSignal"]
  NEWCLOSURE R7 P2
  CAPTURE UPVAL U9
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  NEWTABLE R8 0 5
  GETTABLEKS R9 R3 K6 ["generations"]
  GETTABLEKS R10 R3 K7 ["updateGeneration"]
  GETTABLEKS R11 R3 K8 ["updateModelToGenerations"]
  GETTABLEKS R12 R3 K4 ["setSelected"]
  MOVE R13 R2
  SETLIST R8 R9 5 [1]
  CALL R5 3 0
  GETUPVAL R5 7
  GETUPVAL R7 8
  GETTABLEKS R6 R7 K9 ["PreviewNotificationSignal"]
  NEWCLOSURE R7 P3
  CAPTURE UPVAL U9
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R1
  NEWTABLE R8 0 3
  GETTABLEKS R9 R4 K10 ["previews"]
  GETTABLEKS R10 R4 K11 ["updatePreview"]
  MOVE R11 R2
  SETLIST R8 R9 3 [1]
  CALL R5 3 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K12 ["createElement"]
  GETUPVAL R6 13
  DUPTABLE R7 K15 [{"AutomaticCanvasSize", "Size"}]
  GETIMPORT R8 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K13 ["AutomaticCanvasSize"]
  GETIMPORT R8 K22 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["Size"]
  DUPTABLE R8 K24 [{"Main"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 14
  DUPTABLE R11 K28 [{"HorizontalAlignment", "Layout", "VerticalAlignment"}]
  GETIMPORT R12 K30 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K25 ["HorizontalAlignment"]
  GETIMPORT R12 K33 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K26 ["Layout"]
  GETIMPORT R12 K35 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K27 ["VerticalAlignment"]
  DUPTABLE R12 K38 [{"EntryArea", "Generations"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 15
  DUPTABLE R15 K40 [{"LayoutOrder"}]
  NAMECALL R16 R0 K41 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K39 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K36 ["EntryArea"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 16
  DUPTABLE R15 K43 [{"LayoutOrder", "MeshParts"}]
  NAMECALL R16 R0 K41 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K39 ["LayoutOrder"]
  SETTABLEKS R2 R15 K42 ["MeshParts"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K37 ["Generations"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K23 ["Main"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["TextureGenerationService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K14 ["useEventConnection"]
  GETTABLEKS R7 R0 K15 ["Src"]
  GETTABLEKS R6 R7 K16 ["Components"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R8 R6 K17 ["EntryArea"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R9 R6 K18 ["Generations"]
  CALL R8 1 1
  GETTABLEKS R9 R4 K19 ["ContextServices"]
  GETTABLEKS R10 R9 K20 ["Localization"]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K21 ["Hooks"]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R13 R11 K22 ["useSelectedMeshParts"]
  CALL R12 1 1
  GETTABLEKS R13 R4 K23 ["UI"]
  GETTABLEKS R14 R13 K24 ["ScrollingFrame"]
  GETTABLEKS R15 R13 K25 ["Pane"]
  GETIMPORT R16 K9 [require]
  GETTABLEKS R19 R0 K15 ["Src"]
  GETTABLEKS R18 R19 K26 ["Util"]
  GETTABLEKS R17 R18 K27 ["Constants"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R20 R0 K15 ["Src"]
  GETTABLEKS R19 R20 K26 ["Util"]
  GETTABLEKS R18 R19 K28 ["GenerationsContext"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R21 R0 K15 ["Src"]
  GETTABLEKS R20 R21 K26 ["Util"]
  GETTABLEKS R19 R20 K29 ["PreviewsContext"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R22 R0 K15 ["Src"]
  GETTABLEKS R21 R22 K26 ["Util"]
  GETTABLEKS R20 R21 K30 ["createHashFromMeshParts"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R23 R0 K15 ["Src"]
  GETTABLEKS R22 R23 K26 ["Util"]
  GETTABLEKS R21 R22 K31 ["fetchAndSetQuotas"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R24 R0 K15 ["Src"]
  GETTABLEKS R23 R24 K26 ["Util"]
  GETTABLEKS R22 R23 K32 ["setTexture"]
  CALL R21 1 1
  GETTABLEKS R23 R4 K26 ["Util"]
  GETTABLEKS R22 R23 K33 ["LayoutOrderIterator"]
  GETIMPORT R23 K9 [require]
  GETTABLEKS R26 R0 K15 ["Src"]
  GETTABLEKS R25 R26 K34 ["Flags"]
  GETTABLEKS R24 R25 K35 ["getFFlagDebugTextureGeneratorLogging"]
  CALL R23 1 1
  DUPCLOSURE R24 K36 [PROTO_4]
  CAPTURE VAL R22
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R23
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R24 1
