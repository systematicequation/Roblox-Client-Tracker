PROTO_0:
  GETTABLEKS R3 R2 K0 ["ClickedItem"]
  JUMPIF R3 [+2]
  LOADK R3 K1 ["DragSelecting"]
  RETURN R3 1
  LOADK R3 K2 ["Ready"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
