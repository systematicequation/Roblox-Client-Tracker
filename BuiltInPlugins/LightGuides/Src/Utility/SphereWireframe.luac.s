PROTO_0:
  DUPTABLE R0 K9 [{"_adornee", "_parent", "_light", "_handlesFolder", "_guidesFolder", "_handles", "_handlesPresent", "_listener", "_attachmentListener"}]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_adornee"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_parent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_light"]
  GETIMPORT R1 K12 [Instance.new]
  LOADK R2 K13 ["Folder"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["_handlesFolder"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_guidesFolder"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["_handles"]
  LOADB R1 0
  SETTABLEKS R1 R0 K6 ["_handlesPresent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_listener"]
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["_attachmentListener"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K15 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  NAMECALL R1 R0 K0 ["_setListeners"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_setAncestry"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K2 ["_handlesPresent"]
  JUMPIF R1 [+3]
  NAMECALL R1 R0 K3 ["_setHandles"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K4 ["_light"]
  GETTABLEKS R1 R2 K5 ["Enabled"]
  GETTABLEKS R3 R0 K4 ["_light"]
  GETTABLEKS R2 R3 K6 ["Color"]
  GETTABLEKS R4 R0 K4 ["_light"]
  GETTABLEKS R3 R4 K7 ["Range"]
  GETTABLEKS R5 R0 K8 ["_handles"]
  GETTABLEKS R4 R5 K9 ["AxisAdornmentX"]
  GETTABLEKS R6 R0 K8 ["_handles"]
  GETTABLEKS R5 R6 K10 ["AxisAdornmentY"]
  GETTABLEKS R7 R0 K8 ["_handles"]
  GETTABLEKS R6 R7 K11 ["AxisAdornmentZ"]
  SETTABLEKS R3 R4 K12 ["Radius"]
  GETUPVAL R8 0
  SUB R7 R3 R8
  SETTABLEKS R7 R4 K13 ["InnerRadius"]
  GETTABLEKS R7 R0 K14 ["_adornee"]
  SETTABLEKS R7 R4 K15 ["Adornee"]
  SETTABLEKS R1 R4 K16 ["Visible"]
  SETTABLEKS R2 R4 K17 ["Color3"]
  GETTABLEKS R8 R0 K18 ["_offset"]
  GETIMPORT R9 K21 [CFrame.Angles]
  LOADN R10 0
  LOADK R11 K22 [1.5707963267949]
  LOADN R12 0
  CALL R9 3 1
  MUL R7 R8 R9
  SETTABLEKS R7 R4 K19 ["CFrame"]
  SETTABLEKS R3 R5 K12 ["Radius"]
  GETUPVAL R8 0
  SUB R7 R3 R8
  SETTABLEKS R7 R5 K13 ["InnerRadius"]
  GETTABLEKS R7 R0 K14 ["_adornee"]
  SETTABLEKS R7 R5 K15 ["Adornee"]
  SETTABLEKS R1 R5 K16 ["Visible"]
  SETTABLEKS R2 R5 K17 ["Color3"]
  GETTABLEKS R8 R0 K18 ["_offset"]
  GETIMPORT R9 K21 [CFrame.Angles]
  LOADK R10 K22 [1.5707963267949]
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 1
  MUL R7 R8 R9
  SETTABLEKS R7 R5 K19 ["CFrame"]
  SETTABLEKS R3 R6 K12 ["Radius"]
  GETUPVAL R8 0
  SUB R7 R3 R8
  SETTABLEKS R7 R6 K13 ["InnerRadius"]
  GETTABLEKS R7 R0 K14 ["_adornee"]
  SETTABLEKS R7 R6 K15 ["Adornee"]
  SETTABLEKS R1 R6 K16 ["Visible"]
  SETTABLEKS R2 R6 K17 ["Color3"]
  GETTABLEKS R7 R0 K18 ["_offset"]
  SETTABLEKS R7 R6 K19 ["CFrame"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["_handlesFolder"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Wireframe already pooled"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R2 R0 K4 ["_light"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Wireframe already pooled"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["_handlesFolder"]
  LOADK R2 K5 ["pooled"]
  SETTABLEKS R2 R1 K6 ["Name"]
  GETTABLEKS R1 R0 K0 ["_handlesFolder"]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["Parent"]
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_light"]
  NAMECALL R1 R0 K8 ["_removeListeners"]
  CALL R1 1 0
  RETURN R0 1

PROTO_3:
  FASTCALL2K ASSERT R1 K0 [+5]
  MOVE R3 R1
  LOADK R4 K0 ["Can't adorn nil"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  GETTABLEKS R4 R0 K3 ["_light"]
  NOT R3 R4
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Wireframe already adorned"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 0
  SETTABLEKS R1 R0 K3 ["_light"]
  GETTABLEKS R2 R0 K5 ["_handlesFolder"]
  GETTABLEKS R3 R1 K6 ["name"]
  SETTABLEKS R3 R2 K7 ["Name"]
  GETTABLEKS R2 R0 K5 ["_handlesFolder"]
  GETTABLEKS R3 R0 K8 ["_guidesFolder"]
  SETTABLEKS R3 R2 K9 ["Parent"]
  GETTABLEKS R2 R1 K9 ["Parent"]
  SETTABLEKS R2 R0 K10 ["_adornee"]
  GETTABLEKS R2 R1 K9 ["Parent"]
  SETTABLEKS R2 R0 K11 ["_parent"]
  NAMECALL R2 R0 K12 ["_setListeners"]
  CALL R2 1 0
  RETURN R0 1

PROTO_4:
  NAMECALL R1 R0 K0 ["_removeHandles"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["_removeListeners"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_handlesFolder"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_handlesFolder"]
  RETURN R0 0

PROTO_5:
  SETTABLEKS R1 R0 K0 ["_guidesFolder"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["_light"]
  GETTABLEKS R1 R2 K1 ["parent"]
  GETIMPORT R2 K4 [CFrame.new]
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K6 [Vector3.new]
  CALL R3 0 1
  CALL R2 1 1
  LOADK R5 K7 ["Attachment"]
  NAMECALL R3 R1 K8 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+12]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["parent"]
  GETTABLEKS R1 R3 K1 ["parent"]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K1 ["parent"]
  GETTABLEKS R2 R3 K2 ["CFrame"]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K9 ["Parent"]
  LOADK R5 K7 ["Attachment"]
  NAMECALL R3 R3 K8 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+14]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K9 ["Parent"]
  LOADK R5 K10 ["BasePart"]
  NAMECALL R3 R3 K8 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+5]
  NAMECALL R3 R0 K11 ["_removeHandles"]
  CALL R3 1 0
  LOADB R3 0
  RETURN R3 1
  SETTABLEKS R1 R0 K12 ["_adornee"]
  SETTABLEKS R2 R0 K13 ["_offset"]
  GETTABLEKS R4 R0 K0 ["_light"]
  GETTABLEKS R3 R4 K9 ["Parent"]
  SETTABLEKS R3 R0 K14 ["_parent"]
  LOADB R3 1
  RETURN R3 1

PROTO_7:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["CylinderHandleAdornment"]
  CALL R1 1 1
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K4 ["Height"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K5 ["Transparency"]
  GETTABLEKS R2 R0 K6 ["_handlesFolder"]
  SETTABLEKS R2 R1 K7 ["Parent"]
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["CylinderHandleAdornment"]
  CALL R2 1 1
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K4 ["Height"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K5 ["Transparency"]
  GETTABLEKS R3 R0 K6 ["_handlesFolder"]
  SETTABLEKS R3 R2 K7 ["Parent"]
  GETIMPORT R3 K2 [Instance.new]
  LOADK R4 K3 ["CylinderHandleAdornment"]
  CALL R3 1 1
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K4 ["Height"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K5 ["Transparency"]
  GETTABLEKS R4 R0 K6 ["_handlesFolder"]
  SETTABLEKS R4 R3 K7 ["Parent"]
  GETTABLEKS R4 R0 K8 ["_handles"]
  SETTABLEKS R1 R4 K9 ["AxisAdornmentX"]
  GETTABLEKS R4 R0 K8 ["_handles"]
  SETTABLEKS R2 R4 K10 ["AxisAdornmentY"]
  GETTABLEKS R4 R0 K8 ["_handles"]
  SETTABLEKS R3 R4 K11 ["AxisAdornmentZ"]
  LOADB R4 1
  SETTABLEKS R4 R0 K12 ["_handlesPresent"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["_handles"]
  JUMPIFNOT R1 [+27]
  GETTABLEKS R1 R0 K1 ["_handlesPresent"]
  JUMPIFNOT R1 [+24]
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K2 ["AxisAdornmentX"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K4 ["AxisAdornmentY"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["_handles"]
  GETTABLEKS R1 R2 K5 ["AxisAdornmentZ"]
  NAMECALL R1 R1 K3 ["Destroy"]
  CALL R1 1 0
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["_handlesPresent"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["render"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_listener"]
  JUMPIF R1 [+11]
  GETTABLEKS R2 R0 K1 ["_light"]
  GETTABLEKS R1 R2 K2 ["Changed"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["_listener"]
  GETTABLEKS R1 R0 K4 ["_attachmentListener"]
  JUMPIF R1 [+20]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K6 ["Attachment"]
  NAMECALL R1 R1 K7 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+13]
  GETTABLEKS R1 R0 K5 ["_parent"]
  LOADK R3 K8 ["CFrame"]
  NAMECALL R1 R1 K9 ["GetPropertyChangedSignal"]
  CALL R1 2 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_attachmentListener"]
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_listener"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["_listener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["_attachmentListener"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K2 ["_attachmentListener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_listener"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_attachmentListener"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K7 ["Utility"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K8 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["THICKNESS"]
  GETTABLEKS R5 R3 K10 ["TRANSPARENCY"]
  NEWTABLE R6 16 0
  SETTABLEKS R6 R6 K11 ["__index"]
  DUPCLOSURE R7 K12 [PROTO_0]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K13 ["new"]
  DUPCLOSURE R7 K14 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K15 ["render"]
  DUPCLOSURE R7 K16 [PROTO_2]
  SETTABLEKS R7 R6 K17 ["pool"]
  DUPCLOSURE R7 K18 [PROTO_3]
  SETTABLEKS R7 R6 K19 ["adorn"]
  DUPCLOSURE R7 K20 [PROTO_4]
  SETTABLEKS R7 R6 K21 ["destroy"]
  DUPCLOSURE R7 K22 [PROTO_5]
  SETTABLEKS R7 R6 K23 ["setGuidesFolder"]
  DUPCLOSURE R7 K24 [PROTO_6]
  SETTABLEKS R7 R6 K25 ["_setAncestry"]
  DUPCLOSURE R7 K26 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K27 ["_setHandles"]
  DUPCLOSURE R7 K28 [PROTO_8]
  SETTABLEKS R7 R6 K29 ["_removeHandles"]
  DUPCLOSURE R7 K30 [PROTO_11]
  SETTABLEKS R7 R6 K31 ["_setListeners"]
  DUPCLOSURE R7 K32 [PROTO_12]
  SETTABLEKS R7 R6 K33 ["_removeListeners"]
  RETURN R6 1
