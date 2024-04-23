PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R3 2
  NAMECALL R1 R1 K0 ["GetAttribute"]
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 2
  CALL R0 0 1
  JUMPIF R0 [+3]
  GETUPVAL R0 3
  CALL R0 0 1
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 4
  GETUPVAL R1 0
  GETUPVAL R3 5
  NAMECALL R1 R1 K3 ["GetAttribute"]
  CALL R1 2 -1
  CALL R0 -1 0
  GETUPVAL R0 0
  GETUPVAL R2 5
  NAMECALL R0 R0 K4 ["GetAttributeChangedSignal"]
  CALL R0 2 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  NAMECALL R0 R0 K5 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useState"]
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R3
  JUMP [+4]
  MOVE R5 R1
  NAMECALL R3 R0 K1 ["GetAttribute"]
  CALL R3 2 1
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useEffect"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R3
  CAPTURE VAL R1
  NEWTABLE R6 0 2
  MOVE R7 R0
  MOVE R8 R1
  SETLIST R6 R7 2 [1]
  CALL R4 2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K11 ["Flags"]
  GETTABLEKS R4 R5 K12 ["getFFlagAvatarPreviewerAutoSetupDisablePublish"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagAvatarPreviewerAutoSetupTelemetryV2"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
