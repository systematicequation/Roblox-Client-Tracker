PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"Keypoints", "Selected"}]
  SETTABLEKS R0 R2 K0 ["Keypoints"]
  LOADN R3 1
  SETTABLEKS R3 R2 K1 ["Selected"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["updateSelected"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["add"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["removeSelected"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R0 0
  DUPCLOSURE R1 K0 [PROTO_5]
  CAPTURE UPVAL U1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["select"]
  MOVE R2 R0
  GETUPVAL R3 1
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Keypoints"]
  CALL R1 1 0
  RETURN R0 1

PROTO_10:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isFixedKeypointSelected"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selectedKeypoint"]
  GETUPVAL R1 1
  CALL R0 1 -1
  RETURN R0 -1

PROTO_13:
  GETUPVAL R1 0
  DUPTABLE R2 K2 [{"Keypoints", "Selected"}]
  SETTABLEKS R0 R2 K0 ["Keypoints"]
  LOADN R3 1
  SETTABLEKS R3 R2 K1 ["Selected"]
  CALL R1 1 2
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  NEWCLOSURE R4 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NEWCLOSURE R5 P2
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NEWCLOSURE R6 P3
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NEWCLOSURE R7 P4
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NEWCLOSURE R8 P5
  CAPTURE VAL R2
  NEWCLOSURE R9 P6
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  NEWCLOSURE R10 P7
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  DUPTABLE R11 K13 [{"keypoints", "selectedIndex", "reset", "update", "add", "remove", "select", "save", "isFixedKeypointSelected", "getSelectedKeypoint"}]
  GETTABLEKS R12 R1 K0 ["Keypoints"]
  SETTABLEKS R12 R11 K3 ["keypoints"]
  GETTABLEKS R12 R1 K1 ["Selected"]
  SETTABLEKS R12 R11 K4 ["selectedIndex"]
  SETTABLEKS R3 R11 K5 ["reset"]
  SETTABLEKS R4 R11 K6 ["update"]
  SETTABLEKS R5 R11 K7 ["add"]
  SETTABLEKS R6 R11 K8 ["remove"]
  SETTABLEKS R7 R11 K9 ["select"]
  SETTABLEKS R8 R11 K10 ["save"]
  SETTABLEKS R9 R11 K11 ["isFixedKeypointSelected"]
  SETTABLEKS R10 R11 K12 ["getSelectedKeypoint"]
  RETURN R11 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["useState"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Renderers"]
  GETTABLEKS R5 R6 K10 ["SequenceRenderers"]
  GETTABLEKS R4 R5 K11 ["KeypointSequence"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Renderers"]
  GETTABLEKS R6 R7 K10 ["SequenceRenderers"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_13]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R5 1
