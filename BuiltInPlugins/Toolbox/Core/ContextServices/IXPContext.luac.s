PROTO_0:
  GETIMPORT R0 K3 [Enum.IXPLoadingStatus.Initialized]
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  JUMPIF R0 [+2]
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  DUPTABLE R2 K4 [{"GetUserLayerLoadingStatus", "GetUserLayerVariables", "OnUserLayerLoadingStatusChanged"}]
  DUPCLOSURE R3 K5 [PROTO_0]
  SETTABLEKS R3 R2 K1 ["GetUserLayerLoadingStatus"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K2 ["GetUserLayerVariables"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K3 ["OnUserLayerLoadingStatusChanged"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  DUPTABLE R1 K1 [{"IXPService"}]
  MOVE R2 R0
  JUMPIF R2 [+6]
  GETIMPORT R2 K3 [game]
  LOADK R4 K0 ["IXPService"]
  NAMECALL R2 R2 K4 ["GetService"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["IXPService"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K6 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["IXPService"]
  GETTABLEKS R1 R2 K1 ["OnUserLayerLoadingStatusChanged"]
  RETURN R1 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["IXPService"]
  NAMECALL R2 R2 K1 ["GetUserLayerLoadingStatus"]
  CALL R2 1 1
  GETIMPORT R3 K5 [Enum.IXPLoadingStatus.Initialized]
  JUMPIFEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["IXPService"]
  NAMECALL R1 R1 K1 ["GetUserLayerLoadingStatus"]
  CALL R1 1 1
  LOADB R2 0
  GETIMPORT R3 K5 [Enum.IXPLoadingStatus.Initialized]
  JUMPIFEQ R1 R3 [+7]
  GETIMPORT R3 K7 [Enum.IXPLoadingStatus.Pending]
  JUMPIFNOTEQ R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_7:
  NAMECALL R1 R0 K0 ["isReady"]
  CALL R1 1 1
  JUMPIF R1 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+31]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Dictionary"]
  GETTABLEKS R1 R2 K2 ["join"]
  GETTABLEKS R2 R0 K3 ["IXPService"]
  LOADK R4 K4 ["CreatorMarketplace"]
  NAMECALL R2 R2 K5 ["GetUserLayerVariables"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K3 ["IXPService"]
  LOADK R5 K6 ["StudioMarketplace"]
  NAMECALL R3 R3 K5 ["GetUserLayerVariables"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K3 ["IXPService"]
  LOADK R6 K7 ["Studio.Toolbox.Usage"]
  NAMECALL R4 R4 K5 ["GetUserLayerVariables"]
  CALL R4 2 1
  GETTABLEKS R5 R0 K3 ["IXPService"]
  LOADK R7 K8 ["CreatorContent.Music.Studio"]
  NAMECALL R5 R5 K5 ["GetUserLayerVariables"]
  CALL R5 2 -1
  CALL R1 -1 -1
  RETURN R1 -1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K9 ["joinDeep"]
  GETTABLEKS R2 R0 K3 ["IXPService"]
  LOADK R4 K4 ["CreatorMarketplace"]
  NAMECALL R2 R2 K5 ["GetUserLayerVariables"]
  CALL R2 2 1
  GETTABLEKS R3 R0 K3 ["IXPService"]
  LOADK R5 K6 ["StudioMarketplace"]
  NAMECALL R3 R3 K5 ["GetUserLayerVariables"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K3 ["IXPService"]
  LOADK R6 K7 ["Studio.Toolbox.Usage"]
  NAMECALL R4 R4 K5 ["GetUserLayerVariables"]
  CALL R4 2 1
  GETTABLEKS R5 R0 K3 ["IXPService"]
  LOADK R7 K8 ["CreatorContent.Music.Studio"]
  NAMECALL R5 R5 K5 ["GetUserLayerVariables"]
  CALL R5 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K7 ["ContextServices"]
  GETTABLEKS R3 R4 K8 ["ContextItem"]
  GETTABLEKS R5 R2 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Signal"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R1 K11 ["Dash"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R1 K12 ["Cryo"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K13 ["Core"]
  GETTABLEKS R10 R11 K9 ["Util"]
  GETTABLEKS R9 R10 K14 ["SharedFlags"]
  GETTABLEKS R8 R9 K15 ["getFFlagToolboxFixIXPLayerJoining"]
  CALL R7 1 1
  LOADK R10 K16 ["IXPContext"]
  NAMECALL R8 R3 K17 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K18 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K19 ["createMock"]
  DUPCLOSURE R9 K20 [PROTO_3]
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K21 ["new"]
  DUPCLOSURE R9 K22 [PROTO_4]
  SETTABLEKS R9 R8 K23 ["getSignal"]
  DUPCLOSURE R9 K24 [PROTO_5]
  SETTABLEKS R9 R8 K25 ["isReady"]
  DUPCLOSURE R9 K26 [PROTO_6]
  SETTABLEKS R9 R8 K27 ["isError"]
  DUPCLOSURE R9 K28 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K29 ["getVariables"]
  RETURN R8 1
