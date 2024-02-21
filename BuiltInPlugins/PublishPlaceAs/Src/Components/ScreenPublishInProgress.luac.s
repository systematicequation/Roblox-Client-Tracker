PROTO_0:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["state"]
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["isMounted"]
  GETTABLEKS R2 R0 K2 ["props"]
  GETTABLEKS R1 R2 K3 ["Id"]
  JUMPIFNOTEQKN R1 K4 [0] [+5]
  GETIMPORT R2 K6 [game]
  GETTABLEKS R1 R2 K7 ["GameId"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["Progress"]
  GETTABLEKS R3 R4 K2 ["Place"]
  GETTABLEKS R2 R3 K3 ["name"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["Progress"]
  GETTABLEKS R4 R5 K4 ["Universe"]
  GETTABLEKS R3 R4 K3 ["name"]
  NAMECALL R0 R0 K5 ["setUploadNames"]
  CALL R0 3 0
  GETUPVAL R0 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["Progress"]
  GETTABLEKS R3 R4 K4 ["Universe"]
  GETTABLEKS R2 R3 K6 ["universeId"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["Progress"]
  GETTABLEKS R4 R5 K2 ["Place"]
  GETTABLEKS R3 R4 K7 ["placeId"]
  LOADN R4 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K1 ["Progress"]
  GETTABLEKS R5 R6 K8 ["IsPublish"]
  LOADNIL R6
  GETUPVAL R8 2
  GETUPVAL R9 3
  JUMPIFLT R8 R9 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  NAMECALL R0 R0 K9 ["publishAs"]
  CALL R0 7 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K1 ["Progress"]
  GETTABLEKS R4 R5 K2 ["FailCount"]
  GETIMPORT R5 K6 [Enum.StudioPlaceUpdateFailureReason.TeamCreateConflict]
  JUMPIFNOTEQ R3 R5 [+36]
  GETUPVAL R5 1
  GETUPVAL R6 2
  JUMPIFNOTLT R5 R6 [+32]
  GETUPVAL R6 1
  ADDK R5 R6 K7 [1]
  SETUPVAL R5 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["retryThread"]
  JUMPIFEQKNIL R5 [+11]
  GETIMPORT R5 K11 [task.cancel]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["retryThread"]
  CALL R5 1 0
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLEKS R6 R5 K8 ["retryThread"]
  GETUPVAL R5 0
  GETIMPORT R6 K13 [task.delay]
  GETUPVAL R7 3
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["retryThread"]
  RETURN R0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K14 ["DispatchRequestInFlight"]
  LOADB R6 0
  CALL R5 1 0
  JUMPIFNOT R0 [+21]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K15 ["OpenPublishSuccessfulPage"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K1 ["Progress"]
  GETTABLEKS R6 R7 K16 ["Place"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["props"]
  GETTABLEKS R8 R9 K1 ["Progress"]
  GETTABLEKS R7 R8 K17 ["Universe"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K18 ["OpenPublishFailPage"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K1 ["Progress"]
  GETTABLEKS R6 R7 K16 ["Place"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["props"]
  GETTABLEKS R8 R9 K1 ["Progress"]
  GETTABLEKS R7 R8 K17 ["Universe"]
  MOVE R8 R2
  CALL R5 3 0
  RETURN R0 0

PROTO_3:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["isMounted"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["GamePublishFinished"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K2 ["connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["finishedConnection"]
  LOADN R1 0
  SETUPVAL R1 1
  RETURN R0 0

PROTO_4:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["isMounted"]
  GETTABLEKS R1 R0 K1 ["retryThread"]
  JUMPIFEQKNIL R1 [+9]
  GETIMPORT R1 K4 [task.cancel]
  GETTABLEKS R2 R0 K1 ["retryThread"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["retryThread"]
  GETTABLEKS R1 R0 K5 ["finishedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K5 ["finishedConnection"]
  NAMECALL R1 R1 K6 ["disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  JUMPIF R1 [+8]
  GETUPVAL R1 1
  GETTABLEKS R4 R0 K7 ["props"]
  GETTABLEKS R3 R4 K8 ["CloseMode"]
  NAMECALL R1 R1 K9 ["requestClose"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["OnClose"]
  GETTABLEKS R5 R1 K4 ["Name"]
  GETTABLEKS R6 R1 K5 ["ParentGameName"]
  GETTABLEKS R8 R1 K6 ["Progress"]
  GETTABLEKS R7 R8 K7 ["RequestInFlight"]
  JUMPIFNOTEQKB R7 FALSE [+55]
  GETTABLEKS R8 R1 K6 ["Progress"]
  GETTABLEKS R7 R8 K8 ["FailCount"]
  JUMPIFNOTEQKN R7 K9 [0] [+49]
  GETUPVAL R7 0
  GETTABLEKS R11 R1 K6 ["Progress"]
  GETTABLEKS R10 R11 K10 ["Place"]
  GETTABLEKS R9 R10 K11 ["name"]
  GETTABLEKS R12 R1 K6 ["Progress"]
  GETTABLEKS R11 R12 K12 ["Universe"]
  GETTABLEKS R10 R11 K11 ["name"]
  NAMECALL R7 R7 K13 ["setUploadNames"]
  CALL R7 3 0
  GETUPVAL R7 0
  GETTABLEKS R11 R1 K6 ["Progress"]
  GETTABLEKS R10 R11 K12 ["Universe"]
  GETTABLEKS R9 R10 K14 ["universeId"]
  GETTABLEKS R12 R1 K6 ["Progress"]
  GETTABLEKS R11 R12 K10 ["Place"]
  GETTABLEKS R10 R11 K15 ["placeId"]
  LOADN R11 0
  GETTABLEKS R13 R1 K6 ["Progress"]
  GETTABLEKS R12 R13 K16 ["IsPublish"]
  LOADNIL R13
  GETUPVAL R15 1
  GETUPVAL R16 2
  JUMPIFLT R15 R16 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  NAMECALL R7 R7 K17 ["publishAs"]
  CALL R7 7 0
  GETTABLEKS R7 R1 K18 ["DispatchRequestInFlight"]
  LOADB R8 1
  CALL R7 1 0
  LOADK R9 K19 ["General"]
  LOADK R10 K20 ["UploadInProgressElps"]
  NAMECALL R7 R3 K21 ["getText"]
  CALL R7 3 1
  LOADK R10 K19 ["General"]
  LOADK R11 K22 ["PleaseWait"]
  NAMECALL R8 R3 K21 ["getText"]
  CALL R8 3 1
  GETUPVAL R9 1
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+7]
  LOADK R11 K19 ["General"]
  LOADK R12 K23 ["UploadConflictRetry"]
  NAMECALL R9 R3 K21 ["getText"]
  CALL R9 3 1
  MOVE R8 R9
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K24 ["createElement"]
  LOADK R10 K25 ["Frame"]
  DUPTABLE R11 K29 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R12 K32 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K26 ["Size"]
  GETTABLEKS R12 R2 K33 ["backgroundColor"]
  SETTABLEKS R12 R11 K27 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K28 ["BorderSizePixel"]
  DUPTABLE R12 K38 [{"Icon", "UploadInProgressLabel", "PleaseWaitLabel", "CancelButton"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K24 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K41 [{"Position", "AnchorPoint", "Size"}]
  GETIMPORT R16 K32 [UDim2.new]
  LOADK R17 K42 [0.5]
  LOADN R18 0
  LOADK R19 K43 [0.3]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K39 ["Position"]
  GETIMPORT R16 K45 [Vector2.new]
  LOADK R17 K42 [0.5]
  LOADK R18 K42 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K40 ["AnchorPoint"]
  GETIMPORT R16 K32 [UDim2.new]
  LOADN R17 0
  LOADN R18 150
  LOADN R19 0
  LOADN R20 50
  CALL R16 4 1
  SETTABLEKS R16 R15 K26 ["Size"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["Icon"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K24 ["createElement"]
  LOADK R14 K46 ["TextLabel"]
  DUPTABLE R15 K53 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
  SETTABLEKS R7 R15 K47 ["Text"]
  GETIMPORT R16 K32 [UDim2.new]
  LOADK R17 K42 [0.5]
  LOADN R18 0
  LOADK R19 K42 [0.5]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K39 ["Position"]
  LOADN R16 24
  SETTABLEKS R16 R15 K48 ["TextSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K49 ["BackgroundTransparency"]
  GETIMPORT R16 K56 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K50 ["TextXAlignment"]
  GETTABLEKS R17 R2 K57 ["successText"]
  GETTABLEKS R16 R17 K58 ["text"]
  SETTABLEKS R16 R15 K51 ["TextColor3"]
  GETTABLEKS R17 R2 K57 ["successText"]
  GETTABLEKS R16 R17 K59 ["font"]
  SETTABLEKS R16 R15 K52 ["Font"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K35 ["UploadInProgressLabel"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K24 ["createElement"]
  LOADK R14 K46 ["TextLabel"]
  DUPTABLE R15 K60 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font"}]
  SETTABLEKS R8 R15 K47 ["Text"]
  GETIMPORT R16 K32 [UDim2.new]
  LOADK R17 K42 [0.5]
  LOADN R18 0
  LOADK R19 K61 [0.6]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K39 ["Position"]
  LOADN R16 24
  SETTABLEKS R16 R15 K48 ["TextSize"]
  LOADN R16 1
  SETTABLEKS R16 R15 K49 ["BackgroundTransparency"]
  GETTABLEKS R17 R2 K62 ["header"]
  GETTABLEKS R16 R17 K58 ["text"]
  SETTABLEKS R16 R15 K51 ["TextColor3"]
  GETIMPORT R16 K56 [Enum.TextXAlignment.Center]
  SETTABLEKS R16 R15 K50 ["TextXAlignment"]
  GETTABLEKS R17 R2 K62 ["header"]
  GETTABLEKS R16 R17 K59 ["font"]
  SETTABLEKS R16 R15 K52 ["Font"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K36 ["PleaseWaitLabel"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K24 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K65 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "Text"}]
  GETIMPORT R16 K45 [Vector2.new]
  LOADK R17 K42 [0.5]
  LOADK R18 K42 [0.5]
  CALL R16 2 1
  SETTABLEKS R16 R15 K40 ["AnchorPoint"]
  GETTABLEKS R16 R1 K3 ["OnClose"]
  SETTABLEKS R16 R15 K63 ["OnClick"]
  GETIMPORT R16 K32 [UDim2.new]
  LOADK R17 K42 [0.5]
  LOADN R18 0
  LOADK R19 K66 [0.9]
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K39 ["Position"]
  GETIMPORT R16 K32 [UDim2.new]
  LOADN R17 0
  LOADN R18 150
  LOADN R19 0
  LOADN R20 30
  CALL R16 4 1
  SETTABLEKS R16 R15 K26 ["Size"]
  LOADK R16 K67 ["Round"]
  SETTABLEKS R16 R15 K64 ["Style"]
  LOADK R18 K68 ["Button"]
  LOADK R19 K69 ["Cancel"]
  NAMECALL R16 R3 K21 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K47 ["Text"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K37 ["CancelButton"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["PublishedPlace"]
  GETTABLEKS R2 R3 K1 ["publishInfo"]
  GETTABLEKS R4 R0 K2 ["PublishInProgress"]
  GETTABLEKS R3 R4 K3 ["publishInProgress"]
  DUPTABLE R4 K8 [{"Id", "Name", "ParentGameName", "Progress"}]
  GETTABLEKS R5 R2 K9 ["id"]
  SETTABLEKS R5 R4 K4 ["Id"]
  GETTABLEKS R5 R2 K10 ["name"]
  SETTABLEKS R5 R4 K5 ["Name"]
  GETTABLEKS R5 R2 K11 ["parentGameName"]
  SETTABLEKS R5 R4 K6 ["ParentGameName"]
  DUPTABLE R5 K17 [{"Universe", "Place", "IsPublish", "FailCount", "RequestInFlight"}]
  GETTABLEKS R6 R3 K18 ["universe"]
  SETTABLEKS R6 R5 K12 ["Universe"]
  GETTABLEKS R6 R3 K19 ["place"]
  SETTABLEKS R6 R5 K13 ["Place"]
  GETTABLEKS R6 R3 K20 ["isPublish"]
  SETTABLEKS R6 R5 K14 ["IsPublish"]
  GETTABLEKS R6 R3 K21 ["failCount"]
  SETTABLEKS R6 R5 K15 ["FailCount"]
  GETTABLEKS R6 R3 K22 ["requestInFlight"]
  SETTABLEKS R6 R5 K16 ["RequestInFlight"]
  SETTABLEKS R5 R4 K7 ["Progress"]
  RETURN R4 1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K1 [{"requestInFlight"}]
  SETTABLEKS R0 R3 K0 ["requestInFlight"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"id", "name", "parentGameName"}]
  GETTABLEKS R5 R1 K4 ["universeId"]
  SETTABLEKS R5 R4 K0 ["id"]
  GETTABLEKS R5 R0 K1 ["name"]
  SETTABLEKS R5 R4 K1 ["name"]
  GETTABLEKS R5 R1 K1 ["name"]
  SETTABLEKS R5 R4 K2 ["parentGameName"]
  CALL R3 1 -1
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["SCREENS"]
  GETTABLEKS R4 R5 K6 ["PUBLISH_SUCCESSFUL"]
  CALL R3 1 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETUPVAL R4 1
  DUPTABLE R5 K6 [{"id", "name", "parentGameName", "parentGameId", "failed", "message"}]
  GETTABLEKS R6 R0 K7 ["placeId"]
  SETTABLEKS R6 R5 K0 ["id"]
  GETTABLEKS R6 R0 K1 ["name"]
  SETTABLEKS R6 R5 K1 ["name"]
  GETTABLEKS R6 R1 K1 ["name"]
  SETTABLEKS R6 R5 K2 ["parentGameName"]
  GETTABLEKS R6 R1 K8 ["universeId"]
  SETTABLEKS R6 R5 K3 ["parentGameId"]
  LOADB R6 1
  SETTABLEKS R6 R5 K4 ["failed"]
  SETTABLEKS R2 R5 K5 ["message"]
  CALL R4 1 -1
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R4 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K9 ["SCREENS"]
  GETTABLEKS R5 R6 K10 ["PUBLISH_FAIL"]
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K3 [{"DispatchRequestInFlight", "OpenPublishSuccessfulPage", "OpenPublishFailPage"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["DispatchRequestInFlight"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K1 ["OpenPublishSuccessfulPage"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K2 ["OpenPublishFailPage"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["StudioPublishService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["StudioService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K13 ["RoactRodux"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K14 ["ContextServices"]
  GETTABLEKS R7 R6 K15 ["withContext"]
  GETTABLEKS R8 R3 K16 ["UI"]
  GETTABLEKS R9 R8 K17 ["Button"]
  GETTABLEKS R10 R8 K18 ["LoadingIndicator"]
  GETIMPORT R11 K4 [game]
  LOADK R13 K19 ["ContentProvider"]
  NAMECALL R11 R11 K6 ["GetService"]
  CALL R11 2 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R0 K20 ["Src"]
  GETTABLEKS R14 R15 K21 ["Resources"]
  GETTABLEKS R13 R14 K22 ["Constants"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K23 ["Actions"]
  GETTABLEKS R14 R15 K24 ["SetPublishInfo"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K23 ["Actions"]
  GETTABLEKS R15 R16 K25 ["SetPublishInProgress"]
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R0 K20 ["Src"]
  GETTABLEKS R17 R18 K23 ["Actions"]
  GETTABLEKS R16 R17 K26 ["SetScreen"]
  CALL R15 1 1
  GETTABLEKS R16 R4 K27 ["PureComponent"]
  LOADK R18 K28 ["ScreenPublishInProgress"]
  NAMECALL R16 R16 K29 ["extend"]
  CALL R16 2 1
  GETIMPORT R17 K4 [game]
  LOADK R19 K30 ["StudioTeamCreateConflictRetryCount"]
  NAMECALL R17 R17 K31 ["GetFastInt"]
  CALL R17 2 1
  GETIMPORT R18 K4 [game]
  LOADK R20 K32 ["StudioTeamCreateConflictDelaySec"]
  NAMECALL R18 R18 K31 ["GetFastInt"]
  CALL R18 2 1
  GETIMPORT R19 K4 [game]
  LOADK R21 K33 ["StudioReworkSavePlaceDialog4"]
  NAMECALL R19 R19 K34 ["GetFastFlag"]
  CALL R19 2 1
  LOADN R20 0
  DUPCLOSURE R21 K35 [PROTO_0]
  SETTABLEKS R21 R16 K36 ["init"]
  NEWCLOSURE R21 P1
  CAPTURE VAL R1
  CAPTURE REF R20
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R21 R16 K37 ["didMount"]
  DUPCLOSURE R21 K38 [PROTO_4]
  CAPTURE VAL R19
  CAPTURE VAL R2
  SETTABLEKS R21 R16 K39 ["willUnmount"]
  NEWCLOSURE R21 P3
  CAPTURE VAL R1
  CAPTURE REF R20
  CAPTURE VAL R17
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R9
  SETTABLEKS R21 R16 K40 ["render"]
  MOVE R21 R7
  DUPTABLE R22 K43 [{"Stylizer", "Localization"}]
  GETTABLEKS R23 R6 K41 ["Stylizer"]
  SETTABLEKS R23 R22 K41 ["Stylizer"]
  GETTABLEKS R23 R6 K42 ["Localization"]
  SETTABLEKS R23 R22 K42 ["Localization"]
  CALL R21 1 1
  MOVE R22 R16
  CALL R21 1 1
  MOVE R16 R21
  DUPCLOSURE R21 K44 [PROTO_6]
  DUPCLOSURE R22 K45 [PROTO_10]
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R12
  GETTABLEKS R23 R5 K46 ["connect"]
  MOVE R24 R21
  MOVE R25 R22
  CALL R23 2 1
  MOVE R24 R16
  CALL R23 1 -1
  CLOSEUPVALS R20
  RETURN R23 -1
