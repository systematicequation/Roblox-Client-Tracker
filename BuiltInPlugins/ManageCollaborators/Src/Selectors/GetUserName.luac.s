PROTO_0:
  GETTABLEKS R3 R0 K0 ["Permissions"]
  GETTABLEKS R2 R3 K1 ["NewPermissions"]
  JUMPIF R2 [+4]
  GETTABLEKS R3 R0 K0 ["Permissions"]
  GETTABLEKS R2 R3 K2 ["CurrentPermissions"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["UserSubjectKey"]
  GETTABLE R4 R2 R5
  GETTABLE R3 R4 R1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["SubjectNameKey"]
  GETTABLE R4 R3 R5
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["PermissionsConstants"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
