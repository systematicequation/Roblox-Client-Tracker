PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["SerializeInstances"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["Folder"]
  CALL R1 1 1
  LOADK R2 K4 ["TemporaryInstances"]
  SETTABLEKS R2 R1 K5 ["Name"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K6 ["Parent"]
  GETIMPORT R2 K8 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  SETTABLEKS R1 R6 K6 ["Parent"]
  FORGLOOP R2 2 [-3]
  GETIMPORT R2 K10 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R2 1 2
  GETIMPORT R4 K8 [pairs]
  MOVE R5 R0
  CALL R4 1 3
  FORGPREP_NEXT R4
  LOADNIL R9
  SETTABLEKS R9 R8 K6 ["Parent"]
  FORGLOOP R4 2 [-4]
  NAMECALL R4 R1 K11 ["Destroy"]
  CALL R4 1 0
  JUMPIFNOT R2 [+1]
  RETURN R3 1
  GETIMPORT R4 K13 [error]
  LOADK R6 K14 ["SerializeInstances failed: "]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K16 [tostring]
  CALL R7 1 1
  CONCAT R5 R6 R7
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RobloxPluginGuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StudioAssetService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  DUPCLOSURE R2 K5 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1
