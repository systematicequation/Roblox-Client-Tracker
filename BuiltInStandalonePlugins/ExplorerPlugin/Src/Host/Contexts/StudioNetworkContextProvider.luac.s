PROTO_0:
  PREPVARARGS 1
  GETUPVAL R1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["fromHost"]
  GETTABLEKS R3 R4 K1 ["message"]
  GETUPVAL R4 2
  MOVE R5 R0
  GETVARARGS R6 -1
  NAMECALL R1 R1 K2 ["Invoke"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["string"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Connection identifier is not a string"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFEQKNIL R1 [+10]
  GETIMPORT R1 K7 [error]
  LOADK R3 K8 ["Double connection with %*"]
  MOVE R5 R0
  NAMECALL R3 R3 K9 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  GETUPVAL R1 1
  LOADK R2 K10 ["%s connected"]
  MOVE R3 R0
  CALL R1 2 0
  DUPTABLE R1 K15 [{"identifier", "disconnectSignal", "messageReceivedSignal", "sendMessage"}]
  SETTABLEKS R0 R1 K11 ["identifier"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K16 ["Signal"]
  GETTABLEKS R2 R3 K17 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K12 ["disconnectSignal"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K16 ["Signal"]
  GETTABLEKS R2 R3 K17 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R1 K13 ["messageReceivedSignal"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K14 ["sendMessage"]
  GETUPVAL R2 0
  SETTABLE R1 R2 R0
  GETUPVAL R2 5
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  LOADK R1 K0 ["%* sent message \"%*\""]
  GETUPVAL R3 0
  GETUPVAL R4 1
  NAMECALL R1 R1 K1 ["format"]
  CALL R1 3 1
  MOVE R0 R1
  GETUPVAL R2 2
  FASTCALL1 TABLE_UNPACK R2 [+2]
  GETIMPORT R1 K4 [table.unpack]
  CALL R1 1 -1
  RETURN R0 -1

PROTO_3:
  PREPVARARGS 2
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K2 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Message identifier is not a string"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFNOTEQKNIL R2 [+11]
  GETIMPORT R3 K7 [error]
  LOADK R5 K8 ["Message sent by %* without a connection: %*"]
  MOVE R7 R0
  MOVE R8 R1
  NAMECALL R5 R5 K9 ["format"]
  CALL R5 3 1
  MOVE R4 R5
  CALL R3 1 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K10 [+4]
  LOADK R5 K10 ["Luau"]
  GETIMPORT R3 K5 [assert]
  CALL R3 2 0
  GETIMPORT R3 K13 [table.pack]
  GETVARARGS R4 -1
  CALL R3 -1 1
  GETUPVAL R4 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R3
  CALL R4 1 0
  GETTABLEKS R4 R2 K14 ["messageReceivedSignal"]
  MOVE R6 R1
  GETVARARGS R7 -1
  NAMECALL R4 R4 K15 ["Fire"]
  CALL R4 -1 0
  RETURN R0 0

PROTO_4:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["string"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Connection identifier is not a string"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R1 0
  LOADK R2 K6 ["%s disconnecting"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLE R1 R2 R0
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["Disconnect sent without a connection"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETUPVAL R2 1
  LOADNIL R3
  SETTABLE R3 R2 R0
  GETTABLEKS R2 R1 K8 ["disconnectSignal"]
  NAMECALL R2 R2 K9 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADK R1 K0 ["Destroying"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 3
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 4
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETTABLEKS R5 R4 K2 ["disconnectSignal"]
  NAMECALL R5 R5 K3 ["Fire"]
  CALL R5 1 0
  FORGLOOP R0 2 [-6]
  GETUPVAL R0 5
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K4 ["fromHost"]
  GETTABLEKS R2 R3 K5 ["itemStarted"]
  NAMECALL R0 R0 K6 ["RemoveItem"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["fromGuest"]
  GETTABLEKS R4 R5 K1 ["connect"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NAMECALL R2 R2 K2 ["OnInvoke"]
  CALL R2 3 1
  GETUPVAL R3 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["fromGuest"]
  GETTABLEKS R5 R6 K3 ["message"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  NAMECALL R3 R3 K2 ["OnInvoke"]
  CALL R3 3 1
  GETUPVAL R4 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["fromGuest"]
  GETTABLEKS R6 R7 K4 ["disconnect"]
  NEWCLOSURE R7 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  NAMECALL R4 R4 K2 ["OnInvoke"]
  CALL R4 3 1
  GETUPVAL R5 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["fromHost"]
  GETTABLEKS R7 R8 K6 ["starting"]
  NAMECALL R5 R5 K7 ["Invoke"]
  CALL R5 2 0
  GETUPVAL R5 4
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K5 ["fromHost"]
  GETTABLEKS R7 R8 K8 ["itemStarted"]
  NAMECALL R5 R5 K9 ["SetItem"]
  CALL R5 2 0
  NEWCLOSURE R5 P3
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  RETURN R5 1

PROTO_7:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useCallback"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NEWTABLE R4 0 0
  CALL R2 2 1
  GETUPVAL R3 6
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["Components"]
  GETTABLEKS R5 R6 K4 ["Contexts"]
  GETTABLEKS R4 R5 K5 ["NetworkContextProvider"]
  DUPTABLE R5 K7 [{"registerOnConnect"}]
  SETTABLEKS R2 R5 K6 ["registerOnConnect"]
  GETTABLEKS R6 R0 K8 ["children"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["MemStorageService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["ExplorerPlugin"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Explorer"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Packages"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K14 ["Src"]
  GETTABLEKS R7 R8 K15 ["Util"]
  GETTABLEKS R6 R7 K16 ["StudioProtocolConstants"]
  CALL R5 1 1
  GETTABLEKS R6 R4 K17 ["createElement"]
  GETTABLEKS R8 R3 K18 ["ContextServices"]
  GETTABLEKS R7 R8 K19 ["Plugin"]
  GETTABLEKS R9 R2 K15 ["Util"]
  GETTABLEKS R8 R9 K20 ["createDebugLogger"]
  LOADK R9 K21 ["StudioNetworkContextProvider"]
  CALL R8 1 1
  DUPCLOSURE R9 K22 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R6
  RETURN R9 1
