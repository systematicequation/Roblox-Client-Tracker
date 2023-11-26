PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Dictionary"]
  GETTABLEKS R3 R4 K1 ["values"]
  GETTABLEKS R4 R0 K2 ["Attachments"]
  CALL R3 1 1
  LENGTH R2 R3
  LOADN R3 1
  JUMPIFLT R3 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["AccessoryTypeInfo"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R3 R2 K2 ["AssetType"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Accessory"]
  GETTABLE R4 R5 R3
  JUMPIFNOT R4 [+4]
  LOADK R4 K3 ["Accessory"]
  SETTABLEKS R4 R0 K4 ["initialRadioButtonListKey"]
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Clothing"]
  GETTABLE R4 R5 R3
  JUMPIFNOT R4 [+3]
  LOADK R4 K5 ["Clothing"]
  SETTABLEKS R4 R0 K4 ["initialRadioButtonListKey"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["Localization"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["Dictionary"]
  GETTABLEKS R7 R8 K3 ["values"]
  GETTABLEKS R8 R2 K4 ["Attachments"]
  CALL R7 1 1
  LENGTH R6 R7
  LOADN R7 1
  JUMPIFLT R7 R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R5 [+13]
  GETUPVAL R5 1
  MOVE R6 R4
  LOADK R7 K5 ["AssetType"]
  GETTABLEKS R8 R2 K4 ["Attachments"]
  CALL R5 3 1
  SETTABLEKS R5 R0 K6 ["attachmentListItems"]
  NEWTABLE R5 1 0
  SETTABLE R2 R5 R1
  SETTABLEKS R5 R0 K7 ["initialMultiAttachmentAsset"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["AccessoryTypeInfo"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R3 R2 K2 ["AssetType"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  LOADK R6 K2 ["AssetType"]
  MOVE R7 R3
  NAMECALL R4 R4 K4 ["getText"]
  CALL R4 3 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["Accessory"]
  GETTABLE R5 R6 R3
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Clothing"]
  GETTABLE R6 R7 R3
  JUMPIFNOT R5 [+17]
  MOVE R9 R3
  MOVE R10 R5
  NAMECALL R7 R0 K7 ["setInitialSelectionInfo"]
  CALL R7 3 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["List"]
  GETTABLEKS R7 R8 K9 ["find"]
  GETTABLEKS R8 R0 K10 ["accessoryItemList"]
  MOVE R9 R4
  CALL R7 2 1
  SETTABLEKS R7 R0 K11 ["initialSelectedAccessoryIndex"]
  JUMP [+17]
  JUMPIFNOT R6 [+16]
  MOVE R9 R3
  MOVE R10 R6
  NAMECALL R7 R0 K7 ["setInitialSelectionInfo"]
  CALL R7 3 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["List"]
  GETTABLEKS R7 R8 K9 ["find"]
  GETTABLEKS R8 R0 K12 ["clothingItemList"]
  MOVE R9 R4
  CALL R7 2 1
  SETTABLEKS R7 R0 K13 ["initialSelectedClothingIndex"]
  GETTABLEKS R7 R0 K14 ["attachmentListItems"]
  JUMPIFNOT R7 [+19]
  GETTABLEKS R7 R1 K3 ["Localization"]
  LOADK R9 K2 ["AssetType"]
  GETTABLEKS R10 R2 K15 ["AssetSubType"]
  NAMECALL R7 R7 K4 ["getText"]
  CALL R7 3 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["List"]
  GETTABLEKS R8 R9 K9 ["find"]
  GETTABLEKS R9 R0 K14 ["attachmentListItems"]
  MOVE R10 R7
  CALL R8 2 1
  SETTABLEKS R8 R0 K16 ["initialSelectedAttachmentIndex"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["state"]
  NEWTABLE R2 4 0
  GETTABLEKS R3 R1 K1 ["radioButtonListKey"]
  GETTABLEKS R4 R1 K2 ["selectedAccessoryIndex"]
  GETTABLEKS R5 R1 K3 ["selectedClothingIndex"]
  JUMPIFNOTEQKS R3 K4 ["Accessory"] [+12]
  GETTABLEKS R6 R0 K5 ["accessoryItemList"]
  SETTABLEKS R6 R2 K6 ["Items"]
  GETTABLEKS R6 R0 K7 ["onClickAccessoryType"]
  SETTABLEKS R6 R2 K8 ["OnItemActivated"]
  SETTABLEKS R4 R2 K9 ["SelectedIndex"]
  RETURN R2 1
  JUMPIFNOTEQKS R3 K10 ["Clothing"] [+11]
  GETTABLEKS R6 R0 K11 ["clothingItemList"]
  SETTABLEKS R6 R2 K6 ["Items"]
  GETTABLEKS R6 R0 K12 ["onClickClothingType"]
  SETTABLEKS R6 R2 K8 ["OnItemActivated"]
  SETTABLEKS R5 R2 K9 ["SelectedIndex"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["onClickAttachment"]
  GETUPVAL R3 1
  MOVE R4 R0
  GETUPVAL R5 2
  CALL R2 3 0
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"selectedAttachmentIndex"}]
  SETTABLEKS R1 R4 K1 ["selectedAttachmentIndex"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["multiAttachmentAsset"]
  GETTABLEKS R3 R1 K2 ["selectedAttachmentIndex"]
  NEWTABLE R4 4 0
  JUMPIFNOT R2 [+16]
  GETIMPORT R5 K4 [next]
  MOVE R6 R2
  CALL R5 1 2
  GETTABLEKS R7 R0 K5 ["attachmentListItems"]
  SETTABLEKS R7 R4 K6 ["SubListItems"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R7 R4 K7 ["OnSubListItemActivated"]
  SETTABLEKS R3 R4 K8 ["SubListSelectedIndex"]
  RETURN R4 1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETUPVAL R3 0
  MOVE R4 R2
  LOADK R5 K2 ["AssetType"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["Accessory"]
  CALL R3 3 1
  SETTABLEKS R3 R0 K4 ["accessoryItemList"]
  GETUPVAL R3 0
  MOVE R4 R2
  LOADK R5 K2 ["AssetType"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Clothing"]
  CALL R3 3 1
  SETTABLEKS R3 R0 K6 ["clothingItemList"]
  NAMECALL R3 R0 K7 ["initWithPreviousAssetTypeInfo"]
  CALL R3 1 0
  DUPTABLE R5 K12 [{"multiAttachmentAsset", "selectedAttachmentIndex", "selectedAccessoryIndex", "selectedClothingIndex"}]
  GETTABLEKS R6 R0 K13 ["initialMultiAttachmentAsset"]
  SETTABLEKS R6 R5 K8 ["multiAttachmentAsset"]
  GETTABLEKS R6 R0 K14 ["initialSelectedAttachmentIndex"]
  SETTABLEKS R6 R5 K9 ["selectedAttachmentIndex"]
  GETTABLEKS R6 R0 K15 ["initialSelectedAccessoryIndex"]
  SETTABLEKS R6 R5 K10 ["selectedAccessoryIndex"]
  GETTABLEKS R6 R0 K16 ["initialSelectedClothingIndex"]
  SETTABLEKS R6 R5 K11 ["selectedClothingIndex"]
  NAMECALL R3 R0 K17 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["selectedAccessoryIndex"]
  GETTABLEKS R3 R1 K2 ["selectedClothingIndex"]
  GETUPVAL R4 0
  DUPTABLE R6 K5 [{"radioButtonListKey", "multiAttachmentAsset"}]
  JUMPIF R0 [+4]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["None"]
  JUMP [+1]
  MOVE R7 R0
  SETTABLEKS R7 R6 K3 ["radioButtonListKey"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["None"]
  SETTABLEKS R7 R6 K4 ["multiAttachmentAsset"]
  NAMECALL R4 R4 K7 ["setState"]
  CALL R4 2 0
  JUMPIFNOTEQKS R0 K8 ["Accessory"] [+12]
  JUMPIFNOT R2 [+10]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K9 ["onClickAccessoryType"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["accessoryItemList"]
  GETTABLE R5 R6 R2
  MOVE R6 R2
  CALL R4 2 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K11 ["Clothing"] [+11]
  JUMPIFNOT R3 [+9]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["onClickClothingType"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["clothingItemList"]
  GETTABLE R5 R6 R3
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_9:
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["EditingItemContext"]
  NAMECALL R3 R3 K2 ["getItem"]
  CALL R3 1 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLE R4 R2 R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["SetAccessoryTypeInfo"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["Dictionary"]
  GETTABLEKS R6 R7 K5 ["join"]
  MOVE R7 R4
  DUPTABLE R8 K8 [{"AssetType", "AssetSubType"}]
  SETTABLEKS R0 R8 K6 ["AssetType"]
  SETTABLEKS R1 R8 K7 ["AssetSubType"]
  CALL R6 2 -1
  CALL R5 -1 0
  GETUPVAL R5 2
  MOVE R7 R3
  GETTABLEKS R8 R3 K9 ["Parent"]
  GETTABLEKS R9 R4 K10 ["Name"]
  NAMECALL R5 R5 K11 ["getExistingAttachmentPoint"]
  CALL R5 4 1
  JUMPIFNOT R5 [+7]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K12 ["SetAttachmentPoint"]
  MOVE R7 R5
  CALL R6 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R5 R3 K1 ["Localization"]
  LOADK R6 K2 ["AssetType"]
  MOVE R7 R1
  GETTABLEKS R8 R2 K3 ["Attachments"]
  CALL R4 4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["setAttachment"]
  MOVE R6 R0
  MOVE R7 R4
  GETTABLEKS R8 R2 K3 ["Attachments"]
  CALL R5 3 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R4 R2 K2 ["Localization"]
  JUMPIFNOT R0 [+1]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLE R5 R1 R0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["Dictionary"]
  GETTABLEKS R8 R9 K4 ["values"]
  GETTABLEKS R9 R5 K5 ["Attachments"]
  CALL R8 1 1
  LENGTH R7 R8
  LOADN R8 1
  JUMPIFLT R8 R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  JUMPIF R6 [+24]
  GETIMPORT R6 K7 [next]
  GETTABLEKS R7 R5 K5 ["Attachments"]
  CALL R6 1 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["setAttachment"]
  MOVE R8 R0
  MOVE R9 R6
  GETTABLEKS R10 R5 K5 ["Attachments"]
  CALL R7 3 0
  GETUPVAL R7 0
  DUPTABLE R9 K10 [{"multiAttachmentAsset"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K11 ["None"]
  SETTABLEKS R10 R9 K9 ["multiAttachmentAsset"]
  NAMECALL R7 R7 K12 ["setState"]
  CALL R7 2 0
  RETURN R0 0
  GETTABLEKS R6 R3 K13 ["selectedAttachmentIndex"]
  GETUPVAL R7 0
  GETUPVAL R8 3
  MOVE R9 R4
  LOADK R10 K14 ["AssetType"]
  GETTABLEKS R11 R5 K5 ["Attachments"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K15 ["attachmentListItems"]
  GETUPVAL R7 0
  DUPTABLE R9 K10 [{"multiAttachmentAsset"}]
  NEWTABLE R10 1 0
  SETTABLE R5 R10 R0
  SETTABLEKS R10 R9 K9 ["multiAttachmentAsset"]
  NAMECALL R7 R7 K12 ["setState"]
  CALL R7 2 0
  JUMPIFNOT R6 [+10]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K16 ["onClickAttachment"]
  MOVE R8 R0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K15 ["attachmentListItems"]
  GETTABLE R9 R10 R6
  MOVE R10 R5
  CALL R7 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R3 1
  GETTABLEKS R4 R2 K1 ["Localization"]
  LOADK R5 K2 ["AssetType"]
  MOVE R6 R0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["Accessory"]
  CALL R3 4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["onClickAssetType"]
  MOVE R5 R3
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["Accessory"]
  CALL R4 2 0
  GETUPVAL R4 0
  DUPTABLE R6 K6 [{"selectedAccessoryIndex"}]
  SETTABLEKS R1 R6 K5 ["selectedAccessoryIndex"]
  NAMECALL R4 R4 K7 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R3 1
  GETTABLEKS R4 R2 K1 ["Localization"]
  LOADK R5 K2 ["AssetType"]
  MOVE R6 R0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["Clothing"]
  CALL R3 4 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["onClickAssetType"]
  MOVE R5 R3
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["Clothing"]
  CALL R4 2 0
  GETUPVAL R4 0
  DUPTABLE R6 K6 [{"selectedClothingIndex"}]
  SETTABLEKS R1 R6 K5 ["selectedClothingIndex"]
  NAMECALL R4 R4 K7 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_14:
  NAMECALL R1 R0 K0 ["getInitialRadioButtonListKey"]
  CALL R1 1 0
  DUPTABLE R1 K6 [{"multiAttachmentAsset", "radioButtonListKey", "selectedAttachmentIndex", "selectedAccessoryIndex", "selectedClothingIndex"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["multiAttachmentAsset"]
  GETTABLEKS R2 R0 K7 ["initialRadioButtonListKey"]
  SETTABLEKS R2 R1 K2 ["radioButtonListKey"]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["selectedAttachmentIndex"]
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["selectedAccessoryIndex"]
  LOADNIL R2
  SETTABLEKS R2 R1 K5 ["selectedClothingIndex"]
  SETTABLEKS R1 R0 K8 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K9 ["onRadioButtonClick"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K10 ["setAttachment"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K11 ["onClickAttachment"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K12 ["onClickAssetType"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K13 ["onClickAccessoryType"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K14 ["onClickClothingType"]
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  GETTABLEKS R5 R2 K4 ["radioButtonListKey"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["new"]
  CALL R6 0 1
  NAMECALL R7 R0 K6 ["getAssetTypeDropdownProps"]
  CALL R7 1 1
  NAMECALL R8 R0 K7 ["getAttachmentDropdownProps"]
  CALL R8 1 1
  DUPTABLE R9 K11 [{"LayoutOrder", "Buttons", "OnRadioButtonClick", "InitialSelectedKey"}]
  SETTABLEKS R3 R9 K2 ["LayoutOrder"]
  GETUPVAL R10 1
  MOVE R11 R4
  LOADK R12 K12 ["AssetType"]
  GETUPVAL R13 2
  CALL R10 3 1
  SETTABLEKS R10 R9 K8 ["Buttons"]
  GETTABLEKS R10 R0 K13 ["onRadioButtonClick"]
  SETTABLEKS R10 R9 K9 ["OnRadioButtonClick"]
  SETTABLEKS R5 R9 K10 ["InitialSelectedKey"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K14 ["Dictionary"]
  GETTABLEKS R10 R11 K15 ["join"]
  MOVE R11 R9
  MOVE R12 R7
  MOVE R13 R8
  CALL R10 3 1
  MOVE R9 R10
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 5
  MOVE R12 R9
  CALL R10 2 -1
  RETURN R10 -1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["selectItem"]
  DUPTABLE R3 K2 [{"AccessoryTypeInfo"}]
  GETTABLEKS R4 R2 K3 ["accessoryTypeInfo"]
  SETTABLEKS R4 R3 K1 ["AccessoryTypeInfo"]
  RETURN R3 1

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_19:
  DUPTABLE R1 K2 [{"SetAccessoryTypeInfo", "SetAttachmentPoint"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetAccessoryTypeInfo"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetAttachmentPoint"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["ContextServices"]
  GETTABLEKS R6 R5 K11 ["withContext"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K5 ["Packages"]
  GETTABLEKS R8 R9 K12 ["AvatarToolsShared"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K13 ["Components"]
  GETTABLEKS R9 R8 K14 ["FlowScreenLayout"]
  GETTABLEKS R10 R8 K15 ["RadioButtonListDropdown"]
  GETTABLEKS R12 R7 K16 ["Util"]
  GETTABLEKS R11 R12 K17 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R12 R11 K18 ["AssetTypeAttachmentInfo"]
  GETTABLEKS R13 R11 K19 ["AccessoryUtil"]
  GETTABLEKS R14 R11 K20 ["Constants"]
  GETTABLEKS R15 R4 K21 ["UI"]
  GETTABLEKS R16 R15 K22 ["Pane"]
  GETTABLEKS R17 R15 K23 ["SelectInput"]
  GETTABLEKS R18 R15 K24 ["TextLabel"]
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K25 ["Src"]
  GETTABLEKS R21 R22 K26 ["Actions"]
  GETTABLEKS R20 R21 K27 ["SetAccessoryTypeInfo"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K25 ["Src"]
  GETTABLEKS R22 R23 K26 ["Actions"]
  GETTABLEKS R21 R22 K28 ["SetAttachmentPoint"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K25 ["Src"]
  GETTABLEKS R23 R24 K16 ["Util"]
  GETTABLEKS R22 R23 K29 ["findLocalizedStringKey"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K25 ["Src"]
  GETTABLEKS R24 R25 K16 ["Util"]
  GETTABLEKS R23 R24 K30 ["makeDropdownList"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K25 ["Src"]
  GETTABLEKS R25 R26 K16 ["Util"]
  GETTABLEKS R24 R25 K31 ["makeRadioButtonList"]
  CALL R23 1 1
  GETTABLEKS R25 R7 K32 ["Contexts"]
  GETTABLEKS R24 R25 K33 ["EditingItemContext"]
  GETTABLEKS R25 R4 K16 ["Util"]
  GETTABLEKS R26 R25 K34 ["Typecheck"]
  GETTABLEKS R27 R25 K35 ["LayoutOrderIterator"]
  GETTABLEKS R28 R25 K36 ["StyleModifier"]
  GETTABLEKS R29 R1 K37 ["PureComponent"]
  LOADK R31 K38 ["AssetTypeSelector"]
  NAMECALL R29 R29 K39 ["extend"]
  CALL R29 2 1
  GETTABLEKS R30 R26 K40 ["wrap"]
  MOVE R31 R29
  GETIMPORT R32 K1 [script]
  CALL R30 2 0
  DUPCLOSURE R30 K41 [PROTO_0]
  CAPTURE VAL R3
  DUPCLOSURE R31 K42 [PROTO_1]
  CAPTURE VAL R12
  SETTABLEKS R31 R29 K43 ["getInitialRadioButtonListKey"]
  DUPCLOSURE R31 K44 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R22
  SETTABLEKS R31 R29 K45 ["setInitialSelectionInfo"]
  DUPCLOSURE R31 K46 [PROTO_3]
  CAPTURE VAL R12
  CAPTURE VAL R3
  SETTABLEKS R31 R29 K47 ["initWithPreviousAssetTypeInfo"]
  DUPCLOSURE R31 K48 [PROTO_4]
  SETTABLEKS R31 R29 K49 ["getAssetTypeDropdownProps"]
  DUPCLOSURE R31 K50 [PROTO_6]
  SETTABLEKS R31 R29 K51 ["getAttachmentDropdownProps"]
  DUPCLOSURE R31 K52 [PROTO_7]
  CAPTURE VAL R22
  CAPTURE VAL R12
  SETTABLEKS R31 R29 K53 ["didMount"]
  DUPCLOSURE R31 K54 [PROTO_14]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R12
  SETTABLEKS R31 R29 K55 ["init"]
  DUPCLOSURE R31 K56 [PROTO_15]
  CAPTURE VAL R27
  CAPTURE VAL R23
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R31 R29 K57 ["render"]
  MOVE R31 R6
  DUPTABLE R32 K59 [{"Localization", "EditingItemContext"}]
  GETTABLEKS R33 R5 K58 ["Localization"]
  SETTABLEKS R33 R32 K58 ["Localization"]
  SETTABLEKS R24 R32 K33 ["EditingItemContext"]
  CALL R31 1 1
  MOVE R32 R29
  CALL R31 1 1
  MOVE R29 R31
  DUPCLOSURE R31 K60 [PROTO_16]
  DUPCLOSURE R32 K61 [PROTO_19]
  CAPTURE VAL R19
  CAPTURE VAL R20
  GETTABLEKS R33 R2 K62 ["connect"]
  MOVE R34 R31
  MOVE R35 R32
  CALL R33 2 1
  MOVE R34 R29
  CALL R33 1 -1
  RETURN R33 -1
