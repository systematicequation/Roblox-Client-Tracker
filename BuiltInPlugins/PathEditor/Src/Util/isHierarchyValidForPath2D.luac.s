PROTO_0:
  JUMPIFNOTEQKNIL R0 [+3]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["Parent"]
  JUMPIFEQKNIL R1 [+21]
  LOADK R4 K1 ["ScreenGui"]
  NAMECALL R2 R1 K2 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+15]
  LOADK R4 K3 ["SurfaceGui"]
  NAMECALL R2 R1 K2 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+10]
  LOADK R4 K4 ["GuiBase2d"]
  NAMECALL R2 R1 K2 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETTABLEKS R1 R1 K0 ["Parent"]
  JUMPBACK [-22]
  JUMPIFNOTEQKNIL R1 [+3]
  LOADB R2 0
  RETURN R2 1
  LOADK R4 K1 ["ScreenGui"]
  NAMECALL R2 R1 K2 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+13]
  JUMPIFEQKNIL R1 [+12]
  GETIMPORT R3 K6 [game]
  GETTABLEKS R2 R3 K7 ["Workspace"]
  JUMPIFNOTEQ R1 R2 [+3]
  LOADB R2 0
  RETURN R2 1
  GETTABLEKS R1 R1 K0 ["Parent"]
  JUMPBACK [-13]
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  DUPCLOSURE R1 K3 [PROTO_0]
  RETURN R1 1
