PROTO_0:
  GETTABLEKS R1 R0 K0 ["Status"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Editing3D"]
  JUMPIFNOTEQ R1 R2 [+3]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["Status"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Scripting"]
  JUMPIFEQ R1 R2 [+8]
  GETTABLEKS R1 R0 K0 ["Status"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["PrivateScripting"]
  JUMPIFNOTEQ R1 R2 [+14]
  GETTABLEKS R1 R0 K4 ["CurDocGUID"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 1
  GETTABLEKS R3 R0 K4 ["CurDocGUID"]
  NAMECALL R1 R1 K5 ["GetSourceContainerByScriptGuid"]
  CALL R1 2 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R2 R1 K6 ["Name"]
  RETURN R2 1
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetCollaboratorsList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetCollaboratorsList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetCollaboratorsList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetCollaboratorsList"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 3
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetCollaboratorsList"]
  CALL R0 1 1
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["CollaboratorInstanceCreatedSignal"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["CollaboratorInstanceDestroyedSignal"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R2 R2 K2 ["Connect"]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["CollaboratorStatusUpdatedSignal"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K2 ["Connect"]
  CALL R3 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["CollaboratorIdleUpdate"]
  NEWCLOSURE R6 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R4 R4 K2 ["Connect"]
  CALL R4 2 1
  NEWCLOSURE R5 P4
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["UserId"]
  GETUPVAL R3 2
  JUMPIFNOTEQ R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["use"]
  CALL R0 1 1
  NAMECALL R0 R0 K1 ["get"]
  CALL R0 1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["useState"]
  NEWTABLE R2 0 0
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["useState"]
  LOADB R4 0
  CALL R3 1 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["useEffect"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  NEWTABLE R7 0 0
  CALL R5 2 0
  DUPTABLE R5 K5 [{"Layout"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["createElement"]
  LOADK R7 K7 ["UIListLayout"]
  DUPTABLE R8 K9 [{"FillDirection"}]
  GETIMPORT R9 K12 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K8 ["FillDirection"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["Layout"]
  MOVE R6 R1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R10 K13 ["UserId"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K6 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K22 [{"Id", "Username", "Location", "Color", "IsIdle", "Status", "CanJumpBack", "OnJump"}]
  GETTABLEKS R15 R10 K13 ["UserId"]
  SETTABLEKS R15 R14 K14 ["Id"]
  GETTABLEKS R15 R10 K15 ["Username"]
  SETTABLEKS R15 R14 K15 ["Username"]
  GETTABLEKS R16 R10 K19 ["Status"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K23 ["Editing3D"]
  JUMPIFNOTEQ R16 R17 [+3]
  LOADNIL R15
  JUMP [+28]
  GETTABLEKS R16 R10 K19 ["Status"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K24 ["Scripting"]
  JUMPIFEQ R16 R17 [+8]
  GETTABLEKS R16 R10 K19 ["Status"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K25 ["PrivateScripting"]
  JUMPIFNOTEQ R16 R17 [+14]
  GETTABLEKS R16 R10 K26 ["CurDocGUID"]
  JUMPIFNOT R16 [+10]
  GETUPVAL R16 4
  GETTABLEKS R18 R10 K26 ["CurDocGUID"]
  NAMECALL R16 R16 K27 ["GetSourceContainerByScriptGuid"]
  CALL R16 2 1
  JUMPIFNOT R16 [+3]
  GETTABLEKS R15 R16 K28 ["Name"]
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K16 ["Location"]
  GETIMPORT R16 K31 [BrickColor.new]
  GETTABLEKS R17 R10 K32 ["CollaboratorColor"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K17 ["Color"]
  SETTABLEKS R15 R14 K17 ["Color"]
  GETTABLEKS R15 R10 K18 ["IsIdle"]
  SETTABLEKS R15 R14 K18 ["IsIdle"]
  GETTABLEKS R15 R10 K19 ["Status"]
  SETTABLEKS R15 R14 K19 ["Status"]
  LOADB R15 0
  GETTABLEKS R16 R10 K13 ["UserId"]
  GETUPVAL R17 5
  JUMPIFNOTEQ R16 R17 [+2]
  MOVE R15 R3
  SETTABLEKS R15 R14 K20 ["CanJumpBack"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE UPVAL U5
  SETTABLEKS R15 R14 K21 ["OnJump"]
  CALL R12 2 1
  SETTABLE R12 R5 R11
  FORGLOOP R6 2 [-89]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K35 [{"Style", "Padding"}]
  LOADK R9 K36 ["Box"]
  SETTABLEKS R9 R8 K33 ["Style"]
  LOADN R9 8
  SETTABLEKS R9 R8 K34 ["Padding"]
  MOVE R9 R5
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["CollaboratorStatus"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K11 ["UI"]
  GETTABLEKS R5 R4 K12 ["Pane"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K9 ["Components"]
  GETTABLEKS R7 R8 K13 ["CollaboratorItem"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K14 ["ContextServices"]
  GETTABLEKS R8 R9 K15 ["CollaboratorsServiceContext"]
  CALL R7 1 1
  GETIMPORT R8 K17 [game]
  LOADK R10 K18 ["StudioService"]
  NAMECALL R8 R8 K19 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K17 [game]
  LOADK R11 K20 ["ScriptRegistrationService"]
  NAMECALL R9 R9 K19 ["GetService"]
  CALL R9 2 1
  NAMECALL R10 R8 K21 ["GetUserId"]
  CALL R10 1 1
  DUPCLOSURE R11 K22 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R9
  DUPCLOSURE R12 K23 [PROTO_8]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R5
  RETURN R12 1
