PROTO_0:
  GETIMPORT R1 K3 [Enum.NormalId.Top]
  JUMPIFEQ R0 R1 [+5]
  GETIMPORT R1 K5 [Enum.NormalId.Bottom]
  JUMPIFNOTEQ R0 R1 [+9]
  DUPTABLE R1 K6 [{"Top", "Bottom"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["Top"]
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["Bottom"]
  RETURN R1 1
  GETIMPORT R1 K8 [Enum.NormalId.Right]
  JUMPIFEQ R0 R1 [+5]
  GETIMPORT R1 K10 [Enum.NormalId.Left]
  JUMPIFNOTEQ R0 R1 [+9]
  DUPTABLE R1 K11 [{"Right", "Left"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K7 ["Right"]
  LOADB R2 1
  SETTABLEKS R2 R1 K9 ["Left"]
  RETURN R1 1
  DUPTABLE R1 K14 [{"Front", "Back"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K12 ["Front"]
  LOADB R2 1
  SETTABLEKS R2 R1 K13 ["Back"]
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  MOVE R8 R1
  GETUPVAL R9 1
  MOVE R10 R6
  CALL R9 1 1
  CALL R7 2 0
  FORGLOOP R2 2 [-7]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+9]
  NAMECALL R2 R1 K0 ["IsAvatar"]
  CALL R2 1 1
  JUMPIF R2 [+5]
  DUPTABLE R2 K2 [{"R15"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["R15"]
  RETURN R2 1
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_3:
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  JUMPIFNOT R3 [+6]
  GETUPVAL R4 0
  GETTABLE R3 R4 R0
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1
  LOADNIL R3
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getFFlagShowRigSettingsNoJoints"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K10 ["Dash"]
  GETTABLEKS R4 R3 K11 ["assign"]
  DUPCLOSURE R5 K12 [PROTO_0]
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPCLOSURE R7 K14 [PROTO_2]
  CAPTURE VAL R2
  DUPTABLE R8 K18 [{"WorldForward", "WorldUp", "RigType"}]
  SETTABLEKS R6 R8 K15 ["WorldForward"]
  SETTABLEKS R6 R8 K16 ["WorldUp"]
  SETTABLEKS R7 R8 K17 ["RigType"]
  DUPCLOSURE R9 K19 [PROTO_3]
  CAPTURE VAL R8
  RETURN R9 1
