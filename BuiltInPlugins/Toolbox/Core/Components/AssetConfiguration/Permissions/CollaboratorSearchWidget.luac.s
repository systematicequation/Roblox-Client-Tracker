PROTO_0:
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["SubjectNameKey"]
  GETTABLE R8 R7 R9
  NAMECALL R8 R8 K3 ["lower"]
  CALL R8 1 1
  NAMECALL R10 R0 K3 ["lower"]
  CALL R10 1 1
  LOADN R11 1
  LOADB R12 1
  NAMECALL R8 R8 K4 ["find"]
  CALL R8 4 1
  JUMPIFNOT R8 [+7]
  FASTCALL2 TABLE_INSERT R2 R7 [+5]
  MOVE R9 R2
  MOVE R10 R7
  GETIMPORT R8 K7 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-24]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["localUserFriends"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["SubjectNameKey"]
  GETTABLE R4 R0 R5
  NAMECALL R4 R4 K1 ["lower"]
  CALL R4 1 1
  MOVE R2 R4
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["SubjectNameKey"]
  GETTABLE R3 R1 R4
  NAMECALL R3 R3 K1 ["lower"]
  CALL R3 1 1
  JUMPIFNOTEQ R2 R3 [+3]
  LOADB R4 0
  RETURN R4 1
  GETUPVAL R4 1
  NAMECALL R4 R4 K1 ["lower"]
  CALL R4 1 1
  JUMPIFNOTEQ R2 R4 [+3]
  LOADB R4 1
  RETURN R4 1
  GETUPVAL R4 1
  NAMECALL R4 R4 K1 ["lower"]
  CALL R4 1 1
  JUMPIFNOTEQ R3 R4 [+3]
  LOADB R4 0
  RETURN R4 1
  JUMPIFLT R2 R3 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  RETURN R4 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["cachedSearchResults"]
  GETTABLEKS R4 R0 K1 ["searchText"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R4
  DUPTABLE R6 K3 [{"Users"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K2 ["Users"]
  NEWTABLE R7 0 0
  NEWTABLE R8 0 0
  GETTABLEKS R11 R0 K4 ["localUserFriends"]
  FASTCALL1 TYPEOF R11 [+2]
  GETIMPORT R10 K6 [typeof]
  CALL R10 1 1
  JUMPIFNOTEQKS R10 K7 ["table"] [+7]
  GETUPVAL R9 1
  MOVE R10 R4
  GETTABLEKS R11 R0 K4 ["localUserFriends"]
  CALL R9 2 1
  JUMPIF R9 [+2]
  NEWTABLE R9 0 0
  GETIMPORT R10 K9 [table.sort]
  MOVE R11 R9
  MOVE R12 R5
  CALL R10 2 0
  LOADB R10 0
  LENGTH R11 R7
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+16]
  GETTABLEN R12 R7 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K10 ["SubjectNameKey"]
  GETTABLE R11 R12 R13
  NAMECALL R11 R11 K11 ["lower"]
  CALL R11 1 1
  NAMECALL R12 R4 K11 ["lower"]
  CALL R12 1 1
  JUMPIFEQ R11 R12 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIFNOT R10 [+2]
  LOADN R12 1
  JUMP [+1]
  LOADN R12 2
  LENGTH R14 R8
  ADDK R13 R14 K12 [1]
  FASTCALL2 MATH_MIN R12 R13 [+3]
  GETIMPORT R11 K15 [math.min]
  CALL R11 2 1
  GETIMPORT R12 K17 [pairs]
  MOVE R13 R9
  CALL R12 1 3
  FORGPREP_NEXT R12
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K18 ["SubjectIdKey"]
  GETTABLE R17 R16 R18
  JUMPIFNOT R1 [+20]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K19 ["UserSubjectKey"]
  GETTABLE R19 R1 R20
  GETTABLE R18 R19 R17
  JUMPIFNOT R18 [+14]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K19 ["UserSubjectKey"]
  GETTABLE R20 R1 R21
  GETTABLE R19 R20 R17
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K20 ["ActionKey"]
  GETTABLE R18 R19 R20
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K21 ["NoAccessKey"]
  JUMPIFNOTEQ R18 R19 [+11]
  GETTABLE R18 R7 R17
  JUMPIF R18 [+8]
  MOVE R19 R8
  MOVE R20 R11
  MOVE R21 R16
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R18 K23 [table.insert]
  CALL R18 3 0
  ADDK R11 R11 K12 [1]
  FORGLOOP R12 2 [-36]
  SETTABLEKS R8 R6 K2 ["Users"]
  RETURN R6 1

PROTO_4:
  LOADNIL R3
  JUMPIFNOTEQKS R0 K0 [""] [+4]
  NEWTABLE R4 0 0
  RETURN R4 1
  DUPTABLE R4 K2 [{"Users"}]
  DUPTABLE R5 K4 [{"LayoutOrder"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K3 ["LayoutOrder"]
  SETTABLEKS R5 R4 K1 ["Users"]
  MOVE R3 R4
  GETIMPORT R4 K6 [pairs]
  GETTABLEKS R5 R1 K1 ["Users"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R11 R3 K1 ["Users"]
  LENGTH R10 R11
  ADDK R9 R10 K7 [1]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["MaxSearchResultsPerSubjectType"]
  JUMPIFLT R10 R9 [+77]
  GETTABLEKS R10 R3 K1 ["Users"]
  DUPTABLE R11 K12 [{"Icon", "Name", "Key"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K17 [{"Image", "Size", "UseMask"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K18 ["constructRBXThumbUrl"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K20 ["rbxThumbTypes"]
  GETTABLEKS R16 R17 K19 ["AvatarHeadShot"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K21 ["SubjectIdKey"]
  GETTABLE R17 R8 R18
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K22 ["rbxThumbSizes"]
  GETTABLEKS R18 R19 K23 ["AvatarHeadshotImageSize"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K14 ["Image"]
  GETIMPORT R15 K26 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K15 ["Size"]
  LOADB R15 1
  SETTABLEKS R15 R14 K16 ["UseMask"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K9 ["Icon"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K27 ["SubjectNameKey"]
  GETTABLE R12 R8 R13
  SETTABLEKS R12 R11 K10 ["Name"]
  DUPTABLE R12 K30 [{"Type", "Id", "Name"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K31 ["UserSubjectKey"]
  SETTABLEKS R13 R12 K28 ["Type"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K21 ["SubjectIdKey"]
  GETTABLE R13 R8 R14
  SETTABLEKS R13 R12 K29 ["Id"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K27 ["SubjectNameKey"]
  GETTABLE R13 R8 R14
  SETTABLEKS R13 R12 K10 ["Name"]
  SETTABLEKS R12 R11 K11 ["Key"]
  FASTCALL2 TABLE_INSERT R10 R11 [+3]
  GETIMPORT R9 K34 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-84]
  NEWTABLE R4 1 0
  LOADK R7 K35 ["AssetConfigPackagePermissions"]
  LOADK R8 K36 ["UsersCollaboratorType"]
  NAMECALL R5 R2 K37 ["getText"]
  CALL R5 3 1
  GETTABLEKS R8 R3 K1 ["Users"]
  LENGTH R7 R8
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+4]
  GETTABLEKS R6 R3 K1 ["Users"]
  JUMP [+1]
  LOADNIL R6
  SETTABLE R6 R4 R5
  MOVE R3 R4
  RETURN R3 1

PROTO_5:
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 4 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  LOADNIL R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["UserSubjectKey"]
  JUMPIFNOTEQ R0 R5 [+42]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["Dictionary"]
  GETTABLEKS R5 R6 K2 ["join"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["Permissions"]
  NEWTABLE R7 1 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K1 ["Dictionary"]
  GETTABLEKS R8 R9 K2 ["join"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K3 ["Permissions"]
  GETTABLE R9 R10 R0
  NEWTABLE R10 1 0
  NEWTABLE R11 4 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["SubjectNameKey"]
  SETTABLE R2 R11 R12
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["SubjectIdKey"]
  SETTABLE R1 R11 R12
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["ActionKey"]
  SETTABLE R3 R11 R12
  SETTABLE R11 R10 R1
  CALL R8 2 1
  SETTABLE R8 R7 R0
  CALL R5 2 1
  MOVE R4 R5
  JUMP [+23]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["GroupSubjectKey"]
  JUMPIFNOTEQ R0 R5 [+9]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["GroupCollaboratorAdded"]
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  CALL R5 3 0
  JUMP [+10]
  GETIMPORT R5 K10 [error]
  LOADK R7 K11 ["Unsupported type: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R9 R0
  GETIMPORT R8 K13 [tostring]
  CALL R8 1 1
  CONCAT R6 R7 R8
  CALL R5 1 0
  JUMPIFNOT R4 [+5]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K14 ["PermissionsChanged"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SearchRequested"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["Network"]
  GETTABLEKS R2 R3 K3 ["networkInterface"]
  MOVE R3 R0
  LOADB R4 1
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SearchRequested"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["Network"]
  GETTABLEKS R2 R3 K3 ["networkInterface"]
  MOVE R3 R0
  LOADB R4 0
  CALL R1 3 0
  RETURN R0 0

PROTO_10:
  JUMPIFNOTEQKNIL R0 [+6]
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["TODO: enable friends option"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K3 ["Type"]
  GETTABLEKS R3 R0 K4 ["Id"]
  GETTABLEKS R4 R0 K5 ["Name"]
  GETUPVAL R5 1
  CALL R1 4 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R5 R4 K1 ["SearchData"]
  GETTABLEKS R1 R4 K2 ["Stylizer"]
  GETTABLEKS R6 R5 K3 ["SearchText"]
  GETUPVAL R7 0
  MOVE R8 R5
  GETTABLEKS R9 R4 K4 ["Permissions"]
  GETTABLEKS R10 R4 K5 ["GroupMetadata"]
  CALL R7 3 1
  GETTABLEKS R9 R5 K6 ["localUserFriends"]
  GETUPVAL R10 1
  JUMPIFEQ R9 R10 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  LOADN R9 255
  GETTABLEKS R10 R4 K5 ["GroupMetadata"]
  JUMPIFNOT R10 [+9]
  GETIMPORT R10 K8 [pairs]
  GETTABLEKS R11 R4 K5 ["GroupMetadata"]
  CALL R10 1 3
  FORGPREP_NEXT R10
  ADDK R9 R9 K9 [1]
  FORGLOOP R10 2 [-2]
  GETTABLEKS R11 R4 K4 ["Permissions"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K10 ["UserSubjectKey"]
  GETTABLE R10 R11 R12
  JUMPIFNOT R10 [+13]
  GETIMPORT R10 K8 [pairs]
  GETTABLEKS R13 R4 K4 ["Permissions"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K10 ["UserSubjectKey"]
  GETTABLE R11 R13 R14
  CALL R10 1 3
  FORGPREP_NEXT R10
  ADDK R9 R9 K9 [1]
  FORGLOOP R10 2 [-2]
  LOADN R11 200
  JUMPIFLE R11 R9 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R4
  GETUPVAL R12 4
  MOVE R13 R6
  MOVE R14 R7
  GETTABLEKS R15 R4 K11 ["Localization"]
  CALL R12 3 1
  GETTABLEKS R13 R4 K11 ["Localization"]
  LOADK R15 K12 ["AssetConfigPackagePermissions"]
  LOADK R16 K13 ["TooManyCollaboratorsText"]
  DUPTABLE R17 K15 [{"maxNumCollaborators"}]
  LOADN R18 200
  SETTABLEKS R18 R17 K14 ["maxNumCollaborators"]
  NAMECALL R13 R13 K16 ["getText"]
  CALL R13 4 1
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K17 ["createElement"]
  LOADK R15 K18 ["Frame"]
  DUPTABLE R16 K22 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R17 K25 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K19 ["AutomaticSize"]
  LOADN R17 1
  SETTABLEKS R17 R16 K20 ["BackgroundTransparency"]
  GETTABLEKS R17 R4 K21 ["LayoutOrder"]
  SETTABLEKS R17 R16 K21 ["LayoutOrder"]
  DUPTABLE R17 K29 [{"UIListLayout", "Title", "CollaboratorSearchBar"}]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K17 ["createElement"]
  LOADK R19 K26 ["UIListLayout"]
  DUPTABLE R20 K32 [{"SortOrder", "Padding"}]
  GETIMPORT R21 K33 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R21 R20 K30 ["SortOrder"]
  GETIMPORT R21 K36 [UDim.new]
  LOADN R22 0
  LOADN R23 24
  CALL R21 2 1
  SETTABLEKS R21 R20 K31 ["Padding"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K26 ["UIListLayout"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K17 ["createElement"]
  LOADK R19 K37 ["TextLabel"]
  DUPTABLE R20 K43 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment", "BackgroundTransparency", "Font", "TextSize", "TextColor3"}]
  GETIMPORT R21 K25 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K19 ["AutomaticSize"]
  LOADN R21 0
  SETTABLEKS R21 R20 K21 ["LayoutOrder"]
  GETTABLEKS R21 R4 K11 ["Localization"]
  LOADK R23 K12 ["AssetConfigPackagePermissions"]
  LOADK R24 K44 ["ShareWith"]
  NAMECALL R21 R21 K16 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K38 ["Text"]
  GETIMPORT R21 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R21 R20 K39 ["TextXAlignment"]
  LOADN R21 1
  SETTABLEKS R21 R20 K20 ["BackgroundTransparency"]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K47 ["FONT"]
  SETTABLEKS R21 R20 K40 ["Font"]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K48 ["FONT_SIZE_TITLE"]
  SETTABLEKS R21 R20 K41 ["TextSize"]
  GETTABLEKS R23 R1 K49 ["assetConfig"]
  GETTABLEKS R22 R23 K50 ["packagePermissions"]
  GETTABLEKS R21 R22 K51 ["subTextColor"]
  SETTABLEKS R21 R20 K42 ["TextColor3"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K27 ["Title"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K17 ["createElement"]
  GETUPVAL R19 7
  DUPTABLE R20 K62 [{"LayoutOrder", "Enabled", "HeaderHeight", "ErrorText", "DefaultText", "NoResultsText", "LoadingMore", "onSearchRequested", "onTextChanged", "OnItemClicked", "Results"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K21 ["LayoutOrder"]
  GETTABLEKS R21 R4 K52 ["Enabled"]
  JUMPIFNOT R21 [+1]
  NOT R21 R10
  SETTABLEKS R21 R20 K52 ["Enabled"]
  LOADN R21 25
  SETTABLEKS R21 R20 K53 ["HeaderHeight"]
  JUMPIFNOT R10 [+2]
  MOVE R21 R13
  JUMPIF R21 [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K54 ["ErrorText"]
  GETTABLEKS R21 R4 K11 ["Localization"]
  LOADK R23 K12 ["AssetConfigPackagePermissions"]
  LOADK R24 K63 ["SearchbarDefault"]
  NAMECALL R21 R21 K16 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K55 ["DefaultText"]
  GETTABLEKS R21 R4 K11 ["Localization"]
  LOADK R23 K12 ["AssetConfigPackagePermissions"]
  LOADK R24 K64 ["NoResults"]
  NAMECALL R21 R21 K16 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K56 ["NoResultsText"]
  SETTABLEKS R8 R20 K57 ["LoadingMore"]
  NEWCLOSURE R21 P1
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R21 R20 K58 ["onSearchRequested"]
  NEWCLOSURE R21 P2
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R21 R20 K59 ["onTextChanged"]
  NEWCLOSURE R21 P3
  CAPTURE VAL R11
  CAPTURE UPVAL U8
  SETTABLEKS R21 R20 K60 ["OnItemClicked"]
  SETTABLEKS R12 R20 K61 ["Results"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K28 ["CollaboratorSearchBar"]
  CALL R14 3 -1
  RETURN R14 -1

PROTO_12:
  DUPTABLE R2 K1 [{"SearchData"}]
  DUPTABLE R3 K5 [{"searchText", "cachedSearchResults", "localUserFriends"}]
  GETTABLEKS R4 R0 K2 ["searchText"]
  SETTABLEKS R4 R3 K2 ["searchText"]
  GETTABLEKS R4 R0 K3 ["cachedSearchResults"]
  SETTABLEKS R4 R3 K3 ["cachedSearchResults"]
  GETTABLEKS R4 R0 K4 ["localUserFriends"]
  SETTABLEKS R4 R3 K4 ["localUserFriends"]
  SETTABLEKS R3 R2 K0 ["SearchData"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K8 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K11 ["Keys"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K12 ["LoadingInProgress"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K13 ["Urls"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R5 K14 ["Constants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R5 K15 ["AssetConfigConstants"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R5 K16 ["ContextHelper"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K17 ["withLocalization"]
  GETTABLEKS R15 R0 K9 ["Core"]
  GETTABLEKS R14 R15 K18 ["Components"]
  GETTABLEKS R13 R14 K19 ["AssetConfiguration"]
  GETTABLEKS R12 R13 K20 ["Permissions"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K21 ["CollaboratorSearchBar"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R12 K22 ["PermissionsConstants"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R12 K23 ["CollaboratorThumbnail"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R1 K24 ["Framework"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K25 ["ContextServices"]
  GETTABLEKS R18 R17 K26 ["withContext"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K9 ["Core"]
  GETTABLEKS R21 R22 K25 ["ContextServices"]
  GETTABLEKS R20 R21 K27 ["NetworkContext"]
  CALL R19 1 1
  GETTABLEKS R20 R14 K28 ["UseViewKey"]
  DUPCLOSURE R21 K29 [PROTO_0]
  CAPTURE VAL R14
  DUPCLOSURE R22 K30 [PROTO_1]
  CAPTURE VAL R6
  DUPCLOSURE R23 K31 [PROTO_3]
  CAPTURE VAL R14
  CAPTURE VAL R21
  DUPCLOSURE R24 K32 [PROTO_4]
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R9
  GETTABLEKS R25 R3 K33 ["PureComponent"]
  LOADK R27 K34 ["CollaboratorSearchWidget"]
  NAMECALL R25 R25 K35 ["extend"]
  CALL R25 2 1
  DUPCLOSURE R26 K36 [PROTO_6]
  CAPTURE VAL R11
  SETTABLEKS R26 R25 K37 ["render"]
  DUPCLOSURE R26 K38 [PROTO_11]
  CAPTURE VAL R23
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R24
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R20
  SETTABLEKS R26 R25 K39 ["renderContent"]
  DUPCLOSURE R26 K40 [PROTO_12]
  MOVE R27 R18
  DUPTABLE R28 K44 [{"Stylizer", "Localization", "Network"}]
  GETTABLEKS R29 R17 K41 ["Stylizer"]
  SETTABLEKS R29 R28 K41 ["Stylizer"]
  GETTABLEKS R29 R17 K42 ["Localization"]
  SETTABLEKS R29 R28 K42 ["Localization"]
  SETTABLEKS R19 R28 K43 ["Network"]
  CALL R27 1 1
  MOVE R28 R25
  CALL R27 1 1
  MOVE R25 R27
  GETTABLEKS R27 R4 K45 ["connect"]
  MOVE R28 R26
  CALL R27 1 1
  MOVE R28 R25
  CALL R27 1 -1
  RETURN R27 -1
