PROTO_0:
  LOADB R1 0
  LOADN R2 152
  JUMPIFNOTLE R2 R0 [+6]
  LOADN R2 104
  JUMPIFLE R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEN R3 R0 1
  GETTABLEKS R2 R3 K0 ["Children"]
  GETTABLEN R3 R2 1
  GETTABLEKS R4 R1 K1 ["randomizeSeed"]
  SETTABLEKS R4 R3 K2 ["Value"]
  GETTABLEN R3 R2 2
  GETTABLEKS R4 R1 K1 ["randomizeSeed"]
  SETTABLEKS R4 R3 K3 ["Disabled"]
  GETTABLEN R3 R2 2
  GETTABLEKS R4 R1 K4 ["seed"]
  SETTABLEKS R4 R3 K2 ["Value"]
  GETTABLEKS R3 R1 K5 ["rotation"]
  NAMECALL R3 R3 K6 ["ToEulerAnglesYXZ"]
  CALL R3 1 3
  GETTABLEN R6 R2 3
  FASTCALL1 MATH_DEG R3 [+3]
  MOVE R9 R3
  GETIMPORT R8 K9 [math.deg]
  CALL R8 1 1
  FASTCALL1 MATH_DEG R4 [+3]
  MOVE R10 R4
  GETIMPORT R9 K9 [math.deg]
  CALL R9 1 1
  FASTCALL1 MATH_DEG R5 [+3]
  MOVE R11 R5
  GETIMPORT R10 K9 [math.deg]
  CALL R10 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K12 [Vector3.new]
  CALL R7 3 1
  SETTABLEKS R7 R6 K2 ["Value"]
  GETTABLEN R6 R2 4
  GETTABLEKS R7 R1 K13 ["smartUVUnwrap"]
  SETTABLEKS R7 R6 K2 ["Value"]
  GETTABLEN R6 R2 5
  GETTABLEKS R7 R1 K14 ["promptMasking"]
  SETTABLEKS R7 R6 K2 ["Value"]
  RETURN R0 0

