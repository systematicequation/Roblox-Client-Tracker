PROTO_0:
  JUMPIFNOT R0 [+2]
  JUMPIFNOTEQKN R0 K0 [0] [+13]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["wait"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K1 ["wait"]
  CALL R1 1 0
  RETURN R0 0
  LOADK R1 K2 [0.033333]
  JUMPIFNOTLT R0 R1 [+26]
  GETIMPORT R1 K4 [tick]
  CALL R1 0 1
  GETUPVAL R2 0
  JUMPIFNOT R2 [+5]
  GETUPVAL R2 1
  NAMECALL R2 R2 K1 ["wait"]
  CALL R2 1 0
  JUMP [+4]
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["wait"]
  CALL R2 1 0
  GETIMPORT R3 K4 [tick]
  CALL R3 0 1
  SUB R2 R3 R1
  MULK R3 R0 K5 [0.5]
  JUMPIFNOTLE R2 R3 [+9]
  GETUPVAL R3 3
  SUB R4 R0 R2
  CALL R3 1 0
  RETURN R0 0
  GETIMPORT R1 K6 [wait]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["RunService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETTABLEKS R0 R1 K4 ["RenderStepped"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["RunService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R1 R2 K5 ["Heartbeat"]
  GETIMPORT R2 K1 [game]
  LOADK R4 K6 ["TerrainEditorFixQuickWait"]
  NAMECALL R2 R2 K7 ["GetFastFlag"]
  CALL R2 2 1
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R3 1
