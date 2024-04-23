PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["pluginGui"]
  GETTABLEKS R3 R1 K2 ["networkInterface"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+50]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["ContextStack"]
  DUPTABLE R6 K6 [{"providers"}]
  NEWTABLE R7 0 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K7 ["SceneAnalysisProvider"]
  DUPTABLE R10 K9 [{"pollingSeconds"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K10 ["CONTEXTUAL_RECOMMENDATIONS_POLLING_FREQUENCY_DEFAULT"]
  SETTABLEKS R11 R10 K8 ["pollingSeconds"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  SETTABLEKS R7 R6 K5 ["providers"]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K11 ["provide"]
  NEWTABLE R8 0 2
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K12 ["new"]
  MOVE R10 R2
  CALL R9 1 1
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K12 ["new"]
  MOVE R11 R3
  CALL R10 1 -1
  SETLIST R8 R9 -1 [1]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K13 ["Children"]
  GETTABLE R9 R1 R10
  CALL R7 2 -1
  CALL R4 -1 -1
  RETURN R4 -1
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K11 ["provide"]
  NEWTABLE R5 0 2
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K12 ["new"]
  MOVE R7 R2
  CALL R6 1 1
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K12 ["new"]
  MOVE R8 R3
  CALL R7 1 -1
  SETLIST R5 R6 -1 [1]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K13 ["Children"]
  GETTABLE R6 R1 R7
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K8 ["ReactSceneUnderstanding"]
  CALL R4 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R1 K9 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K10 ["ContextServices"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Core"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Core"]
  GETTABLEKS R9 R10 K10 ["ContextServices"]
  GETTABLEKS R8 R9 K14 ["ModalContext"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K11 ["Core"]
  GETTABLEKS R10 R11 K10 ["ContextServices"]
  GETTABLEKS R9 R10 K15 ["NetworkContext"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K11 ["Core"]
  GETTABLEKS R11 R12 K16 ["Flags"]
  GETTABLEKS R10 R11 K17 ["getFFlagToolboxPortContextualReccomendationsToNewPackage"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K18 ["Component"]
  LOADK R12 K19 ["ExternalServicesWrapper"]
  NAMECALL R10 R10 K20 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K21 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K22 ["render"]
  RETURN R10 1
