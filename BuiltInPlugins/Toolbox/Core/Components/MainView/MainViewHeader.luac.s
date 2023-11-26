PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Network"]
  GETTABLEKS R0 R1 K2 ["networkInterface"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["Settings"]
  LOADK R3 K4 ["Plugin"]
  NAMECALL R1 R1 K5 ["get"]
  CALL R1 2 1
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+31]
  DUPTABLE R2 K12 [{"Creator", "AudioSearch", "includeUnverifiedCreators", "creatorTargetIds", "groupTargetIds", "uiSortIntent"}]
  LOADK R3 K13 [""]
  SETTABLEKS R3 R2 K6 ["Creator"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K14 ["None"]
  SETTABLEKS R3 R2 K7 ["AudioSearch"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["includeUnverifiedCreators"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K9 ["creatorTargetIds"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K10 ["groupTargetIds"]
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K14 ["None"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K11 ["uiSortIntent"]
  JUMP [+22]
  DUPTABLE R2 K15 [{"Creator", "AudioSearch", "includeUnverifiedCreators", "uiSortIntent"}]
  LOADK R3 K13 [""]
  SETTABLEKS R3 R2 K6 ["Creator"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K14 ["None"]
  SETTABLEKS R3 R2 K7 ["AudioSearch"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["includeUnverifiedCreators"]
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K14 ["None"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K11 ["uiSortIntent"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K16 ["searchWithOptions"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Network"]
  GETTABLEKS R0 R1 K2 ["networkInterface"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["Settings"]
  LOADK R3 K4 ["Plugin"]
  NAMECALL R1 R1 K5 ["get"]
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K6 ["includeUnverifiedCreators"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K7 ["searchWithOptions"]
  MOVE R4 R0
  MOVE R5 R1
  DUPTABLE R6 K11 [{"Creator", "AudioSearch", "AdditionalAudioSearch", "includeUnverifiedCreators"}]
  LOADK R7 K12 [""]
  SETTABLEKS R7 R6 K8 ["Creator"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K13 ["audioSearchInfo"]
  SETTABLEKS R7 R6 K9 ["AudioSearch"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K14 ["additionalAudioSearchInfo"]
  SETTABLEKS R7 R6 K10 ["AdditionalAudioSearch"]
  SETTABLEKS R2 R6 K6 ["includeUnverifiedCreators"]
  CALL R3 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Network"]
  GETTABLEKS R2 R3 K2 ["networkInterface"]
  GETTABLEKS R3 R1 K3 ["Settings"]
  LOADK R5 K4 ["Plugin"]
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 2 1
  GETTABLEKS R5 R0 K6 ["tagId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K8 [tostring]
  CALL R4 1 1
  GETTABLEKS R5 R1 K9 ["includeUnverifiedCreators"]
  GETUPVAL R6 1
  GETTABLEKS R7 R1 K10 ["creatorTargetIds"]
  CALL R6 1 1
  GETUPVAL R7 1
  GETTABLEKS R8 R1 K11 ["groupTargetIds"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K12 ["uiSortIntent"]
  LOADNIL R9
  SETTABLE R9 R6 R4
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["props"]
  GETTABLEKS R9 R10 K13 ["searchWithOptions"]
  MOVE R10 R2
  MOVE R11 R3
  DUPTABLE R12 K14 [{"creatorTargetIds", "groupTargetIds", "includeUnverifiedCreators", "uiSortIntent"}]
  SETTABLEKS R6 R12 K10 ["creatorTargetIds"]
  SETTABLEKS R7 R12 K11 ["groupTargetIds"]
  SETTABLEKS R5 R12 K9 ["includeUnverifiedCreators"]
  SETTABLEKS R8 R12 K12 ["uiSortIntent"]
  CALL R9 3 0
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Network"]
  GETTABLEKS R2 R3 K2 ["networkInterface"]
  GETTABLEKS R3 R1 K3 ["Settings"]
  LOADK R5 K4 ["Plugin"]
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 2 1
  GETTABLEKS R5 R0 K6 ["tagId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K8 [tostring]
  CALL R4 1 1
  GETTABLEKS R5 R1 K9 ["includeUnverifiedCreators"]
  GETUPVAL R6 1
  GETTABLEKS R7 R1 K10 ["creatorTargetIds"]
  CALL R6 1 1
  GETUPVAL R7 1
  GETTABLEKS R8 R1 K11 ["groupTargetIds"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K12 ["uiSortIntent"]
  LOADNIL R9
  SETTABLE R9 R7 R4
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["props"]
  GETTABLEKS R9 R10 K13 ["searchWithOptions"]
  MOVE R10 R2
  MOVE R11 R3
  DUPTABLE R12 K14 [{"creatorTargetIds", "groupTargetIds", "includeUnverifiedCreators", "uiSortIntent"}]
  SETTABLEKS R6 R12 K10 ["creatorTargetIds"]
  SETTABLEKS R7 R12 K11 ["groupTargetIds"]
  SETTABLEKS R5 R12 K9 ["includeUnverifiedCreators"]
  SETTABLEKS R8 R12 K12 ["uiSortIntent"]
  CALL R9 3 0
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["creator"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["includeUnverifiedCreators"]
  DUPTABLE R2 K6 [{"Creator", "AudioSearch", "AdditionalAudioSearch", "includeUnverifiedCreators"}]
  JUMPIFNOT R0 [+3]
  GETTABLEKS R3 R0 K7 ["Name"]
  JUMPIF R3 [+1]
  LOADK R3 K8 [""]
  SETTABLEKS R3 R2 K3 ["Creator"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K9 ["audioSearchInfo"]
  SETTABLEKS R3 R2 K4 ["AudioSearch"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K10 ["additionalAudioSearchInfo"]
  SETTABLEKS R3 R2 K5 ["AdditionalAudioSearch"]
  SETTABLEKS R1 R2 K2 ["includeUnverifiedCreators"]
  RETURN R2 1

PROTO_7:
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
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["createOptions"]
  CALL R3 0 1
  GETIMPORT R4 K8 [ipairs]
  MOVE R5 R0
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLEKS R9 R3 K9 ["AdditionalAudioSearch"]
  LOADNIL R10
  SETTABLE R10 R9 R8
  FORGLOOP R4 2 [inext] [-5]
  GETIMPORT R4 K11 [next]
  GETTABLEKS R5 R3 K9 ["AdditionalAudioSearch"]
  CALL R4 1 1
  JUMPIFNOTEQKNIL R4 [+4]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["AdditionalAudioSearch"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K12 ["searchWithOptions"]
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clearAdditionalAudioSearhByKeys"]
  NEWTABLE R1 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
  GETTABLEKS R2 R3 K2 ["ARTIST"]
  SETLIST R1 R2 1 [1]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clearAdditionalAudioSearhByKeys"]
  NEWTABLE R1 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
  GETTABLEKS R2 R3 K2 ["CATEGORIES"]
  SETLIST R1 R2 1 [1]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clearAdditionalAudioSearhByKeys"]
  NEWTABLE R1 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
  GETTABLEKS R2 R3 K2 ["GENRE"]
  SETLIST R1 R2 1 [1]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clearAdditionalAudioSearhByKeys"]
  NEWTABLE R1 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
  GETTABLEKS R2 R3 K2 ["ALBUM"]
  SETLIST R1 R2 1 [1]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Network"]
  GETTABLEKS R0 R1 K2 ["networkInterface"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["Settings"]
  LOADK R3 K4 ["Plugin"]
  NAMECALL R1 R1 K5 ["get"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["createOptions"]
  CALL R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["None"]
  SETTABLEKS R3 R2 K8 ["AudioSearch"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K9 ["searchWithOptions"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Network"]
  GETTABLEKS R0 R1 K2 ["networkInterface"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["Settings"]
  LOADK R3 K4 ["Plugin"]
  NAMECALL R1 R1 K5 ["get"]
  CALL R1 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K6 ["creator"]
  DUPTABLE R3 K10 [{"Creator", "AudioSearch", "includeUnverifiedCreators"}]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R4 R2 K11 ["Name"]
  JUMPIF R4 [+1]
  LOADK R4 K12 [""]
  SETTABLEKS R4 R3 K7 ["Creator"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K13 ["audioSearchInfo"]
  SETTABLEKS R4 R3 K8 ["AudioSearch"]
  LOADB R4 0
  SETTABLEKS R4 R3 K9 ["includeUnverifiedCreators"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K14 ["searchWithOptions"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R3
  CALL R4 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Network"]
  GETTABLEKS R0 R1 K2 ["networkInterface"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["Settings"]
  LOADK R3 K4 ["Plugin"]
  NAMECALL R1 R1 K5 ["get"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["createOptions"]
  CALL R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["None"]
  SETTABLEKS R3 R2 K8 ["uiSortIntent"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K9 ["searchWithOptions"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 0

PROTO_15:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K0 ["onTagsCleared"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onCreatorCleared"]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  JUMP [+1]
  DUPCLOSURE R1 K2 [PROTO_3]
  SETTABLEKS R1 R0 K3 ["onCreatorTargetIdRemoved"]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  JUMP [+1]
  DUPCLOSURE R1 K4 [PROTO_5]
  SETTABLEKS R1 R0 K5 ["onGroupTargetIdRemoved"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["createOptions"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["clearAdditionalAudioSearhByKeys"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K8 ["onAudioSearchArtistCleared"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K9 ["onAudioSearchCategoriesCleared"]
  NEWCLOSURE R1 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K10 ["onAudioSearchGenreCleared"]
  NEWCLOSURE R1 P11
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K11 ["onAudioSearchAlbumCleared"]
  NEWCLOSURE R1 P12
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K12 ["onAudioSearchCleared"]
  NEWCLOSURE R1 P13
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onIsVerifiedCleared"]
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+4]
  NEWCLOSURE R1 P14
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  JUMP [+1]
  LOADNIL R1
  SETTABLEKS R1 R0 K14 ["onSortIntentRemoved"]
  RETURN R0 0

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R4 R2 K2 ["searchTerm"]
  ORK R3 R4 K1 [""]
  GETTABLEKS R5 R2 K3 ["creatorFilter"]
  GETTABLEKS R4 R5 K4 ["Name"]
  GETTABLEKS R5 R2 K5 ["includeUnverifiedCreators"]
  GETUPVAL R7 1
  CALL R7 0 1
  JUMPIFNOT R7 [+3]
  GETTABLEKS R6 R2 K6 ["uiSortIntent"]
  JUMP [+1]
  LOADNIL R6
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R2 K7 ["sortDirection"]
  JUMP [+1]
  LOADNIL R7
  LOADNIL R8
  GETTABLEKS R9 R2 K8 ["audioSearchInfo"]
  JUMPIFNOT R9 [+19]
  GETTABLEKS R10 R9 K9 ["maxDuration"]
  JUMPIFNOT R10 [+16]
  GETTABLEKS R10 R9 K10 ["minDuration"]
  JUMPIFNOT R10 [+13]
  GETUPVAL R13 2
  GETTABLEKS R14 R9 K10 ["minDuration"]
  LOADNIL R15
  CALL R13 2 1
  MOVE R10 R13
  LOADK R11 K11 [" - "]
  GETUPVAL R12 2
  GETTABLEKS R13 R9 K9 ["maxDuration"]
  LOADNIL R14
  CALL R12 2 1
  CONCAT R8 R10 R12
  GETTABLEKS R11 R2 K13 ["containerWidth"]
  ORK R10 R11 K12 [0]
  GETUPVAL R12 3
  CALL R12 0 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R2 K14 ["headerHeight"]
  JUMP [+1]
  LOADN R11 0
  NEWTABLE R12 2 0
  GETTABLEKS R13 R2 K15 ["showTags"]
  JUMPIFNOT R13 [+536]
  GETUPVAL R14 3
  CALL R14 0 1
  JUMPIFNOT R14 [+1]
  JUMP [+4]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K16 ["SEARCH_TERMS_HEIGHT"]
  ADD R11 R11 R14
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K0 ["props"]
  GETTABLEKS R14 R15 K17 ["Localization"]
  LOADK R16 K18 ["General"]
  LOADK R17 K19 ["SearchTagCreator"]
  NAMECALL R14 R14 K20 ["getText"]
  CALL R14 3 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K0 ["props"]
  GETTABLEKS R15 R16 K17 ["Localization"]
  LOADK R17 K18 ["General"]
  LOADK R18 K21 ["SearchTagLength"]
  NAMECALL R15 R15 K20 ["getText"]
  CALL R15 3 1
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K0 ["props"]
  GETTABLEKS R16 R17 K17 ["Localization"]
  LOADK R18 K18 ["General"]
  LOADK R19 K22 ["SearchTagIdUnverified"]
  NAMECALL R16 R16 K20 ["getText"]
  CALL R16 3 1
  NEWTABLE R17 0 0
  JUMPIFNOT R4 [+16]
  DUPTABLE R20 K26 [{"prefix", "text", "onDelete"}]
  SETTABLEKS R14 R20 K23 ["prefix"]
  SETTABLEKS R4 R20 K24 ["text"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K27 ["onCreatorCleared"]
  SETTABLEKS R21 R20 K25 ["onDelete"]
  FASTCALL2 TABLE_INSERT R17 R20 [+4]
  MOVE R19 R17
  GETIMPORT R18 K30 [table.insert]
  CALL R18 2 0
  GETUPVAL R18 5
  CALL R18 0 1
  JUMPIFNOT R18 [+36]
  GETIMPORT R18 K32 [next]
  GETTABLEKS R19 R2 K33 ["creatorTargetIds"]
  CALL R18 1 1
  JUMPIFNOT R18 [+30]
  GETIMPORT R18 K35 [pairs]
  GETTABLEKS R19 R2 K33 ["creatorTargetIds"]
  CALL R18 1 3
  FORGPREP_NEXT R18
  DUPTABLE R25 K37 [{"prefix", "text", "onDelete", "tagId"}]
  SETTABLEKS R14 R25 K23 ["prefix"]
  GETTABLEKS R26 R22 K4 ["Name"]
  SETTABLEKS R26 R25 K24 ["text"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K38 ["onCreatorTargetIdRemoved"]
  SETTABLEKS R26 R25 K25 ["onDelete"]
  GETTABLEKS R26 R22 K39 ["Id"]
  SETTABLEKS R26 R25 K36 ["tagId"]
  FASTCALL2 TABLE_INSERT R17 R25 [+4]
  MOVE R24 R17
  GETIMPORT R23 K30 [table.insert]
  CALL R23 2 0
  FORGLOOP R18 2 [-23]
  GETUPVAL R18 5
  CALL R18 0 1
  JUMPIFNOT R18 [+36]
  GETIMPORT R18 K32 [next]
  GETTABLEKS R19 R2 K40 ["groupTargetIds"]
  CALL R18 1 1
  JUMPIFNOT R18 [+30]
  GETIMPORT R18 K35 [pairs]
  GETTABLEKS R19 R2 K40 ["groupTargetIds"]
  CALL R18 1 3
  FORGPREP_NEXT R18
  DUPTABLE R25 K37 [{"prefix", "text", "onDelete", "tagId"}]
  SETTABLEKS R14 R25 K23 ["prefix"]
  GETTABLEKS R26 R22 K4 ["Name"]
  SETTABLEKS R26 R25 K24 ["text"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K41 ["onGroupTargetIdRemoved"]
  SETTABLEKS R26 R25 K25 ["onDelete"]
  GETTABLEKS R26 R22 K39 ["Id"]
  SETTABLEKS R26 R25 K36 ["tagId"]
  FASTCALL2 TABLE_INSERT R17 R25 [+4]
  MOVE R24 R17
  GETIMPORT R23 K30 [table.insert]
  CALL R23 2 0
  FORGLOOP R18 2 [-23]
  JUMPIFNOT R8 [+16]
  DUPTABLE R20 K26 [{"prefix", "text", "onDelete"}]
  SETTABLEKS R15 R20 K23 ["prefix"]
  SETTABLEKS R8 R20 K24 ["text"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K42 ["onAudioSearchCleared"]
  SETTABLEKS R21 R20 K25 ["onDelete"]
  FASTCALL2 TABLE_INSERT R17 R20 [+4]
  MOVE R19 R17
  GETIMPORT R18 K30 [table.insert]
  CALL R18 2 0
  GETTABLEKS R18 R2 K43 ["additionalAudioSearchInfo"]
  JUMPIF R18 [+2]
  NEWTABLE R18 0 0
  GETTABLEKS R19 R18 K44 ["artist"]
  JUMPIFNOT R19 [+31]
  DUPTABLE R21 K26 [{"prefix", "text", "onDelete"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K0 ["props"]
  GETTABLEKS R25 R26 K17 ["Localization"]
  LOADK R27 K45 ["AudioView"]
  LOADK R28 K46 ["Artist"]
  NAMECALL R25 R25 K20 ["getText"]
  CALL R25 3 1
  MOVE R23 R25
  LOADK R24 K47 [":"]
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K23 ["prefix"]
  GETTABLEKS R22 R18 K44 ["artist"]
  SETTABLEKS R22 R21 K24 ["text"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K48 ["onAudioSearchArtistCleared"]
  SETTABLEKS R22 R21 K25 ["onDelete"]
  FASTCALL2 TABLE_INSERT R17 R21 [+4]
  MOVE R20 R17
  GETIMPORT R19 K30 [table.insert]
  CALL R19 2 0
  GETTABLEKS R19 R18 K49 ["categories"]
  JUMPIFNOT R19 [+59]
  NEWTABLE R19 0 0
  GETIMPORT R20 K51 [ipairs]
  GETTABLEKS R21 R18 K49 ["categories"]
  CALL R20 1 3
  FORGPREP_INEXT R20
  MOVE R26 R19
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K0 ["props"]
  GETTABLEKS R27 R28 K17 ["Localization"]
  LOADK R29 K52 ["Audio.SoundEffect.Category"]
  MOVE R30 R24
  NAMECALL R27 R27 K20 ["getText"]
  CALL R27 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R25 K30 [table.insert]
  CALL R25 -1 0
  FORGLOOP R20 2 [inext] [-16]
  DUPTABLE R22 K26 [{"prefix", "text", "onDelete"}]
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K0 ["props"]
  GETTABLEKS R26 R27 K17 ["Localization"]
  LOADK R28 K45 ["AudioView"]
  LOADK R29 K53 ["Category"]
  NAMECALL R26 R26 K20 ["getText"]
  CALL R26 3 1
  MOVE R24 R26
  LOADK R25 K47 [":"]
  CONCAT R23 R24 R25
  SETTABLEKS R23 R22 K23 ["prefix"]
  GETIMPORT R23 K55 [table.concat]
  MOVE R24 R19
  LOADK R25 K11 [" - "]
  CALL R23 2 1
  SETTABLEKS R23 R22 K24 ["text"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K56 ["onAudioSearchCategoriesCleared"]
  SETTABLEKS R23 R22 K25 ["onDelete"]
  FASTCALL2 TABLE_INSERT R17 R22 [+4]
  MOVE R21 R17
  GETIMPORT R20 K30 [table.insert]
  CALL R20 2 0
  GETTABLEKS R19 R18 K57 ["genre"]
  JUMPIFNOT R19 [+40]
  DUPTABLE R21 K26 [{"prefix", "text", "onDelete"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K0 ["props"]
  GETTABLEKS R25 R26 K17 ["Localization"]
  LOADK R27 K18 ["General"]
  LOADK R28 K58 ["Genre"]
  NAMECALL R25 R25 K20 ["getText"]
  CALL R25 3 1
  MOVE R23 R25
  LOADK R24 K47 [":"]
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K23 ["prefix"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K0 ["props"]
  GETTABLEKS R22 R23 K17 ["Localization"]
  LOADK R24 K59 ["Audio.Music.Genre"]
  GETTABLEKS R25 R18 K57 ["genre"]
  NAMECALL R22 R22 K20 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K24 ["text"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K60 ["onAudioSearchGenreCleared"]
  SETTABLEKS R22 R21 K25 ["onDelete"]
  FASTCALL2 TABLE_INSERT R17 R21 [+4]
  MOVE R20 R17
  GETIMPORT R19 K30 [table.insert]
  CALL R19 2 0
  GETTABLEKS R19 R18 K61 ["album"]
  JUMPIFNOT R19 [+31]
  DUPTABLE R21 K26 [{"prefix", "text", "onDelete"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K0 ["props"]
  GETTABLEKS R25 R26 K17 ["Localization"]
  LOADK R27 K45 ["AudioView"]
  LOADK R28 K62 ["Album"]
  NAMECALL R25 R25 K20 ["getText"]
  CALL R25 3 1
  MOVE R23 R25
  LOADK R24 K47 [":"]
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K23 ["prefix"]
  GETTABLEKS R22 R18 K61 ["album"]
  SETTABLEKS R22 R21 K24 ["text"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K63 ["onAudioSearchAlbumCleared"]
  SETTABLEKS R22 R21 K25 ["onDelete"]
  FASTCALL2 TABLE_INSERT R17 R21 [+4]
  MOVE R20 R17
  GETIMPORT R19 K30 [table.insert]
  CALL R19 2 0
  GETUPVAL R19 1
  CALL R19 0 1
  JUMPIFNOT R19 [+63]
  JUMPIFNOT R6 [+62]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K0 ["props"]
  GETTABLEKS R19 R20 K17 ["Localization"]
  LOADK R21 K64 ["UiSortIntent"]
  MOVE R22 R6
  NAMECALL R19 R19 K20 ["getText"]
  CALL R19 3 1
  JUMPIFNOT R7 [+11]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K0 ["props"]
  GETTABLEKS R20 R21 K17 ["Localization"]
  LOADK R22 K65 ["SortDirection"]
  MOVE R23 R7
  NAMECALL R20 R20 K20 ["getText"]
  CALL R20 3 1
  JUMP [+1]
  LOADNIL R20
  DUPTABLE R23 K26 [{"prefix", "text", "onDelete"}]
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K0 ["props"]
  GETTABLEKS R27 R28 K17 ["Localization"]
  LOADK R29 K18 ["General"]
  LOADK R30 K66 ["SearchOptionSort"]
  NAMECALL R27 R27 K20 ["getText"]
  CALL R27 3 1
  MOVE R25 R27
  LOADK R26 K47 [":"]
  CONCAT R24 R25 R26
  SETTABLEKS R24 R23 K23 ["prefix"]
  JUMPIFNOT R20 [+8]
  LOADK R25 K67 ["%*, %*"]
  MOVE R27 R19
  MOVE R28 R20
  NAMECALL R25 R25 K68 ["format"]
  CALL R25 3 1
  MOVE R24 R25
  JUMP [+1]
  MOVE R24 R19
  SETTABLEKS R24 R23 K24 ["text"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K69 ["onSortIntentRemoved"]
  SETTABLEKS R24 R23 K25 ["onDelete"]
  FASTCALL2 TABLE_INSERT R17 R23 [+4]
  MOVE R22 R17
  GETIMPORT R21 K30 [table.insert]
  CALL R21 2 0
  MOVE R19 R5
  JUMPIF R19 [+3]
  MOVE R19 R4
  JUMPIF R19 [+1]
  MOVE R19 R8
  JUMPIFNOT R19 [+17]
  DUPTABLE R22 K26 [{"prefix", "text", "onDelete"}]
  SETTABLEKS R16 R22 K23 ["prefix"]
  LOADK R23 K1 [""]
  SETTABLEKS R23 R22 K24 ["text"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K70 ["onIsVerifiedCleared"]
  SETTABLEKS R23 R22 K25 ["onDelete"]
  FASTCALL2 TABLE_INSERT R17 R22 [+4]
  MOVE R21 R17
  GETIMPORT R20 K30 [table.insert]
  CALL R20 2 0
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K71 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K77 [{"Tags", "onClearTags", "searchTerm", "categoryName", "onBackToHome", "LayoutOrder"}]
  SETTABLEKS R17 R22 K72 ["Tags"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K78 ["onTagsCleared"]
  SETTABLEKS R23 R22 K73 ["onClearTags"]
  SETTABLEKS R3 R22 K2 ["searchTerm"]
  GETTABLEKS R23 R2 K74 ["categoryName"]
  SETTABLEKS R23 R22 K74 ["categoryName"]
  GETTABLEKS R23 R2 K75 ["onBackToHome"]
  SETTABLEKS R23 R22 K75 ["onBackToHome"]
  LOADN R23 1
  SETTABLEKS R23 R22 K76 ["LayoutOrder"]
  CALL R20 2 1
  SETTABLEKS R20 R12 K79 ["SearchTags"]
  GETUPVAL R21 3
  CALL R21 0 1
  JUMPIFNOT R21 [+17]
  LOADB R20 0
  GETTABLEKS R21 R2 K80 ["correctionState"]
  GETUPVAL R24 8
  GETTABLEKS R23 R24 K81 ["AutocorrectResponseState"]
  GETTABLEKS R22 R23 K82 ["CorrectionAvailable"]
  JUMPIFNOTEQ R21 R22 [+9]
  GETTABLEKS R21 R2 K83 ["correctedQuery"]
  JUMPIFNOTEQKS R21 K1 [""] [+2]
  LOADB R20 0 +1
  LOADB R20 1
  JUMP [+1]
  LOADNIL R20
  GETUPVAL R22 3
  CALL R22 0 1
  JUMPIFNOT R22 [+17]
  LOADB R21 0
  GETTABLEKS R22 R2 K80 ["correctionState"]
  GETUPVAL R25 8
  GETTABLEKS R24 R25 K81 ["AutocorrectResponseState"]
  GETTABLEKS R23 R24 K84 ["CorrectionAccepted"]
  JUMPIFNOTEQ R22 R23 [+9]
  GETTABLEKS R22 R2 K85 ["userQuery"]
  JUMPIFNOTEQKS R22 K1 [""] [+2]
  LOADB R21 0 +1
  LOADB R21 1
  JUMP [+1]
  LOADNIL R21
  GETUPVAL R22 3
  CALL R22 0 1
  JUMPIFNOT R22 [+1]
  OR R22 R20 R21
  GETUPVAL R23 3
  CALL R23 0 1
  JUMPIFNOT R23 [+12]
  GETIMPORT R23 K32 [next]
  MOVE R24 R17
  CALL R23 1 1
  JUMPIFEQKNIL R23 [+7]
  JUMPIF R22 [+5]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K86 ["MAIN_VIEW_VERTICAL_PADDING"]
  ADD R11 R11 R23
  JUMP [0]
  JUMPIFNOT R22 [+24]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K71 ["createElement"]
  GETUPVAL R24 9
  DUPTABLE R25 K91 [{"CorrectedQuery", "CorrectionState", "CurrentQuery", "LayoutOrder", "UserQuery"}]
  GETTABLEKS R26 R2 K83 ["correctedQuery"]
  SETTABLEKS R26 R25 K87 ["CorrectedQuery"]
  GETTABLEKS R26 R2 K80 ["correctionState"]
  SETTABLEKS R26 R25 K88 ["CorrectionState"]
  SETTABLEKS R3 R25 K89 ["CurrentQuery"]
  LOADN R26 2
  SETTABLEKS R26 R25 K76 ["LayoutOrder"]
  GETTABLEKS R26 R2 K85 ["userQuery"]
  SETTABLEKS R26 R25 K90 ["UserQuery"]
  CALL R23 2 1
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R12 K92 ["Autocorrect"]
  GETUPVAL R14 3
  CALL R14 0 1
  JUMPIFNOT R14 [+1]
  JUMP [+10]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K93 ["MAIN_VIEW_NO_HEADER_HEIGHT"]
  FASTCALL2 MATH_MAX R11 R16 [+4]
  MOVE R15 R11
  GETIMPORT R14 K96 [math.max]
  CALL R14 2 1
  MOVE R11 R14
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K71 ["createElement"]
  GETUPVAL R16 3
  CALL R16 0 1
  JUMPIFNOT R16 [+2]
  GETUPVAL R15 10
  JUMP [+1]
  LOADK R15 K97 ["Frame"]
  DUPTABLE R16 K105 [{"Position", "Size", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment", "ZIndex"}]
  GETIMPORT R17 K108 [UDim2.new]
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  LOADN R21 254
  CALL R17 4 1
  SETTABLEKS R17 R16 K98 ["Position"]
  GETIMPORT R17 K108 [UDim2.new]
  LOADN R18 0
  MOVE R19 R10
  LOADN R20 0
  MOVE R21 R11
  CALL R17 4 1
  SETTABLEKS R17 R16 K99 ["Size"]
  LOADN R17 1
  SETTABLEKS R17 R16 K100 ["BackgroundTransparency"]
  GETUPVAL R18 3
  CALL R18 0 1
  JUMPIFNOT R18 [+3]
  GETIMPORT R17 K111 [Enum.HorizontalAlignment.Left]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K101 ["HorizontalAlignment"]
  GETUPVAL R18 3
  CALL R18 0 1
  JUMPIFNOT R18 [+3]
  GETIMPORT R17 K114 [Enum.FillDirection.Vertical]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K102 ["Layout"]
  GETUPVAL R18 3
  CALL R18 0 1
  JUMPIFNOT R18 [+3]
  GETIMPORT R17 K116 [Enum.VerticalAlignment.Top]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K103 ["VerticalAlignment"]
  LOADN R17 2
  SETTABLEKS R17 R16 K104 ["ZIndex"]
  MOVE R17 R12
  CALL R14 3 -1
  RETURN R14 -1

PROTO_17:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CALL R1 1 -1
  RETURN R1 -1

PROTO_18:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  GETTABLEKS R2 R0 K0 ["pageInfo"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETTABLEKS R4 R2 K1 ["creatorTargetIds"]
  JUMPIFNOT R4 [+10]
  GETTABLEKS R4 R2 K1 ["creatorTargetIds"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["None"]
  JUMPIFEQ R4 R5 [+4]
  GETTABLEKS R3 R2 K1 ["creatorTargetIds"]
  JUMP [+2]
  NEWTABLE R3 0 0
  GETTABLEKS R5 R2 K3 ["groupTargetIds"]
  JUMPIFNOT R5 [+10]
  GETTABLEKS R5 R2 K3 ["groupTargetIds"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["None"]
  JUMPIFEQ R5 R6 [+4]
  GETTABLEKS R4 R2 K3 ["groupTargetIds"]
  JUMP [+2]
  NEWTABLE R4 0 0
  GETTABLEKS R6 R2 K4 ["uiSortIntent"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R6 R2 K4 ["uiSortIntent"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["None"]
  JUMPIFEQ R6 R7 [+4]
  GETTABLEKS R5 R2 K4 ["uiSortIntent"]
  JUMP [+1]
  LOADNIL R5
  GETTABLEKS R7 R2 K5 ["sortDirection"]
  JUMPIFNOT R7 [+10]
  GETTABLEKS R7 R2 K5 ["sortDirection"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["None"]
  JUMPIFEQ R7 R8 [+4]
  GETTABLEKS R6 R2 K5 ["sortDirection"]
  JUMP [+1]
  LOADNIL R6
  DUPTABLE R7 K16 [{"audioSearchInfo", "additionalAudioSearchInfo", "creator", "categoryName", "searchTerm", "includeUnverifiedCreators", "creatorFilter", "creatorTargetIds", "groupTargetIds", "uiSortIntent", "sortDirection", "correctionState", "correctedQuery", "userQuery"}]
  GETTABLEKS R8 R2 K6 ["audioSearchInfo"]
  SETTABLEKS R8 R7 K6 ["audioSearchInfo"]
  GETTABLEKS R8 R2 K7 ["additionalAudioSearchInfo"]
  SETTABLEKS R8 R7 K7 ["additionalAudioSearchInfo"]
  GETTABLEKS R8 R2 K8 ["creator"]
  SETTABLEKS R8 R7 K8 ["creator"]
  GETTABLEKS R8 R2 K9 ["categoryName"]
  JUMPIF R8 [+5]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K17 ["DEFAULT"]
  GETTABLEKS R8 R9 K18 ["name"]
  SETTABLEKS R8 R7 K9 ["categoryName"]
  GETTABLEKS R9 R2 K10 ["searchTerm"]
  ORK R8 R9 K19 [""]
  SETTABLEKS R8 R7 K10 ["searchTerm"]
  GETTABLEKS R8 R2 K11 ["includeUnverifiedCreators"]
  SETTABLEKS R8 R7 K11 ["includeUnverifiedCreators"]
  GETTABLEKS R8 R2 K8 ["creator"]
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K12 ["creatorFilter"]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  MOVE R8 R3
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K1 ["creatorTargetIds"]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  MOVE R8 R4
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K3 ["groupTargetIds"]
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  MOVE R8 R5
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K4 ["uiSortIntent"]
  GETUPVAL R9 3
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  MOVE R8 R6
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K5 ["sortDirection"]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  GETTABLEKS R8 R2 K13 ["correctionState"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K13 ["correctionState"]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  GETTABLEKS R8 R2 K14 ["correctedQuery"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K14 ["correctedQuery"]
  GETUPVAL R9 4
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  GETTABLEKS R8 R2 K15 ["userQuery"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K15 ["userQuery"]
  RETURN R7 1

PROTO_19:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_20:
  DUPTABLE R1 K1 [{"searchWithOptions"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["searchWithOptions"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K8 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K10 ["Util"]
  GETTABLEKS R6 R7 K11 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Core"]
  GETTABLEKS R8 R9 K10 ["Util"]
  GETTABLEKS R7 R8 K12 ["ContextHelper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Core"]
  GETTABLEKS R9 R10 K10 ["Util"]
  GETTABLEKS R8 R9 K13 ["getTimeString"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Core"]
  GETTABLEKS R10 R11 K14 ["ContextServices"]
  GETTABLEKS R9 R10 K15 ["Settings"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Core"]
  GETTABLEKS R11 R12 K16 ["Types"]
  GETTABLEKS R10 R11 K17 ["Category"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Core"]
  GETTABLEKS R12 R13 K16 ["Types"]
  GETTABLEKS R11 R12 K18 ["AutocorrectTypes"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K14 ["ContextServices"]
  GETTABLEKS R12 R11 K19 ["withContext"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K9 ["Core"]
  GETTABLEKS R15 R16 K14 ["ContextServices"]
  GETTABLEKS R14 R15 K20 ["NetworkContext"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R1 K21 ["Cryo"]
  CALL R14 1 1
  GETTABLEKS R16 R4 K10 ["Util"]
  GETTABLEKS R15 R16 K22 ["deepCopy"]
  GETTABLEKS R17 R4 K23 ["UI"]
  GETTABLEKS R16 R17 K24 ["Pane"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R21 R0 K9 ["Core"]
  GETTABLEKS R20 R21 K25 ["Components"]
  GETTABLEKS R19 R20 K26 ["Autocorrect"]
  GETTABLEKS R18 R19 K26 ["Autocorrect"]
  CALL R17 1 1
  GETTABLEKS R18 R6 K27 ["withLocalization"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R23 R0 K9 ["Core"]
  GETTABLEKS R22 R23 K28 ["Networking"]
  GETTABLEKS R21 R22 K29 ["Requests"]
  GETTABLEKS R20 R21 K30 ["SearchWithOptions"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R24 R0 K9 ["Core"]
  GETTABLEKS R23 R24 K10 ["Util"]
  GETTABLEKS R22 R23 K31 ["SharedFlags"]
  GETTABLEKS R21 R22 K32 ["getFFlagToolboxAddAutocorrect"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R25 R0 K9 ["Core"]
  GETTABLEKS R24 R25 K10 ["Util"]
  GETTABLEKS R23 R24 K31 ["SharedFlags"]
  GETTABLEKS R22 R23 K33 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R26 R0 K9 ["Core"]
  GETTABLEKS R25 R26 K10 ["Util"]
  GETTABLEKS R24 R25 K31 ["SharedFlags"]
  GETTABLEKS R23 R24 K34 ["getFFlagToolboxAddSortIntentFiltering"]
  CALL R22 1 1
  GETTABLEKS R23 R2 K35 ["PureComponent"]
  LOADK R25 K36 ["MainViewHeader"]
  NAMECALL R23 R23 K37 ["extend"]
  CALL R23 2 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R28 R0 K9 ["Core"]
  GETTABLEKS R27 R28 K25 ["Components"]
  GETTABLEKS R26 R27 K38 ["SearchOptions"]
  GETTABLEKS R25 R26 K39 ["SearchTags"]
  CALL R24 1 1
  DUPCLOSURE R25 K40 [PROTO_15]
  CAPTURE VAL R21
  CAPTURE VAL R14
  CAPTURE VAL R22
  CAPTURE VAL R15
  CAPTURE VAL R5
  SETTABLEKS R25 R23 K41 ["init"]
  DUPCLOSURE R25 K42 [PROTO_17]
  CAPTURE VAL R18
  CAPTURE VAL R22
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R21
  CAPTURE VAL R2
  CAPTURE VAL R24
  CAPTURE VAL R10
  CAPTURE VAL R17
  CAPTURE VAL R16
  SETTABLEKS R25 R23 K43 ["render"]
  MOVE R25 R12
  DUPTABLE R26 K46 [{"Localization", "Settings", "Network"}]
  GETTABLEKS R27 R11 K44 ["Localization"]
  SETTABLEKS R27 R26 K44 ["Localization"]
  SETTABLEKS R8 R26 K15 ["Settings"]
  SETTABLEKS R13 R26 K45 ["Network"]
  CALL R25 1 1
  MOVE R26 R23
  CALL R25 1 1
  MOVE R23 R25
  DUPCLOSURE R25 K47 [PROTO_18]
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R20
  DUPCLOSURE R26 K48 [PROTO_20]
  CAPTURE VAL R19
  GETTABLEKS R27 R3 K49 ["connect"]
  MOVE R28 R25
  MOVE R29 R26
  CALL R27 2 1
  MOVE R28 R23
  CALL R27 1 -1
  RETURN R27 -1
