PROTO_0:
  GETIMPORT R3 K1 [require]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Packages"]
  GETTABLEKS R4 R5 K3 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K4 ["ContextServices"]
  GETTABLEKS R5 R4 K5 ["Analytics"]
  GETTABLEKS R6 R4 K6 ["Localization"]
  GETTABLEKS R7 R4 K7 ["Mouse"]
  GETTABLEKS R8 R4 K8 ["Store"]
  GETIMPORT R9 K1 [require]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["Src"]
  GETTABLEKS R11 R12 K10 ["Controllers"]
  GETTABLEKS R10 R11 K11 ["CalloutController"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["Src"]
  GETTABLEKS R12 R13 K10 ["Controllers"]
  GETTABLEKS R11 R12 K12 ["PresetController"]
  CALL R10 1 1
  GETIMPORT R11 K1 [require]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["Src"]
  GETTABLEKS R13 R14 K13 ["Resources"]
  GETTABLEKS R12 R13 K14 ["createAnalyticsHandlers"]
  CALL R11 1 1
  GETIMPORT R12 K1 [require]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K9 ["Src"]
  GETTABLEKS R14 R15 K13 ["Resources"]
  GETTABLEKS R13 R14 K15 ["MakeTheme"]
  CALL R12 1 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["Src"]
  GETTABLEKS R15 R16 K13 ["Resources"]
  GETTABLEKS R14 R15 K6 ["Localization"]
  GETTABLEKS R13 R14 K16 ["SourceStrings"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K9 ["Src"]
  GETTABLEKS R16 R17 K13 ["Resources"]
  GETTABLEKS R15 R16 K6 ["Localization"]
  GETTABLEKS R14 R15 K17 ["LocalizedStrings"]
  GETTABLEKS R16 R4 K18 ["Plugin"]
  GETTABLEKS R15 R16 K19 ["new"]
  MOVE R16 R0
  CALL R15 1 1
  GETTABLEKS R16 R7 K19 ["new"]
  NAMECALL R17 R0 K20 ["getMouse"]
  CALL R17 1 -1
  CALL R16 -1 1
  GETTABLEKS R17 R8 K19 ["new"]
  MOVE R18 R1
  CALL R17 1 1
  MOVE R18 R12
  CALL R18 0 1
  GETTABLEKS R19 R6 K19 ["new"]
  DUPTABLE R20 K24 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R13 R20 K21 ["stringResourceTable"]
  SETTABLEKS R14 R20 K22 ["translationResourceTable"]
  LOADK R21 K25 ["AssetImporter"]
  SETTABLEKS R21 R20 K23 ["pluginName"]
  CALL R19 1 1
  GETUPVAL R21 1
  CALL R21 0 1
  JUMPIFNOT R21 [+7]
  GETUPVAL R21 2
  CALL R21 0 1
  JUMPIFNOT R21 [+4]
  GETTABLEKS R20 R9 K19 ["new"]
  CALL R20 0 1
  JUMP [+1]
  LOADNIL R20
  GETUPVAL R22 3
  JUMPIFNOT R22 [+7]
  GETTABLEKS R21 R10 K19 ["new"]
  MOVE R22 R0
  MOVE R23 R1
  MOVE R24 R19
  CALL R21 3 1
  JUMP [+1]
  LOADNIL R21
  GETTABLEKS R22 R5 K19 ["new"]
  MOVE R23 R11
  CALL R22 1 1
  DUPTABLE R23 K27 [{"Plugin", "Mouse", "Store", "Theme", "Localization", "Analytics", "CalloutController", "PresetController"}]
  SETTABLEKS R15 R23 K18 ["Plugin"]
  SETTABLEKS R16 R23 K7 ["Mouse"]
  SETTABLEKS R17 R23 K8 ["Store"]
  SETTABLEKS R18 R23 K26 ["Theme"]
  SETTABLEKS R19 R23 K6 ["Localization"]
  SETTABLEKS R22 R23 K5 ["Analytics"]
  SETTABLEKS R20 R23 K11 ["CalloutController"]
  SETTABLEKS R21 R23 K12 ["PresetController"]
  JUMPIFNOT R2 [+2]
  SETTABLEKS R2 R23 K28 ["PluginLoaderContextItem"]
  RETURN R23 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["getFFlagImporterOpensAvatarPreviewer2"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Flags"]
  GETTABLEKS R3 R4 K8 ["getFFlagImporterOpensAvatarPreviewerBetaCheck"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K6 ["Flags"]
  GETTABLEKS R4 R5 K9 ["getFFlagAssetImporterCustomPresets"]
  CALL R3 1 1
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
