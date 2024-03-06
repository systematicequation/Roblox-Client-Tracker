PROTO_0:
  NEWTABLE R2 0 4
  DUPTABLE R3 K3 [{"Id", "Text", "OnItemClicked"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["DROPDOWN_ACTIONS"]
  GETTABLEKS R4 R5 K5 ["INSERT"]
  SETTABLEKS R4 R3 K0 ["Id"]
  LOADK R6 K6 ["DropdownOptions"]
  LOADK R7 K7 ["Insert"]
  NAMECALL R4 R0 K8 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Text"]
  SETTABLEKS R1 R3 K2 ["OnItemClicked"]
  DUPTABLE R4 K3 [{"Id", "Text", "OnItemClicked"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["DROPDOWN_ACTIONS"]
  GETTABLEKS R5 R6 K9 ["INVENTORY"]
  SETTABLEKS R5 R4 K0 ["Id"]
  LOADK R7 K6 ["DropdownOptions"]
  LOADK R8 K10 ["Inventory"]
  NAMECALL R5 R0 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["Text"]
  SETTABLEKS R1 R4 K2 ["OnItemClicked"]
  DUPTABLE R5 K3 [{"Id", "Text", "OnItemClicked"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["DROPDOWN_ACTIONS"]
  GETTABLEKS R6 R7 K11 ["EXPORT"]
  SETTABLEKS R6 R5 K0 ["Id"]
  LOADK R8 K6 ["DropdownOptions"]
  LOADK R9 K12 ["Export"]
  NAMECALL R6 R0 K8 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K1 ["Text"]
  SETTABLEKS R1 R5 K2 ["OnItemClicked"]
  DUPTABLE R6 K3 [{"Id", "Text", "OnItemClicked"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["DROPDOWN_ACTIONS"]
  GETTABLEKS R7 R8 K13 ["REMOVE"]
  SETTABLEKS R7 R6 K0 ["Id"]
  LOADK R9 K6 ["DropdownOptions"]
  LOADK R10 K14 ["Remove"]
  NAMECALL R7 R0 K8 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K1 ["Text"]
  SETTABLEKS R1 R6 K2 ["OnItemClicked"]
  SETLIST R2 R3 4 [1]
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+22]
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["Model"]
  CALL R0 1 1
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NAMECALL R6 R5 K4 ["Clone"]
  CALL R6 1 1
  GETUPVAL R7 1
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 2
  MOVE R8 R6
  GETUPVAL R9 1
  CALL R7 2 0
  SETTABLEKS R0 R6 K5 ["Parent"]
  FORGLOOP R1 2 [-12]
  RETURN R0 1
  LOADNIL R0
  RETURN R0 1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  NEWTABLE R4 0 2
  MOVE R5 R0
  MOVE R6 R1
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R2 R1 K0 ["ViewportSize"]
  LOADN R4 1
  GETTABLEKS R6 R2 K1 ["X"]
  GETTABLEKS R7 R2 K2 ["Y"]
  DIV R5 R6 R7
  FASTCALL2 MATH_MIN R4 R5 [+3]
  GETIMPORT R3 K5 [math.min]
  CALL R3 2 1
  GETTABLEKS R9 R1 K7 ["FieldOfView"]
  DIVK R8 R9 K6 [2]
  FASTCALL1 MATH_RAD R8 [+2]
  GETIMPORT R7 K9 [math.rad]
  CALL R7 1 1
  FASTCALL1 MATH_TAN R7 [+2]
  GETIMPORT R6 K11 [math.tan]
  CALL R6 1 1
  MUL R5 R6 R3
  FASTCALL1 MATH_ATAN R5 [+2]
  GETIMPORT R4 K13 [math.atan]
  CALL R4 1 1
  GETTABLEKS R6 R0 K14 ["Magnitude"]
  DIVK R5 R6 K6 [2]
  FASTCALL1 MATH_SIN R4 [+3]
  MOVE R8 R4
  GETIMPORT R7 K16 [math.sin]
  CALL R7 1 1
  DIV R6 R5 R7
  RETURN R6 1

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETTABLEKS R4 R0 K2 ["Generation"]
  GETTABLEKS R3 R4 K3 ["startTime"]
  GETTABLEKS R6 R0 K2 ["Generation"]
  GETTABLEKS R5 R6 K4 ["estimatedWaitDurationSeconds"]
  FASTCALL1 TONUMBER R5 [+2]
  GETIMPORT R4 K6 [tonumber]
  CALL R4 1 1
  GETTABLEKS R6 R0 K2 ["Generation"]
  GETTABLEKS R5 R6 K7 ["previewImage"]
  GETUPVAL R6 2
  LOADK R8 K8 ["GenerationCard"]
  NAMECALL R6 R6 K0 ["use"]
  CALL R6 2 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K16 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "VerticalAlignment", "Size"}]
  GETIMPORT R10 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K10 ["AutomaticSize"]
  GETIMPORT R10 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R10 R9 K11 ["HorizontalAlignment"]
  GETIMPORT R10 K24 [Enum.FillDirection.Horizontal]
  SETTABLEKS R10 R9 K12 ["Layout"]
  GETTABLEKS R10 R6 K13 ["Padding"]
  SETTABLEKS R10 R9 K13 ["Padding"]
  GETIMPORT R10 K26 [Enum.VerticalAlignment.Center]
  SETTABLEKS R10 R9 K14 ["VerticalAlignment"]
  GETIMPORT R10 K29 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["Size"]
  DUPTABLE R10 K33 [{"PreviewImage", "Content", "CancelButton"}]
  JUMPIFNOT R5 [+34]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K38 [{"AnchorPoint", "LayoutOrder", "Size", "Image", "Position"}]
  GETIMPORT R14 K40 [Vector2.new]
  LOADK R15 K41 [0.5]
  LOADK R16 K41 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K34 ["AnchorPoint"]
  NAMECALL R14 R2 K42 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K35 ["LayoutOrder"]
  GETTABLEKS R14 R6 K43 ["PreviewImageSize"]
  SETTABLEKS R14 R13 K15 ["Size"]
  GETTABLEKS R14 R5 K44 ["previewId"]
  SETTABLEKS R14 R13 K36 ["Image"]
  GETIMPORT R14 K29 [UDim2.fromScale]
  LOADK R15 K41 [0.5]
  LOADK R16 K41 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["Position"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K30 ["PreviewImage"]
  JUMPIFNOT R4 [+20]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K48 [{"LayoutOrder", "StartTime", "TotalTime", "Width"}]
  NAMECALL R14 R2 K42 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K35 ["LayoutOrder"]
  SETTABLEKS R3 R13 K45 ["StartTime"]
  SETTABLEKS R4 R13 K46 ["TotalTime"]
  GETTABLEKS R14 R6 K49 ["ProgressBarWidth"]
  SETTABLEKS R14 R13 K47 ["Width"]
  CALL R11 2 1
  JUMP [+36]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 7
  DUPTABLE R13 K55 [{"LayoutOrder", "Size", "Text", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
  NAMECALL R14 R2 K42 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K35 ["LayoutOrder"]
  GETTABLEKS R14 R6 K56 ["PromptLabelProgressSize"]
  SETTABLEKS R14 R13 K15 ["Size"]
  GETTABLEKS R15 R0 K2 ["Generation"]
  GETTABLEKS R14 R15 K57 ["prompt"]
  SETTABLEKS R14 R13 K50 ["Text"]
  GETIMPORT R14 K59 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K51 ["TextTruncate"]
  GETIMPORT R14 K60 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K52 ["TextXAlignment"]
  GETIMPORT R14 K61 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K53 ["TextYAlignment"]
  LOADB R14 1
  SETTABLEKS R14 R13 K54 ["TextWrapped"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K31 ["Content"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K9 ["createElement"]
  GETUPVAL R12 8
  DUPTABLE R13 K64 [{"LayoutOrder", "Size", "OnClick", "Style", "Text"}]
  NAMECALL R14 R2 K42 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K35 ["LayoutOrder"]
  GETTABLEKS R14 R6 K65 ["CancelButtonSize"]
  SETTABLEKS R14 R13 K15 ["Size"]
  GETTABLEKS R14 R0 K66 ["OnCancel"]
  SETTABLEKS R14 R13 K62 ["OnClick"]
  GETTABLEKS R14 R6 K67 ["CancelButtonStyle"]
  SETTABLEKS R14 R13 K63 ["Style"]
  LOADK R16 K8 ["GenerationCard"]
  LOADK R17 K68 ["Cancel"]
  NAMECALL R14 R1 K69 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K50 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K32 ["CancelButton"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["Id"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["DROPDOWN_ACTIONS"]
  GETTABLEKS R2 R3 K2 ["INSERT"]
  JUMPIFNOTEQ R1 R2 [+111]
  GETIMPORT R1 K5 [Instance.new]
  LOADK R2 K6 ["Model"]
  CALL R1 1 1
  GETIMPORT R2 K8 [CFrame.new]
  CALL R2 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K10 [Vector3.new]
  CALL R3 0 1
  GETUPVAL R4 1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  NAMECALL R9 R8 K11 ["Clone"]
  CALL R9 1 1
  SETTABLEKS R1 R9 K12 ["Parent"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["textureIds"]
  JUMPIFNOT R10 [+6]
  GETUPVAL R10 3
  MOVE R11 R9
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["textureIds"]
  CALL R10 2 0
  GETTABLEKS R11 R8 K14 ["Size"]
  GETTABLEKS R10 R11 K15 ["Magnitude"]
  GETTABLEKS R11 R3 K15 ["Magnitude"]
  JUMPIFNOTLT R11 R10 [+5]
  GETTABLEKS R3 R8 K14 ["Size"]
  GETTABLEKS R2 R8 K7 ["CFrame"]
  FORGLOOP R4 2 [-28]
  GETUPVAL R4 4
  SETTABLEKS R4 R1 K12 ["Parent"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K16 ["CurrentCamera"]
  GETIMPORT R5 K20 [Enum.CameraType.Fixed]
  SETTABLEKS R5 R4 K18 ["CameraType"]
  MOVE R6 R3
  GETTABLEKS R7 R4 K21 ["ViewportSize"]
  LOADN R9 1
  GETTABLEKS R11 R7 K22 ["X"]
  GETTABLEKS R12 R7 K23 ["Y"]
  DIV R10 R11 R12
  FASTCALL2 MATH_MIN R9 R10 [+3]
  GETIMPORT R8 K26 [math.min]
  CALL R8 2 1
  GETTABLEKS R14 R4 K28 ["FieldOfView"]
  DIVK R13 R14 K27 [2]
  FASTCALL1 MATH_RAD R13 [+2]
  GETIMPORT R12 K30 [math.rad]
  CALL R12 1 1
  FASTCALL1 MATH_TAN R12 [+2]
  GETIMPORT R11 K32 [math.tan]
  CALL R11 1 1
  MUL R10 R11 R8
  FASTCALL1 MATH_ATAN R10 [+2]
  GETIMPORT R9 K34 [math.atan]
  CALL R9 1 1
  GETTABLEKS R11 R6 K15 ["Magnitude"]
  DIVK R10 R11 K27 [2]
  FASTCALL1 MATH_SIN R9 [+3]
  MOVE R12 R9
  GETIMPORT R11 K36 [math.sin]
  CALL R11 1 1
  DIV R5 R10 R11
  GETTABLEKS R6 R4 K7 ["CFrame"]
  GETTABLEKS R10 R6 K37 ["Position"]
  SUB R9 R6 R10
  GETTABLEKS R10 R2 K37 ["Position"]
  ADD R8 R9 R10
  GETTABLEKS R10 R6 K38 ["LookVector"]
  MUL R9 R10 R5
  SUB R7 R8 R9
  SETTABLEKS R7 R4 K7 ["CFrame"]
  SETTABLEKS R2 R4 K39 ["Focus"]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["Id"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["DROPDOWN_ACTIONS"]
  GETTABLEKS R2 R3 K40 ["INVENTORY"]
  JUMPIFNOTEQ R1 R2 [+9]
  GETUPVAL R1 5
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K41 ["INVENTORY_URL"]
  NAMECALL R1 R1 K42 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["Id"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["DROPDOWN_ACTIONS"]
  GETTABLEKS R2 R3 K43 ["EXPORT"]
  JUMPIFNOTEQ R1 R2 [+8]
  GETIMPORT R1 K45 [PluginManager]
  CALL R1 0 1
  NAMECALL R2 R1 K46 ["ExportSelection"]
  CALL R2 1 0
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["Id"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["DROPDOWN_ACTIONS"]
  GETTABLEKS R2 R3 K47 ["REMOVE"]
  JUMPIFNOTEQ R1 R2 [+20]
  GETUPVAL R2 6
  GETTABLEKS R1 R2 K48 ["updateGeneration"]
  DUPTABLE R2 K51 [{"action", "uuid"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K52 ["GENERATION_ACTIONS"]
  GETTABLEKS R3 R4 K47 ["REMOVE"]
  SETTABLEKS R3 R2 K49 ["action"]
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K53 ["Generation"]
  GETTABLEKS R3 R4 K50 ["uuid"]
  SETTABLEKS R3 R2 K50 ["uuid"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+32]
  GETIMPORT R1 K2 [CFrame.fromEulerAnglesYXZ]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["X"]
  FASTCALL1 MATH_RAD R4 [+2]
  GETIMPORT R3 K6 [math.rad]
  CALL R3 1 1
  MINUS R2 R3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["Y"]
  FASTCALL1 MATH_RAD R5 [+2]
  GETIMPORT R4 K6 [math.rad]
  CALL R4 1 1
  MINUS R3 R4
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["Z"]
  FASTCALL1 MATH_RAD R6 [+2]
  GETIMPORT R5 K6 [math.rad]
  CALL R5 1 1
  MINUS R4 R5
  CALL R1 3 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["INITIAL_FOCUS_DIRECTION"]
  MUL R0 R1 R2
  RETURN R0 1
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K9 ["INITIAL_FOCUS_DIRECTION"]
  RETURN R0 1

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["STATUS"]
  GETTABLEKS R1 R2 K1 ["FAILED"]
  JUMPIFNOTEQ R0 R1 [+21]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K2 ["updateGeneration"]
  DUPTABLE R1 K5 [{"action", "uuid"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["GENERATION_ACTIONS"]
  GETTABLEKS R2 R3 K7 ["REMOVE"]
  SETTABLEKS R2 R1 K3 ["action"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K8 ["Generation"]
  GETTABLEKS R2 R3 K4 ["uuid"]
  SETTABLEKS R2 R1 K4 ["uuid"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 4
  GETUPVAL R1 5
  GETUPVAL R2 6
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["Plugin"]
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K4 ["new"]
  CALL R4 0 1
  GETTABLEKS R5 R0 K5 ["Generation"]
  GETTABLEKS R6 R5 K6 ["status"]
  LOADNIL R7
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K7 ["STATUS"]
  GETTABLEKS R8 R9 K8 ["COMPLETED"]
  JUMPIFNOTEQ R6 R8 [+5]
  GETTABLEKS R8 R5 K10 ["prompt"]
  ORK R7 R8 K9 [""]
  JUMP [+12]
  GETTABLEKS R8 R5 K11 ["message"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R7 R5 K11 ["message"]
  JUMP [+6]
  GETTABLEKS R8 R5 K12 ["errors"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R8 R5 K12 ["errors"]
  GETTABLEN R7 R8 1
  GETTABLEKS R8 R5 K13 ["textureIds"]
  GETTABLEKS R9 R5 K14 ["meshParts"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K15 ["useMemo"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE UPVAL U6
  NEWTABLE R12 0 2
  MOVE R13 R9
  MOVE R14 R8
  SETLIST R12 R13 2 [1]
  CALL R10 2 1
  NEWCLOSURE R11 P1
  CAPTURE UPVAL U5
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R1
  CAPTURE VAL R0
  GETUPVAL R12 9
  MOVE R13 R2
  MOVE R14 R11
  CALL R12 2 1
  GETTABLEKS R13 R5 K16 ["rotation"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K15 ["useMemo"]
  NEWCLOSURE R15 P2
  CAPTURE VAL R13
  CAPTURE UPVAL U5
  NEWTABLE R16 0 1
  MOVE R17 R13
  SETLIST R16 R17 1 [1]
  CALL R14 2 1
  GETUPVAL R15 10
  LOADK R17 K17 ["GenerationCard"]
  NAMECALL R15 R15 K1 ["use"]
  CALL R15 2 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K18 ["createElement"]
  GETUPVAL R17 11
  DUPTABLE R18 K24 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "VerticalAlignment"}]
  GETIMPORT R19 K27 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K19 ["AutomaticSize"]
  GETIMPORT R19 K29 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K20 ["HorizontalAlignment"]
  GETIMPORT R19 K32 [Enum.FillDirection.Horizontal]
  SETTABLEKS R19 R18 K21 ["Layout"]
  GETTABLEKS R19 R15 K22 ["Padding"]
  SETTABLEKS R19 R18 K22 ["Padding"]
  GETIMPORT R19 K34 [Enum.VerticalAlignment.Center]
  SETTABLEKS R19 R18 K23 ["VerticalAlignment"]
  DUPTABLE R19 K38 [{"InstanceView", "PromptLabel", "Button"}]
  JUMPIFNOT R10 [+45]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 12
  DUPTABLE R22 K47 [{"LayoutOrder", "Model", "Size", "Static", "BackgroundColor3", "FocusDirection", "LightColor", "LightDirection"}]
  NAMECALL R23 R4 K48 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K39 ["LayoutOrder"]
  SETTABLEKS R10 R22 K40 ["Model"]
  GETTABLEKS R23 R15 K49 ["InstanceViewSize"]
  SETTABLEKS R23 R22 K41 ["Size"]
  LOADB R23 1
  SETTABLEKS R23 R22 K42 ["Static"]
  GETTABLEKS R23 R15 K50 ["BackgroundColor"]
  SETTABLEKS R23 R22 K43 ["BackgroundColor3"]
  SETTABLEKS R14 R22 K44 ["FocusDirection"]
  GETIMPORT R23 K52 [Color3.new]
  LOADN R24 1
  LOADN R25 1
  LOADN R26 1
  CALL R23 3 1
  SETTABLEKS R23 R22 K45 ["LightColor"]
  LOADN R25 1
  LOADN R26 1
  LOADN R27 1
  FASTCALL VECTOR [+2]
  GETIMPORT R24 K54 [Vector3.new]
  CALL R24 3 1
  MINUS R23 R24
  SETTABLEKS R23 R22 K46 ["LightDirection"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K35 ["InstanceView"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 13
  DUPTABLE R22 K61 [{"LayoutOrder", "Size", "Style", "Text", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
  NAMECALL R23 R4 K48 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K39 ["LayoutOrder"]
  GETTABLEKS R23 R15 K62 ["PromptLabelSize"]
  SETTABLEKS R23 R22 K41 ["Size"]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K7 ["STATUS"]
  GETTABLEKS R24 R25 K63 ["FAILED"]
  JUMPIFNOTEQ R6 R24 [+3]
  LOADK R23 K64 ["Warning"]
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K55 ["Style"]
  SETTABLEKS R7 R22 K56 ["Text"]
  GETIMPORT R23 K66 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R23 R22 K57 ["TextTruncate"]
  GETIMPORT R23 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R23 R22 K58 ["TextXAlignment"]
  GETIMPORT R23 K68 [Enum.TextYAlignment.Center]
  SETTABLEKS R23 R22 K59 ["TextYAlignment"]
  LOADB R23 1
  SETTABLEKS R23 R22 K60 ["TextWrapped"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K36 ["PromptLabel"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K70 [{"LayoutOrder", "Size", "OnClick"}]
  NAMECALL R23 R4 K48 ["getNextOrder"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K39 ["LayoutOrder"]
  GETTABLEKS R23 R15 K71 ["MenuButtonSize"]
  SETTABLEKS R23 R22 K41 ["Size"]
  NEWCLOSURE R23 P3
  CAPTURE VAL R6
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U14
  CAPTURE VAL R3
  CAPTURE VAL R12
  SETTABLEKS R23 R22 K69 ["OnClick"]
  DUPTABLE R23 K73 [{"Icon"}]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K7 ["STATUS"]
  GETTABLEKS R25 R26 K63 ["FAILED"]
  JUMPIFNOTEQ R6 R25 [+35]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K18 ["createElement"]
  GETUPVAL R25 15
  DUPTABLE R26 K77 [{"AnchorPoint", "Image", "Position", "Size", "Style"}]
  GETIMPORT R27 K79 [Vector2.new]
  LOADK R28 K80 [0.5]
  LOADK R29 K80 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K74 ["AnchorPoint"]
  LOADK R27 K81 ["rbxasset://textures/DeveloperFramework/close.png"]
  SETTABLEKS R27 R26 K75 ["Image"]
  GETIMPORT R27 K84 [UDim2.fromScale]
  LOADK R28 K80 [0.5]
  LOADK R29 K80 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K76 ["Position"]
  GETIMPORT R27 K86 [UDim2.fromOffset]
  LOADN R28 16
  LOADN R29 16
  CALL R27 2 1
  SETTABLEKS R27 R26 K41 ["Size"]
  LOADK R27 K87 ["ColoredWarning"]
  SETTABLEKS R27 R26 K55 ["Style"]
  CALL R24 2 1
  JUMP [+30]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K18 ["createElement"]
  GETUPVAL R25 15
  DUPTABLE R26 K88 [{"AnchorPoint", "Image", "Position", "Size"}]
  GETIMPORT R27 K79 [Vector2.new]
  LOADK R28 K80 [0.5]
  LOADK R29 K80 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K74 ["AnchorPoint"]
  LOADK R27 K89 ["rbxasset://textures/StudioSharedUI/MeatballMenu.png"]
  SETTABLEKS R27 R26 K75 ["Image"]
  GETIMPORT R27 K84 [UDim2.fromScale]
  LOADK R28 K80 [0.5]
  LOADK R29 K80 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K76 ["Position"]
  GETIMPORT R27 K86 [UDim2.fromOffset]
  LOADN R28 24
  LOADN R29 24
  CALL R27 2 1
  SETTABLEKS R27 R26 K41 ["Size"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K72 ["Icon"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K37 ["Button"]
  CALL R16 3 -1
  RETURN R16 -1

PROTO_9:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Generation"]
  GETTABLEKS R2 R3 K1 ["uuid"]
  NAMECALL R0 R0 K2 ["CancelGenerationRequest"]
  CALL R0 2 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K3 ["updateGeneration"]
  DUPTABLE R1 K5 [{"action", "uuid"}]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["GENERATION_ACTIONS"]
  GETTABLEKS R2 R3 K7 ["REMOVE"]
  SETTABLEKS R2 R1 K4 ["action"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Generation"]
  GETTABLEKS R2 R3 K1 ["uuid"]
  SETTABLEKS R2 R1 K1 ["uuid"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["STATUS"]
  GETTABLEKS R1 R2 K1 ["COMPLETED"]
  JUMPIFEQ R0 R1 [+2]
  RETURN R0 0
  GETIMPORT R0 K3 [next]
  GETUPVAL R1 2
  CALL R0 1 1
  JUMPIFEQKNIL R0 [+35]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K4 ["selected"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K5 ["Generation"]
  GETTABLEKS R1 R2 K6 ["uuid"]
  JUMPIFEQ R0 R1 [+25]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K7 ["setSelected"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K5 ["Generation"]
  GETTABLEKS R1 R2 K6 ["uuid"]
  CALL R0 1 0
  GETUPVAL R0 2
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETUPVAL R5 5
  MOVE R6 R4
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K5 ["Generation"]
  GETTABLEKS R7 R8 K8 ["textureIds"]
  CALL R5 2 0
  FORGLOOP R0 2 [-9]
  RETURN R0 0
  GETIMPORT R0 K3 [next]
  GETUPVAL R1 2
  CALL R0 1 1
  JUMPIFEQKNIL R0 [+27]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K4 ["selected"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K5 ["Generation"]
  GETTABLEKS R1 R2 K6 ["uuid"]
  JUMPIFNOTEQ R0 R1 [+17]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K7 ["setSelected"]
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R0 2
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETUPVAL R5 5
  MOVE R6 R4
  LOADK R7 K9 [""]
  CALL R5 2 0
  FORGLOOP R0 2 [-5]
  RETURN R0 0
  GETIMPORT R0 K3 [next]
  GETUPVAL R1 2
  CALL R0 1 1
  JUMPIFNOTEQKNIL R0 [+150]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K4 ["selected"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K5 ["Generation"]
  GETTABLEKS R1 R2 K6 ["uuid"]
  JUMPIFEQ R0 R1 [+140]
  LOADNIL R0
  GETIMPORT R1 K12 [CFrame.new]
  CALL R1 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K14 [Vector3.new]
  CALL R2 0 1
  LOADB R3 0
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K5 ["Generation"]
  GETTABLEKS R4 R7 K15 ["meshParts"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  LOADK R11 K16 ["SurfaceAppearance"]
  NAMECALL R9 R8 K17 ["FindFirstChildOfClass"]
  CALL R9 2 1
  JUMPIFNOT R9 [+2]
  GETTABLEKS R0 R9 K18 ["ColorMap"]
  GETTABLEKS R11 R8 K19 ["Size"]
  GETTABLEKS R10 R11 K20 ["Magnitude"]
  GETTABLEKS R11 R2 K20 ["Magnitude"]
  JUMPIFNOTLT R11 R10 [+5]
  GETTABLEKS R2 R8 K19 ["Size"]
  GETTABLEKS R1 R8 K10 ["CFrame"]
  GETUPVAL R12 6
  NAMECALL R10 R8 K21 ["IsDescendantOf"]
  CALL R10 2 1
  JUMPIFNOT R10 [+1]
  LOADB R3 1
  FORGLOOP R4 2 [-26]
  JUMPIFNOT R3 [+94]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K5 ["Generation"]
  GETTABLEKS R4 R5 K8 ["textureIds"]
  JUMPIFNOTEQ R0 R4 [+88]
  FASTCALL2K ASSERT R0 K22 [+5]
  MOVE R5 R0
  LOADK R6 K22 ["No texture ID found"]
  GETIMPORT R4 K24 [assert]
  CALL R4 2 0
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["setSelected"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K5 ["Generation"]
  GETTABLEKS R5 R6 K6 ["uuid"]
  CALL R4 1 0
  GETUPVAL R4 7
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K5 ["Generation"]
  GETTABLEKS R6 R7 K15 ["meshParts"]
  NAMECALL R4 R4 K25 ["Set"]
  CALL R4 2 0
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K26 ["CurrentCamera"]
  GETIMPORT R5 K30 [Enum.CameraType.Fixed]
  SETTABLEKS R5 R4 K28 ["CameraType"]
  MOVE R6 R2
  GETTABLEKS R7 R4 K31 ["ViewportSize"]
  LOADN R9 1
  GETTABLEKS R11 R7 K32 ["X"]
  GETTABLEKS R12 R7 K33 ["Y"]
  DIV R10 R11 R12
  FASTCALL2 MATH_MIN R9 R10 [+3]
  GETIMPORT R8 K36 [math.min]
  CALL R8 2 1
  GETTABLEKS R14 R4 K38 ["FieldOfView"]
  DIVK R13 R14 K37 [2]
  FASTCALL1 MATH_RAD R13 [+2]
  GETIMPORT R12 K40 [math.rad]
  CALL R12 1 1
  FASTCALL1 MATH_TAN R12 [+2]
  GETIMPORT R11 K42 [math.tan]
  CALL R11 1 1
  MUL R10 R11 R8
  FASTCALL1 MATH_ATAN R10 [+2]
  GETIMPORT R9 K44 [math.atan]
  CALL R9 1 1
  GETTABLEKS R11 R6 K20 ["Magnitude"]
  DIVK R10 R11 K37 [2]
  FASTCALL1 MATH_SIN R9 [+3]
  MOVE R12 R9
  GETIMPORT R11 K46 [math.sin]
  CALL R11 1 1
  DIV R5 R10 R11
  GETTABLEKS R6 R4 K10 ["CFrame"]
  GETTABLEKS R10 R6 K47 ["Position"]
  SUB R9 R6 R10
  GETTABLEKS R10 R1 K47 ["Position"]
  ADD R8 R9 R10
  GETTABLEKS R10 R6 K48 ["LookVector"]
  MUL R9 R10 R5
  SUB R7 R8 R9
  SETTABLEKS R7 R4 K10 ["CFrame"]
  SETTABLEKS R1 R4 K49 ["Focus"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  LOADK R3 K0 ["GenerationCard"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R3 3
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K4 ["Generation"]
  GETTABLEKS R4 R5 K5 ["status"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["useCallback"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE UPVAL U5
  NEWTABLE R7 0 2
  GETTABLEKS R9 R0 K4 ["Generation"]
  GETTABLEKS R8 R9 K7 ["uuid"]
  GETTABLEKS R9 R2 K8 ["updateGeneration"]
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  GETUPVAL R6 6
  CALL R6 0 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["useCallback"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R4
  CAPTURE UPVAL U5
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R3
  NEWTABLE R9 0 4
  MOVE R10 R4
  MOVE R11 R6
  GETTABLEKS R12 R2 K9 ["selected"]
  GETTABLEKS R13 R2 K10 ["setSelected"]
  SETLIST R9 R10 4 [1]
  CALL R7 2 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K11 ["useState"]
  LOADN R9 0
  CALL R8 1 2
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R11 9
  DUPTABLE R12 K18 [{"AutomaticSize", "LayoutOrder", "Size", "Style", "OnClick"}]
  GETIMPORT R13 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K13 ["AutomaticSize"]
  GETTABLEKS R13 R0 K14 ["LayoutOrder"]
  SETTABLEKS R13 R12 K14 ["LayoutOrder"]
  GETIMPORT R13 K24 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  FASTCALL2K MATH_MAX R8 K25 [+5]
  MOVE R18 R8
  LOADK R19 K25 [46]
  GETIMPORT R17 K28 [math.max]
  CALL R17 2 1
  CALL R13 4 1
  SETTABLEKS R13 R12 K15 ["Size"]
  LOADK R13 K29 ["CornerBox"]
  SETTABLEKS R13 R12 K16 ["Style"]
  SETTABLEKS R7 R12 K17 ["OnClick"]
  DUPTABLE R13 K32 [{"UIPadding", "Contents"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K12 ["createElement"]
  LOADK R15 K30 ["UIPadding"]
  DUPTABLE R16 K34 [{"PaddingTop"}]
  GETIMPORT R17 K36 [UDim.new]
  LOADN R18 0
  LOADN R19 3
  CALL R17 2 1
  SETTABLEKS R17 R16 K33 ["PaddingTop"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K30 ["UIPadding"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R15 9
  DUPTABLE R16 K39 [{"AnchorPoint", "AutomaticSize", "Position", "Style", "Size"}]
  GETIMPORT R17 K41 [Vector2.new]
  LOADK R18 K42 [0.5]
  LOADK R19 K42 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K37 ["AnchorPoint"]
  GETIMPORT R17 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K13 ["AutomaticSize"]
  GETIMPORT R17 K44 [UDim2.fromScale]
  LOADK R18 K42 [0.5]
  LOADK R19 K42 [0.5]
  CALL R17 2 1
  SETTABLEKS R17 R16 K38 ["Position"]
  LOADK R17 K29 ["CornerBox"]
  SETTABLEKS R17 R16 K16 ["Style"]
  GETIMPORT R17 K24 [UDim2.new]
  LOADN R18 1
  LOADN R19 254
  LOADN R20 0
  LOADN R21 0
  CALL R17 4 1
  SETTABLEKS R17 R16 K15 ["Size"]
  DUPTABLE R17 K46 [{"UIStroke", "Generation"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K12 ["createElement"]
  LOADK R19 K45 ["UIStroke"]
  DUPTABLE R20 K50 [{"Thickness", "ApplyStrokeMode", "Color"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K47 ["Thickness"]
  GETIMPORT R21 K52 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R21 R20 K48 ["ApplyStrokeMode"]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K53 ["STATUS"]
  GETTABLEKS R22 R23 K54 ["FAILED"]
  JUMPIFNOTEQ R4 R22 [+4]
  GETTABLEKS R21 R1 K55 ["ErrorStrokeColor"]
  JUMP [+13]
  GETTABLEKS R22 R2 K9 ["selected"]
  GETTABLEKS R24 R0 K4 ["Generation"]
  GETTABLEKS R23 R24 K7 ["uuid"]
  JUMPIFNOTEQ R22 R23 [+4]
  GETTABLEKS R21 R1 K56 ["SelectedStrokeColor"]
  JUMP [+2]
  GETTABLEKS R21 R1 K57 ["StrokeColor"]
  SETTABLEKS R21 R20 K49 ["Color"]
  DUPTABLE R21 K59 [{"Corner"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K12 ["createElement"]
  LOADK R23 K60 ["UICorner"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K58 ["Corner"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K45 ["UIStroke"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K53 ["STATUS"]
  GETTABLEKS R19 R20 K61 ["PENDING"]
  JUMPIFNOTEQ R4 R19 [+16]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 10
  DUPTABLE R20 K64 [{"Generation", "OnCancel", "SetHeight"}]
  GETTABLEKS R21 R0 K4 ["Generation"]
  SETTABLEKS R21 R20 K4 ["Generation"]
  SETTABLEKS R5 R20 K62 ["OnCancel"]
  SETTABLEKS R9 R20 K63 ["SetHeight"]
  CALL R18 2 1
  JUMP [+12]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 11
  DUPTABLE R20 K65 [{"Generation", "SetHeight"}]
  GETTABLEKS R21 R0 K4 ["Generation"]
  SETTABLEKS R21 R20 K4 ["Generation"]
  SETTABLEKS R9 R20 K63 ["SetHeight"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K4 ["Generation"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K31 ["Contents"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["TextureGenerationService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K13 ["ContextServices"]
  GETTABLEKS R5 R4 K14 ["Localization"]
  GETTABLEKS R6 R2 K15 ["UI"]
  GETTABLEKS R7 R6 K16 ["AssetRenderModel"]
  GETTABLEKS R8 R6 K17 ["Button"]
  GETTABLEKS R9 R6 K18 ["Image"]
  GETTABLEKS R10 R6 K19 ["Pane"]
  GETTABLEKS R11 R6 K20 ["showContextMenu"]
  GETTABLEKS R12 R6 K21 ["TextLabel"]
  GETTABLEKS R13 R6 K22 ["TimeProgressBar"]
  GETTABLEKS R15 R2 K23 ["Util"]
  GETTABLEKS R14 R15 K24 ["StyleModifier"]
  GETTABLEKS R16 R2 K23 ["Util"]
  GETTABLEKS R15 R16 K25 ["LayoutOrderIterator"]
  GETTABLEKS R17 R2 K13 ["ContextServices"]
  GETTABLEKS R16 R17 K26 ["Stylizer"]
  GETTABLEKS R18 R0 K27 ["Src"]
  GETTABLEKS R17 R18 K28 ["Hooks"]
  GETIMPORT R18 K9 [require]
  GETTABLEKS R19 R17 K29 ["useSelectedMeshParts"]
  CALL R18 1 1
  GETIMPORT R19 K9 [require]
  GETTABLEKS R22 R0 K27 ["Src"]
  GETTABLEKS R21 R22 K23 ["Util"]
  GETTABLEKS R20 R21 K30 ["Constants"]
  CALL R19 1 1
  GETIMPORT R20 K9 [require]
  GETTABLEKS R23 R0 K27 ["Src"]
  GETTABLEKS R22 R23 K23 ["Util"]
  GETTABLEKS R21 R22 K31 ["GenerationsContext"]
  CALL R20 1 1
  GETIMPORT R21 K9 [require]
  GETTABLEKS R24 R0 K27 ["Src"]
  GETTABLEKS R23 R24 K23 ["Util"]
  GETTABLEKS R22 R23 K32 ["SelectionWrapper"]
  CALL R21 1 1
  GETIMPORT R22 K9 [require]
  GETTABLEKS R25 R0 K27 ["Src"]
  GETTABLEKS R24 R25 K23 ["Util"]
  GETTABLEKS R23 R24 K33 ["setTexture"]
  CALL R22 1 1
  GETIMPORT R23 K9 [require]
  GETTABLEKS R26 R0 K27 ["Src"]
  GETTABLEKS R25 R26 K34 ["Resources"]
  GETTABLEKS R24 R25 K35 ["Theme"]
  CALL R23 1 1
  GETIMPORT R24 K9 [require]
  GETTABLEKS R26 R0 K27 ["Src"]
  GETTABLEKS R25 R26 K36 ["Types"]
  CALL R24 1 1
  GETIMPORT R25 K5 [game]
  LOADK R27 K37 ["GuiService"]
  NAMECALL R25 R25 K7 ["GetService"]
  CALL R25 2 1
  GETIMPORT R26 K5 [game]
  LOADK R28 K38 ["Workspace"]
  NAMECALL R26 R26 K7 ["GetService"]
  CALL R26 2 1
  DUPCLOSURE R27 K39 [PROTO_0]
  CAPTURE VAL R19
  DUPCLOSURE R28 K40 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R22
  DUPCLOSURE R29 K41 [PROTO_3]
  DUPCLOSURE R30 K42 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R8
  DUPCLOSURE R31 K43 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R19
  CAPTURE VAL R22
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R27
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R9
  DUPCLOSURE R32 K44 [PROTO_11]
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R22
  CAPTURE VAL R26
  CAPTURE VAL R10
  CAPTURE VAL R30
  CAPTURE VAL R31
  RETURN R32 1
