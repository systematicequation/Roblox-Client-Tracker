PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETTABLEKS R1 R0 K1 ["SetShowUploadWidget"]
  CALL R1 0 0
  JUMP [+4]
  GETTABLEKS R1 R0 K2 ["SetShowProgress"]
  LOADB R2 0
  CALL R1 1 0
  GETTABLEKS R1 R0 K3 ["FileController"]
  NAMECALL R1 R1 K4 ["DEPRECATED_cleanupPreview"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOTEQKS R0 K0 ["Close"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onClose"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"uploadResults"}]
  SETTABLEKS R0 R3 K0 ["uploadResults"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["SetUploading"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["state"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R0 K2 ["ShowUploadWidget"]
  JUMP [+2]
  GETTABLEKS R2 R0 K3 ["ShowProgress"]
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K4 ["UploadWidgetItem"]
  GETTABLEKS R3 R4 K5 ["uploadResults"]
  JUMP [+2]
  GETTABLEKS R3 R1 K5 ["uploadResults"]
  JUMPIFNOT R2 [+86]
  GETTABLEKS R4 R0 K6 ["Uploading"]
  JUMPIFNOT R4 [+12]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K9 [{"OnImportCompleted"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["onImportCompleted"]
  SETTABLEKS R7 R6 K8 ["OnImportCompleted"]
  CALL R4 2 -1
  RETURN R4 -1
  JUMPIFNOT R3 [+27]
  GETTABLEKS R4 R3 K11 ["Succeeded"]
  JUMPIFNOT R4 [+24]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETTABLEKS R5 R0 K4 ["UploadWidgetItem"]
  GETTABLEKS R4 R5 K12 ["session"]
  NAMECALL R4 R4 K13 ["GetImportTree"]
  CALL R4 1 1
  JUMP [+2]
  GETTABLEKS R4 R0 K14 ["RootImportData"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K16 [{"AddedToInventory"}]
  GETTABLEKS R8 R4 K17 ["AddModelToInventory"]
  SETTABLEKS R8 R7 K15 ["AddedToInventory"]
  CALL R5 2 -1
  RETURN R5 -1
  JUMPIFNOT R3 [+42]
  GETTABLEKS R4 R3 K11 ["Succeeded"]
  JUMPIFEQKNIL R4 [+39]
  GETTABLEKS R4 R3 K11 ["Succeeded"]
  JUMPIF R4 [+35]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+8]
  GETTABLEKS R5 R0 K4 ["UploadWidgetItem"]
  GETTABLEKS R4 R5 K12 ["session"]
  NAMECALL R4 R4 K13 ["GetImportTree"]
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K21 [{"LayoutOrder", "ErrorMap", "ExistingPackageId"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K18 ["LayoutOrder"]
  GETTABLEKS R8 R3 K22 ["ErrorMessages"]
  SETTABLEKS R8 R7 K19 ["ErrorMap"]
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+3]
  GETTABLEKS R8 R4 K20 ["ExistingPackageId"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K20 ["ExistingPackageId"]
  CALL R5 2 -1
  RETURN R5 -1
  LOADNIL R4
  RETURN R4 1

PROTO_4:
  DUPTABLE R1 K3 [{"uploadResults", "progressValue", "errorMap"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["uploadResults"]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["progressValue"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["errorMap"]
  SETTABLEKS R1 R0 K4 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K5 ["onClose"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onButtonPressed"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onImportCompleted"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K8 ["getWidgetContent"]
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["UploadWidget"]
  GETTABLEKS R6 R1 K4 ["Uploading"]
  JUMPIFNOT R6 [+3]
  NEWTABLE R5 0 0
  JUMP [+15]
  NEWTABLE R5 0 1
  DUPTABLE R6 K7 [{"Key", "Text"}]
  LOADK R7 K8 ["Close"]
  SETTABLEKS R7 R6 K5 ["Key"]
  LOADK R9 K9 ["Plugin"]
  LOADK R10 K8 ["Close"]
  NAMECALL R7 R2 K10 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["Text"]
  SETLIST R5 R6 1 [1]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K21 [{"Enabled", "MinContentSize", "Modal", "Resizable", "Title", "Buttons", "OnClose", "OnButtonPressed", "ButtonHorizontalAlignment"}]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+3]
  GETTABLEKS R9 R1 K22 ["ShowUploadWidget"]
  JUMP [+2]
  GETTABLEKS R9 R1 K23 ["ShowProgress"]
  SETTABLEKS R9 R8 K12 ["Enabled"]
  GETIMPORT R9 K26 [Vector2.new]
  GETTABLEKS R10 R4 K27 ["Width"]
  GETTABLEKS R11 R4 K28 ["Height"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["MinContentSize"]
  LOADB R9 0
  SETTABLEKS R9 R8 K14 ["Modal"]
  LOADB R9 1
  SETTABLEKS R9 R8 K15 ["Resizable"]
  GETTABLEKS R9 R1 K16 ["Title"]
  SETTABLEKS R9 R8 K16 ["Title"]
  SETTABLEKS R5 R8 K17 ["Buttons"]
  GETTABLEKS R9 R0 K29 ["onClose"]
  SETTABLEKS R9 R8 K18 ["OnClose"]
  GETTABLEKS R9 R0 K30 ["onButtonPressed"]
  SETTABLEKS R9 R8 K19 ["OnButtonPressed"]
  GETIMPORT R9 K34 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K20 ["ButtonHorizontalAlignment"]
  DUPTABLE R9 K36 [{"ContentInfo"}]
  GETTABLEKS R10 R0 K37 ["getWidgetContent"]
  CALL R10 0 1
  SETTABLEKS R10 R9 K35 ["ContentInfo"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K3 [{"SetShowProgress", "SetUploading", "SetShowUploadWidget"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+4]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["SetShowProgress"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K1 ["SetUploading"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["SetShowUploadWidget"]
  RETURN R1 1

PROTO_10:
  DUPTABLE R1 K5 [{"ShowUploadWidget", "UploadWidgetItem", "Uploading", "RootImportData", "ShowProgress"}]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K6 ["Dialogs"]
  GETTABLEKS R2 R3 K0 ["ShowUploadWidget"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["ShowUploadWidget"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K6 ["Dialogs"]
  GETTABLEKS R2 R3 K7 ["uploadWidgetItem"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["UploadWidgetItem"]
  GETTABLEKS R3 R0 K6 ["Dialogs"]
  GETTABLEKS R2 R3 K8 ["uploading"]
  SETTABLEKS R2 R1 K2 ["Uploading"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K9 ["Preview"]
  GETTABLEKS R2 R3 K10 ["importTree"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["RootImportData"]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+5]
  GETTABLEKS R3 R0 K6 ["Dialogs"]
  GETTABLEKS R2 R3 K11 ["showProgress"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["ShowProgress"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R8 R3 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R3 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["StyledDialog"]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K18 ["Components"]
  GETTABLEKS R11 R12 K19 ["Dialogs"]
  GETTABLEKS R10 R11 K20 ["UploadWidgets"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R10 K21 ["SuccessWidget"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R10 K22 ["FailureWidget"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R10 K23 ["ProgressWidget"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K24 ["Controllers"]
  GETTABLEKS R15 R16 K25 ["FileController"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K17 ["Src"]
  GETTABLEKS R17 R18 K26 ["Actions"]
  GETTABLEKS R16 R17 K27 ["SetShowProgress"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K26 ["Actions"]
  GETTABLEKS R17 R18 K28 ["SetShowUploadWidget"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K17 ["Src"]
  GETTABLEKS R19 R20 K26 ["Actions"]
  GETTABLEKS R18 R19 K29 ["SetUploading"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K17 ["Src"]
  GETTABLEKS R20 R21 K30 ["Flags"]
  GETTABLEKS R19 R20 K31 ["getFFlagAssetImportRefactorUploadWidgets"]
  CALL R18 1 1
  GETTABLEKS R19 R1 K32 ["PureComponent"]
  LOADK R21 K33 ["UploadWidget"]
  NAMECALL R19 R19 K34 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K35 [PROTO_4]
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R20 R19 K36 ["init"]
  DUPCLOSURE R20 K37 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R18
  SETTABLEKS R20 R19 K38 ["render"]
  MOVE R20 R5
  DUPTABLE R21 K39 [{"Localization", "Stylizer", "FileController"}]
  SETTABLEKS R6 R21 K12 ["Localization"]
  SETTABLEKS R7 R21 K14 ["Stylizer"]
  SETTABLEKS R14 R21 K25 ["FileController"]
  CALL R20 1 1
  MOVE R21 R19
  CALL R20 1 1
  MOVE R19 R20
  DUPCLOSURE R20 K40 [PROTO_9]
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R16
  DUPCLOSURE R21 K41 [PROTO_10]
  CAPTURE VAL R18
  GETTABLEKS R22 R2 K42 ["connect"]
  MOVE R23 R21
  MOVE R24 R20
  CALL R22 2 1
  MOVE R23 R19
  CALL R22 1 -1
  RETURN R22 -1
