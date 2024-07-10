PROTO_0:
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  SETTABLE R2 R1 R0
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  SETTABLE R2 R1 R0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_2:
  SETUPVAL R0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R7 0
  GETTABLE R6 R7 R0
  NEWTABLE R7 0 0
  SETTABLE R7 R6 R1
  GETUPVAL R6 1
  DUPTABLE R7 K3 [{"handlePacket", "startActiveStream", "streamEnded"}]
  SETTABLEKS R3 R7 K0 ["handlePacket"]
  SETTABLEKS R4 R7 K1 ["startActiveStream"]
  SETTABLEKS R5 R7 K2 ["streamEnded"]
  SETTABLE R7 R6 R1
  JUMPIFNOT R2 [+15]
  GETUPVAL R8 2
  GETTABLE R7 R8 R0
  FASTCALL2 TABLE_INSERT R7 R1 [+4]
  MOVE R8 R1
  GETIMPORT R6 K6 [table.insert]
  CALL R6 2 0
  GETUPVAL R6 3
  JUMPIFNOTEQKS R6 K7 [""] [+5]
  SETUPVAL R1 3
  MOVE R6 R4
  MOVE R7 R0
  CALL R6 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+11]
  GETUPVAL R7 1
  GETTABLE R6 R7 R0
  GETTABLEKS R5 R6 K0 ["RequestEnded"]
  NOT R4 R5
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["Cannot store packets after the request has ended"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETUPVAL R6 1
  GETTABLE R5 R6 R0
  GETTABLE R4 R5 R1
  FASTCALL2 TABLE_INSERT R4 R2 [+4]
  MOVE R5 R2
  GETIMPORT R3 K6 [table.insert]
  CALL R3 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["This function should only be called when FFlagConvAIFixStreamCreationTiming is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R1 2
  LOADNIL R2
  SETTABLE R2 R1 R0
  LOADK R1 K3 [""]
  SETUPVAL R1 3
  RETURN R0 0

PROTO_6:
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  GETTABLEKS R2 R3 K0 ["streamEnded"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  GETTABLEKS R2 R3 K0 ["streamEnded"]
  CALL R2 0 0
  LOADK R2 K1 [""]
  SETUPVAL R2 1
  GETUPVAL R3 2
  GETTABLE R2 R3 R0
  LOADNIL R3
  SETTABLE R3 R2 R1
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLE R3 R2 R1
  GETIMPORT R2 K4 [table.remove]
  GETUPVAL R4 3
  GETTABLE R3 R4 R0
  LOADN R4 1
  CALL R2 2 0
  GETUPVAL R4 3
  GETTABLE R3 R4 R0
  GETTABLEN R2 R3 1
  JUMPIFNOT R2 [+8]
  SETUPVAL R2 1
  GETUPVAL R5 0
  GETTABLE R4 R5 R2
  GETTABLEKS R3 R4 K5 ["startActiveStream"]
  MOVE R4 R0
  CALL R3 1 0
  JUMP [+26]
  GETUPVAL R3 4
  CALL R3 0 1
  JUMPIFNOT R3 [+23]
  GETUPVAL R5 2
  GETTABLE R4 R5 R0
  GETTABLEKS R3 R4 K6 ["RequestEnded"]
  JUMPIFNOT R3 [+18]
  GETUPVAL R4 4
  CALL R4 0 1
  FASTCALL2K ASSERT R4 K7 [+4]
  LOADK R5 K7 ["This function should only be called when FFlagConvAIFixStreamCreationTiming is enabled"]
  GETIMPORT R3 K9 [assert]
  CALL R3 2 0
  GETUPVAL R3 2
  LOADNIL R4
  SETTABLE R4 R3 R0
  GETUPVAL R3 3
  LOADNIL R4
  SETTABLE R4 R3 R0
  LOADK R3 K1 [""]
  SETUPVAL R3 1
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R5 3
  GETTABLE R4 R5 R0
  GETTABLEN R3 R4 1
  RETURN R3 1

PROTO_7:
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+9]
  GETUPVAL R5 0
  GETTABLE R4 R5 R0
  GETTABLE R3 R4 R1
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+3]
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_8:
  GETIMPORT R2 K2 [table.remove]
  GETUPVAL R5 0
  GETTABLE R4 R5 R0
  GETTABLE R3 R4 R1
  LOADN R4 1
  CALL R2 2 1
  GETUPVAL R5 1
  GETTABLE R4 R5 R1
  GETTABLEKS R3 R4 K3 ["handlePacket"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R5 1
  GETTABLE R4 R5 R1
  GETTABLEKS R3 R4 K3 ["handlePacket"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R2 1

PROTO_9:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+35]
  GETUPVAL R2 1
  GETTABLE R1 R2 R0
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["RequestEnded"]
  GETIMPORT R1 K2 [next]
  GETUPVAL R3 1
  GETTABLE R2 R3 R0
  CALL R1 1 1
  JUMPIFNOTEQKNIL R1 [+18]
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["This function should only be called when FFlagConvAIFixStreamCreationTiming is enabled"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R1 2
  LOADNIL R2
  SETTABLE R2 R1 R0
  LOADK R1 K6 [""]
  SETUPVAL R1 3
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLE R1 R2 R0
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["RequestEnded"]
  RETURN R0 0
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLE R2 R1 R0
  GETUPVAL R1 2
  LOADNIL R2
  SETTABLE R2 R1 R0
  LOADK R1 K6 [""]
  SETUPVAL R1 3
  RETURN R0 0

PROTO_10:
  NEWTABLE R0 0 0
  SETUPVAL R0 0
  NEWTABLE R0 0 0
  SETUPVAL R0 1
  NEWTABLE R0 0 0
  SETUPVAL R0 2
  LOADK R0 K0 [""]
  SETUPVAL R0 3
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  GETIMPORT R1 K1 [script]
  LOADK R3 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R1 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Flags"]
  GETTABLEKS R3 R4 K8 ["getFFlagConvAIFixStreamCreationTiming"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  LOADK R6 K9 [""]
  NEWCLOSURE R7 P0
  CAPTURE REF R3
  CAPTURE REF R4
  SETTABLEKS R7 R0 K10 ["newRequest"]
  NEWCLOSURE R7 P1
  CAPTURE REF R6
  SETTABLEKS R7 R0 K11 ["activeStreamId"]
  NEWCLOSURE R7 P2
  CAPTURE REF R6
  SETTABLEKS R7 R0 K12 ["setActiveStreamId"]
  NEWCLOSURE R7 P3
  CAPTURE REF R3
  CAPTURE REF R5
  CAPTURE REF R4
  CAPTURE REF R6
  SETTABLEKS R7 R0 K13 ["requestStreamSubscription"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R2
  CAPTURE REF R3
  SETTABLEKS R7 R0 K14 ["storeStreamPacket"]
  NEWCLOSURE R7 P5
  CAPTURE VAL R2
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R6
  NEWCLOSURE R8 P6
  CAPTURE REF R5
  CAPTURE REF R6
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE VAL R2
  SETTABLEKS R8 R0 K15 ["activeStreamEnded"]
  NEWCLOSURE R8 P7
  CAPTURE REF R3
  SETTABLEKS R8 R0 K16 ["packetExists"]
  NEWCLOSURE R8 P8
  CAPTURE REF R3
  CAPTURE REF R5
  SETTABLEKS R8 R0 K17 ["handleEarliestPacketForStream"]
  NEWCLOSURE R8 P9
  CAPTURE VAL R2
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R6
  SETTABLEKS R8 R0 K18 ["requestEnded"]
  NEWCLOSURE R8 P10
  CAPTURE REF R3
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE REF R6
  SETTABLEKS R8 R0 K19 ["clear"]
  NEWCLOSURE R8 P11
  CAPTURE REF R3
  SETTABLEKS R8 R0 K20 ["getStreamCache"]
  CLOSEUPVALS R3
  RETURN R0 1
