PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Enabled"]
  GETTABLEKS R4 R1 K3 ["OnClose"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  NEWTABLE R7 16 0
  GETUPVAL R9 2
  JUMPIFNOT R9 [+2]
  LOADK R8 K5 ["Watch"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K5 ["Watch"]
  LOADK R11 K7 ["WindowName"]
  NAMECALL R8 R2 K8 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["Title"]
  GETIMPORT R8 K13 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K11 ["ZIndexBehavior"]
  GETIMPORT R8 K16 [Enum.InitialDockState.Bottom]
  SETTABLEKS R8 R7 K14 ["InitialDockState"]
  GETIMPORT R8 K19 [Vector2.new]
  LOADN R9 128
  LOADN R10 224
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["Size"]
  GETIMPORT R8 K19 [Vector2.new]
  LOADN R9 250
  LOADN R10 200
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["MinSize"]
  SETTABLEKS R3 R7 K2 ["Enabled"]
  SETTABLEKS R4 R7 K3 ["OnClose"]
  LOADB R8 1
  SETTABLEKS R8 R7 K22 ["ShouldRestore"]
  GETTABLEKS R8 R1 K23 ["OnRestore"]
  SETTABLEKS R8 R7 K24 ["OnWidgetRestored"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K25 ["Change"]
  GETTABLEKS R8 R9 K2 ["Enabled"]
  GETTABLEKS R9 R1 K26 ["OnWidgetEnabledChanged"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K27 [{"Watch"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 3
  CALL R9 1 1
  SETTABLEKS R9 R8 K5 ["Watch"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["UI"]
  GETTABLEKS R5 R4 K13 ["DockWidget"]
  GETTABLEKS R6 R3 K14 ["ContextServices"]
  GETTABLEKS R7 R6 K15 ["withContext"]
  GETTABLEKS R8 R6 K16 ["Localization"]
  GETIMPORT R9 K8 [require]
  GETTABLEKS R13 R1 K17 ["Src"]
  GETTABLEKS R12 R13 K18 ["Components"]
  GETTABLEKS R11 R12 K19 ["Watch"]
  GETTABLEKS R10 R11 K20 ["WatchComponent"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K21 ["PureComponent"]
  LOADK R12 K22 ["WatchWindow"]
  NAMECALL R10 R10 K23 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K24 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R9
  SETTABLEKS R11 R10 K25 ["render"]
  MOVE R11 R7
  DUPTABLE R12 K26 [{"Localization"}]
  SETTABLEKS R8 R12 K16 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
