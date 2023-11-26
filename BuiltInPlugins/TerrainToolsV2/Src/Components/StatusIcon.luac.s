PROTO_0:
  GETTABLEKS R1 R0 K0 ["Message"]
  GETTABLEKS R2 R0 K1 ["Icon"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K7 [{"AnchorPoint", "Position", "LayoutOrder", "Size"}]
  GETTABLEKS R6 R0 K3 ["AnchorPoint"]
  SETTABLEKS R6 R5 K3 ["AnchorPoint"]
  GETTABLEKS R6 R0 K4 ["Position"]
  SETTABLEKS R6 R5 K4 ["Position"]
  GETTABLEKS R6 R0 K5 ["LayoutOrder"]
  SETTABLEKS R6 R5 K5 ["LayoutOrder"]
  GETIMPORT R6 K10 [UDim2.new]
  LOADN R7 0
  LOADN R8 18
  LOADN R9 0
  LOADN R10 18
  CALL R6 4 1
  SETTABLEKS R6 R5 K6 ["Size"]
  DUPTABLE R6 K13 [{"Decoration", "Tooltip"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K15 [{"Style"}]
  DUPTABLE R10 K17 [{"Image"}]
  SETTABLEKS R2 R10 K16 ["Image"]
  SETTABLEKS R10 R9 K14 ["Style"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["Decoration"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K20 [{"Text", "Enabled"}]
  ORK R10 R1 K21 [""]
  SETTABLEKS R10 R9 K18 ["Text"]
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K19 ["Enabled"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Tooltip"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["ErrorMessage"]
  GETTABLEKS R2 R0 K1 ["WarningMessage"]
  GETTABLEKS R3 R0 K2 ["InfoMessage"]
  LOADNIL R4
  LOADNIL R5
  JUMPIFNOT R1 [+7]
  LENGTH R6 R1
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+4]
  LOADK R4 K3 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
  MOVE R5 R1
  JUMP [+15]
  JUMPIFNOT R2 [+7]
  LENGTH R6 R2
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+4]
  LOADK R4 K4 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
  MOVE R5 R2
  JUMP [+7]
  JUMPIFNOT R3 [+6]
  LENGTH R6 R3
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+3]
  LOADK R4 K5 ["rbxasset://textures/StudioSharedUI/alert_info@2x.png"]
  MOVE R5 R3
  JUMPIF R4 [+2]
  LOADNIL R6
  RETURN R6 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Dictionary"]
  GETTABLEKS R6 R7 K7 ["join"]
  MOVE R7 R0
  DUPTABLE R8 K10 [{"Icon", "Message", "ErrorMessage", "WarningMessage", "InfoMessage"}]
  SETTABLEKS R4 R8 K8 ["Icon"]
  SETTABLEKS R5 R8 K9 ["Message"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["None"]
  SETTABLEKS R9 R8 K0 ["ErrorMessage"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["None"]
  SETTABLEKS R9 R8 K1 ["WarningMessage"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["None"]
  SETTABLEKS R9 R8 K2 ["InfoMessage"]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K12 ["createElement"]
  GETUPVAL R8 2
  MOVE R9 R6
  CALL R7 2 -1
  RETURN R7 -1

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
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Container"]
  GETTABLEKS R7 R1 K9 ["UI"]
  GETTABLEKS R6 R7 K11 ["Tooltip"]
  GETTABLEKS R7 R4 K12 ["Image"]
  DUPCLOSURE R8 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  DUPCLOSURE R9 K14 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R8
  RETURN R9 1
