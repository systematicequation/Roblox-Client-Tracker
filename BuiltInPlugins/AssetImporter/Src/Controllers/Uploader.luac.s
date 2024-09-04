PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["_store"]
  NAMECALL R2 R2 K1 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K2 ["Dialogs"]
  GETTABLEKS R0 R1 K3 ["uploading"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K0 ["_uploadPromise"]
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["_uploadingItem"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["_isUploading"]
  CALL R2 0 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R1 K3 ["session"]
  NAMECALL R3 R2 K4 ["GetImportTree"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["_store"]
  GETUPVAL R6 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["update"]
  MOVE R8 R1
  DUPTABLE R9 K8 [{"uploaded"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K7 ["uploaded"]
  CALL R7 2 -1
  CALL R6 -1 -1
  NAMECALL R4 R4 K9 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["_store"]
  GETUPVAL R6 3
  MOVE R7 R0
  MOVE R8 R3
  CALL R6 2 -1
  NAMECALL R4 R4 K9 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 4
  MOVE R5 R0
  MOVE R6 R3
  MOVE R7 R2
  CALL R4 3 0
  NAMECALL R4 R2 K10 ["Cancel"]
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["_uploadPromise"]
  RETURN R0 0

PROTO_3:
  DUPTABLE R2 K4 [{"_store", "_mock", "_uploadPromise", "_uploadingItem"}]
  SETTABLEKS R0 R2 K0 ["_store"]
  SETTABLEKS R1 R2 K1 ["_mock"]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["_uploadPromise"]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["_uploadingItem"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K5 ["_isUploading"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R3 R2 K6 ["resolveUploadPromise"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K7 ["rejectUploadPromise"]
  GETUPVAL R5 4
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K9 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  MOVE R2 R0
  LOADB R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["_store"]
  NAMECALL R3 R3 K1 ["getState"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K2 ["Dialogs"]
  GETTABLEKS R1 R2 K3 ["uploading"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_isUploading"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 0
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 1
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R4 R0 K1 ["_store"]
  NAMECALL R4 R4 K3 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K4 ["Sessions"]
  GETTABLEKS R2 R3 K5 ["activeSessionCount"]
  GETTABLEKS R3 R0 K1 ["_store"]
  GETUPVAL R5 2
  LOADN R6 0
  CALL R5 1 -1
  NAMECALL R3 R3 K2 ["dispatch"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K1 ["_store"]
  GETUPVAL R5 3
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R3 K2 ["dispatch"]
  CALL R3 -1 0
  GETTABLEKS R3 R0 K1 ["_store"]
  GETUPVAL R5 4
  LOADB R6 1
  CALL R5 1 -1
  NAMECALL R3 R3 K2 ["dispatch"]
  CALL R3 -1 0
  LOADN R3 1
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R0 K0 ["_isUploading"]
  CALL R9 0 1
  JUMPIFEQKB R9 FALSE [+20]
  GETUPVAL R9 5
  MOVE R10 R8
  CALL R9 1 1
  JUMPIFNOT R9 [+13]
  MOVE R11 R8
  NAMECALL R9 R0 K6 ["_upload"]
  CALL R9 2 0
  GETTABLEKS R9 R0 K1 ["_store"]
  GETUPVAL R11 2
  MOVE R12 R3
  CALL R11 1 -1
  NAMECALL R9 R9 K2 ["dispatch"]
  CALL R9 -1 0
  ADDK R3 R3 K7 [1]
  FORGLOOP R4 2 [-23]
  GETTABLEKS R4 R0 K1 ["_store"]
  GETUPVAL R6 1
  LOADB R7 0
  CALL R6 1 -1
  NAMECALL R4 R4 K2 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_isUploading"]
  CALL R2 0 1
  JUMPIF R2 [+4]
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 1
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 2
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 3
  LOADN R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 4
  LOADN R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 5
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  MOVE R4 R1
  NAMECALL R2 R0 K3 ["_upload"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 3
  LOADN R5 1
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  GETTABLEKS R2 R0 K1 ["_store"]
  GETUPVAL R4 1
  LOADB R5 0
  CALL R4 1 -1
  NAMECALL R2 R2 K2 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_8:
  SETTABLEKS R1 R0 K0 ["_uploadingItem"]
  MOVE R4 R1
  NAMECALL R2 R0 K1 ["_createUploadPromise"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K2 ["resolveUploadPromise"]
  GETTABLEKS R5 R0 K3 ["rejectUploadPromise"]
  NAMECALL R2 R2 K4 ["andThen"]
  CALL R2 3 1
  SETTABLEKS R2 R0 K5 ["_uploadPromise"]
  GETTABLEKS R2 R0 K5 ["_uploadPromise"]
  NAMECALL R2 R2 K6 ["await"]
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_isUploading"]
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K1 ["_store"]
  GETUPVAL R3 0
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  GETTABLEKS R1 R0 K3 ["_uploadingItem"]
  JUMPIFNOT R1 [+15]
  GETTABLEKS R2 R0 K3 ["_uploadingItem"]
  GETTABLEKS R1 R2 K4 ["session"]
  JUMPIFNOT R1 [+10]
  GETTABLEKS R2 R0 K3 ["_uploadingItem"]
  GETTABLEKS R1 R2 K4 ["session"]
  NAMECALL R1 R1 K5 ["Cancel"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_uploadingItem"]
  GETTABLEKS R1 R0 K6 ["_uploadPromise"]
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["reject"]
  GETTABLEKS R2 R0 K6 ["_uploadPromise"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["_uploadPromise"]
  GETTABLEKS R1 R0 K1 ["_store"]
  GETUPVAL R3 2
  LOADB R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
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

PROTO_11:
  RETURN R0 0

PROTO_12:
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
  DUPCLOSURE R5 K2 [PROTO_11]
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

PROTO_13:
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
  GETTABLEKS R2 R3 K7 ["Promise"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K8 ["Src"]
  GETTABLEKS R2 R3 K9 ["Actions"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["SetProgress"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R2 K11 ["SetProgressGoal"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R2 K12 ["SetShowProgress"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R2 K13 ["SetUploading"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R2 K14 ["SetShowPreview"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K15 ["DataTypes"]
  GETTABLEKS R9 R10 K16 ["QueuedSession"]
  CALL R8 1 1
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K17 ["Thunks"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R9 K18 ["InsertModelInWorkspace"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R9 K19 ["UpdateSessionInfo"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K8 ["Src"]
  GETTABLEKS R14 R15 K20 ["Utility"]
  GETTABLEKS R13 R14 K21 ["openInAvatarPreviewer"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K8 ["Src"]
  GETTABLEKS R15 R16 K20 ["Utility"]
  GETTABLEKS R14 R15 K22 ["shouldImportItem"]
  CALL R13 1 1
  NEWTABLE R14 0 0
  SETTABLEKS R14 R14 K23 ["__index"]
  DUPCLOSURE R15 K24 [PROTO_3]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R14
  SETTABLEKS R15 R14 K25 ["new"]
  DUPCLOSURE R15 K26 [PROTO_4]
  CAPTURE VAL R14
  SETTABLEKS R15 R14 K27 ["mock"]
  DUPCLOSURE R15 K28 [PROTO_5]
  SETTABLEKS R15 R14 K29 ["destroy"]
  DUPCLOSURE R15 K30 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R13
  SETTABLEKS R15 R14 K31 ["uploadQueue"]
  DUPCLOSURE R15 K32 [PROTO_7]
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R15 R14 K33 ["uploadItem"]
  DUPCLOSURE R15 K34 [PROTO_8]
  SETTABLEKS R15 R14 K35 ["_upload"]
  DUPCLOSURE R15 K36 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R15 R14 K37 ["stop"]
  DUPCLOSURE R15 K38 [PROTO_13]
  CAPTURE VAL R1
  SETTABLEKS R15 R14 K39 ["_createUploadPromise"]
  RETURN R14 1
