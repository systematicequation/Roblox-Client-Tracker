PROTO_0:
  GETTABLEKS R2 R1 K0 ["session"]
  NAMECALL R3 R2 K1 ["GetImportTree"]
  CALL R3 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["_store"]
  NAMECALL R6 R6 K3 ["getState"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K4 ["Sessions"]
  GETTABLEKS R4 R5 K5 ["sessionQueue"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["_store"]
  GETUPVAL R7 1
  GETUPVAL R8 2
  MOVE R9 R4
  NEWTABLE R10 1 0
  GETTABLEKS R11 R1 K6 ["filepath"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K7 ["update"]
  MOVE R13 R1
  DUPTABLE R14 K9 [{"uploaded"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K8 ["uploaded"]
  CALL R12 2 1
  SETTABLE R12 R10 R11
  CALL R8 2 -1
  CALL R7 -1 -1
  NAMECALL R5 R5 K10 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["_store"]
  GETUPVAL R7 4
  MOVE R8 R0
  MOVE R9 R3
  CALL R7 2 -1
  NAMECALL R5 R5 K10 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 5
  CALL R5 0 1
  JUMPIFNOT R5 [+5]
  GETUPVAL R5 6
  MOVE R6 R0
  MOVE R7 R3
  MOVE R8 R2
  CALL R5 3 0
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  DUPTABLE R2 K2 [{"_store", "_mock"}]
  SETTABLEKS R0 R2 K0 ["_store"]
  SETTABLEKS R1 R2 K1 ["_mock"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R3 R2 K3 ["resolveUploadPromise"]
  DUPCLOSURE R3 K4 [PROTO_1]
  SETTABLEKS R3 R2 K5 ["rejectUploadPromise"]
  GETUPVAL R5 6
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K7 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["_store"]
  NAMECALL R3 R3 K1 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K2 ["Dialogs"]
  GETTABLEKS R1 R2 K3 ["uploading"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  NAMECALL R1 R0 K4 ["removeAllQueuedFiles"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["_store"]
  NAMECALL R3 R3 K1 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K2 ["Sessions"]
  GETTABLEKS R1 R2 K3 ["sessionQueue"]
  RETURN R1 1

PROTO_6:
  JUMPIFNOT R1 [+8]
  GETTABLEKS R2 R1 K0 ["session"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R1 K0 ["session"]
  NAMECALL R2 R2 K1 ["Cancel"]
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R3 R0 K0 ["_store"]
  NAMECALL R3 R3 K1 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K2 ["Dialogs"]
  GETTABLEKS R1 R2 K3 ["uploading"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_store"]
  GETUPVAL R3 0
  CALL R3 0 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  NAMECALL R1 R0 K5 ["_getSessionQueue"]
  CALL R1 1 3
  FORGPREP R1
  MOVE R8 R5
  NAMECALL R6 R0 K6 ["destroyItem"]
  CALL R6 2 0
  FORGLOOP R1 2 [-5]
  GETTABLEKS R1 R0 K0 ["_store"]
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_store"]
  GETUPVAL R3 0
  CALL R3 0 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_store"]
  GETUPVAL R3 0
  CALL R3 0 -1
  NAMECALL R1 R1 K1 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R1 K0 ["validSession"]
  RETURN R2 1

PROTO_11:
  GETTABLEKS R3 R0 K0 ["_store"]
  NAMECALL R3 R3 K1 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K2 ["Dialogs"]
  GETTABLEKS R1 R2 K3 ["uploading"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["_store"]
  GETUPVAL R3 0
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K0 ["_store"]
  GETUPVAL R3 1
  LOADB R4 1
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  NAMECALL R1 R0 K5 ["_getSessionQueue"]
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  MOVE R9 R6
  NAMECALL R7 R0 K6 ["uploadItem"]
  CALL R7 2 0
  FORGLOOP R2 2 [-5]
  GETTABLEKS R2 R0 K0 ["_store"]
  GETUPVAL R4 1
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K4 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R1 K0 ["enabled"]
  JUMPIFNOT R2 [+19]
  MOVE R4 R1
  NAMECALL R2 R0 K1 ["isImportEnabled"]
  CALL R2 2 1
  JUMPIFNOT R2 [+14]
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["_createUploadPromise"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K3 ["resolveUploadPromise"]
  GETTABLEKS R5 R0 K4 ["rejectUploadPromise"]
  NAMECALL R2 R2 K5 ["andThen"]
  CALL R2 3 1
  NAMECALL R3 R2 K6 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["Succeeded"]
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 2
  MOVE R2 R0
  GETUPVAL R3 3
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 4
  CALL R1 0 0
  RETURN R0 0

PROTO_14:
  RETURN R0 0

PROTO_15:
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["session"]
  JUMPIFNOT R4 [+7]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["session"]
  NAMECALL R4 R4 K1 ["GetImportTree"]
  CALL R4 1 1
  JUMPIF R4 [+4]
  MOVE R4 R1
  CALL R4 0 0
  CLOSEUPVALS R2
  RETURN R0 0
  NEWCLOSURE R4 P0
  CAPTURE REF R2
  CAPTURE REF R3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  DUPCLOSURE R5 K2 [PROTO_14]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["session"]
  GETTABLEKS R7 R6 K3 ["UploadComplete"]
  MOVE R9 R4
  NAMECALL R7 R7 K4 ["Connect"]
  CALL R7 2 1
  MOVE R2 R7
  GETTABLEKS R7 R6 K5 ["UploadProgress"]
  MOVE R9 R5
  NAMECALL R7 R7 K4 ["Connect"]
  CALL R7 2 1
  MOVE R3 R7
  NAMECALL R7 R6 K6 ["Upload"]
  CALL R7 1 0
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CALL R2 1 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Dash"]
  GETTABLEKS R2 R3 K9 ["join"]
  GETTABLEKS R3 R1 K10 ["ContextServices"]
  GETTABLEKS R4 R3 K11 ["ContextItem"]
  GETTABLEKS R6 R1 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["Promise"]
  GETTABLEKS R7 R0 K14 ["Src"]
  GETTABLEKS R6 R7 K15 ["Actions"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K16 ["SetShowPreview"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K17 ["SetUploading"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R6 K18 ["SetSessionQueue"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K19 ["DataTypes"]
  GETTABLEKS R11 R12 K20 ["QueuedSession"]
  CALL R10 1 1
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K21 ["Thunks"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R11 K22 ["InsertModelInWorkspace"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R11 K23 ["ClosePreview"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K14 ["Src"]
  GETTABLEKS R16 R17 K24 ["Utility"]
  GETTABLEKS R15 R16 K25 ["openInAvatarPreviewer"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K14 ["Src"]
  GETTABLEKS R17 R18 K26 ["Flags"]
  GETTABLEKS R16 R17 K27 ["getFFlagImporterOpensAvatarPreviewerBetaCheck"]
  CALL R15 1 1
  LOADK R18 K28 ["QueueController"]
  NAMECALL R16 R4 K29 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K30 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R16
  SETTABLEKS R17 R16 K31 ["new"]
  DUPCLOSURE R17 K32 [PROTO_3]
  CAPTURE VAL R16
  SETTABLEKS R17 R16 K33 ["mock"]
  DUPCLOSURE R17 K34 [PROTO_4]
  SETTABLEKS R17 R16 K35 ["destroy"]
  DUPCLOSURE R17 K36 [PROTO_5]
  SETTABLEKS R17 R16 K37 ["_getSessionQueue"]
  DUPCLOSURE R17 K38 [PROTO_6]
  SETTABLEKS R17 R16 K39 ["destroyItem"]
  DUPCLOSURE R17 K40 [PROTO_7]
  CAPTURE VAL R13
  CAPTURE VAL R9
  SETTABLEKS R17 R16 K41 ["removeAllQueuedFiles"]
  DUPCLOSURE R17 K42 [PROTO_8]
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K43 ["removeErroredQueuedFiles"]
  DUPCLOSURE R17 K44 [PROTO_9]
  CAPTURE VAL R13
  SETTABLEKS R17 R16 K45 ["removeUploadedQueuedFiles"]
  DUPCLOSURE R17 K46 [PROTO_10]
  SETTABLEKS R17 R16 K47 ["isImportEnabled"]
  DUPCLOSURE R17 K48 [PROTO_11]
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R17 R16 K49 ["beginImportQueue"]
  DUPCLOSURE R17 K50 [PROTO_12]
  SETTABLEKS R17 R16 K51 ["uploadItem"]
  DUPCLOSURE R17 K52 [PROTO_16]
  CAPTURE VAL R5
  SETTABLEKS R17 R16 K53 ["_createUploadPromise"]
  RETURN R16 1
