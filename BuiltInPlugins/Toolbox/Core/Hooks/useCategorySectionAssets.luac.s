PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R0 R2
  JUMPIFNOT R1 [+24]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  MOVE R2 R0
  NEWTABLE R3 1 0
  GETUPVAL R4 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["Dictionary"]
  GETTABLEKS R5 R6 K1 ["join"]
  GETUPVAL R7 0
  GETTABLE R6 R0 R7
  DUPTABLE R7 K3 [{"loading"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K2 ["loading"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  CALL R1 2 -1
  RETURN R1 -1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  MOVE R2 R0
  NEWTABLE R3 1 0
  GETUPVAL R4 0
  DUPTABLE R5 K7 [{"loading", "assets", "assetMap", "assetIds"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K2 ["loading"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K4 ["assets"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K5 ["assetMap"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K6 ["assetIds"]
  SETTABLE R5 R3 R4
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["nextPageCursor"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETUPVAL R2 1
  LOADNIL R3
  SETTABLE R3 R1 R2
  GETUPVAL R1 2
  GETTABLEKS R2 R1 K0 ["current"]
  ADDK R2 R2 K1 [1]
  SETTABLEKS R2 R1 K0 ["current"]
  GETUPVAL R2 1
  GETTABLE R1 R0 R2
  JUMPIFNOT R1 [+7]
  GETTABLEKS R3 R1 K2 ["assets"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R1 K2 ["assets"]
  LENGTH R2 R3
  JUMP [+1]
  LOADN R2 0
  NEWTABLE R3 0 0
  GETUPVAL R7 3
  GETTABLEKS R4 R7 K3 ["assetIds"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K4 ["assetMap"]
  GETTABLE R9 R10 R8
  JUMPIFNOT R9 [+27]
  ADD R10 R2 R7
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K0 ["current"]
  DIV R13 R2 R14
  FASTCALL1 MATH_ROUND R13 [+2]
  GETIMPORT R12 K7 [math.round]
  CALL R12 1 1
  ADDK R11 R12 K1 [1]
  DUPTABLE R12 K11 [{"page", "pagePosition", "position"}]
  SETTABLEKS R11 R12 K8 ["page"]
  SETTABLEKS R7 R12 K9 ["pagePosition"]
  SETTABLEKS R10 R12 K10 ["position"]
  SETTABLEKS R12 R9 K12 ["Context"]
  FASTCALL2 TABLE_INSERT R3 R9 [+5]
  MOVE R13 R3
  MOVE R14 R9
  GETIMPORT R12 K15 [table.insert]
  CALL R12 2 0
  JUMP [+9]
  GETIMPORT R10 K17 [warn]
  LOADK R12 K18 ["asset with ID %* not found in asset map"]
  MOVE R14 R8
  NAMECALL R12 R12 K19 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  CALL R10 1 0
  FORGLOOP R4 2 [-42]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K20 ["Dictionary"]
  GETTABLEKS R4 R5 K21 ["join"]
  MOVE R5 R0
  NEWTABLE R6 1 0
  GETUPVAL R7 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K20 ["Dictionary"]
  GETTABLEKS R8 R9 K21 ["join"]
  MOVE R9 R1
  DUPTABLE R10 K24 [{"loading", "assets", "assetMap", "assetIds", "fetchNextPage"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K22 ["loading"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K25 ["List"]
  GETTABLEKS R11 R12 K21 ["join"]
  GETTABLEKS R12 R1 K2 ["assets"]
  MOVE R13 R3
  CALL R11 2 1
  SETTABLEKS R11 R10 K2 ["assets"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K4 ["assetMap"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K3 ["assetIds"]
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  SETTABLEKS R11 R10 K23 ["fetchNextPage"]
  CALL R8 2 1
  SETTABLE R8 R6 R7
  CALL R4 2 -1
  RETURN R4 -1

PROTO_3:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLE R2 R0 R1
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOT R2 [+52]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOT R2 [+48]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  GETTABLE R2 R3 R0
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Dictionary"]
  GETTABLEKS R2 R3 K2 ["join"]
  GETUPVAL R3 3
  DUPTABLE R4 K4 [{"nextPageCursor"}]
  SETTABLEKS R1 R4 K3 ["nextPageCursor"]
  CALL R2 2 1
  GETUPVAL R3 4
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CALL R3 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  LOADB R4 1
  SETTABLE R4 R3 R0
  GETUPVAL R3 5
  GETUPVAL R4 6
  GETUPVAL R5 7
  MOVE R6 R0
  MOVE R7 R2
  CALL R3 4 1
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U8
  NAMECALL R3 R3 K5 ["andThen"]
  CALL R3 2 1
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R3 R3 K6 ["catch"]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETUPVAL R5 1
  MOVE R6 R4
  CALL R5 1 0
  FORGLOOP R0 2 [-4]
  RETURN R0 0

PROTO_7:
  GETUPVAL R4 0
  NAMECALL R4 R4 K0 ["use"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K1 ["networkInterface"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["useState"]
  NEWTABLE R5 0 0
  CALL R4 1 2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["useRef"]
  NEWTABLE R7 0 0
  CALL R6 1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["useRef"]
  LOADN R8 0
  CALL R7 1 1
  LOADNIL R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["useCallback"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE REF R8
  NEWTABLE R11 0 3
  MOVE R12 R0
  MOVE R13 R2
  MOVE R14 R3
  SETLIST R11 R12 3 [1]
  CALL R9 2 1
  MOVE R8 R9
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["useEffect"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R1
  CAPTURE REF R8
  NEWTABLE R11 0 2
  MOVE R12 R0
  MOVE R13 R1
  SETLIST R11 R12 2 [1]
  CALL R9 2 0
  CLOSEUPVALS R8
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["NetworkContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K12 ["Types"]
  GETTABLEKS R5 R6 K13 ["AudioTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K14 ["Requests"]
  GETTABLEKS R6 R7 K15 ["fetchCategoryAssets"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Core"]
  GETTABLEKS R8 R9 K16 ["Components"]
  GETTABLEKS R7 R8 K17 ["ResultsFetcher"]
  CALL R6 1 1
  DUPCLOSURE R7 K18 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R7 1
