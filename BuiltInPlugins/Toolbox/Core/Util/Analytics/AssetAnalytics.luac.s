PROTO_0:
  DUPTABLE R1 K2 [{"_searches", "senders"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["_searches"]
  MOVE R2 R0
  JUMPIF R2 [+1]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["senders"]
  GETUPVAL R4 1
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K4 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  PREPVARARGS 0
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  GETVARARGS R3 -1
  SETLIST R2 R3 -1 [1]
  FASTCALL2 TABLE_INSERT R1 R2 [+3]
  GETIMPORT R0 K2 [table.insert]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 0
  DUPTABLE R1 K2 [{"sendEventDeferredCalls", "sendEventDeferred"}]
  SETTABLEKS R0 R1 K0 ["sendEventDeferredCalls"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["sendEventDeferred"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["new"]
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1

PROTO_3:
  NAMECALL R2 R0 K0 ["getBreadcrumbRoute"]
  CALL R2 1 1
  DUPTABLE R3 K5 [{"navBreadcrumbs", "navSwimlane", "navSeeAll", "navSeeAllSubcategory"}]
  GETUPVAL R4 0
  MOVE R6 R2
  NAMECALL R4 R4 K6 ["JSONEncode"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["navBreadcrumbs"]
  SETTABLEKS R1 R3 K2 ["navSwimlane"]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["navSeeAll"]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["navSeeAllSubcategory"]
  RETURN R3 1

PROTO_4:
  GETIMPORT R2 K1 [delay]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K1 [ipairs]
  GETIMPORT R2 K4 [Enum.AssetType]
  NAMECALL R2 R2 K5 ["GetEnumItems"]
  CALL R2 1 -1
  CALL R1 -1 3
  FORGPREP_INEXT R1
  GETTABLEKS R6 R5 K6 ["Value"]
  JUMPIFNOTEQ R6 R0 [+4]
  GETTABLEKS R6 R5 K7 ["Name"]
  RETURN R6 1
  FORGLOOP R1 2 [inext] [-8]
  LOADK R1 K8 [""]
  RETURN R1 1

PROTO_6:
  MOVE R1 R0
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K0 ["Asset"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K0 ["Asset"]
  GETTABLEKS R1 R2 K1 ["Id"]
  RETURN R1 1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["isAssetDataTrackable"]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  MOVE R2 R1
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K1 ["searchId"]
  RETURN R2 1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["Context"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["Dictionary"]
  GETTABLEKS R4 R5 K2 ["join"]
  MOVE R5 R1
  MOVE R6 R3
  CALL R4 2 1
  GETTABLEKS R5 R1 K3 ["searchId"]
  LOADNIL R6
  GETTABLEKS R8 R0 K4 ["Asset"]
  GETTABLEKS R7 R8 K5 ["AssetSubTypes"]
  JUMPIFNOT R7 [+6]
  GETIMPORT R8 K8 [table.concat]
  MOVE R9 R7
  LOADK R10 K9 [","]
  CALL R8 2 1
  MOVE R6 R8
  LOADNIL R8
  JUMPIFNOT R2 [+91]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["Dictionary"]
  GETTABLEKS R9 R10 K2 ["join"]
  MOVE R10 R4
  DUPTABLE R11 K24 [{"assetId", "assetSubTypes", "assetType", "userId", "placeId", "platformId", "clientId", "searchId", "studioSid", "isEditMode", "isVerifiedCreator", "label", "value", "isEndorsed", "hasScripts"}]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K25 ["Id"]
  SETTABLEKS R12 R11 K10 ["assetId"]
  SETTABLEKS R6 R11 K11 ["assetSubTypes"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K26 ["getAssetCategoryName"]
  GETTABLEKS R14 R0 K4 ["Asset"]
  GETTABLEKS R13 R14 K27 ["TypeId"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K12 ["assetType"]
  GETUPVAL R12 2
  CALL R12 0 1
  SETTABLEKS R12 R11 K13 ["userId"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K28 ["getPlaceId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K14 ["placeId"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K29 ["getPlatformId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K15 ["platformId"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K30 ["getClientId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K16 ["clientId"]
  SETTABLEKS R5 R11 K3 ["searchId"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K31 ["getStudioSessionId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K17 ["studioSid"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K32 ["getIsEditMode"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K18 ["isEditMode"]
  GETTABLEKS R13 R0 K33 ["Creator"]
  GETTABLEKS R12 R13 K34 ["IsVerifiedCreator"]
  SETTABLEKS R12 R11 K19 ["isVerifiedCreator"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K25 ["Id"]
  SETTABLEKS R12 R11 K20 ["label"]
  LOADN R12 0
  SETTABLEKS R12 R11 K21 ["value"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K35 ["IsEndorsed"]
  SETTABLEKS R12 R11 K22 ["isEndorsed"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K36 ["HasScripts"]
  SETTABLEKS R12 R11 K23 ["hasScripts"]
  CALL R9 2 1
  MOVE R8 R9
  JUMP [+93]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["Dictionary"]
  GETTABLEKS R9 R10 K2 ["join"]
  MOVE R10 R4
  DUPTABLE R11 K43 [{"assetID", "assetSubTypes", "assetType", "userID", "placeID", "platformID", "clientID", "searchID", "studioSid", "isEditMode", "isVerifiedCreator", "label", "value", "isEndorsed", "hasScripts"}]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K25 ["Id"]
  SETTABLEKS R12 R11 K37 ["assetID"]
  SETTABLEKS R6 R11 K11 ["assetSubTypes"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K26 ["getAssetCategoryName"]
  GETTABLEKS R14 R0 K4 ["Asset"]
  GETTABLEKS R13 R14 K27 ["TypeId"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K12 ["assetType"]
  GETUPVAL R12 2
  CALL R12 0 1
  SETTABLEKS R12 R11 K38 ["userID"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K28 ["getPlaceId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K39 ["placeID"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K29 ["getPlatformId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K40 ["platformID"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K30 ["getClientId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K41 ["clientID"]
  SETTABLEKS R5 R11 K42 ["searchID"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K31 ["getStudioSessionId"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K17 ["studioSid"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K32 ["getIsEditMode"]
  CALL R12 0 1
  SETTABLEKS R12 R11 K18 ["isEditMode"]
  GETTABLEKS R13 R0 K33 ["Creator"]
  GETTABLEKS R12 R13 K34 ["IsVerifiedCreator"]
  SETTABLEKS R12 R11 K19 ["isVerifiedCreator"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K25 ["Id"]
  SETTABLEKS R12 R11 K20 ["label"]
  LOADN R12 0
  SETTABLEKS R12 R11 K21 ["value"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K35 ["IsEndorsed"]
  SETTABLEKS R12 R11 K22 ["isEndorsed"]
  GETTABLEKS R13 R0 K4 ["Asset"]
  GETTABLEKS R12 R13 K36 ["HasScripts"]
  SETTABLEKS R12 R11 K23 ["hasScripts"]
  CALL R9 2 1
  MOVE R8 R9
  LOADNIL R9
  SETTABLEKS R9 R8 K3 ["searchId"]
  GETIMPORT R9 K45 [pairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_NEXT R9
  FASTCALL1 TOSTRING R13 [+3]
  MOVE R15 R13
  GETIMPORT R14 K47 [tostring]
  CALL R14 1 1
  SETTABLE R14 R8 R12
  FORGLOOP R9 2 [-7]
  RETURN R8 1

PROTO_9:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["isAssetTrackable"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETTABLEKS R6 R1 K1 ["Asset"]
  GETTABLEKS R5 R6 K2 ["Id"]
  GETTABLEKS R6 R2 K3 ["searchId"]
  GETTABLEKS R8 R0 K4 ["_searches"]
  GETTABLE R7 R8 R6
  JUMPIF R7 [+8]
  GETTABLEKS R7 R0 K4 ["_searches"]
  DUPTABLE R8 K6 [{"impressions"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K5 ["impressions"]
  SETTABLE R8 R7 R6
  GETTABLEKS R8 R0 K4 ["_searches"]
  GETTABLE R7 R8 R6
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["getTrackingAttributes"]
  MOVE R9 R1
  MOVE R10 R2
  CALL R8 2 1
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+9]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["join"]
  MOVE R10 R8
  DUPTABLE R11 K10 [{"layoutMode"}]
  SETTABLEKS R4 R11 K9 ["layoutMode"]
  CALL R9 2 1
  MOVE R8 R9
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["join"]
  MOVE R10 R8
  MOVE R11 R3
  JUMPIF R11 [+2]
  NEWTABLE R11 0 0
  CALL R9 2 1
  MOVE R8 R9
  GETTABLEKS R10 R7 K5 ["impressions"]
  GETTABLE R9 R10 R5
  JUMPIF R9 [+17]
  GETTABLEKS R10 R0 K11 ["senders"]
  GETTABLEKS R9 R10 K12 ["sendEventDeferred"]
  LOADK R10 K13 ["studio"]
  LOADK R11 K14 ["Marketplace"]
  LOADK R12 K15 ["MarketplaceAssetImpression"]
  MOVE R13 R8
  CALL R9 4 0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K16 ["incrementAssetImpressionCounter"]
  CALL R9 0 0
  GETTABLEKS R9 R7 K5 ["impressions"]
  LOADB R10 1
  SETTABLE R10 R9 R5
  RETURN R0 0

PROTO_10:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["isAssetTrackable"]
  MOVE R5 R1
  MOVE R6 R2
  CALL R4 2 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getTrackingAttributes"]
  MOVE R5 R1
  MOVE R6 R2
  CALL R4 2 1
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+49]
  GETUPVAL R6 2
  CALL R6 0 1
  JUMPIFNOT R6 [+4]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R5 R3 K2 ["purchaserStatus"]
  JUMP [+1]
  LOADNIL R5
  GETTABLEKS R6 R1 K3 ["FiatProduct"]
  JUMPIFNOT R6 [+4]
  GETTABLEKS R7 R1 K3 ["FiatProduct"]
  GETTABLEKS R6 R7 K4 ["PurchasePrice"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["Dictionary"]
  GETTABLEKS R7 R8 K6 ["join"]
  MOVE R8 R4
  DUPTABLE R9 K10 [{"buyerStatus", "currencyCode", "fiatPrice"}]
  GETUPVAL R11 2
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  MOVE R10 R5
  JUMP [+1]
  MOVE R10 R3
  SETTABLEKS R10 R9 K7 ["buyerStatus"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R10 R6 K8 ["currencyCode"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K8 ["currencyCode"]
  JUMPIFNOT R6 [+6]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K11 ["calculateQuantity"]
  MOVE R11 R6
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K9 ["fiatPrice"]
  CALL R7 2 1
  MOVE R4 R7
  GETTABLEKS R6 R0 K12 ["senders"]
  GETTABLEKS R5 R6 K13 ["sendEventDeferred"]
  LOADK R6 K14 ["studio"]
  LOADK R7 K15 ["Marketplace"]
  LOADK R8 K16 ["MarketplaceAssetPreview"]
  MOVE R9 R4
  CALL R5 4 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  FASTCALL1 TYPE R1 [+2]
  GETIMPORT R0 K1 [type]
  CALL R0 1 1
  JUMPIFNOTEQKS R0 K2 ["table"] [+10]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R5 0
  GETTABLEN R4 R5 1
  NAMECALL R0 R0 K3 ["logRemainsOrDeleted"]
  CALL R0 4 0
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  GETUPVAL R4 0
  NAMECALL R0 R0 K3 ["logRemainsOrDeleted"]
  CALL R0 4 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["isAssetTrackable"]
  MOVE R8 R1
  MOVE R9 R4
  CALL R7 2 1
  JUMPIF R7 [+1]
  RETURN R0 0
  DUPTABLE R7 K2 [{"method"}]
  SETTABLEKS R2 R7 K1 ["method"]
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+2]
  SETTABLEKS R6 R7 K3 ["layoutMode"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["join"]
  MOVE R9 R7
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["getTrackingAttributes"]
  MOVE R11 R1
  MOVE R12 R4
  CALL R10 2 1
  DUPTABLE R11 K7 [{"navSwimlane"}]
  SETTABLEKS R5 R11 K6 ["navSwimlane"]
  CALL R8 3 1
  GETTABLEKS R10 R0 K8 ["senders"]
  GETTABLEKS R9 R10 K9 ["sendEventDeferred"]
  LOADK R10 K10 ["studio"]
  LOADK R11 K11 ["Marketplace"]
  LOADK R12 K12 ["MarketplaceInsert"]
  MOVE R13 R8
  CALL R9 4 0
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R0 0
  GETIMPORT R9 K14 [ipairs]
  GETUPVAL R12 0
  GETTABLEKS R10 R12 K15 ["InsertRemainsCheckDelays"]
  CALL R9 1 3
  FORGPREP_INEXT R9
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K16 ["schedule"]
  MOVE R15 R13
  NEWCLOSURE R16 P0
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R13
  CAPTURE VAL R8
  CALL R14 2 0
  FORGLOOP R9 2 [inext] [-11]
  RETURN R0 0

PROTO_13:
  JUMPIFNOT R3 [+5]
  GETTABLEKS R5 R3 K0 ["Parent"]
  JUMPIFNOT R5 [+2]
  LOADK R4 K1 ["InsertRemains"]
  JUMP [+1]
  LOADK R4 K2 ["InsertDeleted"]
  GETTABLEKS R6 R0 K3 ["senders"]
  GETTABLEKS R5 R6 K4 ["sendEventDeferred"]
  LOADK R6 K5 ["studio"]
  LOADK R7 K6 ["Marketplace"]
  MOVE R9 R4
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R11 R1
  GETIMPORT R10 K8 [tostring]
  CALL R10 1 1
  CONCAT R8 R9 R10
  MOVE R9 R2
  CALL R5 4 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R9 R0 K0 ["senders"]
  GETTABLEKS R8 R9 K1 ["sendEventDeferred"]
  LOADK R9 K2 ["studio"]
  LOADK R10 K3 ["Marketplace"]
  MOVE R11 R1
  DUPTABLE R12 K10 [{"searchID", "searchCategory", "subcategoryName", "navBreadcrumbs", "toolboxTab", "assetType"}]
  SETTABLEKS R2 R12 K4 ["searchID"]
  SETTABLEKS R3 R12 K5 ["searchCategory"]
  SETTABLEKS R4 R12 K6 ["subcategoryName"]
  JUMPIFNOT R5 [+6]
  GETUPVAL R13 0
  MOVE R15 R5
  NAMECALL R13 R13 K11 ["JSONEncode"]
  CALL R13 2 1
  JUMPIF R13 [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K7 ["navBreadcrumbs"]
  SETTABLEKS R6 R12 K8 ["toolboxTab"]
  SETTABLEKS R7 R12 K9 ["assetType"]
  CALL R8 4 0
  RETURN R0 0

PROTO_15:
  LOADK R9 K0 ["MarketplaceNavigatePageView"]
  MOVE R10 R1
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  MOVE R15 R6
  NAMECALL R7 R0 K1 ["logNavigationButtonInteraction"]
  CALL R7 8 0
  RETURN R0 0

PROTO_16:
  LOADK R9 K0 ["MarketplaceNavigateViewBack"]
  MOVE R10 R1
  MOVE R11 R2
  MOVE R12 R3
  MOVE R13 R4
  MOVE R14 R5
  MOVE R15 R6
  NAMECALL R7 R0 K1 ["logNavigationButtonInteraction"]
  CALL R7 8 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R3 R0 K0 ["senders"]
  GETTABLEKS R2 R3 K1 ["sendEventDeferred"]
  LOADK R3 K2 ["studio"]
  LOADK R4 K3 ["Marketplace"]
  LOADK R5 K4 ["CallToActionBannerClicked"]
  DUPTABLE R6 K6 [{"creatorId"}]
  SETTABLEKS R1 R6 K5 ["creatorId"]
  CALL R2 4 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["isAssetDataTrackable"]
  MOVE R8 R1
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["getTrackingAttributes"]
  MOVE R8 R1
  NEWTABLE R9 0 0
  LOADB R10 1
  CALL R7 3 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K2 ["join"]
  MOVE R9 R7
  DUPTABLE R10 K8 [{"imageId", "imageIndex", "searchId", "source", "parentAssetId"}]
  SETTABLEKS R2 R10 K3 ["imageId"]
  SETTABLEKS R3 R10 K4 ["imageIndex"]
  SETTABLEKS R4 R10 K5 ["searchId"]
  SETTABLEKS R5 R10 K6 ["source"]
  SETTABLEKS R6 R10 K7 ["parentAssetId"]
  CALL R8 2 1
  MOVE R7 R8
  GETTABLEKS R9 R0 K9 ["senders"]
  GETTABLEKS R8 R9 K10 ["sendEventDeferred"]
  LOADK R9 K11 ["studio"]
  LOADK R10 K12 ["Marketplace"]
  LOADK R11 K13 ["AssetMediaImpression"]
  MOVE R12 R7
  CALL R8 4 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["isAssetTrackable"]
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["getTrackingAttributes"]
  MOVE R6 R1
  MOVE R7 R2
  LOADB R8 1
  CALL R5 3 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["join"]
  MOVE R7 R5
  DUPTABLE R8 K5 [{"searchId", "url"}]
  SETTABLEKS R3 R8 K3 ["searchId"]
  SETTABLEKS R4 R8 K4 ["url"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K6 ["senders"]
  GETTABLEKS R7 R8 K7 ["sendEventDeferred"]
  LOADK R8 K8 ["studio"]
  LOADK R9 K9 ["Marketplace"]
  LOADK R10 K10 ["AssetDescriptionLinkClicked"]
  MOVE R11 R6
  CALL R7 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K7 ["Packages"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R2 K10 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R5 R2 K11 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R6 R2 K12 ["Dash"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K13 ["Core"]
  GETTABLEKS R8 R9 K14 ["Models"]
  GETTABLEKS R7 R8 K15 ["AssetInfo"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R1 K13 ["Core"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETTABLEKS R8 R9 K17 ["PageInfoHelper"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R1 K13 ["Core"]
  GETTABLEKS R10 R11 K16 ["Util"]
  GETTABLEKS R9 R10 K18 ["getUserId"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K13 ["Core"]
  GETTABLEKS R11 R12 K16 ["Util"]
  GETTABLEKS R10 R11 K19 ["Constants"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R1 K13 ["Core"]
  GETTABLEKS R12 R13 K16 ["Util"]
  GETTABLEKS R11 R12 K20 ["DebugFlags"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R1 K13 ["Core"]
  GETTABLEKS R13 R14 K16 ["Util"]
  GETTABLEKS R12 R13 K21 ["FiatUtil"]
  CALL R11 1 1
  GETTABLEKS R13 R1 K13 ["Core"]
  GETTABLEKS R12 R13 K22 ["Types"]
  GETIMPORT R13 K9 [require]
  GETTABLEKS R14 R12 K23 ["AssetSubTypes"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETIMPORT R17 K5 [script]
  GETTABLEKS R16 R17 K6 ["Parent"]
  GETTABLEKS R15 R16 K24 ["Analytics"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETIMPORT R18 K5 [script]
  GETTABLEKS R17 R18 K6 ["Parent"]
  GETTABLEKS R16 R17 K25 ["Senders"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R20 R1 K13 ["Core"]
  GETTABLEKS R19 R20 K16 ["Util"]
  GETTABLEKS R18 R19 K26 ["SharedFlags"]
  GETTABLEKS R17 R18 K27 ["getFFlagToolboxListviewAnalytics"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R21 R1 K13 ["Core"]
  GETTABLEKS R20 R21 K16 ["Util"]
  GETTABLEKS R19 R20 K26 ["SharedFlags"]
  GETTABLEKS R18 R19 K28 ["getFFlagToolboxEnableFiatPurchasing"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R22 R1 K13 ["Core"]
  GETTABLEKS R21 R22 K16 ["Util"]
  GETTABLEKS R20 R21 K26 ["SharedFlags"]
  GETTABLEKS R19 R20 K29 ["getFFlagToolboxFFlagFixBuyerStatusAnalytics"]
  CALL R18 1 1
  NEWTABLE R19 32 0
  SETTABLEKS R19 R19 K30 ["__index"]
  NEWTABLE R20 0 3
  LOADN R21 30
  LOADN R22 120
  LOADN R23 88
  SETLIST R20 R21 3 [1]
  SETTABLEKS R20 R19 K31 ["InsertRemainsCheckDelays"]
  DUPCLOSURE R20 K32 [PROTO_0]
  CAPTURE VAL R15
  CAPTURE VAL R19
  SETTABLEKS R20 R19 K33 ["new"]
  DUPCLOSURE R20 K34 [PROTO_2]
  CAPTURE VAL R19
  SETTABLEKS R20 R19 K35 ["mock"]
  DUPCLOSURE R20 K36 [PROTO_3]
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K37 ["getNavigationContext"]
  DUPCLOSURE R20 K38 [PROTO_4]
  SETTABLEKS R20 R19 K39 ["schedule"]
  DUPCLOSURE R20 K40 [PROTO_5]
  SETTABLEKS R20 R19 K41 ["getAssetCategoryName"]
  DUPCLOSURE R20 K42 [PROTO_6]
  SETTABLEKS R20 R19 K43 ["isAssetDataTrackable"]
  DUPCLOSURE R20 K44 [PROTO_7]
  CAPTURE VAL R19
  SETTABLEKS R20 R19 K45 ["isAssetTrackable"]
  DUPCLOSURE R20 K46 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R19
  CAPTURE VAL R8
  CAPTURE VAL R14
  SETTABLEKS R20 R19 K47 ["getTrackingAttributes"]
  DUPCLOSURE R20 K48 [PROTO_9]
  CAPTURE VAL R19
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R14
  SETTABLEKS R20 R19 K49 ["logImpression"]
  DUPCLOSURE R20 K50 [PROTO_10]
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R3
  CAPTURE VAL R11
  SETTABLEKS R20 R19 K51 ["logPreview"]
  DUPCLOSURE R20 K52 [PROTO_12]
  CAPTURE VAL R19
  CAPTURE VAL R16
  CAPTURE VAL R5
  SETTABLEKS R20 R19 K53 ["logInsert"]
  DUPCLOSURE R20 K54 [PROTO_13]
  SETTABLEKS R20 R19 K55 ["logRemainsOrDeleted"]
  DUPCLOSURE R20 K56 [PROTO_14]
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K57 ["logNavigationButtonInteraction"]
  DUPCLOSURE R20 K58 [PROTO_15]
  SETTABLEKS R20 R19 K59 ["logPageView"]
  DUPCLOSURE R20 K60 [PROTO_16]
  SETTABLEKS R20 R19 K61 ["logGoBack"]
  DUPCLOSURE R20 K62 [PROTO_17]
  SETTABLEKS R20 R19 K63 ["onCallToActionBannerClicked"]
  DUPCLOSURE R20 K64 [PROTO_18]
  CAPTURE VAL R19
  CAPTURE VAL R5
  SETTABLEKS R20 R19 K65 ["logAssetMediaImpression"]
  DUPCLOSURE R20 K66 [PROTO_19]
  CAPTURE VAL R19
  CAPTURE VAL R5
  SETTABLEKS R20 R19 K67 ["onAssetDescriptionLinkClicked"]
  RETURN R19 1
