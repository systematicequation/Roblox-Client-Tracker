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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["CanInsertAsset"]
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["InsertAsset"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
  DUPTABLE R1 K1 [{"isHovered"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["isHovered"]
  RETURN R1 1

PROTO_17:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R2 R0 K2 ["Type"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["MUSIC"]
  GETTABLEKS R3 R4 K4 ["name"]
  JUMPIFNOTEQ R2 R3 [+13]
  GETTABLEKS R2 R0 K5 ["MusicGenre"]
  JUMPIFNOT R2 [+7]
  LOADK R5 K6 ["Audio.Music.Genre"]
  GETTABLEKS R6 R0 K5 ["MusicGenre"]
  NAMECALL R3 R1 K7 ["getText"]
  CALL R3 3 1
  RETURN R3 1
  LOADK R3 K8 ["---"]
  RETURN R3 1
  GETTABLEKS R2 R0 K2 ["Type"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["SOUND_EFFECTS"]
  GETTABLEKS R3 R4 K4 ["name"]
  JUMPIFNOTEQ R2 R3 [+23]
  GETTABLEKS R2 R0 K10 ["SoundEffectCategory"]
  GETTABLEKS R3 R0 K11 ["SoundEffectSubcategory"]
  JUMPIFNOT R2 [+6]
  LOADK R6 K12 ["Audio.SoundEffect.Category"]
  MOVE R7 R2
  NAMECALL R4 R1 K7 ["getText"]
  CALL R4 3 1
  JUMP [+1]
  LOADK R4 K8 ["---"]
  JUMPIFNOT R3 [+8]
  MOVE R5 R4
  LOADK R6 K13 [" - "]
  LOADK R9 K12 ["Audio.SoundEffect.Category"]
  MOVE R10 R3
  NAMECALL R7 R1 K7 ["getText"]
  CALL R7 3 1
  CONCAT R4 R5 R7
  RETURN R4 1
  LOADNIL R2
  RETURN R2 1

PROTO_19:
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
  JUMPIFNOT R4 [+6]
  GETTABLEKS R6 R4 K9 ["Name"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R4 K9 ["Name"]
  JUMP [+1]
  LOADK R5 K10 ["---"]
  NEWTABLE R6 0 3
  DUPTABLE R7 K15 [{"DevLabel", "OnClick", "Size", "Text"}]
  LOADK R8 K8 ["Creator"]
  SETTABLEKS R8 R7 K11 ["DevLabel"]
  JUMPIFEQKS R5 K10 ["---"] [+5]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["onSearchByCreator"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K12 ["OnClick"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K17 ["AUDIO_ROW"]
  GETTABLEKS R10 R11 K18 ["COLUMNS"]
  GETTABLEKS R9 R10 K19 ["CREATOR"]
  GETTABLE R8 R3 R9
  SETTABLEKS R8 R7 K13 ["Size"]
  SETTABLEKS R5 R7 K14 ["Text"]
  DUPTABLE R8 K15 [{"DevLabel", "OnClick", "Size", "Text"}]
  LOADK R9 K20 ["Tags"]
  SETTABLEKS R9 R8 K11 ["DevLabel"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K21 ["onSearchByTags"]
  SETTABLEKS R9 R8 K12 ["OnClick"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K17 ["AUDIO_ROW"]
  GETTABLEKS R11 R12 K18 ["COLUMNS"]
  GETTABLEKS R10 R11 K22 ["TAGS"]
  GETTABLE R9 R3 R10
  SETTABLEKS R9 R8 K13 ["Size"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K23 ["getTags"]
  MOVE R10 R2
  CALL R9 1 1
  SETTABLEKS R9 R8 K14 ["Text"]
  DUPTABLE R9 K25 [{"DevLabel", "Padding", "OnClick", "Size", "Text"}]
  LOADK R10 K26 ["Duration"]
  SETTABLEKS R10 R9 K11 ["DevLabel"]
  DUPTABLE R10 K28 [{"Left"}]
  GETUPVAL R12 3
  CALL R12 0 1
  JUMPIFNOT R12 [+6]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K29 ["ITEM_ROW"]
  GETTABLEKS R11 R12 K30 ["LEFT_RIGHT_PADDING"]
  JUMP [+5]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K17 ["AUDIO_ROW"]
  GETTABLEKS R11 R12 K30 ["LEFT_RIGHT_PADDING"]
  SETTABLEKS R11 R10 K27 ["Left"]
  SETTABLEKS R10 R9 K24 ["Padding"]
  LOADNIL R10
  SETTABLEKS R10 R9 K12 ["OnClick"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K17 ["AUDIO_ROW"]
  GETTABLEKS R12 R13 K18 ["COLUMNS"]
  GETTABLEKS R11 R12 K31 ["LENGTH"]
  GETTABLE R10 R3 R11
  SETTABLEKS R10 R9 K13 ["Size"]
  GETGLOBAL R10 K32 ["secondsToMinuteString"]
  GETTABLEKS R11 R1 K26 ["Duration"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K14 ["Text"]
  SETLIST R6 R7 3 [1]
  RETURN R6 1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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
  SETTABLEKS R2 R0 K11 ["onClick"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K12 ["searchBy"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K13 ["onSearchByCreator"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K14 ["onSearchByGenre"]
  NEWCLOSURE R2 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K15 ["onSearchByCategories"]
  NEWCLOSURE R2 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K16 ["onSearchByAlbum"]
  NEWCLOSURE R2 P11
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K17 ["onSearchByTags"]
  NEWCLOSURE R2 P12
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K18 ["onAssetPreviewButtonClicked"]
  NEWCLOSURE R2 P13
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K19 ["onHoverChanged"]
  NEWCLOSURE R2 P14
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K20 ["getTags"]
  NEWCLOSURE R2 P15
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K21 ["getColumns"]
  NEWCLOSURE R2 P16
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U4
  CAPTURE UPVAL U7
  SETTABLEKS R2 R0 K22 ["renderIcon"]
  NEWCLOSURE R2 P17
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U8
  SETTABLEKS R2 R0 K23 ["renderExpandedContent"]
  RETURN R0 0

PROTO_23:
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

PROTO_24:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_25:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_26:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R0 K1 ["state"]
  GETTABLEKS R5 R2 K2 ["AssetInfo"]
  GETTABLEKS R4 R5 K3 ["Asset"]
  GETGLOBAL R5 K4 ["audioDetailsWithDefaults"]
  GETTABLEKS R7 R2 K2 ["AssetInfo"]
  GETTABLEKS R6 R7 K5 ["AudioDetails"]
  CALL R5 1 1
  GETTABLEKS R8 R2 K2 ["AssetInfo"]
  GETTABLEKS R7 R8 K6 ["Creator"]
  JUMPIFNOT R7 [+7]
  GETTABLEKS R8 R2 K2 ["AssetInfo"]
  GETTABLEKS R7 R8 K6 ["Creator"]
  GETTABLEKS R6 R7 K7 ["Name"]
  JUMPIF R6 [+1]
  LOADK R6 K8 ["---"]
  GETTABLEKS R7 R5 K9 ["Type"]
  GETTABLEKS R8 R2 K10 ["width"]
  GETUPVAL R9 0
  MOVE R10 R7
  JUMPIFNOT R8 [+2]
  MOVE R11 R8
  JUMP [+1]
  LOADN R11 0
  CALL R9 2 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["Generator"]
  DUPTABLE R11 K27 [{"Columns", "ExpandedHeight", "OnHoverChanged", "RenderExpandedContent", "RenderIcon", "TitleSize", "AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "LayoutOrder", "LogImpression", "OnExpanded", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
  GETTABLEKS R12 R0 K28 ["getColumns"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K12 ["Columns"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K29 ["AUDIO_ROW"]
  GETTABLEKS R12 R13 K30 ["EXPANDED_ROW_HEIGHT"]
  SETTABLEKS R12 R11 K13 ["ExpandedHeight"]
  GETTABLEKS R12 R0 K31 ["onHoverChanged"]
  SETTABLEKS R12 R11 K14 ["OnHoverChanged"]
  GETTABLEKS R12 R0 K32 ["renderExpandedContent"]
  SETTABLEKS R12 R11 K15 ["RenderExpandedContent"]
  GETTABLEKS R12 R0 K33 ["renderIcon"]
  SETTABLEKS R12 R11 K16 ["RenderIcon"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K29 ["AUDIO_ROW"]
  GETTABLEKS R14 R15 K34 ["COLUMNS"]
  GETTABLEKS R13 R14 K35 ["TITLE"]
  GETTABLE R12 R9 R13
  SETTABLEKS R12 R11 K17 ["TitleSize"]
  GETTABLEKS R12 R2 K2 ["AssetInfo"]
  SETTABLEKS R12 R11 K2 ["AssetInfo"]
  GETTABLEKS R12 R2 K18 ["CanInsertAsset"]
  SETTABLEKS R12 R11 K18 ["CanInsertAsset"]
  GETTABLEKS R12 R2 K19 ["InsertAsset"]
  SETTABLEKS R12 R11 K19 ["InsertAsset"]
  GETTABLEKS R12 R2 K20 ["IsExpanded"]
  SETTABLEKS R12 R11 K20 ["IsExpanded"]
  GETTABLEKS R12 R2 K21 ["LayoutOrder"]
  SETTABLEKS R12 R11 K21 ["LayoutOrder"]
  GETTABLEKS R12 R2 K22 ["LogImpression"]
  SETTABLEKS R12 R11 K22 ["LogImpression"]
  GETTABLEKS R12 R2 K23 ["OnExpanded"]
  SETTABLEKS R12 R11 K23 ["OnExpanded"]
  GETTABLEKS R12 R2 K24 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R12 R11 K24 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R12 R2 K25 ["ParentAbsoluteSize"]
  SETTABLEKS R12 R11 K25 ["ParentAbsoluteSize"]
  GETTABLEKS R12 R2 K26 ["TryOpenAssetConfig"]
  SETTABLEKS R12 R11 K26 ["TryOpenAssetConfig"]
  CALL R10 1 -1
  RETURN R10 -1

PROTO_27:
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

PROTO_28:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_29:
  DUPTABLE R1 K1 [{"searchWithOptions"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["searchWithOptions"]
  RETURN R1 1

PROTO_30:
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
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R8 K18 ["LayoutOrderIterator"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K19 ["ContextServices"]
  GETTABLEKS R12 R11 K20 ["withContext"]
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K15 ["Core"]
  GETTABLEKS R15 R16 K21 ["Components"]
  GETTABLEKS R14 R15 K22 ["AssetLogicWrapper"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R18 R0 K15 ["Core"]
  GETTABLEKS R17 R18 K21 ["Components"]
  GETTABLEKS R16 R17 K23 ["Audio"]
  GETTABLEKS R15 R16 K24 ["AudioPlayer"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R19 R0 K15 ["Core"]
  GETTABLEKS R18 R19 K21 ["Components"]
  GETTABLEKS R17 R18 K23 ["Audio"]
  GETTABLEKS R16 R17 K25 ["AudioRowInsertButton"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R0 K15 ["Core"]
  GETTABLEKS R18 R19 K21 ["Components"]
  GETTABLEKS R17 R18 K26 ["DraggableButton"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R20 R0 K15 ["Core"]
  GETTABLEKS R19 R20 K27 ["Networking"]
  GETTABLEKS R18 R19 K28 ["NetworkInterface"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R0 K15 ["Core"]
  GETTABLEKS R20 R21 K29 ["Thunks"]
  GETTABLEKS R19 R20 K30 ["TryCreateContextMenu"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R0 K15 ["Core"]
  GETTABLEKS R21 R22 K29 ["Thunks"]
  GETTABLEKS R20 R21 K31 ["GetPageInfoAnalyticsContextInfo"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R24 R0 K15 ["Core"]
  GETTABLEKS R23 R24 K27 ["Networking"]
  GETTABLEKS R22 R23 K32 ["Requests"]
  GETTABLEKS R21 R22 K33 ["GetCanManageAssetRequest"]
  CALL R20 1 1
  GETIMPORT R21 K6 [require]
  GETTABLEKS R23 R8 K34 ["Analytics"]
  GETTABLEKS R22 R23 K35 ["AssetAnalyticsContextItem"]
  CALL R21 1 1
  GETIMPORT R22 K6 [require]
  GETTABLEKS R26 R0 K15 ["Core"]
  GETTABLEKS R25 R26 K27 ["Networking"]
  GETTABLEKS R24 R25 K32 ["Requests"]
  GETTABLEKS R23 R24 K36 ["SearchWithOptions"]
  CALL R22 1 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K15 ["Core"]
  GETTABLEKS R25 R26 K19 ["ContextServices"]
  GETTABLEKS R24 R25 K37 ["Settings"]
  CALL R23 1 1
  GETIMPORT R24 K6 [require]
  GETTABLEKS R27 R0 K15 ["Core"]
  GETTABLEKS R26 R27 K19 ["ContextServices"]
  GETTABLEKS R25 R26 K38 ["NetworkContext"]
  CALL R24 1 1
  GETIMPORT R25 K6 [require]
  GETTABLEKS R30 R0 K15 ["Core"]
  GETTABLEKS R29 R30 K21 ["Components"]
  GETTABLEKS R28 R29 K39 ["Asset"]
  GETTABLEKS R27 R28 K40 ["Preview"]
  GETTABLEKS R26 R27 K41 ["PopUpWrapperButton"]
  CALL R25 1 1
  GETIMPORT R26 K6 [require]
  GETTABLEKS R30 R0 K15 ["Core"]
  GETTABLEKS R29 R30 K21 ["Components"]
  GETTABLEKS R28 R29 K42 ["ItemRow"]
  GETTABLEKS R27 R28 K42 ["ItemRow"]
  CALL R26 1 1
  GETTABLEKS R28 R4 K11 ["UI"]
  GETTABLEKS R27 R28 K43 ["Pane"]
  GETIMPORT R28 K6 [require]
  GETTABLEKS R32 R0 K15 ["Core"]
  GETTABLEKS R31 R32 K21 ["Components"]
  GETTABLEKS R30 R31 K23 ["Audio"]
  GETTABLEKS R29 R30 K44 ["AudioRowExpandedContent"]
  CALL R28 1 1
  GETIMPORT R29 K6 [require]
  GETTABLEKS R32 R0 K15 ["Core"]
  GETTABLEKS R31 R32 K16 ["Util"]
  GETTABLEKS R30 R31 K45 ["Images"]
  CALL R29 1 1
  GETIMPORT R30 K6 [require]
  GETTABLEKS R31 R8 K46 ["ContextHelper"]
  CALL R30 1 1
  GETTABLEKS R31 R30 K47 ["withLocalization"]
  GETIMPORT R32 K6 [require]
  GETTABLEKS R35 R0 K15 ["Core"]
  GETTABLEKS R34 R35 K48 ["Models"]
  GETTABLEKS R33 R34 K49 ["AssetInfo"]
  CALL R32 1 1
  GETIMPORT R33 K6 [require]
  GETTABLEKS R36 R0 K15 ["Core"]
  GETTABLEKS R35 R36 K50 ["Types"]
  GETTABLEKS R34 R35 K51 ["Category"]
  CALL R33 1 1
  GETIMPORT R34 K6 [require]
  GETTABLEKS R38 R0 K15 ["Core"]
  GETTABLEKS R37 R38 K21 ["Components"]
  GETTABLEKS R36 R37 K23 ["Audio"]
  GETTABLEKS R35 R36 K52 ["GetAudioTableSizes"]
  CALL R34 1 1
  GETIMPORT R35 K6 [require]
  GETTABLEKS R39 R0 K15 ["Core"]
  GETTABLEKS R38 R39 K16 ["Util"]
  GETTABLEKS R37 R38 K53 ["SharedFlags"]
  GETTABLEKS R36 R37 K54 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
  CALL R35 1 1
  GETTABLEKS R36 R2 K55 ["PureComponent"]
  LOADK R38 K56 ["AudioRow"]
  NAMECALL R36 R36 K57 ["extend"]
  CALL R36 2 1
  DUPCLOSURE R37 K58 [PROTO_0]
  SETGLOBAL R37 K59 ["secondsToMinuteString"]
  DUPTABLE R37 K62 [{"Artist", "MusicAlbum"}]
  LOADK R38 K63 ["---"]
  SETTABLEKS R38 R37 K60 ["Artist"]
  LOADK R38 K63 ["---"]
  SETTABLEKS R38 R37 K61 ["MusicAlbum"]
  DUPCLOSURE R38 K64 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R37
  SETGLOBAL R38 K65 ["audioDetailsWithDefaults"]
  DUPCLOSURE R38 K66 [PROTO_22]
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R33
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R2
  CAPTURE VAL R29
  CAPTURE VAL R6
  CAPTURE VAL R28
  SETTABLEKS R38 R36 K67 ["init"]
  DUPCLOSURE R38 K68 [PROTO_23]
  SETTABLEKS R38 R36 K69 ["didUpdate"]
  DUPCLOSURE R38 K70 [PROTO_25]
  CAPTURE VAL R31
  SETTABLEKS R38 R36 K71 ["render"]
  DUPCLOSURE R38 K72 [PROTO_26]
  CAPTURE VAL R34
  CAPTURE VAL R26
  CAPTURE VAL R9
  SETTABLEKS R38 R36 K73 ["renderContent"]
  MOVE R38 R12
  DUPTABLE R39 K79 [{"AssetAnalytics", "Stylizer", "Localization", "Plugin", "Settings", "Network"}]
  SETTABLEKS R21 R39 K74 ["AssetAnalytics"]
  GETTABLEKS R40 R11 K75 ["Stylizer"]
  SETTABLEKS R40 R39 K75 ["Stylizer"]
  GETTABLEKS R40 R11 K76 ["Localization"]
  SETTABLEKS R40 R39 K76 ["Localization"]
  GETTABLEKS R40 R11 K77 ["Plugin"]
  SETTABLEKS R40 R39 K77 ["Plugin"]
  SETTABLEKS R23 R39 K37 ["Settings"]
  SETTABLEKS R24 R39 K78 ["Network"]
  CALL R38 1 1
  MOVE R39 R36
  CALL R38 1 1
  MOVE R36 R38
  DUPCLOSURE R38 K80 [PROTO_27]
  DUPCLOSURE R39 K81 [PROTO_29]
  CAPTURE VAL R22
  GETTABLEKS R40 R3 K82 ["connect"]
  MOVE R41 R38
  MOVE R42 R39
  CALL R40 2 1
  MOVE R41 R36
  CALL R40 1 1
  MOVE R36 R40
  MOVE R40 R7
  MOVE R41 R36
  CALL R40 1 1
  MOVE R36 R40
  NEWCLOSURE R40 P8
  CAPTURE VAL R2
  CAPTURE REF R36
  SETGLOBAL R40 K83 ["TypedAudioRow"]
  DUPTABLE R40 K86 [{"Component", "Generator"}]
  SETTABLEKS R36 R40 K84 ["Component"]
  GETGLOBAL R41 K83 ["TypedAudioRow"]
  SETTABLEKS R41 R40 K85 ["Generator"]
  CLOSEUPVALS R36
  RETURN R40 1
