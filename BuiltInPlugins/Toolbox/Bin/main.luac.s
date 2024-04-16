PROTO_0:
  GETIMPORT R2 K1 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K2 ["Studio"]
  GETTABLEKS R0 R1 K3 ["Theme"]
  RETURN R0 1

PROTO_1:
  GETIMPORT R3 K3 [Enum.StudioStyleGuideColor.MainBackground]
  NAMECALL R1 R0 K4 ["GetColor"]
  CALL R1 2 1
  GETTABLEKS R6 R1 K6 ["r"]
  GETTABLEKS R7 R1 K7 ["g"]
  ADD R5 R6 R7
  GETTABLEKS R6 R1 K8 ["b"]
  ADD R4 R5 R6
  DIVK R3 R4 K5 [3]
  LOADK R4 K9 [0.5]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  DUPTABLE R1 K4 [{"getTheme", "isDarkerTheme", "themeChanged"}]
  DUPCLOSURE R2 K5 [PROTO_0]
  SETTABLEKS R2 R1 K1 ["getTheme"]
  DUPCLOSURE R2 K6 [PROTO_1]
  SETTABLEKS R2 R1 K2 ["isDarkerTheme"]
  GETIMPORT R4 K8 [settings]
  CALL R4 0 1
  GETTABLEKS R3 R4 K9 ["Studio"]
  GETTABLEKS R2 R3 K10 ["ThemeChanged"]
  SETTABLEKS R2 R1 K3 ["themeChanged"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R2 K1 [settings]
  CALL R2 0 1
  GETTABLEKS R1 R2 K2 ["Studio"]
  GETTABLEKS R0 R1 K3 ["Theme"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  DUPTABLE R1 K3 [{"getTheme", "themeChanged"}]
  DUPCLOSURE R2 K4 [PROTO_3]
  SETTABLEKS R2 R1 K1 ["getTheme"]
  GETIMPORT R4 K6 [settings]
  CALL R4 0 1
  GETTABLEKS R3 R4 K7 ["Studio"]
  GETTABLEKS R2 R3 K8 ["ThemeChanged"]
  SETTABLEKS R2 R1 K2 ["themeChanged"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R3 0
  JUMPIFEQ R3 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["Toolbox"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  MOVE R1 R0
  JUMPIFNOT R1 [+4]
  LOADK R3 K2 ["tabRefresh"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  NAMECALL R2 R1 K3 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+29]
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U1
  GETUPVAL R1 1
  LOADK R3 K0 ["Toolbox"]
  NAMECALL R1 R1 K1 ["FindFirstChild"]
  CALL R1 2 1
  MOVE R2 R1
  JUMPIFNOT R2 [+4]
  LOADK R4 K2 ["tabRefresh"]
  NAMECALL R2 R1 K1 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  NAMECALL R3 R2 K3 ["Fire"]
  CALL R3 1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["unmount"]
  GETUPVAL R2 0
  CALL R1 1 0
  LOADNIL R1
  SETUPVAL R1 0
  GETUPVAL R1 3
  LOADN R3 0
  NAMECALL R1 R1 K5 ["AnimationIdSelected"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R6 0
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  NEWTABLE R8 0 0
  GETUPVAL R10 1
  CALL R10 0 1
  JUMPIFNOT R10 [+3]
  NEWTABLE R9 0 0
  JUMP [+1]
  LOADNIL R9
  NEWTABLE R10 0 0
  LOADB R11 0
  NEWTABLE R12 0 0
  LOADN R13 0
  GETUPVAL R14 2
  JUMPIFNOT R14 [+69]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R6 R14 K2 ["allowedAssetTypesForRelease"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R7 R14 K3 ["allowedAssetTypesForUpload"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R8 R14 K4 ["allowedAssetTypesForFree"]
  GETUPVAL R14 1
  CALL R14 0 1
  JUMPIFNOT R14 [+9]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K1 ["roles"]
  GETTABLEKS R9 R14 K5 ["allowedBundleTypeSettings"]
  JUMP [+1]
  LOADNIL R9
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K6 ["packages"]
  GETTABLEKS R10 R14 K7 ["permissionsTable"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K8 ["itemTags"]
  GETTABLEKS R11 R14 K9 ["isItemTagsFeatureEnabled"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K8 ["itemTags"]
  GETTABLEKS R12 R14 K10 ["enabledAssetTypesForItemTags"]
  GETUPVAL R15 2
  NAMECALL R15 R15 K0 ["getState"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K8 ["itemTags"]
  GETTABLEKS R13 R14 K11 ["maximumItemTagsPerItem"]
  LOADNIL R14
  GETUPVAL R16 2
  NAMECALL R16 R16 K0 ["getState"]
  CALL R16 1 1
  JUMPIFNOT R16 [+16]
  GETUPVAL R17 2
  NAMECALL R17 R17 K0 ["getState"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K12 ["assets"]
  JUMPIFNOT R16 [+9]
  GETUPVAL R17 2
  NAMECALL R17 R17 K0 ["getState"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K12 ["assets"]
  GETTABLEKS R15 R16 K13 ["idToAssetMap"]
  JUMP [+1]
  LOADNIL R15
  JUMPIFNOT R15 [+15]
  GETUPVAL R16 3
  MOVE R17 R15
  NEWCLOSURE R18 P0
  CAPTURE VAL R0
  CALL R16 2 1
  JUMPIFNOT R16 [+8]
  GETTABLEKS R17 R16 K14 ["Asset"]
  JUMPIFNOT R17 [+5]
  GETTABLEKS R17 R16 K14 ["Asset"]
  GETTABLEKS R14 R17 K15 ["AssetMediaIds"]
  JUMP [+1]
  LOADNIL R14
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K16 ["getFlowStartScreen"]
  MOVE R17 R1
  GETUPVAL R19 1
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  MOVE R18 R6
  JUMP [+1]
  LOADNIL R18
  CALL R16 2 1
  GETUPVAL R17 5
  NAMECALL R17 R17 K17 ["getDefualtTab"]
  CALL R17 1 1
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K18 ["FLOW_TYPE"]
  GETTABLEKS R18 R19 K19 ["DOWNLOAD_FLOW"]
  JUMPIFNOTEQ R1 R18 [+6]
  GETUPVAL R18 5
  NAMECALL R18 R18 K20 ["getOverrideTab"]
  CALL R18 1 1
  MOVE R17 R18
  NEWTABLE R18 0 1
  GETUPVAL R19 7
  DUPTABLE R20 K22 [{"StudioAssetService"}]
  GETUPVAL R21 8
  SETTABLEKS R21 R20 K21 ["StudioAssetService"]
  CALL R19 1 -1
  SETLIST R18 R19 -1 [1]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K23 ["Store"]
  GETTABLEKS R19 R20 K24 ["new"]
  GETUPVAL R20 10
  DUPTABLE R21 K39 [{"assetId", "assetMediaIds", "screenFlowType", "currentScreen", "instances", "sourceInstances", "allowedAssetTypesForRelease", "allowedAssetTypesForUpload", "allowedAssetTypesForFree", "allowedBundleTypeSettings", "idToFiatProductMap", "isItemTagsFeatureEnabled", "enabledAssetTypesForItemTags", "maximumItemTagsPerItem", "rollingAssetPermissionRequests", "assetTypeEnum", "currentTab", "packagePermissions", "overrideCursor", "deleteLocal", "hasSubsequent"}]
  SETTABLEKS R0 R21 K25 ["assetId"]
  SETTABLEKS R14 R21 K26 ["assetMediaIds"]
  SETTABLEKS R1 R21 K27 ["screenFlowType"]
  SETTABLEKS R16 R21 K28 ["currentScreen"]
  SETTABLEKS R2 R21 K29 ["instances"]
  GETUPVAL R23 11
  JUMPIF R23 [+4]
  GETUPVAL R23 12
  JUMPIF R23 [+2]
  GETUPVAL R23 13
  JUMPIFNOT R23 [+2]
  MOVE R22 R4
  JUMPIF R22 [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K30 ["sourceInstances"]
  SETTABLEKS R6 R21 K2 ["allowedAssetTypesForRelease"]
  SETTABLEKS R7 R21 K3 ["allowedAssetTypesForUpload"]
  SETTABLEKS R8 R21 K4 ["allowedAssetTypesForFree"]
  GETUPVAL R23 1
  CALL R23 0 1
  JUMPIFNOT R23 [+2]
  MOVE R22 R9
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K5 ["allowedBundleTypeSettings"]
  GETUPVAL R23 14
  CALL R23 0 1
  JUMPIFNOT R23 [+3]
  NEWTABLE R22 0 0
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K31 ["idToFiatProductMap"]
  SETTABLEKS R11 R21 K9 ["isItemTagsFeatureEnabled"]
  SETTABLEKS R12 R21 K10 ["enabledAssetTypesForItemTags"]
  SETTABLEKS R13 R21 K11 ["maximumItemTagsPerItem"]
  GETUPVAL R23 15
  CALL R23 0 1
  JUMPIFNOT R23 [+10]
  DUPTABLE R22 K42 [{"inProgress", "queued"}]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K40 ["inProgress"]
  NEWTABLE R23 0 0
  SETTABLEKS R23 R22 K41 ["queued"]
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K32 ["rollingAssetPermissionRequests"]
  SETTABLEKS R3 R21 K33 ["assetTypeEnum"]
  SETTABLEKS R17 R21 K34 ["currentTab"]
  SETTABLEKS R10 R21 K35 ["packagePermissions"]
  NEWTABLE R22 0 0
  SETTABLEKS R22 R21 K36 ["overrideCursor"]
  LOADB R22 0
  SETTABLEKS R22 R21 K37 ["deleteLocal"]
  SETTABLEKS R5 R21 K38 ["hasSubsequent"]
  MOVE R22 R18
  CALL R19 3 1
  GETUPVAL R20 16
  CALL R20 0 1
  GETUPVAL R22 17
  GETTABLEKS R21 R22 K24 ["new"]
  CALL R21 0 1
  NEWCLOSURE R22 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  GETUPVAL R24 13
  JUMPIFNOT R24 [+5]
  GETUPVAL R24 21
  GETTABLEKS R23 R24 K24 ["new"]
  CALL R23 0 1
  JUMP [+1]
  LOADNIL R23
  GETUPVAL R25 19
  GETTABLEKS R24 R25 K43 ["createElement"]
  GETUPVAL R25 22
  DUPTABLE R26 K49 [{"assetId", "assetTypeEnum", "plugin", "store", "theme", "networkInterface", "onAssetConfigDestroy"}]
  SETTABLEKS R0 R26 K25 ["assetId"]
  SETTABLEKS R3 R26 K33 ["assetTypeEnum"]
  GETUPVAL R27 23
  SETTABLEKS R27 R26 K44 ["plugin"]
  SETTABLEKS R19 R26 K45 ["store"]
  SETTABLEKS R20 R26 K46 ["theme"]
  SETTABLEKS R21 R26 K47 ["networkInterface"]
  SETTABLEKS R22 R26 K48 ["onAssetConfigDestroy"]
  CALL R24 2 1
  GETUPVAL R26 19
  GETTABLEKS R25 R26 K43 ["createElement"]
  GETUPVAL R26 24
  DUPTABLE R27 K53 [{"ixp", "localization", "plugin", "theme", "store", "settings"}]
  GETUPVAL R29 13
  JUMPIFNOT R29 [+2]
  MOVE R28 R23
  JUMP [+1]
  LOADNIL R28
  SETTABLEKS R28 R27 K50 ["ixp"]
  GETUPVAL R28 25
  SETTABLEKS R28 R27 K51 ["localization"]
  GETUPVAL R28 23
  SETTABLEKS R28 R27 K44 ["plugin"]
  SETTABLEKS R20 R27 K46 ["theme"]
  SETTABLEKS R19 R27 K45 ["store"]
  GETIMPORT R28 K54 [settings]
  SETTABLEKS R28 R27 K52 ["settings"]
  NEWTABLE R28 0 1
  MOVE R29 R24
  SETLIST R28 R29 1 [1]
  CALL R25 3 1
  GETUPVAL R27 19
  GETTABLEKS R26 R27 K55 ["mount"]
  MOVE R27 R25
  CALL R26 1 1
  SETUPVAL R26 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["unmount"]
  GETUPVAL R1 0
  CALL R0 1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 4
  CALL R0 4 0
  RETURN R0 0

PROTO_11:
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  GETUPVAL R5 1
  JUMPIFNOT R5 [+13]
  GETUPVAL R5 2
  GETUPVAL R7 3
  GETUPVAL R8 4
  CALL R7 1 -1
  NAMECALL R5 R5 K0 ["dispatch"]
  CALL R5 -1 1
  MOVE R7 R4
  MOVE R8 R4
  NAMECALL R5 R5 K1 ["andThen"]
  CALL R5 3 0
  RETURN R0 0
  GETUPVAL R5 2
  GETUPVAL R7 5
  GETUPVAL R8 4
  CALL R7 1 -1
  NAMECALL R5 R5 K0 ["dispatch"]
  CALL R5 -1 1
  MOVE R7 R4
  MOVE R8 R4
  NAMECALL R5 R5 K1 ["andThen"]
  CALL R5 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getClonedInstances"]
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R3 3
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL1 ASSERT R2 [+2]
  GETIMPORT R1 K2 [assert]
  CALL R1 1 0
  GETUPVAL R1 4
  JUMPIFEQKNIL R1 [+36]
  GETUPVAL R1 5
  LOADNIL R2
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K3 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K4 ["UPLOAD_FLOW"]
  MOVE R4 R0
  GETUPVAL R7 4
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K6 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K7 ["EnumItem"] [+3]
  GETUPVAL R5 4
  JUMP [+14]
  GETUPVAL R7 4
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K6 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["string"] [+7]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K9 ["UGCBundleTypes"]
  GETUPVAL R7 4
  GETTABLE R5 R6 R7
  JUMP [+1]
  LOADNIL R5
  GETUPVAL R6 1
  GETUPVAL R7 3
  CALL R1 6 0
  RETURN R0 0
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K10 [1] [+21]
  GETTABLEN R1 R0 1
  LOADK R3 K11 ["AnimationClip"]
  NAMECALL R1 R1 K12 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+14]
  GETUPVAL R1 5
  LOADNIL R2
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K3 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K4 ["UPLOAD_FLOW"]
  MOVE R4 R0
  GETIMPORT R5 K16 [Enum.AssetType.Animation]
  LOADNIL R6
  GETUPVAL R7 3
  CALL R1 6 0
  RETURN R0 0
  GETUPVAL R1 5
  LOADNIL R2
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K3 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K4 ["UPLOAD_FLOW"]
  MOVE R4 R0
  LOADNIL R5
  GETUPVAL R6 1
  GETUPVAL R7 3
  CALL R1 6 0
  RETURN R0 0

PROTO_13:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  GETUPVAL R4 4
  JUMPIFNOT R4 [+13]
  GETUPVAL R4 5
  GETUPVAL R6 6
  GETUPVAL R7 7
  CALL R6 1 -1
  NAMECALL R4 R4 K0 ["dispatch"]
  CALL R4 -1 1
  MOVE R6 R3
  MOVE R7 R3
  NAMECALL R4 R4 K1 ["andThen"]
  CALL R4 3 0
  RETURN R0 0
  GETUPVAL R4 5
  GETUPVAL R6 8
  GETUPVAL R7 7
  CALL R6 1 -1
  NAMECALL R4 R4 K0 ["dispatch"]
  CALL R4 -1 1
  MOVE R6 R3
  MOVE R7 R3
  NAMECALL R4 R4 K1 ["andThen"]
  CALL R4 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getClonedInstances"]
  GETUPVAL R1 1
  CALL R0 1 1
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K1 [1] [+19]
  GETTABLEN R1 R0 1
  LOADK R3 K2 ["AnimationClip"]
  NAMECALL R1 R1 K3 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+12]
  GETUPVAL R1 2
  LOADNIL R2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K5 ["UPLOAD_FLOW"]
  MOVE R4 R0
  GETIMPORT R5 K9 [Enum.AssetType.Animation]
  CALL R1 4 0
  RETURN R0 0
  GETUPVAL R1 2
  LOADNIL R2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K5 ["UPLOAD_FLOW"]
  MOVE R4 R0
  LOADNIL R5
  GETUPVAL R6 1
  CALL R1 5 0
  RETURN R0 0

PROTO_15:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETUPVAL R2 3
  JUMPIFNOT R2 [+13]
  GETUPVAL R2 4
  GETUPVAL R4 5
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R2 4
  GETUPVAL R4 7
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  LOADNIL R2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["FLOW_TYPE"]
  GETTABLEKS R3 R4 K1 ["DOWNLOAD_FLOW"]
  LOADNIL R4
  GETIMPORT R5 K5 [Enum.AssetType.Animation]
  CALL R1 4 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  MOVE R3 R1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K1 ["EDIT_FLOW"]
  LOADNIL R5
  GETIMPORT R6 K5 [Enum.AssetType.Model]
  CALL R2 4 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  LOADNIL R1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["FLOW_TYPE"]
  GETTABLEKS R2 R3 K1 ["UPLOAD_FLOW"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["getClonedInstances"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETIMPORT R4 K6 [Enum.AssetType.Plugin]
  CALL R0 4 0
  RETURN R0 0

PROTO_19:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  GETUPVAL R2 3
  JUMPIFNOT R2 [+13]
  GETUPVAL R2 4
  GETUPVAL R4 5
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0
  GETUPVAL R2 4
  GETUPVAL R4 7
  GETUPVAL R5 6
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 1
  MOVE R4 R1
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["andThen"]
  CALL R2 3 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K1 ["assetType"]
  GETIMPORT R3 K5 [Enum.AssetType.Image]
  JUMPIFNOTEQ R2 R3 [+14]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K6 ["id"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K8 ["EDIT_FLOW"]
  LOADNIL R5
  GETIMPORT R6 K5 [Enum.AssetType.Image]
  CALL R2 4 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K6 ["id"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["FLOW_TYPE"]
  GETTABLEKS R4 R5 K8 ["EDIT_FLOW"]
  LOADNIL R5
  GETIMPORT R6 K10 [Enum.AssetType.MeshPart]
  CALL R2 4 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Store"]
  GETTABLEKS R0 R1 K1 ["new"]
  GETUPVAL R1 2
  LOADNIL R2
  NEWTABLE R3 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["thunkMiddleware"]
  SETLIST R3 R4 1 [1]
  CALL R0 3 1
  SETUPVAL R0 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["new"]
  CALL R0 0 1
  GETUPVAL R1 4
  CALL R1 0 1
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K1 ["new"]
  GETUPVAL R3 6
  CALL R2 1 1
  GETUPVAL R3 7
  CALL R3 0 1
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K1 ["new"]
  CALL R4 0 1
  GETUPVAL R6 9
  GETTABLEKS R5 R6 K3 ["BACKGROUNDS"]
  GETUPVAL R7 10
  GETTABLEKS R6 R7 K4 ["SUGGESTIONS"]
  LOADNIL R7
  LOADNIL R8
  GETUPVAL R9 11
  JUMPIFNOT R9 [+7]
  GETUPVAL R10 12
  GETTABLEKS R9 R10 K5 ["forPlugin"]
  LOADK R10 K6 ["Toolbox"]
  GETUPVAL R11 6
  CALL R9 2 1
  MOVE R8 R9
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE UPVAL U13
  CAPTURE REF R8
  GETUPVAL R10 14
  GETUPVAL R12 0
  NAMECALL R10 R10 K7 ["setup"]
  CALL R10 2 0
  GETUPVAL R11 13
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 15
  DUPTABLE R12 K19 [{"plugin", "store", "settings", "theme", "networkInterface", "pluginLoaderContext", "backgrounds", "suggestions", "onPluginWillDestroy", "tryOpenAssetConfig"}]
  GETUPVAL R13 6
  SETTABLEKS R13 R12 K9 ["plugin"]
  GETUPVAL R13 0
  SETTABLEKS R13 R12 K10 ["store"]
  SETTABLEKS R2 R12 K11 ["settings"]
  SETTABLEKS R3 R12 K12 ["theme"]
  SETTABLEKS R4 R12 K13 ["networkInterface"]
  GETUPVAL R13 16
  SETTABLEKS R13 R12 K14 ["pluginLoaderContext"]
  SETTABLEKS R5 R12 K15 ["backgrounds"]
  SETTABLEKS R6 R12 K16 ["suggestions"]
  SETTABLEKS R9 R12 K17 ["onPluginWillDestroy"]
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U0
  CAPTURE UPVAL U19
  CAPTURE VAL R4
  CAPTURE UPVAL U20
  SETTABLEKS R13 R12 K18 ["tryOpenAssetConfig"]
  CALL R10 2 1
  GETUPVAL R12 21
  GETTABLEKS R11 R12 K1 ["new"]
  CALL R11 0 1
  LOADNIL R12
  GETUPVAL R14 13
  GETTABLEKS R13 R14 K8 ["createElement"]
  GETUPVAL R14 22
  DUPTABLE R15 K24 [{"localization", "plugin", "theme", "store", "settings", "assetAnalytics", "analytics", "ixp"}]
  GETUPVAL R16 23
  SETTABLEKS R16 R15 K20 ["localization"]
  GETUPVAL R16 6
  SETTABLEKS R16 R15 K9 ["plugin"]
  SETTABLEKS R3 R15 K12 ["theme"]
  GETUPVAL R16 0
  SETTABLEKS R16 R15 K10 ["store"]
  SETTABLEKS R2 R15 K11 ["settings"]
  SETTABLEKS R0 R15 K21 ["assetAnalytics"]
  SETTABLEKS R1 R15 K22 ["analytics"]
  SETTABLEKS R11 R15 K23 ["ixp"]
  NEWTABLE R16 0 1
  MOVE R17 R10
  SETLIST R16 R17 1 [1]
  CALL R13 3 1
  MOVE R12 R13
  GETUPVAL R14 13
  GETTABLEKS R13 R14 K25 ["mount"]
  MOVE R14 R12
  CALL R13 1 1
  MOVE R7 R13
  JUMPIFNOT R8 [+6]
  LOADK R15 K26 ["Roact tree"]
  MOVE R16 R7
  GETUPVAL R17 13
  NAMECALL R13 R8 K27 ["addRoactTree"]
  CALL R13 4 0
  GETUPVAL R13 24
  JUMPIF R13 [+2]
  GETUPVAL R13 25
  JUMPIFNOT R13 [+19]
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K28 ["StudioAssetService.OnSaveToRoblox"]
  NEWCLOSURE R15 P2
  CAPTURE UPVAL U26
  CAPTURE UPVAL U27
  CAPTURE UPVAL U17
  CAPTURE UPVAL U28
  CAPTURE UPVAL U18
  CAPTURE UPVAL U0
  CAPTURE UPVAL U19
  CAPTURE VAL R4
  CAPTURE UPVAL U20
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  JUMP [+17]
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K31 ["StudioService.OnSaveToRoblox"]
  NEWCLOSURE R15 P3
  CAPTURE UPVAL U26
  CAPTURE UPVAL U17
  CAPTURE UPVAL U28
  CAPTURE UPVAL U18
  CAPTURE UPVAL U0
  CAPTURE UPVAL U19
  CAPTURE VAL R4
  CAPTURE UPVAL U20
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K32 ["StudioService.OnImportFromRoblox"]
  NEWCLOSURE R15 P4
  CAPTURE UPVAL U17
  CAPTURE UPVAL U28
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K33 ["StudioService.OnOpenManagePackagePlugin"]
  NEWCLOSURE R15 P5
  CAPTURE UPVAL U17
  CAPTURE UPVAL U28
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K34 ["StudioService.OnPublishAsPlugin"]
  NEWCLOSURE R15 P6
  CAPTURE UPVAL U17
  CAPTURE UPVAL U28
  CAPTURE UPVAL U26
  CAPTURE UPVAL U18
  CAPTURE UPVAL U0
  CAPTURE UPVAL U19
  CAPTURE VAL R4
  CAPTURE UPVAL U20
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R15 16
  GETTABLEKS R14 R15 K29 ["signals"]
  GETTABLEKS R13 R14 K35 ["MemStorageService.OpenAssetConfiguration"]
  NEWCLOSURE R15 P7
  CAPTURE UPVAL U29
  CAPTURE UPVAL U17
  CAPTURE UPVAL U28
  NAMECALL R13 R13 K30 ["Connect"]
  CALL R13 2 0
  GETUPVAL R14 30
  GETTABLEKS R13 R14 K36 ["registerLocalization"]
  GETUPVAL R14 23
  CALL R13 1 0
  GETUPVAL R14 30
  GETTABLEKS R13 R14 K37 ["registerProcessDragHandler"]
  GETUPVAL R14 6
  CALL R13 1 0
  CLOSEUPVALS R7
  RETURN R0 0

PROTO_22:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R4 R2 K3 ["Core"]
  GETTABLEKS R3 R4 K4 ["Util"]
  GETIMPORT R4 K6 [game]
  LOADK R6 K7 ["DebugToolboxEnableRoactChecks"]
  NAMECALL R4 R4 K8 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K6 [game]
  LOADK R7 K9 ["DebugToolboxGetRolesRequest"]
  NAMECALL R5 R5 K8 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K6 [game]
  LOADK R8 K10 ["UnifyModelPackagePublish3"]
  NAMECALL R6 R6 K8 ["GetFastFlag"]
  CALL R6 2 1
  GETIMPORT R7 K6 [game]
  LOADK R9 K11 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
  NAMECALL R7 R7 K8 ["GetFastFlag"]
  CALL R7 2 1
  GETIMPORT R8 K6 [game]
  LOADK R10 K12 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
  NAMECALL R8 R8 K8 ["GetFastFlag"]
  CALL R8 2 1
  GETIMPORT R9 K6 [game]
  LOADK R11 K13 ["ShowSaveToRobloxOnStudioAssetService"]
  NAMECALL R9 R9 K8 ["GetFastFlag"]
  CALL R9 2 1
  GETIMPORT R10 K15 [require]
  GETTABLEKS R14 R2 K3 ["Core"]
  GETTABLEKS R13 R14 K4 ["Util"]
  GETTABLEKS R12 R13 K16 ["SharedFlags"]
  GETTABLEKS R11 R12 K17 ["getFFlagEnableUGCBodyUploadFlow"]
  CALL R10 1 1
  GETIMPORT R11 K15 [require]
  GETTABLEKS R15 R2 K3 ["Core"]
  GETTABLEKS R14 R15 K4 ["Util"]
  GETTABLEKS R13 R14 K16 ["SharedFlags"]
  GETTABLEKS R12 R13 K18 ["getFFlagToolboxAssetConfigUseMFS"]
  CALL R11 1 1
  GETIMPORT R12 K15 [require]
  GETTABLEKS R13 R3 K19 ["isCli"]
  CALL R12 1 1
  MOVE R13 R12
  CALL R13 0 1
  JUMPIFNOT R13 [+1]
  RETURN R0 0
  GETIMPORT R13 K6 [game]
  LOADK R15 K20 ["StudioService"]
  NAMECALL R13 R13 K21 ["GetService"]
  CALL R13 2 1
  NAMECALL R14 R13 K22 ["HasInternalPermission"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K23 ["Packages"]
  GETIMPORT R16 K15 [require]
  GETTABLEKS R17 R15 K24 ["Roact"]
  CALL R16 1 1
  GETIMPORT R17 K15 [require]
  GETTABLEKS R18 R15 K25 ["Framework"]
  CALL R17 1 1
  GETIMPORT R18 K15 [require]
  GETTABLEKS R20 R15 K26 ["Dev"]
  GETTABLEKS R19 R20 K27 ["DeveloperTools"]
  CALL R18 1 1
  JUMPIFNOT R4 [+13]
  GETTABLEKS R19 R16 K28 ["setGlobalConfig"]
  DUPTABLE R20 K32 [{"elementTracing", "propValidation", "typeChecks"}]
  LOADB R21 1
  SETTABLEKS R21 R20 K29 ["elementTracing"]
  LOADB R21 1
  SETTABLEKS R21 R20 K30 ["propValidation"]
  LOADB R21 1
  SETTABLEKS R21 R20 K31 ["typeChecks"]
  CALL R19 1 0
  GETIMPORT R19 K15 [require]
  GETTABLEKS R20 R15 K33 ["Rodux"]
  CALL R19 1 1
  GETIMPORT R20 K15 [require]
  GETTABLEKS R21 R3 K34 ["InsertAsset"]
  CALL R20 1 1
  GETIMPORT R21 K15 [require]
  GETTABLEKS R23 R3 K35 ["Analytics"]
  GETTABLEKS R22 R23 K36 ["AssetAnalyticsContextItem"]
  CALL R21 1 1
  GETIMPORT R22 K15 [require]
  GETTABLEKS R23 R3 K37 ["DebugFlags"]
  CALL R22 1 1
  GETIMPORT R23 K15 [require]
  GETTABLEKS R24 R3 K38 ["Settings"]
  CALL R23 1 1
  GETIMPORT R24 K15 [require]
  GETTABLEKS R25 R3 K39 ["ToolboxTheme"]
  CALL R24 1 1
  GETIMPORT R25 K15 [require]
  GETTABLEKS R26 R3 K40 ["AssetConfigTheme"]
  CALL R25 1 1
  GETIMPORT R26 K15 [require]
  GETTABLEKS R27 R3 K41 ["AssetConfigConstants"]
  CALL R26 1 1
  GETIMPORT R27 K15 [require]
  GETTABLEKS R28 R3 K42 ["AssetConfigUtil"]
  CALL R27 1 1
  GETIMPORT R28 K15 [require]
  GETTABLEKS R30 R3 K35 ["Analytics"]
  GETTABLEKS R29 R30 K43 ["makeToolboxAnalyticsContext"]
  CALL R28 1 1
  GETIMPORT R29 K15 [require]
  GETTABLEKS R32 R2 K3 ["Core"]
  GETTABLEKS R31 R32 K44 ["ContextServices"]
  GETTABLEKS R30 R31 K45 ["IXPContext"]
  CALL R29 1 1
  GETTABLEKS R30 R22 K46 ["shouldDebugWarnings"]
  CALL R30 0 1
  JUMPIFNOT R30 [+13]
  GETIMPORT R32 K15 [require]
  GETTABLEKS R33 R15 K25 ["Framework"]
  CALL R32 1 1
  GETTABLEKS R31 R32 K4 ["Util"]
  GETTABLEKS R30 R31 K47 ["Promise"]
  GETIMPORT R31 K49 [warn]
  SETTABLEKS R31 R30 K50 ["onUnhandledRejection"]
  GETIMPORT R30 K15 [require]
  GETTABLEKS R33 R2 K3 ["Core"]
  GETTABLEKS R32 R33 K51 ["Types"]
  GETTABLEKS R31 R32 K52 ["Background"]
  CALL R30 1 1
  GETIMPORT R31 K15 [require]
  GETTABLEKS R34 R2 K3 ["Core"]
  GETTABLEKS R33 R34 K51 ["Types"]
  GETTABLEKS R32 R33 K53 ["Suggestion"]
  CALL R31 1 1
  GETIMPORT R32 K15 [require]
  GETTABLEKS R35 R2 K3 ["Core"]
  GETTABLEKS R34 R35 K51 ["Types"]
  GETTABLEKS R33 R34 K54 ["ConfigTypes"]
  CALL R32 1 1
  GETIMPORT R33 K15 [require]
  GETTABLEKS R36 R2 K3 ["Core"]
  GETTABLEKS R35 R36 K55 ["Components"]
  GETTABLEKS R34 R35 K56 ["ToolboxPlugin"]
  CALL R33 1 1
  GETIMPORT R35 K15 [require]
  GETTABLEKS R38 R2 K3 ["Core"]
  GETTABLEKS R37 R38 K4 ["Util"]
  GETTABLEKS R36 R37 K57 ["ToolboxUtilities"]
  CALL R35 1 1
  GETTABLEKS R34 R35 K58 ["getToolboxEnabled"]
  GETIMPORT R35 K15 [require]
  GETTABLEKS R38 R2 K3 ["Core"]
  GETTABLEKS R37 R38 K4 ["Util"]
  GETTABLEKS R36 R37 K59 ["ToolboxCommunication"]
  CALL R35 1 1
  GETIMPORT R36 K15 [require]
  GETTABLEKS R39 R2 K3 ["Core"]
  GETTABLEKS R38 R39 K60 ["Reducers"]
  GETTABLEKS R37 R38 K61 ["ToolboxReducer"]
  CALL R36 1 1
  GETIMPORT R37 K15 [require]
  GETTABLEKS R40 R2 K3 ["Core"]
  GETTABLEKS R39 R40 K60 ["Reducers"]
  GETTABLEKS R38 R39 K62 ["AssetConfigReducer"]
  CALL R37 1 1
  GETIMPORT R38 K15 [require]
  GETTABLEKS R41 R2 K3 ["Core"]
  GETTABLEKS R40 R41 K63 ["Networking"]
  GETTABLEKS R39 R40 K64 ["NetworkInterface"]
  CALL R38 1 1
  GETIMPORT R39 K15 [require]
  GETTABLEKS R43 R2 K3 ["Core"]
  GETTABLEKS R42 R43 K55 ["Components"]
  GETTABLEKS R41 R42 K65 ["AssetConfiguration"]
  GETTABLEKS R40 R41 K66 ["AssetConfigWrapper"]
  CALL R39 1 1
  GETIMPORT R40 K15 [require]
  GETTABLEKS R43 R2 K3 ["Core"]
  GETTABLEKS R42 R43 K55 ["Components"]
  GETTABLEKS R41 R42 K67 ["ToolboxServiceWrapper"]
  CALL R40 1 1
  GETIMPORT R41 K15 [require]
  GETTABLEKS R45 R2 K3 ["Core"]
  GETTABLEKS R44 R45 K63 ["Networking"]
  GETTABLEKS R43 R44 K68 ["Requests"]
  GETTABLEKS R42 R43 K69 ["GetRolesRequest"]
  CALL R41 1 1
  GETIMPORT R42 K15 [require]
  GETTABLEKS R46 R2 K3 ["Core"]
  GETTABLEKS R45 R46 K63 ["Networking"]
  GETTABLEKS R44 R45 K68 ["Requests"]
  GETTABLEKS R43 R44 K70 ["GetRolesDebugRequest"]
  CALL R42 1 1
  GETIMPORT R43 K15 [require]
  GETTABLEKS R46 R2 K3 ["Core"]
  GETTABLEKS R45 R46 K71 ["Flags"]
  GETTABLEKS R44 R45 K72 ["getFFlagToolboxRollingAssetPermissionRequests"]
  CALL R43 1 1
  GETTABLEKS R44 R17 K44 ["ContextServices"]
  GETTABLEKS R46 R17 K4 ["Util"]
  GETTABLEKS R45 R46 K73 ["ThunkWithArgsMiddleware"]
  GETIMPORT R46 K15 [require]
  GETTABLEKS R47 R15 K74 ["Dash"]
  CALL R46 1 1
  GETTABLEKS R47 R46 K75 ["find"]
  GETTABLEKS R49 R2 K76 ["LocalizationSource"]
  GETTABLEKS R48 R49 K77 ["SourceStrings"]
  GETTABLEKS R50 R2 K76 ["LocalizationSource"]
  GETTABLEKS R49 R50 K78 ["LocalizedStrings"]
  GETIMPORT R50 K6 [game]
  LOADK R52 K79 ["HttpService"]
  NAMECALL R50 R50 K21 ["GetService"]
  CALL R50 2 1
  GETIMPORT R51 K6 [game]
  LOADK R53 K80 ["RobloxPluginGuiService"]
  NAMECALL R51 R51 K21 ["GetService"]
  CALL R51 2 1
  GETIMPORT R52 K6 [game]
  LOADK R54 K81 ["StudioAssetService"]
  NAMECALL R52 R52 K21 ["GetService"]
  CALL R52 2 1
  MOVE R53 R34
  CALL R53 0 1
  JUMPIF R53 [+1]
  RETURN R0 0
  GETTABLEKS R54 R44 K82 ["Localization"]
  GETTABLEKS R53 R54 K83 ["new"]
  DUPTABLE R54 K88 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  SETTABLEKS R48 R54 K84 ["stringResourceTable"]
  SETTABLEKS R49 R54 K85 ["translationResourceTable"]
  LOADK R55 K89 ["Toolbox"]
  SETTABLEKS R55 R54 K86 ["pluginName"]
  NEWTABLE R55 1 0
  GETTABLEKS R57 R17 K90 ["Resources"]
  GETTABLEKS R56 R57 K91 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R57 K92 [{"stringResourceTable", "translationResourceTable"}]
  GETTABLEKS R59 R17 K90 ["Resources"]
  GETTABLEKS R58 R59 K77 ["SourceStrings"]
  SETTABLEKS R58 R57 K84 ["stringResourceTable"]
  GETTABLEKS R59 R17 K90 ["Resources"]
  GETTABLEKS R58 R59 K78 ["LocalizedStrings"]
  SETTABLEKS R58 R57 K85 ["translationResourceTable"]
  SETTABLE R57 R55 R56
  SETTABLEKS R55 R54 K87 ["libraries"]
  CALL R53 1 1
  NEWCLOSURE R54 P0
  CAPTURE VAL R24
  NEWCLOSURE R55 P1
  CAPTURE VAL R25
  LOADNIL R56
  LOADNIL R57
  NEWCLOSURE R58 P2
  CAPTURE REF R57
  CAPTURE VAL R10
  CAPTURE REF R56
  CAPTURE VAL R47
  CAPTURE VAL R27
  CAPTURE VAL R32
  CAPTURE VAL R26
  CAPTURE VAL R45
  CAPTURE VAL R52
  CAPTURE VAL R19
  CAPTURE VAL R37
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R43
  CAPTURE VAL R55
  CAPTURE VAL R38
  CAPTURE VAL R51
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R29
  CAPTURE VAL R39
  CAPTURE VAL R0
  CAPTURE VAL R40
  CAPTURE VAL R53
  NEWCLOSURE R59 P3
  CAPTURE REF R56
  CAPTURE VAL R19
  CAPTURE VAL R36
  CAPTURE VAL R21
  CAPTURE VAL R28
  CAPTURE VAL R23
  CAPTURE VAL R0
  CAPTURE VAL R54
  CAPTURE VAL R38
  CAPTURE VAL R30
  CAPTURE VAL R31
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R35
  CAPTURE VAL R33
  CAPTURE VAL R1
  CAPTURE VAL R58
  CAPTURE VAL R5
  CAPTURE VAL R42
  CAPTURE VAL R41
  CAPTURE VAL R29
  CAPTURE VAL R40
  CAPTURE VAL R53
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R27
  CAPTURE VAL R10
  CAPTURE VAL R26
  CAPTURE VAL R50
  CAPTURE VAL R20
  MOVE R60 R59
  CALL R60 0 0
  CLOSEUPVALS R56
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_22]
  RETURN R0 1