PROTO_2:
  GETTABLEN R3 R1 1
  GETTABLEKS R2 R3 K0 ["Children"]
  GETTABLEKS R3 R0 K1 ["setRandomizeSeed"]
  GETTABLEN R5 R2 1
  GETTABLEKS R4 R5 K2 ["Value"]
  CALL R3 1 0
  GETTABLEKS R3 R0 K3 ["setSeed"]
  GETTABLEN R5 R2 2
  GETTABLEKS R4 R5 K2 ["Value"]
  CALL R3 1 0
  GETTABLEN R4 R2 1
  GETTABLEKS R3 R4 K2 ["Value"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R0 K4 ["setValidOptions"]
  LOADB R4 1
  CALL R3 1 0
  GETTABLEN R4 R2 3
  GETTABLEKS R3 R4 K2 ["Value"]
  GETTABLEKS R7 R3 K7 ["X"]
  ADDK R6 R7 K5 [180]
  MODK R5 R6 K6 [360]
  SUBK R4 R5 K5 [180]
  GETTABLEKS R8 R3 K8 ["Y"]
  ADDK R7 R8 K5 [180]
  MODK R6 R7 K6 [360]
  SUBK R5 R6 K5 [180]
  GETTABLEKS R9 R3 K9 ["Z"]
  ADDK R8 R9 K5 [180]
  MODK R7 R8 K6 [360]
  SUBK R6 R7 K5 [180]
  GETIMPORT R7 K12 [CFrame.fromEulerAnglesYXZ]
  FASTCALL1 MATH_RAD R4 [+3]
  MOVE R9 R4
  GETIMPORT R8 K15 [math.rad]
  CALL R8 1 1
  FASTCALL1 MATH_RAD R5 [+3]
  MOVE R10 R5
  GETIMPORT R9 K15 [math.rad]
  CALL R9 1 1
  FASTCALL1 MATH_RAD R6 [+3]
  MOVE R11 R6
  GETIMPORT R10 K15 [math.rad]
  CALL R10 1 1
  CALL R7 3 1
  GETTABLEKS R8 R0 K16 ["setRotation"]
  MOVE R9 R7
  CALL R8 1 0
  GETTABLEKS R8 R0 K17 ["setSmartUVUnwrap"]
  GETTABLEN R10 R2 4
  GETTABLEKS R9 R10 K2 ["Value"]
  CALL R8 1 0
  GETTABLEKS R8 R0 K18 ["setPromptMasking"]
  GETTABLEN R10 R2 5
  GETTABLEKS R9 R10 K2 ["Value"]
  CALL R8 1 0
  RETURN R0 0

PROTO_3:
  FASTCALL1 TYPE R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["number"] [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["setValidOptions"]
  LOADB R2 0
  CALL R1 1 0
  GETIMPORT R1 K7 [Enum.PropertyStatus.Error]
  GETUPVAL R2 1
  LOADK R4 K8 ["Options"]
  LOADK R5 K9 ["SeedNotANumber"]
  NAMECALL R2 R2 K10 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  LOADN R1 0
  JUMPIFLT R0 R1 [+6]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K11 ["MAX_SEED_VALUE"]
  JUMPIFNOTLT R1 R0 [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["setValidOptions"]
  LOADB R2 0
  CALL R1 1 0
  GETIMPORT R1 K7 [Enum.PropertyStatus.Error]
  GETUPVAL R2 1
  LOADK R4 K8 ["Options"]
  LOADK R5 K12 ["SeedOutOfRange"]
  NAMECALL R2 R2 K10 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["setValidOptions"]
  LOADB R2 1
  CALL R1 1 0
  GETIMPORT R1 K14 [Enum.PropertyStatus.Ok]
  LOADK R2 K15 [""]
  RETURN R1 2

PROTO_4:
  GETTABLEKS R2 R0 K0 ["X"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K2 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K3 ["number"] [+17]
  GETTABLEKS R2 R0 K4 ["Y"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K2 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K3 ["number"] [+9]
  GETTABLEKS R2 R0 K5 ["Z"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K2 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K3 ["number"] [+15]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["setValidOptions"]
  LOADB R2 0
  CALL R1 1 0
  GETIMPORT R1 K10 [Enum.PropertyStatus.Error]
  GETUPVAL R2 1
  LOADK R4 K11 ["Options"]
  LOADK R5 K12 ["RotationAnglesNotNumbers"]
  NAMECALL R2 R2 K13 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETTABLEKS R2 R0 K0 ["X"]
  LOADB R1 0
  LOADN R3 152
  JUMPIFNOTLE R3 R2 [+6]
  LOADN R3 104
  JUMPIFLE R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+24]
  GETTABLEKS R2 R0 K4 ["Y"]
  LOADB R1 0
  LOADN R3 152
  JUMPIFNOTLE R3 R2 [+6]
  LOADN R3 104
  JUMPIFLE R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+12]
  GETTABLEKS R2 R0 K5 ["Z"]
  LOADB R1 0
  LOADN R3 152
  JUMPIFNOTLE R3 R2 [+6]
  LOADN R3 104
  JUMPIFLE R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIF R1 [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["setValidOptions"]
  LOADB R2 0
  CALL R1 1 0
  GETIMPORT R1 K10 [Enum.PropertyStatus.Error]
  GETUPVAL R2 1
  LOADK R4 K11 ["Options"]
  LOADK R5 K14 ["RotationAnglesOutOfRange"]
  NAMECALL R2 R2 K13 ["getText"]
  CALL R2 3 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["setValidOptions"]
  LOADB R2 1
  CALL R1 1 0
  GETIMPORT R1 K16 [Enum.PropertyStatus.Ok]
  LOADK R2 K17 [""]
  RETURN R1 2

PROTO_5:
  GETTABLEN R2 R0 1
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["number"] [+48]
  GETTABLEN R2 R0 2
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["number"] [+41]
  GETTABLEN R2 R0 3
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K1 [type]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["number"] [+34]
  GETTABLEN R2 R0 1
  LOADB R1 0
  LOADN R3 152
  JUMPIFNOTLE R3 R2 [+6]
  LOADN R3 104
  JUMPIFLE R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+22]
  GETTABLEN R2 R0 2
  LOADB R1 0
  LOADN R3 152
  JUMPIFNOTLE R3 R2 [+6]
  LOADN R3 104
  JUMPIFLE R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIFNOT R1 [+11]
  GETTABLEN R2 R0 3
  LOADB R1 0
  LOADN R3 152
  JUMPIFNOTLE R3 R2 [+6]
  LOADN R3 104
  JUMPIFLE R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  JUMPIF R1 [+11]
  DUPTABLE R1 K6 [{"X", "Y", "Z"}]
  GETTABLEN R2 R0 1
  SETTABLEKS R2 R1 K3 ["X"]
  GETTABLEN R2 R0 2
  SETTABLEKS R2 R1 K4 ["Y"]
  GETTABLEN R2 R0 3
  SETTABLEKS R2 R1 K5 ["Z"]
  RETURN R1 1
  GETTABLEN R2 R0 1
  GETTABLEN R3 R0 2
  GETTABLEN R4 R0 3
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K9 [Vector3.new]
  CALL R1 3 1
  RETURN R1 1

PROTO_6:
  NEWTABLE R1 0 3
  GETTABLEKS R2 R0 K0 ["X"]
  GETTABLEKS R3 R0 K1 ["Y"]
  GETTABLEKS R4 R0 K2 ["Z"]
  SETLIST R1 R2 3 [1]
  RETURN R1 1

PROTO_7:
  NEWTABLE R2 0 1
  DUPTABLE R3 K3 [{"Id", "Label", "Children"}]
  LOADK R4 K4 ["Advanced Options"]
  SETTABLEKS R4 R3 K0 ["Id"]
  LOADK R6 K5 ["Options"]
  LOADK R7 K6 ["AdvancedOptions"]
  NAMECALL R4 R0 K7 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Label"]
  NEWTABLE R4 0 5
  DUPTABLE R5 K10 [{"Id", "Label", "Tooltip", "Schema"}]
  LOADK R6 K11 ["RandomizeSeed"]
  SETTABLEKS R6 R5 K0 ["Id"]
  LOADK R8 K5 ["Options"]
  LOADK R9 K11 ["RandomizeSeed"]
  NAMECALL R6 R0 K7 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K1 ["Label"]
  LOADK R8 K5 ["Options"]
  LOADK R9 K12 ["RandomizeSeedTooltip"]
  NAMECALL R6 R0 K7 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K8 ["Tooltip"]
  DUPTABLE R6 K14 [{"Type"}]
  LOADK R7 K15 ["Checkbox"]
  SETTABLEKS R7 R6 K13 ["Type"]
  SETTABLEKS R6 R5 K9 ["Schema"]
  DUPTABLE R6 K18 [{"Id", "Disabled", "Label", "Validate", "Schema"}]
  LOADK R7 K19 ["Seed"]
  SETTABLEKS R7 R6 K0 ["Id"]
  LOADB R7 1
  SETTABLEKS R7 R6 K16 ["Disabled"]
  LOADK R9 K5 ["Options"]
  LOADK R10 K19 ["Seed"]
  NAMECALL R7 R0 K7 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K1 ["Label"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R7 R6 K17 ["Validate"]
  DUPTABLE R7 K14 [{"Type"}]
  LOADK R8 K20 ["Number"]
  SETTABLEKS R8 R7 K13 ["Type"]
  SETTABLEKS R7 R6 K9 ["Schema"]
  DUPTABLE R7 K21 [{"Id", "Label", "Validate", "Schema"}]
  LOADK R8 K22 ["Rotation"]
  SETTABLEKS R8 R7 K0 ["Id"]
  LOADK R10 K5 ["Options"]
  LOADK R11 K22 ["Rotation"]
  NAMECALL R8 R0 K7 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K1 ["Label"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K17 ["Validate"]
  DUPTABLE R8 K26 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R9 K27 ["Vector"]
  SETTABLEKS R9 R8 K13 ["Type"]
  NEWTABLE R9 0 3
  LOADK R10 K28 ["X"]
  LOADK R11 K29 ["Y"]
  LOADK R12 K30 ["Z"]
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K23 ["Components"]
  DUPCLOSURE R9 K31 [PROTO_5]
  SETTABLEKS R9 R8 K24 ["GetValue"]
  DUPCLOSURE R9 K32 [PROTO_6]
  SETTABLEKS R9 R8 K25 ["GetComponents"]
  SETTABLEKS R8 R7 K9 ["Schema"]
  DUPTABLE R8 K10 [{"Id", "Label", "Tooltip", "Schema"}]
  LOADK R9 K33 ["SmartUVUnwrap"]
  SETTABLEKS R9 R8 K0 ["Id"]
  LOADK R11 K5 ["Options"]
  LOADK R12 K33 ["SmartUVUnwrap"]
  NAMECALL R9 R0 K7 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K1 ["Label"]
  LOADK R11 K5 ["Options"]
  LOADK R12 K34 ["SmartUVUnwrapTooltip"]
  NAMECALL R9 R0 K7 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["Tooltip"]
  DUPTABLE R9 K14 [{"Type"}]
  LOADK R10 K15 ["Checkbox"]
  SETTABLEKS R10 R9 K13 ["Type"]
  SETTABLEKS R9 R8 K9 ["Schema"]
  DUPTABLE R9 K10 [{"Id", "Label", "Tooltip", "Schema"}]
  LOADK R10 K35 ["PromptMasking"]
  SETTABLEKS R10 R9 K0 ["Id"]
  LOADK R12 K5 ["Options"]
  LOADK R13 K35 ["PromptMasking"]
  NAMECALL R10 R0 K7 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K1 ["Label"]
  LOADK R12 K5 ["Options"]
  LOADK R13 K36 ["PromptMaskingTooltip"]
  NAMECALL R10 R0 K7 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K8 ["Tooltip"]
  DUPTABLE R10 K14 [{"Type"}]
  LOADK R11 K15 ["Checkbox"]
  SETTABLEKS R11 R10 K13 ["Type"]
  SETTABLEKS R10 R9 K9 ["Schema"]
  SETLIST R4 R5 5 [1]
  SETTABLEKS R4 R3 K2 ["Children"]
  SETLIST R2 R3 1 [1]
  RETURN R2 1

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 1
  GETUPVAL R1 3
  MOVE R2 R0
  GETUPVAL R3 2
  CALL R1 2 0
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setValidOptions"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["useState"]
  NEWTABLE R4 0 0
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["useMemo"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  NEWTABLE R7 0 1
  MOVE R8 R1
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["useCallback"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  NEWTABLE R8 0 1
  MOVE R9 R1
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["useEffect"]
  NEWCLOSURE R8 P2
  CAPTURE VAL R1
  NEWTABLE R9 0 1
  MOVE R10 R3
  SETLIST R9 R10 1 [1]
  CALL R7 2 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 6
  DUPTABLE R9 K18 [{"AutomaticSize", "Expansion", "ExpandByDefault", "Items", "LabelHeight", "LabelWidth", "LayoutOrder", "OnChange", "OnExpansionChange", "Size", "UseScrollingFrame"}]
  GETIMPORT R10 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R10 R9 K7 ["AutomaticSize"]
  SETTABLEKS R3 R9 K8 ["Expansion"]
  LOADB R10 0
  SETTABLEKS R10 R9 K9 ["ExpandByDefault"]
  SETTABLEKS R5 R9 K10 ["Items"]
  LOADN R10 24
  SETTABLEKS R10 R9 K11 ["LabelHeight"]
  GETIMPORT R10 K24 [UDim.new]
  LOADN R11 0
  LOADN R12 140
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["LabelWidth"]
  GETTABLEKS R10 R0 K13 ["LayoutOrder"]
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  SETTABLEKS R6 R9 K14 ["OnChange"]
  SETTABLEKS R4 R9 K15 ["OnExpansionChange"]
  GETIMPORT R10 K27 [UDim2.fromScale]
  LOADN R11 1
  LOADN R12 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["Size"]
  LOADB R10 0
  SETTABLEKS R10 R9 K17 ["UseScrollingFrame"]
  CALL R7 2 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R1 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Form"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K14 ["Util"]
  GETTABLEKS R8 R9 K15 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Util"]
  GETTABLEKS R9 R10 K16 ["OptionsContext"]
  CALL R8 1 1
  DUPCLOSURE R9 K17 [PROTO_0]
  DUPCLOSURE R10 K18 [PROTO_1]
  DUPCLOSURE R11 K19 [PROTO_2]
  DUPCLOSURE R12 K20 [PROTO_7]
  CAPTURE VAL R7
  DUPCLOSURE R13 K21 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R6
  RETURN R13 1
