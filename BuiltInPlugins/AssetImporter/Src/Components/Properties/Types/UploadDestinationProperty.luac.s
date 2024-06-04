PROTO_0:
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  JUMPIFNOTEQ R6 R0 [+2]
  RETURN R5 1
  FORGLOOP R2 2 [-4]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnSetItem"]
  GETUPVAL R4 1
  GETTABLE R3 R4 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  NEWTABLE R2 0 1
  GETTABLEKS R3 R1 K1 ["Localization"]
  LOADK R5 K2 ["UploadDestination"]
  LOADK R6 K3 ["Me"]
  NAMECALL R3 R3 K4 ["getText"]
  CALL R3 3 -1
  SETLIST R2 R3 -1 [1]
  NEWTABLE R3 0 1
  LOADN R4 255
  SETLIST R3 R4 1 [1]
  GETTABLEKS R4 R1 K5 ["ManagedGroups"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R11 R8 K6 ["name"]
  FASTCALL2 TABLE_INSERT R2 R11 [+4]
  MOVE R10 R2
  GETIMPORT R9 K9 [table.insert]
  CALL R9 2 0
  GETTABLEKS R11 R8 K10 ["groupId"]
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K9 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-17]
  GETTABLEKS R5 R1 K11 ["Value"]
  MOVE R6 R3
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  JUMPIFNOTEQ R10 R5 [+3]
  MOVE R4 R9
  JUMP [+3]
  FORGLOOP R6 2 [-5]
  LOADNIL R4
  JUMPIFNOTEQKNIL R4 [+2]
  LOADN R4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K16 [{"LayoutOrder", "AutomaticSize", "Size"}]
  GETTABLEKS R8 R1 K13 ["LayoutOrder"]
  SETTABLEKS R8 R7 K13 ["LayoutOrder"]
  GETIMPORT R8 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K14 ["AutomaticSize"]
  GETTABLEKS R8 R1 K15 ["Size"]
  SETTABLEKS R8 R7 K15 ["Size"]
  DUPTABLE R8 K21 [{"WrapperContents"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K26 [{"OnItemActivated", "Items", "SelectedIndex", "Focus", "Size"}]
  NEWCLOSURE R12 P0
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K22 ["OnItemActivated"]
  SETTABLEKS R2 R11 K23 ["Items"]
  SETTABLEKS R4 R11 K24 ["SelectedIndex"]
  GETTABLE R12 R2 R4
  SETTABLEKS R12 R11 K25 ["Focus"]
  GETIMPORT R12 K29 [UDim2.fromScale]
  LOADN R13 1
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["Size"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["WrapperContents"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_3:
  DUPTABLE R1 K1 [{"ManagedGroups"}]
  GETTABLEKS R3 R0 K2 ["Preview"]
  GETTABLEKS R2 R3 K3 ["managedGroups"]
  SETTABLEKS R2 R1 K0 ["ManagedGroups"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["Pane"]
  GETTABLEKS R6 R4 K12 ["SelectInput"]
  GETTABLEKS R7 R2 K13 ["PureComponent"]
  LOADK R9 K14 ["UploadDestinationProperty"]
  NAMECALL R7 R7 K15 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K16 [PROTO_0]
  DUPCLOSURE R9 K17 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R9 R7 K18 ["render"]
  DUPCLOSURE R9 K19 [PROTO_3]
  GETTABLEKS R10 R3 K20 ["connect"]
  MOVE R11 R9
  CALL R10 1 1
  MOVE R11 R7
  CALL R10 1 -1
  RETURN R10 -1
