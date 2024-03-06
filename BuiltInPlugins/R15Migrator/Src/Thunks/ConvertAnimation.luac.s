PROTO_0:
  NAMECALL R5 R0 K0 ["getState"]
  CALL R5 1 1
  GETUPVAL R6 0
  GETTABLEKS R8 R5 K1 ["AnimationConversion"]
  GETTABLEKS R7 R8 K2 ["animations"]
  CALL R6 1 1
  LOADN R7 0
  MOVE R8 R1
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLE R13 R6 R11
  JUMPIFNOT R13 [+10]
  GETTABLE R13 R6 R11
  SETTABLEKS R2 R13 K3 ["status"]
  GETTABLE R13 R6 R11
  SETTABLEKS R4 R13 K4 ["errCode"]
  GETTABLE R13 R6 R11
  SETTABLEKS R3 R13 K5 ["converted"]
  ADDK R7 R7 K6 [1]
  FORGLOOP R8 2 [-13]
  JUMPIFNOTEQKN R7 K6 [1] [+16]
  GETUPVAL R10 1
  GETIMPORT R11 K8 [next]
  MOVE R12 R1
  CALL R11 1 1
  GETIMPORT R13 K8 [next]
  MOVE R14 R1
  CALL R13 1 1
  GETTABLE R12 R6 R13
  CALL R10 2 -1
  NAMECALL R8 R0 K9 ["dispatch"]
  CALL R8 -1 0
  RETURN R0 0
  GETUPVAL R10 2
  MOVE R11 R6
  CALL R10 1 -1
  NAMECALL R8 R0 K9 ["dispatch"]
  CALL R8 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["GetProductInfo"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  LOADK R5 K0 ["Animation"]
  LOADN R6 0
  GETUPVAL R7 4
  GETUPVAL R8 5
  LOADK R9 K1 [""]
  LOADK R10 K2 ["model/x-rbxm"]
  LOADN R11 0
  NAMECALL R0 R0 K3 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
  CALL R0 11 -1
  RETURN R0 -1

PROTO_4:
  GETTABLEKS R5 R1 K0 ["id"]
  GETIMPORT R6 K2 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  CALL R6 1 2
  JUMPIF R6 [+12]
  GETUPVAL R8 1
  MOVE R9 R3
  NEWTABLE R10 1 0
  LOADB R11 1
  SETTABLE R11 R10 R5
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["FailedToGetProductInfo"]
  CALL R8 3 0
  LOADB R8 0
  RETURN R8 1
  GETTABLEKS R9 R7 K4 ["Name"]
  LOADK R10 K5 [" R15"]
  CONCAT R8 R9 R10
  GETTABLEKS R9 R7 K6 ["Description"]
  LOADNIL R10
  GETTABLEKS R12 R7 K7 ["Creator"]
  GETTABLEKS R11 R12 K8 ["CreatorType"]
  GETIMPORT R13 K11 [Enum.CreatorType.Group]
  GETTABLEKS R12 R13 K4 ["Name"]
  JUMPIFNOTEQ R11 R12 [+5]
  GETTABLEKS R11 R7 K7 ["Creator"]
  GETTABLEKS R10 R11 K12 ["CreatorTargetId"]
  NEWTABLE R11 0 0
  FASTCALL2 TABLE_INSERT R11 R0 [+5]
  MOVE R13 R11
  MOVE R14 R0
  GETIMPORT R12 K15 [table.insert]
  CALL R12 2 0
  GETIMPORT R12 K2 [pcall]
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R11
  CALL R12 1 2
  JUMPIF R12 [+12]
  GETUPVAL R14 1
  MOVE R15 R3
  NEWTABLE R16 1 0
  LOADB R17 1
  SETTABLE R17 R16 R5
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K16 ["FailedSerialization"]
  CALL R14 3 0
  LOADB R14 0
  RETURN R14 1
  JUMPIFNOT R10 [+3]
  GETIMPORT R14 K18 [Enum.AssetCreatorType.Group]
  JUMP [+2]
  GETIMPORT R14 K20 [Enum.AssetCreatorType.User]
  JUMPIFNOT R10 [+2]
  MOVE R15 R10
  JUMP [+4]
  GETUPVAL R15 4
  NAMECALL R15 R15 K21 ["GetUserId"]
  CALL R15 1 1
  GETIMPORT R16 K2 [pcall]
  NEWCLOSURE R17 P2
  CAPTURE UPVAL U5
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R8
  CAPTURE VAL R9
  CALL R16 1 2
  JUMPIF R16 [+14]
  GETUPVAL R18 1
  MOVE R19 R3
  NEWTABLE R20 1 0
  LOADB R21 1
  SETTABLE R21 R20 R5
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K22 ["FailedWithError"]
  LOADNIL R22
  MOVE R23 R17
  CALL R18 5 0
  LOADB R18 0
  RETURN R18 1
  GETTABLEKS R18 R17 K23 ["AssetId"]
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K24 ["addCacheEntry"]
  MOVE R20 R5
  MOVE R21 R18
  CALL R19 2 0
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K25 ["setTargetAssetId"]
  FASTCALL1 TONUMBER R5 [+3]
  MOVE R21 R5
  GETIMPORT R20 K27 [tonumber]
  CALL R20 1 1
  FASTCALL1 TONUMBER R18 [+3]
  MOVE R22 R18
  GETIMPORT R21 K27 [tonumber]
  CALL R21 1 1
  CALL R19 2 0
  GETUPVAL R19 1
  MOVE R20 R3
  NEWTABLE R21 1 0
  LOADB R22 1
  SETTABLE R22 R21 R5
  LOADNIL R22
  MOVE R23 R18
  CALL R19 4 0
  GETUPVAL R21 8
  MOVE R22 R5
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K28 ["getAnimationId"]
  MOVE R24 R18
  CALL R23 1 1
  MOVE R24 R2
  CALL R21 3 -1
  NAMECALL R19 R3 K29 ["dispatch"]
  CALL R19 -1 0
  LOADB R19 1
  RETURN R19 1

PROTO_5:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  GETTABLEKS R6 R1 K1 ["AnimationConversion"]
  GETTABLEKS R3 R6 K2 ["selection"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["getAnimationAssetInfo"]
  MOVE R9 R6
  CALL R8 1 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["RobloxAsset"]
  NAMECALL R9 R8 K5 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+8]
  GETTABLEKS R12 R1 K1 ["AnimationConversion"]
  GETTABLEKS R11 R12 K6 ["animations"]
  GETTABLE R10 R11 R6
  GETTABLEKS R9 R10 K7 ["converted"]
  JUMPIFNOT R9 [+9]
  GETUPVAL R11 2
  MOVE R12 R8
  GETUPVAL R13 3
  GETUPVAL R14 4
  CALL R11 3 -1
  NAMECALL R9 R0 K8 ["dispatch"]
  CALL R9 -1 0
  JUMP [+24]
  GETTABLEKS R12 R1 K1 ["AnimationConversion"]
  GETTABLEKS R11 R12 K6 ["animations"]
  GETTABLE R10 R11 R6
  GETTABLEKS R9 R10 K9 ["status"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K10 ["Uploading"]
  JUMPIFEQ R9 R10 [+13]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K11 ["Done"]
  JUMPIFEQ R9 R10 [+8]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K12 ["getConvertedKeyframeSequence"]
  MOVE R11 R8
  CALL R10 1 1
  JUMPIFNOT R10 [+1]
  SETTABLE R8 R2 R6
  FORGLOOP R3 1 [-54]
  GETUPVAL R3 6
  MOVE R4 R0
  MOVE R5 R2
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K10 ["Uploading"]
  CALL R3 3 0
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["getConvertedKeyframeSequence"]
  MOVE R10 R8
  CALL R9 1 1
  GETUPVAL R10 7
  NAMECALL R11 R9 K13 ["Clone"]
  CALL R11 1 1
  MOVE R12 R8
  GETUPVAL R13 3
  MOVE R14 R0
  GETUPVAL R15 4
  CALL R10 5 1
  JUMPIFNOT R10 [+7]
  FASTCALL2 TABLE_INSERT R3 R8 [+5]
  MOVE R12 R3
  MOVE R13 R8
  GETIMPORT R11 K16 [table.insert]
  CALL R11 2 0
  FORGLOOP R4 2 [-23]
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R11 2
  MOVE R12 R8
  GETUPVAL R13 3
  GETUPVAL R14 4
  CALL R11 3 -1
  NAMECALL R9 R0 K8 ["dispatch"]
  CALL R9 -1 0
  FORGLOOP R4 2 [-9]
  GETUPVAL R4 4
  LOADK R6 K17 ["onAnimationsConverted"]
  GETTABLEKS R8 R1 K1 ["AnimationConversion"]
  GETTABLEKS R7 R8 K6 ["animations"]
  GETTABLEKS R9 R1 K1 ["AnimationConversion"]
  GETTABLEKS R8 R9 K2 ["selection"]
  NAMECALL R4 R4 K18 ["getHandler"]
  CALL R4 4 0
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["deepCopy"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Actions"]
  GETTABLEKS R4 R5 K12 ["SetAnimations"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Actions"]
  GETTABLEKS R5 R6 K13 ["SetAnimation"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K14 ["Thunks"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K15 ["UpdateScriptSuggestion"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K16 ["ReplaceAnimation"]
  CALL R7 1 1
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K8 ["Util"]
  GETTABLEKS R8 R9 K17 ["AnimationConversion"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K18 ["serializeInstances"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R8 K19 ["AnimationConversionManager"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R8 K20 ["constants"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K21 ["AssetType"]
  GETTABLEKS R13 R11 K22 ["AnimationStatus"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K8 ["Util"]
  GETTABLEKS R15 R16 K23 ["SaveInterface"]
  CALL R14 1 1
  GETIMPORT R15 K25 [game]
  LOADK R17 K26 ["MarketplaceService"]
  NAMECALL R15 R15 K27 ["GetService"]
  CALL R15 2 1
  GETIMPORT R16 K25 [game]
  LOADK R18 K28 ["PublishService"]
  NAMECALL R16 R16 K27 ["GetService"]
  CALL R16 2 1
  GETIMPORT R17 K25 [game]
  LOADK R19 K29 ["StudioService"]
  NAMECALL R17 R17 K27 ["GetService"]
  CALL R17 2 1
  DUPCLOSURE R18 K30 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  DUPCLOSURE R19 K31 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R6
  DUPCLOSURE R20 K32 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R19
  RETURN R20 1
