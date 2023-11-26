PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Permissions"]
  GETTABLEKS R0 R1 K1 ["CurrentPermissions"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Permissions"]
  GETTABLEKS R1 R2 K2 ["NewPermissions"]
  JUMPIFEQKNIL R1 [+15]
  GETUPVAL R2 1
  GETUPVAL R4 2
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R2 R2 K3 ["setPermissions"]
  CALL R2 4 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["reportSaveCollaboratorsPressed"]
  GETUPVAL R5 4
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 0
  RETURN R0 0

PROTO_1:
  NAMECALL R3 R0 K0 ["getState"]
  CALL R3 1 1
  GETIMPORT R5 K2 [game]
  GETTABLEKS R4 R5 K3 ["GameId"]
  GETTABLEKS R5 R1 K4 ["gamePermissionsController"]
  NEWTABLE R6 0 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  SETLIST R6 R7 1 [1]
  RETURN R6 1

PROTO_2:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R1 0
  CALL R0 1 2
  JUMPIF R0 [+18]
  GETUPVAL R2 1
  JUMPIF R2 [+16]
  GETIMPORT R2 K3 [warn]
  LOADK R3 K4 ["Failed"]
  MOVE R4 R1
  CALL R2 2 0
  LOADB R2 1
  SETUPVAL R2 1
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K5 ["SaveFailed"]
  CALL R4 1 -1
  NAMECALL R2 R2 K6 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R3 5
  ADDK R2 R3 K7 [1]
  SETUPVAL R2 5
  GETUPVAL R2 5
  GETUPVAL R4 6
  LENGTH R3 R4
  JUMPIFNOTEQ R2 R3 [+12]
  GETUPVAL R2 1
  JUMPIF R2 [+9]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K8 ["Saved"]
  CALL R4 1 -1
  NAMECALL R2 R2 K6 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  MOVE R4 R1
  GETUPVAL R5 1
  CALL R2 3 1
  GETUPVAL R5 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K0 ["Saving"]
  CALL R5 1 -1
  NAMECALL R3 R0 K1 ["dispatch"]
  CALL R3 -1 0
  LOADN R3 0
  LOADB R4 0
  GETIMPORT R5 K3 [ipairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETIMPORT R10 K6 [coroutine.wrap]
  NEWCLOSURE R11 P0
  CAPTURE VAL R9
  CAPTURE REF R4
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE REF R3
  CAPTURE VAL R2
  CALL R10 1 1
  MOVE R11 R10
  CALL R11 0 0
  FORGLOOP R5 2 [inext] [-14]
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Actions"]
  GETTABLEKS R2 R3 K7 ["SetSaveState"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["SaveState"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K10 ["Analytics"]
  CALL R3 1 1
  DUPCLOSURE R4 K11 [PROTO_1]
  CAPTURE VAL R3
  DUPCLOSURE R5 K12 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R5 1
