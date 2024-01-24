PROTO_0:
  JUMPIFNOT R0 [+8]
  GETTABLEKS R1 R0 K0 ["Body"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K0 ["Body"]
  GETTABLEKS R1 R2 K1 ["errors"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  LOADNIL R1
  GETTABLEKS R5 R0 K0 ["Body"]
  GETTABLEKS R2 R5 K1 ["errors"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  JUMPIFEQKNIL R1 [+10]
  MOVE R7 R1
  LOADK R8 K2 ["
"]
  GETTABLEKS R9 R6 K3 ["code"]
  LOADK R10 K4 [": "]
  GETTABLEKS R11 R6 K5 ["message"]
  CONCAT R1 R7 R11
  JUMP [+6]
  GETTABLEKS R7 R6 K3 ["code"]
  LOADK R8 K4 [": "]
  GETTABLEKS R9 R6 K5 ["message"]
  CONCAT R1 R7 R9
  FORGLOOP R2 2 [-18]
  RETURN R1 1

PROTO_1:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  LOADNIL R1
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+8]
  GETIMPORT R2 K4 [table.concat]
  MOVE R3 R0
  LOADK R4 K5 [", "]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K7 [tostring]
  CALL R2 1 1
  MOVE R1 R2
  RETURN R1 1

PROTO_2:
  NEWTABLE R7 8 0
  LOADK R8 K0 ["CreateBundleInvalidBundleName"]
  SETTABLEN R8 R7 2
  LOADK R8 K1 ["CreateBundleInvalidAssetIds"]
  SETTABLEN R8 R7 3
  LOADK R8 K2 ["CreateBundleInvalidOperationId"]
  SETTABLEN R8 R7 4
  LOADK R8 K3 ["CreateBundleInvalidBundleType"]
  SETTABLEN R8 R7 5
  LOADK R8 K4 ["CreateBundleInvalidCreateBundleRequest"]
  SETTABLEN R8 R7 6
  GETUPVAL R9 0
  JUMPIFNOT R9 [+2]
  LOADK R8 K5 ["CreateBundleInvalidBundleDescription"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEN R8 R7 7
  GETUPVAL R9 0
  JUMPIFNOT R9 [+2]
  LOADK R8 K6 ["CreateBundleGroupCreatorNotSupported"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEN R8 R7 11
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADK R8 K7 ["CreateBundleInvalidCreationFee"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEN R8 R7 13
  NEWTABLE R8 1 0
  LOADN R9 0
  LOADK R10 K8 ["CreateBundleAuthorizationDenied"]
  SETTABLE R10 R8 R9
  NEWTABLE R9 4 0
  LOADN R10 0
  LOADK R11 K9 ["CreateBundleTokenValidationFailed"]
  SETTABLE R11 R9 R10
  GETUPVAL R11 0
  JUMPIFNOT R11 [+2]
  LOADK R10 K10 ["CreateBundleItemNotAllowedInBundle"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEN R10 R9 9
  GETUPVAL R11 0
  JUMPIFNOT R11 [+2]
  LOADK R10 K11 ["CreateBundleCreatorMismatch"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEN R10 R9 12
  GETUPVAL R11 0
  JUMPIFNOT R11 [+5]
  NEWTABLE R10 1 0
  LOADK R11 K12 ["CreateBundleInvalidState"]
  SETTABLEN R11 R10 10
  JUMP [+1]
  LOADNIL R10
  GETUPVAL R12 0
  JUMPIFNOT R12 [+5]
  NEWTABLE R11 1 0
  LOADK R12 K13 ["CreateBundleUnsupportedBundleType"]
  SETTABLEN R12 R11 8
  JUMP [+1]
  LOADNIL R11
  NEWTABLE R12 0 1
  LOADK R13 K14 ["CreateBundleServiceUnavailable"]
  SETTABLEN R13 R12 1
  NEWTABLE R13 8 0
  LOADN R14 144
  SETTABLE R7 R13 R14
  LOADN R14 145
  SETTABLE R8 R13 R14
  LOADN R14 147
  SETTABLE R9 R13 R14
  LOADN R14 156
  GETUPVAL R16 0
  JUMPIFNOT R16 [+2]
  MOVE R15 R10
  JUMP [+1]
  LOADNIL R15
  SETTABLE R15 R13 R14
  LOADN R14 245
  GETUPVAL R16 0
  JUMPIFNOT R16 [+2]
  MOVE R15 R11
  JUMP [+1]
  LOADNIL R15
  SETTABLE R15 R13 R14
  LOADN R14 247
  SETTABLE R12 R13 R14
  LOADNIL R14
  GETTABLEKS R16 R2 K15 ["StatusCode"]
  GETTABLE R15 R13 R16
  JUMPIFEQKNIL R15 [+53]
  GETTABLEKS R16 R2 K16 ["Body"]
  JUMPIFEQKNIL R16 [+49]
  GETTABLEKS R17 R2 K16 ["Body"]
  GETTABLEKS R16 R17 K17 ["errors"]
  JUMPIFEQKNIL R16 [+43]
  GETTABLEKS R19 R2 K16 ["Body"]
  GETTABLEKS R16 R19 K17 ["errors"]
  LOADNIL R17
  LOADNIL R18
  FORGPREP R16
  GETTABLEKS R22 R20 K18 ["code"]
  GETTABLE R21 R15 R22
  JUMPIFEQKNIL R21 [+18]
  JUMPIFNOTEQKNIL R14 [+8]
  LOADK R24 K19 ["AssetConfig"]
  MOVE R25 R21
  NAMECALL R22 R1 K20 ["getText"]
  CALL R22 3 1
  MOVE R14 R22
  JUMP [+8]
  MOVE R22 R14
  LOADK R23 K21 ["
"]
  LOADK R26 K19 ["AssetConfig"]
  MOVE R27 R21
  NAMECALL R24 R1 K20 ["getText"]
  CALL R24 3 1
  CONCAT R14 R22 R24
  FORGLOOP R16 2 [-23]
  GETUPVAL R16 1
  CALL R16 0 1
  JUMPIFNOT R16 [+8]
  JUMPIFEQKNIL R14 [+7]
  MOVE R16 R14
  GETUPVAL R17 2
  MOVE R18 R6
  MOVE R19 R1
  CALL R17 2 1
  CONCAT R14 R16 R17
  GETUPVAL R16 3
  CALL R16 0 1
  JUMPIFNOT R16 [+16]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K22 ["UGCUploadRequestBundleCreationStatusEvent"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K23 ["Status"]
  GETTABLEKS R17 R18 K24 ["Failure"]
  MOVE R18 R3
  MOVE R19 R4
  MOVE R20 R5
  LOADNIL R21
  GETUPVAL R22 5
  MOVE R23 R2
  CALL R22 1 1
  CALL R16 6 0
  GETUPVAL R17 6
  GETTABLEKS R16 R17 K25 ["shouldDebugWarnings"]
  CALL R16 0 1
  JUMPIFNOT R16 [+5]
  GETIMPORT R16 K27 [warn]
  LOADK R17 K28 ["Could not create UGC Bundle and received response:"]
  MOVE R18 R2
  CALL R16 2 0
  JUMPIFEQKNIL R14 [+8]
  GETUPVAL R18 7
  MOVE R19 R14
  CALL R18 1 -1
  NAMECALL R16 R0 K29 ["dispatch"]
  CALL R16 -1 0
  JUMP [+25]
  GETUPVAL R18 7
  GETUPVAL R20 1
  CALL R20 0 1
  JUMPIFNOT R20 [+12]
  LOADK R24 K19 ["AssetConfig"]
  LOADK R25 K30 ["CreateBundleGenericError"]
  NAMECALL R22 R1 K20 ["getText"]
  CALL R22 3 1
  MOVE R20 R22
  GETUPVAL R21 2
  MOVE R22 R6
  MOVE R23 R1
  CALL R21 2 1
  CONCAT R19 R20 R21
  JUMP [+5]
  LOADK R21 K19 ["AssetConfig"]
  LOADK R22 K30 ["CreateBundleGenericError"]
  NAMECALL R19 R1 K20 ["getText"]
  CALL R19 3 1
  CALL R18 1 -1
  NAMECALL R16 R0 K29 ["dispatch"]
  CALL R16 -1 0
  GETUPVAL R18 8
  LOADB R19 0
  CALL R18 1 -1
  NAMECALL R16 R0 K29 ["dispatch"]
  CALL R16 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETUPVAL R4 1
  LOADN R5 1
  GETUPVAL R6 2
  LOADK R8 K0 ["AssetConfig"]
  LOADK R9 K1 ["BundleUploadStepNumber"]
  DUPTABLE R10 K4 [{"currentStep", "totalSteps"}]
  LOADN R11 4
  SETTABLEKS R11 R10 K2 ["currentStep"]
  LOADN R11 4
  SETTABLEKS R11 R10 K3 ["totalSteps"]
  NAMECALL R6 R6 K5 ["getText"]
  CALL R6 4 1
  GETUPVAL R7 2
  LOADK R9 K0 ["AssetConfig"]
  LOADK R10 K6 ["BundleUploadCompleteStep"]
  NAMECALL R7 R7 K5 ["getText"]
  CALL R7 3 -1
  CALL R4 -1 -1
  NAMECALL R2 R2 K7 ["dispatch"]
  CALL R2 -1 0
  JUMPIFNOT R0 [+55]
  GETUPVAL R2 3
  CALL R2 0 1
  JUMPIFNOT R2 [+14]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K8 ["UGCUploadGetBundleCreationStatusEvent"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K9 ["Status"]
  GETTABLEKS R3 R4 K10 ["Success"]
  GETUPVAL R4 5
  GETUPVAL R5 6
  GETUPVAL R6 7
  GETUPVAL R7 8
  MOVE R8 R0
  CALL R2 6 0
  GETUPVAL R3 9
  GETTABLEKS R2 R3 K11 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K13 [warn]
  LOADK R3 K14 ["UGC bundled creation succeeded with returned bundleId:"]
  MOVE R4 R0
  CALL R2 2 0
  GETUPVAL R2 10
  CALL R2 0 1
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 0
  GETUPVAL R4 11
  GETUPVAL R5 12
  MOVE R6 R0
  GETUPVAL R7 13
  GETUPVAL R8 2
  CALL R4 4 -1
  NAMECALL R2 R2 K7 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R4 14
  MOVE R5 R0
  CALL R4 1 -1
  NAMECALL R2 R2 K7 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R4 15
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K7 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R2 3
  CALL R2 0 1
  JUMPIFNOT R2 [+17]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K8 ["UGCUploadGetBundleCreationStatusEvent"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K9 ["Status"]
  GETTABLEKS R3 R4 K15 ["Failure"]
  GETUPVAL R4 5
  GETUPVAL R5 6
  GETUPVAL R6 7
  GETUPVAL R7 8
  LOADNIL R8
  GETUPVAL R9 16
  MOVE R10 R1
  CALL R9 1 1
  CALL R2 7 0
  GETUPVAL R2 17
  JUMPIFNOT R2 [+64]
  GETUPVAL R3 9
  GETTABLEKS R2 R3 K11 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K13 [warn]
  LOADK R3 K16 ["UGC bundled creation failed and returned the response body:"]
  MOVE R4 R1
  CALL R2 2 0
  GETUPVAL R2 0
  GETUPVAL R4 18
  GETUPVAL R6 19
  CALL R6 0 1
  JUMPIFNOT R6 [+38]
  GETUPVAL R6 20
  JUMPIFEQKNIL R6 [+23]
  GETUPVAL R7 20
  GETTABLEKS R8 R1 K17 ["status"]
  GETTABLE R6 R7 R8
  JUMPIFEQKNIL R6 [+17]
  GETUPVAL R8 2
  LOADK R10 K0 ["AssetConfig"]
  GETUPVAL R12 20
  GETTABLEKS R13 R1 K17 ["status"]
  GETTABLE R11 R12 R13
  NAMECALL R8 R8 K5 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  GETUPVAL R7 21
  GETUPVAL R8 22
  GETUPVAL R9 2
  CALL R7 2 1
  CONCAT R5 R6 R7
  JUMP [+19]
  GETUPVAL R8 2
  LOADK R10 K0 ["AssetConfig"]
  LOADK R11 K18 ["ValidationErrorUnknown"]
  NAMECALL R8 R8 K5 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  GETUPVAL R7 21
  GETUPVAL R8 22
  GETUPVAL R9 2
  CALL R7 2 1
  CONCAT R5 R6 R7
  JUMP [+6]
  GETUPVAL R5 2
  LOADK R7 K0 ["AssetConfig"]
  LOADK R8 K18 ["ValidationErrorUnknown"]
  NAMECALL R5 R5 K5 ["getText"]
  CALL R5 3 1
  CALL R4 1 -1
  NAMECALL R2 R2 K7 ["dispatch"]
  CALL R2 -1 0
  JUMP [+31]
  GETUPVAL R2 0
  GETUPVAL R4 18
  JUMPIFNOT R1 [+2]
  MOVE R5 R1
  JUMP [+22]
  GETUPVAL R6 19
  CALL R6 0 1
  JUMPIFNOT R6 [+13]
  GETUPVAL R8 2
  LOADK R10 K0 ["AssetConfig"]
  LOADK R11 K18 ["ValidationErrorUnknown"]
  NAMECALL R8 R8 K5 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  GETUPVAL R7 21
  GETUPVAL R8 22
  GETUPVAL R9 2
  CALL R7 2 1
  CONCAT R5 R6 R7
  JUMP [+6]
  GETUPVAL R5 2
  LOADK R7 K0 ["AssetConfig"]
  LOADK R8 K18 ["ValidationErrorUnknown"]
  NAMECALL R5 R5 K5 ["getText"]
  CALL R5 3 1
  CALL R4 1 -1
  NAMECALL R2 R2 K7 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 0
  GETUPVAL R4 15
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K7 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["creationStatusId"]
  JUMPIFNOT R1 [+101]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+13]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["UGCUploadRequestBundleCreationStatusEvent"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Status"]
  GETTABLEKS R3 R4 K3 ["Success"]
  GETUPVAL R4 2
  GETUPVAL R5 3
  GETUPVAL R6 4
  MOVE R7 R1
  CALL R2 5 0
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K4 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K6 [warn]
  LOADK R3 K7 ["Received a creationStatusId to create a bundle:"]
  MOVE R4 R1
  CALL R2 2 0
  GETUPVAL R2 6
  GETUPVAL R4 7
  LOADK R5 K8 [0.9]
  GETUPVAL R6 8
  LOADK R8 K9 ["AssetConfig"]
  LOADK R9 K10 ["BundleUploadStepNumber"]
  DUPTABLE R10 K13 [{"currentStep", "totalSteps"}]
  LOADN R11 4
  SETTABLEKS R11 R10 K11 ["currentStep"]
  LOADN R11 4
  SETTABLEKS R11 R10 K12 ["totalSteps"]
  NAMECALL R6 R6 K14 ["getText"]
  CALL R6 4 1
  GETUPVAL R7 8
  LOADK R9 K9 ["AssetConfig"]
  LOADK R10 K15 ["BundleUploadGenerateBundleIdStep"]
  NAMECALL R7 R7 K14 ["getText"]
  CALL R7 3 -1
  CALL R4 -1 -1
  NAMECALL R2 R2 K16 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+13]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K17 ["UGCUploadGetBundleCreationStatusEvent"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Status"]
  GETTABLEKS R3 R4 K18 ["Start"]
  GETUPVAL R4 2
  GETUPVAL R5 3
  GETUPVAL R6 4
  MOVE R7 R1
  CALL R2 5 0
  GETUPVAL R2 6
  GETUPVAL R4 9
  GETUPVAL R5 10
  MOVE R6 R1
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U10
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  CAPTURE UPVAL U22
  CALL R4 3 -1
  NAMECALL R2 R2 K16 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+16]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["UGCUploadRequestBundleCreationStatusEvent"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Status"]
  GETTABLEKS R3 R4 K19 ["Failure"]
  GETUPVAL R4 2
  GETUPVAL R5 3
  GETUPVAL R6 4
  LOADNIL R7
  GETUPVAL R8 16
  MOVE R9 R0
  CALL R8 1 1
  CALL R2 6 0
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K4 ["shouldDebugWarnings"]
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETIMPORT R2 K6 [warn]
  LOADK R3 K20 ["Unexpected UGCCreateBundleRequest respoonse:"]
  MOVE R4 R0
  CALL R2 2 0
  GETUPVAL R2 6
  GETUPVAL R4 18
  GETUPVAL R5 8
  LOADK R7 K9 ["AssetConfig"]
  LOADK R8 K21 ["CreateBundleGenericError"]
  NAMECALL R5 R5 K14 ["getText"]
  CALL R5 3 -1
  CALL R4 -1 -1
  NAMECALL R2 R2 K16 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 6
  GETUPVAL R4 15
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K16 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  MOVE R4 R0
  GETUPVAL R5 4
  GETUPVAL R6 5
  GETUPVAL R7 6
  GETUPVAL R8 7
  CALL R1 7 0
  RETURN R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  GETUPVAL R3 3
  MOVE R4 R0
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  NEWTABLE R1 4 0
  LOADK R2 K0 ["BundleCreationValidationFailed"]
  SETTABLEN R2 R1 3
  LOADK R2 K1 ["BundleCreationInsufficientFunds"]
  SETTABLEN R2 R1 4
  LOADK R2 K2 ["BundleCreationFeeMismatch"]
  SETTABLEN R2 R1 6
  JUMP [+1]
  LOADNIL R1
  LOADNIL R2
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+6]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["getAvatarAssetTypeAsString"]
  GETUPVAL R4 3
  CALL R3 1 1
  MOVE R2 R3
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+27]
  GETUPVAL R4 4
  JUMPIF R4 [+2]
  LOADNIL R3
  JUMP [+24]
  LOADNIL R5
  FASTCALL1 TYPE R4 [+3]
  MOVE R7 R4
  GETIMPORT R6 K5 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K6 ["table"] [+8]
  GETIMPORT R6 K8 [table.concat]
  MOVE R7 R4
  LOADK R8 K9 [", "]
  CALL R6 2 1
  MOVE R5 R6
  JUMP [+6]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R7 R4
  GETIMPORT R6 K11 [tostring]
  CALL R6 1 1
  MOVE R5 R6
  MOVE R3 R5
  JUMP [+1]
  LOADNIL R3
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE REF R2
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE UPVAL U15
  CAPTURE UPVAL U16
  CAPTURE UPVAL U17
  CAPTURE UPVAL U18
  CAPTURE UPVAL U19
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U20
  CAPTURE UPVAL U21
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U22
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE REF R2
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE UPVAL U21
  GETUPVAL R8 8
  LOADK R9 K12 [0.85]
  GETUPVAL R10 9
  LOADK R12 K13 ["AssetConfig"]
  LOADK R13 K14 ["BundleUploadStepNumber"]
  DUPTABLE R14 K17 [{"currentStep", "totalSteps"}]
  LOADN R15 3
  SETTABLEKS R15 R14 K15 ["currentStep"]
  LOADN R15 4
  SETTABLEKS R15 R14 K16 ["totalSteps"]
  NAMECALL R10 R10 K18 ["getText"]
  CALL R10 4 1
  GETUPVAL R11 9
  LOADK R13 K13 ["AssetConfig"]
  LOADK R14 K19 ["BundleUploadCreateBundleStep"]
  NAMECALL R11 R11 K18 ["getText"]
  CALL R11 3 -1
  CALL R8 -1 -1
  NAMECALL R6 R0 K20 ["dispatch"]
  CALL R6 -1 0
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+12]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K21 ["UGCUploadRequestBundleCreationStatusEvent"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K22 ["Status"]
  GETTABLEKS R7 R8 K23 ["Start"]
  MOVE R8 R2
  GETUPVAL R9 6
  MOVE R10 R3
  CALL R6 4 0
  GETUPVAL R6 11
  GETUPVAL R8 3
  GETUPVAL R9 23
  GETUPVAL R10 24
  GETUPVAL R11 4
  GETUPVAL R12 6
  GETUPVAL R13 21
  NAMECALL R6 R6 K24 ["postCreateBundle"]
  CALL R6 7 1
  MOVE R8 R4
  MOVE R9 R5
  NAMECALL R6 R6 K25 ["andThen"]
  CALL R6 3 -1
  CLOSEUPVALS R2
  RETURN R6 -1

PROTO_7:
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R6
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  CAPTURE VAL R7
  CAPTURE UPVAL U15
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R9 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Core"]
  GETTABLEKS R1 R2 K5 ["Actions"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["NetworkError"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["SetAssetId"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R5 R1 K10 ["SetProgressBarInfo"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R1 K11 ["UploadResult"]
  CALL R5 1 1
  GETTABLEKS R8 R0 K4 ["Core"]
  GETTABLEKS R7 R8 K12 ["Networking"]
  GETTABLEKS R6 R7 K13 ["Requests"]
  GETIMPORT R7 K7 [require]
  GETTABLEKS R8 R6 K14 ["PollForBundleCreationStatus"]
  CALL R7 1 1
  GETTABLEKS R9 R0 K4 ["Core"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETIMPORT R9 K7 [require]
  GETTABLEKS R11 R8 K16 ["Analytics"]
  GETTABLEKS R10 R11 K16 ["Analytics"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETTABLEKS R11 R8 K17 ["AssetConfigUtil"]
  CALL R10 1 1
  GETIMPORT R11 K7 [require]
  GETTABLEKS R12 R8 K18 ["DebugFlags"]
  CALL R11 1 1
  GETIMPORT R12 K7 [require]
  GETTABLEKS R14 R8 K19 ["SharedFlags"]
  GETTABLEKS R13 R14 K20 ["getFFlagEnableUGCUploadFlowAnalytics"]
  CALL R12 1 1
  GETIMPORT R13 K22 [game]
  LOADK R15 K23 ["EnableAddedCreateUGCBundleErrorCodes"]
  LOADB R16 0
  NAMECALL R13 R13 K24 ["DefineFastFlag"]
  CALL R13 3 1
  GETIMPORT R14 K7 [require]
  GETTABLEKS R16 R8 K19 ["SharedFlags"]
  GETTABLEKS R15 R16 K25 ["getFFlagEnableCreateUGCBundleCreationFeeErrorCodes"]
  CALL R14 1 1
  GETIMPORT R15 K7 [require]
  GETTABLEKS R19 R0 K4 ["Core"]
  GETTABLEKS R18 R19 K15 ["Util"]
  GETTABLEKS R17 R18 K19 ["SharedFlags"]
  GETTABLEKS R16 R17 K26 ["getFFlagEnableUGCUploadingDataSharing"]
  CALL R15 1 1
  MOVE R17 R15
  CALL R17 0 1
  JUMPIFNOT R17 [+6]
  GETIMPORT R16 K7 [require]
  GETTABLEKS R17 R6 K27 ["UGCBundleUploadDataSharingRequest"]
  CALL R16 1 1
  JUMP [+1]
  LOADNIL R16
  GETIMPORT R17 K7 [require]
  GETTABLEKS R18 R8 K28 ["getRobuxMessageToAppend"]
  CALL R17 1 1
  DUPCLOSURE R18 K29 [PROTO_0]
  DUPCLOSURE R19 K30 [PROTO_1]
  DUPCLOSURE R20 K31 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPCLOSURE R21 K32 [PROTO_7]
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R20
  RETURN R21 1
