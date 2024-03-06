PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  JUMPIFNOT R1 [+46]
  GETTABLEKS R2 R1 K1 ["UserSearchResults"]
  JUMPIFNOT R2 [+43]
  LENGTH R3 R2
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+40]
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [ipairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["List"]
  GETTABLEKS R9 R10 K5 ["join"]
  MOVE R10 R3
  NEWTABLE R11 0 1
  DUPTABLE R12 K9 [{"Name", "Id", "Thumbnail"}]
  GETTABLEKS R13 R8 K6 ["Name"]
  SETTABLEKS R13 R12 K6 ["Name"]
  GETTABLEKS R13 R8 K10 ["UserId"]
  SETTABLEKS R13 R12 K7 ["Id"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["constructUserThumbnailUrl"]
  GETTABLEKS R14 R8 K10 ["UserId"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K8 ["Thumbnail"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  MOVE R3 R9
  FORGLOOP R4 2 [inext] [-30]
  RETURN R3 1
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_1:
  MOVE R5 R1
  NAMECALL R3 R0 K0 ["getUsers"]
  CALL R3 2 1
  DUPCLOSURE R5 K1 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R3 R3 K2 ["andThen"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  MOVE R5 R0
  CALL R3 2 -1
  NAMECALL R1 R1 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  LENGTH R1 R2
  LOADN R2 3
  JUMPIFNOTLT R1 R2 [+10]
  GETUPVAL R3 1
  GETUPVAL R4 0
  NEWTABLE R5 0 0
  CALL R3 2 -1
  NAMECALL R1 R0 K0 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0
  GETUPVAL R2 2
  GETUPVAL R3 0
  MOVE R6 R3
  NAMECALL R4 R2 K1 ["getUsers"]
  CALL R4 2 1
  DUPCLOSURE R6 K2 [PROTO_0]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R4 R4 K3 ["andThen"]
  CALL R4 2 1
  MOVE R1 R4
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  NAMECALL R1 R1 K3 ["andThen"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K7 ["Core"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["Urls"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K7 ["Core"]
  GETTABLEKS R6 R7 K10 ["Actions"]
  GETTABLEKS R5 R6 K11 ["SetLiveSearch"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPCLOSURE R6 K13 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R6 1
