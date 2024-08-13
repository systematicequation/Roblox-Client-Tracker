PROTO_0:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K2 [tonumber]
  CALL R2 1 1
  ORK R1 R2 K0 [0]
  DIVK R3 R1 K3 [60]
  FASTCALL1 MATH_FLOOR R3 [+2]
  GETIMPORT R2 K6 [math.floor]
  CALL R2 1 1
  MODK R3 R1 K3 [60]
  GETIMPORT R4 K9 [string.format]
  LOADK R5 K10 ["%d:%02d"]
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isPlayButtonHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isPlayButtonHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isPlayButtonHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isPlayButtonHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["AssetInfo"]
  GETTABLEKS R1 R2 K2 ["Asset"]
  GETTABLEKS R0 R1 K3 ["Id"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["OnExpanded"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isPlaying"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isPlaying"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K1 [{"isPlaying"}]
  GETTABLEKS R3 R0 K0 ["isPlaying"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["isPlaying"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_6]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  JUMPIFNOT R0 [+48]
  DUPTABLE R1 K2 [{"currencyCode", "quantity"}]
  LOADK R2 K3 ["USD"]
  SETTABLEKS R2 R1 K0 ["currencyCode"]
  DUPTABLE R2 K6 [{"significand", "exponent"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K4 ["significand"]
  LOADN R3 0
  SETTABLEKS R3 R2 K5 ["exponent"]
  SETTABLEKS R2 R1 K1 ["quantity"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["props"]
  GETTABLEKS R2 R3 K8 ["purchaseAsset"]
  GETUPVAL R3 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K9 ["Asset"]
  GETTABLEKS R4 R5 K10 ["Id"]
  GETUPVAL R6 3
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+5]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["Product"]
  GETTABLEKS R5 R6 K12 ["ProductId"]
  LOADN R6 0
  LOADN R7 3
  LOADNIL R8
  MOVE R9 R1
  CALL R2 7 0
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K13 ["onAudioAssetGrantedToUserInventoryEvent"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["Asset"]
  GETTABLEKS R3 R4 K10 ["Id"]
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["CanInsertAsset"]
  CALL R0 0 1
  JUMPIFNOT R0 [+40]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+31]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["AssetInfo"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Network"]
  GETTABLEKS R1 R2 K4 ["networkInterface"]
  GETUPVAL R2 2
  MOVE R3 R1
  GETTABLEKS R5 R0 K5 ["Asset"]
  GETTABLEKS R4 R5 K6 ["Id"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R2 R2 K7 ["andThen"]
  CALL R2 2 1
  NAMECALL R2 R2 K8 ["await"]
  CALL R2 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K9 ["InsertAsset"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Network"]
  GETTABLEKS R1 R2 K2 ["networkInterface"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Settings"]
  LOADK R4 K4 ["Plugin"]
  NAMECALL R2 R2 K5 ["get"]
  CALL R2 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K6 ["audioSearchInfo"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K7 ["creator"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["additionalAudioSearchInfo"]
  DUPTABLE R6 K12 [{"Creator", "AudioSearch", "AdditionalAudioSearch"}]
  SETTABLEKS R4 R6 K9 ["Creator"]
  SETTABLEKS R3 R6 K10 ["AudioSearch"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["join"]
  MOVE R8 R5
  MOVE R9 R0
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["AdditionalAudioSearch"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K14 ["searchWithOptions"]
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R6
  CALL R7 3 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Settings"]
  LOADK R3 K2 ["Plugin"]
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 2 1
  DUPTABLE R2 K5 [{"Creator"}]
  GETTABLEKS R5 R0 K6 ["AssetInfo"]
  GETTABLEKS R4 R5 K4 ["Creator"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R5 R0 K6 ["AssetInfo"]
  GETTABLEKS R4 R5 K4 ["Creator"]
  GETTABLEKS R3 R4 K7 ["Name"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["Creator"]
  GETTABLEKS R3 R0 K8 ["searchWithOptions"]
  GETTABLEKS R5 R0 K9 ["Network"]
  GETTABLEKS R4 R5 K10 ["networkInterface"]
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["AssetInfo"]
  GETTABLEKS R0 R1 K2 ["AudioDetails"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["searchBy"]
  NEWTABLE R2 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
  GETTABLEKS R3 R4 K5 ["ARTIST"]
  GETTABLEKS R4 R0 K6 ["Artist"]
  SETTABLE R4 R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["AssetInfo"]
  GETTABLEKS R0 R1 K2 ["AudioDetails"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["searchBy"]
  NEWTABLE R2 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
  GETTABLEKS R3 R4 K5 ["GENRE"]
  GETTABLEKS R4 R0 K6 ["MusicGenre"]
  SETTABLE R4 R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["AssetInfo"]
  GETTABLEKS R0 R1 K2 ["AudioDetails"]
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K3 ["SoundEffectCategory"]
  JUMPIFNOT R2 [+19]
  GETTABLEKS R4 R0 K3 ["SoundEffectCategory"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K7 ["SoundEffectSubcategory"]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R4 R0 K7 ["SoundEffectSubcategory"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K6 [table.insert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["searchBy"]
  NEWTABLE R3 1 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
  GETTABLEKS R4 R5 K10 ["CATEGORIES"]
  SETTABLE R1 R3 R4
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["AssetInfo"]
  GETTABLEKS R0 R1 K2 ["AudioDetails"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["searchBy"]
  NEWTABLE R2 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
  GETTABLEKS R3 R4 K5 ["ARTIST"]
  GETTABLEKS R4 R0 K6 ["Artist"]
  SETTABLE R4 R2 R3
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
  GETTABLEKS R3 R4 K7 ["ALBUM"]
  GETTABLEKS R4 R0 K8 ["MusicAlbum"]
  SETTABLE R4 R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["AssetInfo"]
  GETTABLEKS R1 R2 K2 ["AudioDetails"]
  JUMPIFNOT R1 [+12]
  GETTABLEKS R2 R1 K3 ["SoundEffectCategory"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["onSearchByCategories"]
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["onSearchByGenre"]
  CALL R2 0 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["AssetInfo"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["stopPlaying"]
  CALL R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["OnAssetPreviewButtonClicked"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  DUPTABLE R1 K1 [{"isHovered"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["isHovered"]
  RETURN R1 1

PROTO_19:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_20:
  JUMPIFEQKNIL R0 [+8]
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [string.len]
  CALL R1 1 1
  JUMPIFNOTEQKN R1 K3 [0] [+3]
  LOADB R1 0
  RETURN R1 1
  ORK R2 R0 K4 [""]
  LOADN R3 1
  LOADN R4 1
  FASTCALL STRING_SUB [+2]
  GETIMPORT R1 K6 [string.sub]
  CALL R1 3 1
  GETIMPORT R3 K8 [string.upper]
  MOVE R4 R1
  CALL R3 1 1
  JUMPIFEQ R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_21:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+66]
  LOADNIL R2
  LOADNIL R3
  GETTABLEKS R4 R0 K2 ["SoundEffectCategory"]
  JUMPIFEQKNIL R4 [+34]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["isCapitalizedIgnoreLocale"]
  GETTABLEKS R5 R0 K2 ["SoundEffectCategory"]
  CALL R4 1 1
  JUMPIF R4 [+26]
  LOADK R6 K4 ["Audio.SoundEffect.Category"]
  GETTABLEKS R7 R0 K2 ["SoundEffectCategory"]
  NAMECALL R4 R1 K5 ["getText"]
  CALL R4 3 1
  MOVE R2 R4
  GETTABLEKS R4 R0 K6 ["SoundEffectSubcategory"]
  JUMPIFEQKNIL R4 [+34]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["isCapitalizedIgnoreLocale"]
  GETTABLEKS R5 R0 K6 ["SoundEffectSubcategory"]
  CALL R4 1 1
  JUMPIFNOT R4 [+26]
  LOADK R6 K4 ["Audio.SoundEffect.Category"]
  GETTABLEKS R7 R0 K6 ["SoundEffectSubcategory"]
  NAMECALL R4 R1 K5 ["getText"]
  CALL R4 3 1
  MOVE R3 R4
  JUMP [+18]
  GETTABLEKS R4 R0 K7 ["MusicGenre"]
  JUMPIFEQKNIL R4 [+15]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["isCapitalizedIgnoreLocale"]
  GETTABLEKS R5 R0 K7 ["MusicGenre"]
  CALL R4 1 1
  JUMPIF R4 [+7]
  LOADK R6 K8 ["Audio.Music.Genre"]
  GETTABLEKS R7 R0 K7 ["MusicGenre"]
  NAMECALL R4 R1 K5 ["getText"]
  CALL R4 3 1
  MOVE R2 R4
  LOADNIL R4
  JUMPIFNOT R2 [+6]
  MOVE R4 R2
  JUMPIFNOT R3 [+4]
  MOVE R5 R4
  LOADK R6 K9 [" - "]
  MOVE R7 R3
  CONCAT R4 R5 R7
  RETURN R4 1
  GETTABLEKS R2 R0 K10 ["Type"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["MUSIC"]
  GETTABLEKS R3 R4 K12 ["name"]
  JUMPIFNOTEQ R2 R3 [+13]
  GETTABLEKS R2 R0 K7 ["MusicGenre"]
  JUMPIFNOT R2 [+7]
  LOADK R5 K8 ["Audio.Music.Genre"]
  GETTABLEKS R6 R0 K7 ["MusicGenre"]
  NAMECALL R3 R1 K5 ["getText"]
  CALL R3 3 1
  RETURN R3 1
  LOADK R3 K13 ["---"]
  RETURN R3 1
  GETTABLEKS R2 R0 K10 ["Type"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K14 ["SOUND_EFFECTS"]
  GETTABLEKS R3 R4 K12 ["name"]
  JUMPIFNOTEQ R2 R3 [+23]
  GETTABLEKS R2 R0 K2 ["SoundEffectCategory"]
  GETTABLEKS R3 R0 K6 ["SoundEffectSubcategory"]
  JUMPIFNOT R2 [+6]
  LOADK R6 K4 ["Audio.SoundEffect.Category"]
  MOVE R7 R2
  NAMECALL R4 R1 K5 ["getText"]
  CALL R4 3 1
  JUMP [+1]
  LOADK R4 K13 ["---"]
  JUMPIFNOT R3 [+8]
  MOVE R5 R4
  LOADK R6 K9 [" - "]
  LOADK R9 K4 ["Audio.SoundEffect.Category"]
  MOVE R10 R3
  NAMECALL R7 R1 K5 ["getText"]
  CALL R7 3 1
  CONCAT R4 R5 R7
  RETURN R4 1
  LOADNIL R2
  RETURN R2 1

PROTO_22:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["AssetInfo"]
  GETTABLEKS R1 R2 K2 ["Asset"]
  GETGLOBAL R2 K3 ["audioDetailsWithDefaults"]
  GETTABLEKS R4 R0 K1 ["AssetInfo"]
  GETTABLEKS R3 R4 K4 ["AudioDetails"]
  CALL R2 1 1
  GETUPVAL R3 1
  GETTABLEKS R4 R2 K5 ["Type"]
  GETTABLEKS R6 R0 K7 ["width"]
  ORK R5 R6 K6 [0]
  CALL R3 2 1
  GETTABLEKS R5 R0 K1 ["AssetInfo"]
  GETTABLEKS R4 R5 K8 ["Creator"]
  LOADK R5 K9 ["---"]
  LOADNIL R6
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+37]
  GETTABLEKS R9 R0 K1 ["AssetInfo"]
  GETTABLEKS R8 R9 K4 ["AudioDetails"]
  JUMPIFNOT R8 [+7]
  GETTABLEKS R9 R0 K1 ["AssetInfo"]
  GETTABLEKS R8 R9 K4 ["AudioDetails"]
  GETTABLEKS R7 R8 K10 ["Artist"]
  JUMP [+1]
  LOADNIL R7
  JUMPIFNOT R7 [+13]
  FASTCALL1 STRING_LEN R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K13 [string.len]
  CALL R8 1 1
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+6]
  MOVE R5 R7
  GETUPVAL R8 0
  GETTABLEKS R6 R8 K14 ["onSearchByArtist"]
  JUMP [+25]
  JUMPIFNOT R4 [+24]
  GETTABLEKS R8 R4 K15 ["Name"]
  JUMPIFNOT R8 [+21]
  GETTABLEKS R5 R4 K15 ["Name"]
  GETUPVAL R8 0
  GETTABLEKS R6 R8 K16 ["onSearchByCreator"]
  JUMP [+15]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R7 R4 K15 ["Name"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R5 R4 K15 ["Name"]
  JUMP [+1]
  LOADK R5 K9 ["---"]
  JUMPIFEQKS R5 K9 ["---"] [+5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["onSearchByCreator"]
  JUMP [+1]
  LOADNIL R6
  NEWTABLE R7 0 3
  DUPTABLE R8 K21 [{"DevLabel", "OnClick", "Size", "Text"}]
  LOADK R9 K8 ["Creator"]
  SETTABLEKS R9 R8 K17 ["DevLabel"]
  SETTABLEKS R6 R8 K18 ["OnClick"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K22 ["AUDIO_ROW"]
  GETTABLEKS R11 R12 K23 ["COLUMNS"]
  GETTABLEKS R10 R11 K24 ["CREATOR"]
  GETTABLE R9 R3 R10
  SETTABLEKS R9 R8 K19 ["Size"]
  SETTABLEKS R5 R8 K20 ["Text"]
  DUPTABLE R9 K21 [{"DevLabel", "OnClick", "Size", "Text"}]
  LOADK R10 K25 ["Tags"]
  SETTABLEKS R10 R9 K17 ["DevLabel"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K26 ["onSearchByTags"]
  SETTABLEKS R10 R9 K18 ["OnClick"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K22 ["AUDIO_ROW"]
  GETTABLEKS R12 R13 K23 ["COLUMNS"]
  GETTABLEKS R11 R12 K27 ["TAGS"]
  GETTABLE R10 R3 R11
  SETTABLEKS R10 R9 K19 ["Size"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K28 ["getTags"]
  MOVE R11 R2
  CALL R10 1 1
  SETTABLEKS R10 R9 K20 ["Text"]
  DUPTABLE R10 K30 [{"DevLabel", "Padding", "OnClick", "Size", "Text"}]
  LOADK R11 K31 ["Duration"]
  SETTABLEKS R11 R10 K17 ["DevLabel"]
  DUPTABLE R11 K33 [{"Left"}]
  GETUPVAL R13 4
  CALL R13 0 1
  JUMPIFNOT R13 [+6]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K34 ["ITEM_ROW"]
  GETTABLEKS R12 R13 K35 ["LEFT_RIGHT_PADDING"]
  JUMP [+5]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K22 ["AUDIO_ROW"]
  GETTABLEKS R12 R13 K35 ["LEFT_RIGHT_PADDING"]
  SETTABLEKS R12 R11 K32 ["Left"]
  SETTABLEKS R11 R10 K29 ["Padding"]
  LOADNIL R11
  SETTABLEKS R11 R10 K18 ["OnClick"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K22 ["AUDIO_ROW"]
  GETTABLEKS R13 R14 K23 ["COLUMNS"]
  GETTABLEKS R12 R13 K36 ["LENGTH"]
  GETTABLE R11 R3 R12
  SETTABLEKS R11 R10 K19 ["Size"]
  GETGLOBAL R11 K37 ["secondsToMinuteString"]
  GETTABLEKS R12 R1 K31 ["Duration"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K20 ["Text"]
  SETLIST R7 R8 3 [1]
  RETURN R7 1

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["state"]
  GETTABLEKS R2 R0 K2 ["IsExpanded"]
  GETTABLEKS R4 R0 K3 ["Stylizer"]
  GETTABLEKS R3 R4 K4 ["itemRow"]
  GETTABLEKS R4 R1 K5 ["isHovered"]
  GETTABLEKS R5 R1 K6 ["isPlayButtonHovered"]
  GETTABLEKS R6 R1 K7 ["isPlaying"]
  GETGLOBAL R7 K8 ["audioDetailsWithDefaults"]
  GETTABLEKS R9 R0 K9 ["AssetInfo"]
  GETTABLEKS R8 R9 K10 ["AudioDetails"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K11 ["Type"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["SOUND_EFFECTS"]
  GETTABLEKS R10 R11 K13 ["name"]
  JUMPIFEQ R8 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  NEWTABLE R10 4 0
  GETIMPORT R11 K16 [UDim2.new]
  LOADN R12 0
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K17 ["AUDIO_ROW"]
  GETTABLEKS R13 R14 K18 ["ICON_SIZE"]
  LOADN R14 0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K17 ["AUDIO_ROW"]
  GETTABLEKS R15 R16 K18 ["ICON_SIZE"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K19 ["Size"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K20 ["Event"]
  GETTABLEKS R11 R12 K21 ["MouseEnter"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K22 ["onPlayButtonMouseEnter"]
  SETTABLE R12 R10 R11
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K20 ["Event"]
  GETTABLEKS R11 R12 K23 ["MouseLeave"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K24 ["onPlayButtonMouseLeave"]
  SETTABLE R12 R10 R11
  JUMPIF R2 [+2]
  JUMPIF R4 [+1]
  JUMPIFNOT R6 [+40]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K25 ["join"]
  MOVE R12 R10
  NEWTABLE R13 4 0
  JUMPIF R6 [+1]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R14 R3 K26 ["pauseButtonColor"]
  JUMP [+2]
  GETTABLEKS R14 R3 K27 ["playButtonColor"]
  SETTABLEKS R14 R13 K28 ["BackgroundColor3"]
  LOADN R14 0
  SETTABLEKS R14 R13 K29 ["BackgroundTransparency"]
  JUMPIFNOT R6 [+4]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K30 ["AUDIO_PREVIEW_PAUSE"]
  JUMP [+3]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K31 ["AUDIO_PREVIEW_PLAY"]
  SETTABLEKS R14 R13 K32 ["Image"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K20 ["Event"]
  GETTABLEKS R14 R15 K33 ["MouseButton1Click"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K34 ["toggleIsPlayer"]
  SETTABLE R15 R13 R14
  CALL R11 2 1
  MOVE R10 R11
  JUMP [+24]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K25 ["join"]
  MOVE R12 R10
  DUPTABLE R13 K36 [{"BackgroundTransparency", "ImageColor3", "Image"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K29 ["BackgroundTransparency"]
  GETTABLEKS R14 R3 K37 ["primaryIconColor"]
  SETTABLEKS R14 R13 K35 ["ImageColor3"]
  JUMPIFNOT R9 [+4]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K38 ["SOUND_EFFECT_ICON"]
  JUMP [+3]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K39 ["MUSIC_ICON"]
  SETTABLEKS R14 R13 K32 ["Image"]
  CALL R11 2 1
  MOVE R10 R11
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K40 ["createElement"]
  LOADK R12 K41 ["Frame"]
  DUPTABLE R13 K42 [{"BackgroundTransparency", "Size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K29 ["BackgroundTransparency"]
  GETIMPORT R14 K16 [UDim2.new]
  LOADN R15 0
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K17 ["AUDIO_ROW"]
  GETTABLEKS R17 R18 K18 ["ICON_SIZE"]
  GETUPVAL R19 6
  CALL R19 0 1
  JUMPIFNOT R19 [+7]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K44 ["ITEM_ROW"]
  GETTABLEKS R19 R20 K45 ["LEFT_RIGHT_PADDING"]
  MULK R18 R19 K43 [2]
  JUMP [+6]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K17 ["AUDIO_ROW"]
  GETTABLEKS R19 R20 K45 ["LEFT_RIGHT_PADDING"]
  MULK R18 R19 K43 [2]
  ADD R16 R17 R18
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K19 ["Size"]
  DUPTABLE R14 K47 [{"Button"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K40 ["createElement"]
  LOADK R16 K48 ["ImageButton"]
  MOVE R17 R10
  DUPTABLE R18 K51 [{"UICorner", "HoverArea"}]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K40 ["createElement"]
  LOADK R20 K49 ["UICorner"]
  DUPTABLE R21 K53 [{"CornerRadius"}]
  GETIMPORT R22 K55 [UDim.new]
  LOADN R23 0
  LOADN R24 15
  CALL R22 2 1
  SETTABLEKS R22 R21 K52 ["CornerRadius"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K49 ["UICorner"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K40 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K57 [{"Cursor"}]
  LOADK R22 K58 ["PointingHand"]
  SETTABLEKS R22 R21 K56 ["Cursor"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K50 ["HoverArea"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K46 ["Button"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_24:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["state"]
  GETGLOBAL R2 K2 ["audioDetailsWithDefaults"]
  GETTABLEKS R4 R0 K3 ["AssetInfo"]
  GETTABLEKS R3 R4 K4 ["AudioDetails"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K10 [{"AudioDetails", "AssetInfo", "IsPlaying", "OnAssetPreviewButtonClicked", "OnAudioEnd", "OnInsertClicked"}]
  SETTABLEKS R2 R5 K4 ["AudioDetails"]
  GETTABLEKS R6 R0 K3 ["AssetInfo"]
  SETTABLEKS R6 R5 K3 ["AssetInfo"]
  GETTABLEKS R6 R1 K11 ["isPlaying"]
  SETTABLEKS R6 R5 K6 ["IsPlaying"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["onAssetPreviewButtonClicked"]
  SETTABLEKS R6 R5 K7 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["stopPlaying"]
  SETTABLEKS R6 R5 K8 ["OnAudioEnd"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K14 ["onClick"]
  SETTABLEKS R6 R5 K9 ["OnInsertClicked"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_25:
  LOADB R2 0
  SETTABLEKS R2 R0 K0 ["wasAssetBoundsWithinScrollingBounds"]
  DUPTABLE R2 K4 [{"isPlayButtonHovered", "isExpanded", "isPlaying"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["isPlayButtonHovered"]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["isExpanded"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["isPlaying"]
  SETTABLEKS R2 R0 K5 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onPlayButtonMouseEnter"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onPlayButtonMouseLeave"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["toggleIsExpanded"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["stopPlaying"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K10 ["toggleIsPlayer"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K11 ["onClick"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K12 ["searchBy"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K13 ["onSearchByCreator"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K14 ["onSearchByArtist"]
  NEWCLOSURE R2 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K15 ["onSearchByGenre"]
  NEWCLOSURE R2 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K16 ["onSearchByCategories"]
  NEWCLOSURE R2 P11
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K17 ["onSearchByAlbum"]
  NEWCLOSURE R2 P12
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K18 ["onSearchByTags"]
  NEWCLOSURE R2 P13
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K19 ["onAssetPreviewButtonClicked"]
  NEWCLOSURE R2 P14
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K20 ["onHoverChanged"]
  DUPCLOSURE R2 K21 [PROTO_20]
  SETTABLEKS R2 R0 K22 ["isCapitalizedIgnoreLocale"]
  NEWCLOSURE R2 P16
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R2 R0 K23 ["getTags"]
  NEWCLOSURE R2 P17
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U5
  CAPTURE UPVAL U10
  SETTABLEKS R2 R0 K24 ["getColumns"]
  NEWCLOSURE R2 P18
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U5
  CAPTURE UPVAL U11
  CAPTURE UPVAL U4
  CAPTURE UPVAL U12
  CAPTURE UPVAL U10
  CAPTURE UPVAL U13
  SETTABLEKS R2 R0 K25 ["renderIcon"]
  NEWCLOSURE R2 P19
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  CAPTURE UPVAL U14
  SETTABLEKS R2 R0 K26 ["renderExpandedContent"]
  RETURN R0 0

PROTO_26:
  GETTABLEKS R3 R0 K0 ["state"]
  GETTABLEKS R4 R0 K1 ["props"]
  GETTABLEKS R5 R3 K2 ["isPlaying"]
  JUMPIFNOT R5 [+9]
  GETTABLEKS R5 R2 K2 ["isPlaying"]
  JUMPIF R5 [+6]
  GETTABLEKS R5 R4 K3 ["IsExpanded"]
  JUMPIF R5 [+3]
  NAMECALL R5 R0 K4 ["toggleIsExpanded"]
  CALL R5 1 0
  GETTABLEKS R5 R4 K3 ["IsExpanded"]
  JUMPIF R5 [+9]
  GETTABLEKS R5 R1 K3 ["IsExpanded"]
  JUMPIFNOT R5 [+6]
  GETTABLEKS R5 R3 K2 ["isPlaying"]
  JUMPIFNOT R5 [+3]
  NAMECALL R5 R0 K5 ["toggleIsPlayer"]
  CALL R5 1 0
  RETURN R0 0

PROTO_27:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R1 K2 ["AssetInfo"]
  GETTABLEKS R3 R4 K3 ["Asset"]
  GETGLOBAL R4 K4 ["audioDetailsWithDefaults"]
  GETTABLEKS R6 R1 K2 ["AssetInfo"]
  GETTABLEKS R5 R6 K5 ["AudioDetails"]
  CALL R4 1 1
  GETTABLEKS R7 R1 K2 ["AssetInfo"]
  GETTABLEKS R6 R7 K6 ["Creator"]
  JUMPIFNOT R6 [+7]
  GETTABLEKS R7 R1 K2 ["AssetInfo"]
  GETTABLEKS R6 R7 K6 ["Creator"]
  GETTABLEKS R5 R6 K7 ["Name"]
  JUMPIF R5 [+1]
  LOADK R5 K8 ["---"]
  GETTABLEKS R6 R4 K9 ["Type"]
  GETTABLEKS R7 R1 K10 ["width"]
  GETUPVAL R8 0
  MOVE R9 R6
  ORK R10 R7 K11 [0]
  CALL R8 2 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K12 ["Generator"]
  DUPTABLE R10 K28 [{"Columns", "ExpandedHeight", "OnHoverChanged", "RenderExpandedContent", "RenderIcon", "TitleSize", "AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "LayoutOrder", "LogImpression", "OnExpanded", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
  GETTABLEKS R11 R0 K29 ["getColumns"]
  CALL R11 0 1
  SETTABLEKS R11 R10 K13 ["Columns"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K30 ["AUDIO_ROW"]
  GETTABLEKS R11 R12 K31 ["EXPANDED_ROW_HEIGHT"]
  SETTABLEKS R11 R10 K14 ["ExpandedHeight"]
  GETTABLEKS R11 R0 K32 ["onHoverChanged"]
  SETTABLEKS R11 R10 K15 ["OnHoverChanged"]
  GETTABLEKS R11 R0 K33 ["renderExpandedContent"]
  SETTABLEKS R11 R10 K16 ["RenderExpandedContent"]
  GETTABLEKS R11 R0 K34 ["renderIcon"]
  SETTABLEKS R11 R10 K17 ["RenderIcon"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K30 ["AUDIO_ROW"]
  GETTABLEKS R13 R14 K35 ["COLUMNS"]
  GETTABLEKS R12 R13 K36 ["TITLE"]
  GETTABLE R11 R8 R12
  SETTABLEKS R11 R10 K18 ["TitleSize"]
  GETTABLEKS R11 R1 K2 ["AssetInfo"]
  SETTABLEKS R11 R10 K2 ["AssetInfo"]
  GETTABLEKS R11 R1 K19 ["CanInsertAsset"]
  SETTABLEKS R11 R10 K19 ["CanInsertAsset"]
  GETTABLEKS R11 R1 K20 ["InsertAsset"]
  SETTABLEKS R11 R10 K20 ["InsertAsset"]
  GETTABLEKS R11 R1 K21 ["IsExpanded"]
  SETTABLEKS R11 R10 K21 ["IsExpanded"]
  GETTABLEKS R11 R1 K22 ["LayoutOrder"]
  SETTABLEKS R11 R10 K22 ["LayoutOrder"]
  GETTABLEKS R11 R1 K23 ["LogImpression"]
  SETTABLEKS R11 R10 K23 ["LogImpression"]
  GETTABLEKS R11 R1 K24 ["OnExpanded"]
  SETTABLEKS R11 R10 K24 ["OnExpanded"]
  GETTABLEKS R11 R1 K25 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R11 R10 K25 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R11 R1 K26 ["ParentAbsoluteSize"]
  SETTABLEKS R11 R10 K26 ["ParentAbsoluteSize"]
  GETTABLEKS R11 R1 K27 ["TryOpenAssetConfig"]
  SETTABLEKS R11 R10 K27 ["TryOpenAssetConfig"]
  CALL R9 1 -1
  RETURN R9 -1

PROTO_28:
  DUPTABLE R2 K3 [{"additionalAudioSearchInfo", "audioSearchInfo", "creator"}]
  GETTABLEKS R3 R0 K4 ["pageInfo"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R4 R0 K4 ["pageInfo"]
  GETTABLEKS R3 R4 K0 ["additionalAudioSearchInfo"]
  SETTABLEKS R3 R2 K0 ["additionalAudioSearchInfo"]
  GETTABLEKS R3 R0 K4 ["pageInfo"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R4 R0 K4 ["pageInfo"]
  GETTABLEKS R3 R4 K1 ["audioSearchInfo"]
  SETTABLEKS R3 R2 K1 ["audioSearchInfo"]
  GETTABLEKS R3 R0 K4 ["pageInfo"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R4 R0 K4 ["pageInfo"]
  GETTABLEKS R3 R4 K2 ["creator"]
  SETTABLEKS R3 R2 K2 ["creator"]
  RETURN R2 1

PROTO_29:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R7 0
  GETUPVAL R8 1
  MOVE R9 R0
  MOVE R10 R1
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  MOVE R15 R6
  CALL R8 7 -1
  CALL R7 -1 0
  RETURN R0 0

PROTO_31:
  DUPTABLE R1 K2 [{"searchWithOptions", "purchaseAsset"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["searchWithOptions"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["purchaseAsset"]
  RETURN R1 1

PROTO_32:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["Dash"]
  CALL R5 1 1
  GETTABLEKS R7 R4 K11 ["UI"]
  GETTABLEKS R6 R7 K12 ["HoverArea"]
  GETTABLEKS R8 R4 K13 ["Wrappers"]
  GETTABLEKS R7 R8 K14 ["withAbsoluteSizeAndPosition"]
  GETTABLEKS R9 R0 K15 ["Core"]
  GETTABLEKS R8 R9 K16 ["Util"]
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R8 K17 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R10 R4 K18 ["ContextServices"]
  GETTABLEKS R11 R10 K19 ["withContext"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R16 R0 K15 ["Core"]
  GETTABLEKS R15 R16 K16 ["Util"]
  GETTABLEKS R14 R15 K20 ["Analytics"]
  GETTABLEKS R13 R14 K20 ["Analytics"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K15 ["Core"]
  GETTABLEKS R15 R16 K21 ["Components"]
  GETTABLEKS R14 R15 K22 ["AssetLogicWrapper"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R8 K20 ["Analytics"]
  GETTABLEKS R15 R16 K23 ["AssetAnalyticsContextItem"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R19 R0 K15 ["Core"]
  GETTABLEKS R18 R19 K24 ["Networking"]
  GETTABLEKS R17 R18 K25 ["Requests"]
  GETTABLEKS R16 R17 K26 ["SearchWithOptions"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R0 K15 ["Core"]
  GETTABLEKS R18 R19 K18 ["ContextServices"]
  GETTABLEKS R17 R18 K27 ["Settings"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R20 R0 K15 ["Core"]
  GETTABLEKS R19 R20 K18 ["ContextServices"]
  GETTABLEKS R18 R19 K28 ["NetworkContext"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R22 R0 K15 ["Core"]
  GETTABLEKS R21 R22 K24 ["Networking"]
  GETTABLEKS R20 R21 K25 ["Requests"]
  GETTABLEKS R19 R20 K29 ["PurchaseAssetRequest"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R0 K15 ["Core"]
  GETTABLEKS R21 R22 K16 ["Util"]
  GETTABLEKS R20 R21 K30 ["getIsValidAudioAssetForInventoryGrant"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R24 R0 K15 ["Core"]
  GETTABLEKS R23 R24 K21 ["Components"]
  GETTABLEKS R22 R23 K31 ["ItemRow"]
  GETTABLEKS R21 R22 K31 ["ItemRow"]
  CALL R20 1 1
  GETIMPORT R21 K6 [require]
  GETTABLEKS R25 R0 K15 ["Core"]
  GETTABLEKS R24 R25 K21 ["Components"]
  GETTABLEKS R23 R24 K32 ["Audio"]
  GETTABLEKS R22 R23 K33 ["AudioRowExpandedContent"]
  CALL R21 1 1
  GETIMPORT R22 K6 [require]
  GETTABLEKS R25 R0 K15 ["Core"]
  GETTABLEKS R24 R25 K16 ["Util"]
  GETTABLEKS R23 R24 K34 ["Images"]
  CALL R22 1 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K15 ["Core"]
  GETTABLEKS R25 R26 K35 ["Models"]
  GETTABLEKS R24 R25 K36 ["AssetInfo"]
  CALL R23 1 1
  GETIMPORT R24 K6 [require]
  GETTABLEKS R27 R0 K15 ["Core"]
  GETTABLEKS R26 R27 K37 ["Types"]
  GETTABLEKS R25 R26 K38 ["Category"]
  CALL R24 1 1
  GETIMPORT R25 K6 [require]
  GETTABLEKS R29 R0 K15 ["Core"]
  GETTABLEKS R28 R29 K21 ["Components"]
  GETTABLEKS R27 R28 K32 ["Audio"]
  GETTABLEKS R26 R27 K39 ["GetAudioTableSizes"]
  CALL R25 1 1
  GETIMPORT R26 K6 [require]
  GETTABLEKS R30 R0 K15 ["Core"]
  GETTABLEKS R29 R30 K16 ["Util"]
  GETTABLEKS R28 R29 K40 ["SharedFlags"]
  GETTABLEKS R27 R28 K41 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
  CALL R26 1 1
  GETIMPORT R27 K6 [require]
  GETTABLEKS R31 R0 K15 ["Core"]
  GETTABLEKS R30 R31 K16 ["Util"]
  GETTABLEKS R29 R30 K40 ["SharedFlags"]
  GETTABLEKS R28 R29 K42 ["getFFlagToolboxUpdateDisplayedAudioTags"]
  CALL R27 1 1
  GETIMPORT R28 K6 [require]
  GETTABLEKS R31 R0 K15 ["Core"]
  GETTABLEKS R30 R31 K43 ["Flags"]
  GETTABLEKS R29 R30 K44 ["getFFlagToolboxShowArtistThenCreator"]
  CALL R28 1 1
  GETIMPORT R29 K6 [require]
  GETTABLEKS R33 R0 K15 ["Core"]
  GETTABLEKS R32 R33 K16 ["Util"]
  GETTABLEKS R31 R32 K40 ["SharedFlags"]
  GETTABLEKS R30 R31 K45 ["getFFlagToolboxAudioRemoveProductId"]
  CALL R29 1 1
  GETIMPORT R30 K47 [game]
  LOADK R32 K48 ["ToolboxSampleProductMUS418"]
  NAMECALL R30 R30 K49 ["GetEngineFeature"]
  CALL R30 2 1
  GETTABLEKS R31 R2 K50 ["PureComponent"]
  LOADK R33 K51 ["AudioRow"]
  NAMECALL R31 R31 K52 ["extend"]
  CALL R31 2 1
  DUPCLOSURE R32 K53 [PROTO_0]
  SETGLOBAL R32 K54 ["secondsToMinuteString"]
  DUPTABLE R32 K57 [{"Artist", "MusicAlbum"}]
  LOADK R33 K58 ["---"]
  SETTABLEKS R33 R32 K55 ["Artist"]
  LOADK R33 K58 ["---"]
  SETTABLEKS R33 R32 K56 ["MusicAlbum"]
  DUPCLOSURE R33 K59 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R32
  SETGLOBAL R33 K60 ["audioDetailsWithDefaults"]
  DUPCLOSURE R33 K61 [PROTO_25]
  CAPTURE VAL R30
  CAPTURE VAL R19
  CAPTURE VAL R29
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R27
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R28
  CAPTURE VAL R26
  CAPTURE VAL R2
  CAPTURE VAL R22
  CAPTURE VAL R6
  CAPTURE VAL R21
  SETTABLEKS R33 R31 K62 ["init"]
  DUPCLOSURE R33 K63 [PROTO_26]
  SETTABLEKS R33 R31 K64 ["didUpdate"]
  DUPCLOSURE R33 K65 [PROTO_27]
  CAPTURE VAL R25
  CAPTURE VAL R20
  CAPTURE VAL R9
  SETTABLEKS R33 R31 K66 ["render"]
  MOVE R33 R11
  DUPTABLE R34 K72 [{"AssetAnalytics", "Stylizer", "Localization", "Plugin", "Settings", "Network"}]
  SETTABLEKS R14 R34 K67 ["AssetAnalytics"]
  GETTABLEKS R35 R10 K68 ["Stylizer"]
  SETTABLEKS R35 R34 K68 ["Stylizer"]
  GETTABLEKS R35 R10 K69 ["Localization"]
  SETTABLEKS R35 R34 K69 ["Localization"]
  GETTABLEKS R35 R10 K70 ["Plugin"]
  SETTABLEKS R35 R34 K70 ["Plugin"]
  SETTABLEKS R16 R34 K27 ["Settings"]
  SETTABLEKS R17 R34 K71 ["Network"]
  CALL R33 1 1
  MOVE R34 R31
  CALL R33 1 1
  MOVE R31 R33
  DUPCLOSURE R33 K73 [PROTO_28]
  DUPCLOSURE R34 K74 [PROTO_31]
  CAPTURE VAL R15
  CAPTURE VAL R18
  GETTABLEKS R35 R3 K75 ["connect"]
  MOVE R36 R33
  MOVE R37 R34
  CALL R35 2 1
  MOVE R36 R31
  CALL R35 1 1
  MOVE R31 R35
  MOVE R35 R7
  MOVE R36 R31
  CALL R35 1 1
  MOVE R31 R35
  NEWCLOSURE R35 P7
  CAPTURE VAL R2
  CAPTURE REF R31
  SETGLOBAL R35 K76 ["TypedAudioRow"]
  DUPTABLE R35 K79 [{"Component", "Generator"}]
  SETTABLEKS R31 R35 K77 ["Component"]
  GETGLOBAL R36 K76 ["TypedAudioRow"]
  SETTABLEKS R36 R35 K78 ["Generator"]
  CLOSEUPVALS R31
  RETURN R35 1
