PROTO_0:
  DUPTABLE R0 K1 [{"_networkImp"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["new"]
  DUPTABLE R2 K4 [{"isInternal"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["isInternal"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["_networkImp"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K6 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_networkImp"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["get"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K0 ["_networkImp"]
  MOVE R5 R2
  LOADN R6 5
  NAMECALL R3 R3 K2 ["handleRetry"]
  CALL R3 3 1
  GETTABLEKS R4 R0 K0 ["_networkImp"]
  MOVE R6 R3
  NAMECALL R4 R4 K3 ["parseJson"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["composeUrl"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["BASE_URL"]
  LOADK R6 K2 ["ide/publish/uploadnewanimation"]
  DUPTABLE R7 K11 [{"assetTypeName", "name", "description", "AllID", "ispublic", "allowComments", "isGamesAsset", "groupId"}]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R9 R0
  GETIMPORT R8 K13 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K3 ["assetTypeName"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K13 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K4 ["name"]
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R9 R2
  GETIMPORT R8 K13 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K5 ["description"]
  LOADN R9 1
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K13 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K6 ["AllID"]
  LOADK R8 K14 ["False"]
  SETTABLEKS R8 R7 K7 ["ispublic"]
  LOADK R8 K15 ["True"]
  SETTABLEKS R8 R7 K8 ["allowComments"]
  LOADK R8 K14 ["False"]
  SETTABLEKS R8 R7 K9 ["isGamesAsset"]
  ORK R8 R3 K16 [""]
  SETTABLEKS R8 R7 K10 ["groupId"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["reject"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R5 0
  LOADK R6 K0 ["Animation"]
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 1
  DUPTABLE R6 K6 [{"Url", "Method", "Body", "CachePolicy", "Headers"}]
  SETTABLEKS R5 R6 K1 ["Url"]
  LOADK R7 K7 ["POST"]
  SETTABLEKS R7 R6 K2 ["Method"]
  SETTABLEKS R4 R6 K3 ["Body"]
  GETIMPORT R7 K11 [Enum.HttpCachePolicy.None]
  SETTABLEKS R7 R6 K4 ["CachePolicy"]
  NEWTABLE R7 1 0
  LOADK R8 K12 ["application/octet-stream"]
  SETTABLEKS R8 R7 K13 ["Content-Type"]
  SETTABLEKS R7 R6 K5 ["Headers"]
  GETTABLEKS R7 R0 K14 ["_networkImp"]
  MOVE R9 R6
  NAMECALL R7 R7 K15 ["request"]
  CALL R7 2 1
  DUPCLOSURE R9 K16 [PROTO_3]
  CAPTURE UPVAL U1
  NAMECALL R7 R7 K17 ["catch"]
  CALL R7 2 -1
  RETURN R7 -1

PROTO_5:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["composeUrl"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["ITEM_CONFIGURATION_URL"]
  LOADK R6 K2 ["v1/creations/get-assets"]
  DUPTABLE R7 K8 [{"assetType", "isArchived", "limit", "cursor", "groupId"}]
  SETTABLEKS R0 R7 K3 ["assetType"]
  LOADB R8 0
  SETTABLEKS R8 R7 K4 ["isArchived"]
  SETTABLEKS R1 R7 K5 ["limit"]
  SETTABLEKS R2 R7 K6 ["cursor"]
  SETTABLEKS R3 R7 K7 ["groupId"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["composeUrl"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["ITEM_CONFIGURATION_URL"]
  LOADK R5 K2 ["v1/creations/get-assets"]
  DUPTABLE R6 K8 [{"assetType", "isArchived", "limit", "cursor", "groupId"}]
  LOADK R7 K9 ["Animation"]
  SETTABLEKS R7 R6 K3 ["assetType"]
  LOADB R7 0
  SETTABLEKS R7 R6 K4 ["isArchived"]
  LOADN R7 25
  SETTABLEKS R7 R6 K5 ["limit"]
  SETTABLEKS R1 R6 K6 ["cursor"]
  SETTABLEKS R2 R6 K7 ["groupId"]
  CALL R3 3 1
  MOVE R6 R3
  NAMECALL R4 R0 K10 ["httpGetJson"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_7:
  GETIMPORT R5 K2 [string.format]
  LOADK R6 K3 ["toolbox-service/v1/inventory/user/%d/%s?"]
  MOVE R7 R4
  MOVE R8 R0
  CALL R5 3 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["composeUrl"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["APIS_URL"]
  MOVE R8 R5
  DUPTABLE R9 K10 [{"keyword", "limit", "searchSource", "cursor"}]
  SETTABLEKS R3 R9 K6 ["keyword"]
  SETTABLEKS R1 R9 K7 ["limit"]
  JUMPIFNOT R3 [+2]
  LOADK R10 K6 ["keyword"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K8 ["searchSource"]
  SETTABLEKS R2 R9 K9 ["cursor"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_8:
  GETUPVAL R4 0
  LOADK R5 K0 ["animation"]
  LOADN R6 30
  MOVE R7 R1
  MOVE R8 R3
  MOVE R9 R2
  CALL R4 5 1
  MOVE R7 R4
  NAMECALL R5 R0 K1 ["httpGetJson"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Http"]
  GETTABLEKS R2 R3 K8 ["Networking"]
  GETTABLEKS R4 R1 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["Promise"]
  GETTABLEKS R5 R1 K11 ["ContextServices"]
  GETTABLEKS R4 R5 K12 ["ContextItem"]
  GETTABLEKS R7 R1 K13 ["RobloxAPI"]
  GETTABLEKS R6 R7 K14 ["Url"]
  GETTABLEKS R5 R6 K15 ["new"]
  CALL R5 0 1
  LOADK R8 K16 ["NetworkInterface"]
  NAMECALL R6 R4 K17 ["extend"]
  CALL R6 2 1
  DUPCLOSURE R7 K18 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K15 ["new"]
  DUPCLOSURE R7 K19 [PROTO_1]
  SETTABLEKS R7 R6 K20 ["httpGetJson"]
  DUPCLOSURE R7 K21 [PROTO_2]
  CAPTURE VAL R5
  DUPCLOSURE R8 K22 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R8 R6 K23 ["postUploadAnimation"]
  DUPCLOSURE R8 K24 [PROTO_5]
  CAPTURE VAL R5
  DUPCLOSURE R9 K25 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R9 R6 K26 ["getGroupAnimations"]
  DUPCLOSURE R9 K27 [PROTO_7]
  CAPTURE VAL R5
  DUPCLOSURE R10 K28 [PROTO_8]
  CAPTURE VAL R9
  SETTABLEKS R10 R6 K29 ["getUserAnimations"]
  RETURN R6 1
