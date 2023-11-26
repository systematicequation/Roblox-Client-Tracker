PROTO_0:
  MOVE R5 R1
  NAMECALL R3 R0 K0 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R4
  RETURN R4 1
  MOVE R6 R2
  NAMECALL R4 R3 K1 ["IsA"]
  CALL R4 2 1
  JUMPIF R4 [+2]
  LOADNIL R4
  RETURN R4 1
  GETTABLEKS R4 R3 K2 ["Archivable"]
  JUMPIF R4 [+2]
  LOADNIL R4
  RETURN R4 1
  RETURN R3 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Archivable"]
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  LOADK R3 K1 ["Model"]
  NAMECALL R1 R0 K2 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K3 ["PrimaryPart"]
  JUMPIFEQKNIL R1 [+6]
  GETTABLEKS R2 R0 K3 ["PrimaryPart"]
  GETTABLEKS R1 R2 K0 ["Archivable"]
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K4 ["LIMBS"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  MOVE R9 R5
  NAMECALL R7 R0 K5 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOTEQKNIL R7 [+3]
  LOADNIL R6
  JUMP [+13]
  LOADK R10 K6 ["BasePart"]
  NAMECALL R8 R7 K2 ["IsA"]
  CALL R8 2 1
  JUMPIF R8 [+2]
  LOADNIL R6
  JUMP [+6]
  GETTABLEKS R8 R7 K0 ["Archivable"]
  JUMPIF R8 [+2]
  LOADNIL R6
  JUMP [+1]
  MOVE R6 R7
  JUMPIF R6 [+2]
  LOADB R6 0
  RETURN R6 1
  FORGLOOP R1 2 [-25]
  LOADK R4 K7 ["Humanoid"]
  NAMECALL R2 R0 K5 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+3]
  LOADNIL R1
  JUMP [+13]
  LOADK R5 K7 ["Humanoid"]
  NAMECALL R3 R2 K2 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+2]
  LOADNIL R1
  JUMP [+6]
  GETTABLEKS R3 R2 K0 ["Archivable"]
  JUMPIF R3 [+2]
  LOADNIL R1
  JUMP [+1]
  MOVE R1 R2
  JUMPIFNOTEQKNIL R1 [+3]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
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
  DUPCLOSURE R2 K9 [PROTO_0]
  DUPCLOSURE R3 K10 [PROTO_1]
  CAPTURE VAL R1
  RETURN R3 1
