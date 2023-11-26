PROTO_0:
  MOVE R2 R0
  FASTCALL2K ASSERT R2 K0 [+5]
  MOVE R4 R2
  LOADK R5 K0 ["waitForDescendant: instance cannot be nil."]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETIMPORT R3 K4 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  MOVE R10 R7
  LOADN R11 2
  NAMECALL R8 R2 K5 ["WaitForChild"]
  CALL R8 3 1
  MOVE R12 R7
  LOADK R13 K6 [" was not found under parent "]
  NAMECALL R16 R2 K7 ["GetFullName"]
  CALL R16 1 1
  MOVE R14 R16
  LOADK R15 K8 ["."]
  CONCAT R11 R12 R15
  FASTCALL2 ASSERT R8 R11 [+4]
  MOVE R10 R8
  GETIMPORT R9 K2 [assert]
  CALL R9 2 0
  MOVE R2 R8
  FORGLOOP R3 2 [inext] [-21]
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["waitForDescendant"]
  MOVE R2 R0
  NEWTABLE R3 0 2
  LOADK R4 K1 ["AnimationClipEditor"]
  LOADK R5 K2 ["EditorController"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["TrackEditor"]
  LOADK R6 K3 ["DopeSheetController"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getDopeSheetController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["DopeSheetContainer"]
  LOADK R6 K3 ["DopeSheet"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getDopeSheet"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 2
  MOVE R6 R1
  LOADK R7 K2 ["KeyframeDisplayArea"]
  SETLIST R5 R6 2 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 5
  LOADK R5 K2 ["TrackListAndControlContainer"]
  LOADK R6 K3 ["EventsAndTracks"]
  LOADK R7 K4 ["TrackListAndScrollBar"]
  LOADK R8 K5 ["TrackList"]
  LOADK R9 K6 ["Canvas"]
  SETLIST R4 R5 5 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["TrackListAndControlContainer"]
  LOADK R6 K3 ["AnimationControlPanel"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getAnimationControlPanel"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 1
  LOADK R5 K2 ["MediaControls"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getMediaControls"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 4
  MOVE R6 R1
  LOADK R7 K2 ["Button"]
  LOADK R8 K3 ["Contents"]
  LOADK R9 K4 ["TextButton"]
  SETLIST R5 R6 4 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getAnimationControlPanel"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 1
  LOADK R5 K2 ["TimeDisplay"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getTrackList"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 4
  LOADK R5 K2 ["SummaryTrack"]
  LOADK R6 K3 ["LeftButtonsListContainer"]
  LOADK R7 K4 ["IKController"]
  LOADK R8 K5 ["IKButton"]
  SETLIST R4 R5 4 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["waitForDescendant"]
  MOVE R2 R0
  NEWTABLE R3 0 1
  LOADK R4 K1 ["Container"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getIKWindow"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["BottomFrame"]
  LOADK R6 K3 ["EnableIKButton"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getIKWindow"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["TreeView"]
  LOADK R6 K2 ["TreeView"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getIKTreeView"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 3
  LOADK R6 K2 ["Contents"]
  LOADK R7 K3 ["List"]
  MOVE R8 R1
  SETLIST R5 R6 3 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getTreeViewJoint"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 1
  LOADK R6 K2 ["Pin"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_16:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 3
  LOADK R5 K2 ["TrackListAndControlContainer"]
  LOADK R6 K3 ["EventsAndTracks"]
  LOADK R7 K4 ["EventsTitle"]
  SETLIST R4 R5 3 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getDopeSheetController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+9]
  NEWTABLE R4 0 4
  LOADK R5 K2 ["Events"]
  LOADK R6 K3 ["Track"]
  LOADK R7 K4 ["Markers"]
  LOADK R8 K5 ["KeyframeDisplayArea"]
  SETLIST R4 R5 4 [1]
  JUMP [+7]
  NEWTABLE R4 0 3
  LOADK R5 K2 ["Events"]
  LOADK R6 K3 ["Track"]
  LOADK R7 K5 ["KeyframeDisplayArea"]
  SETLIST R4 R5 3 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["waitForDescendant"]
  MOVE R2 R0
  NEWTABLE R3 0 3
  LOADK R4 K1 ["SolidBackground"]
  LOADK R5 K2 ["Contents"]
  LOADK R6 K3 ["Container"]
  SETLIST R3 R4 3 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_19:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getEventsDialogContents"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["waitForDescendant"]
  MOVE R4 R2
  NEWTABLE R5 0 1
  LOADK R7 K2 ["Event_"]
  MOVE R8 R1
  CONCAT R6 R7 R8
  SETLIST R5 R6 1 [1]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_20:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEventsDialogContents"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["AddNew"]
  LOADK R6 K3 ["AddEventEntry"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_21:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["waitForDescendant"]
  MOVE R2 R0
  NEWTABLE R3 0 2
  LOADK R4 K1 ["SolidBackground"]
  LOADK R5 K2 ["Contents"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getStyledDialogContents"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["KeyframePane"]
  LOADK R6 K3 ["KeyframesText"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_23:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getStyledDialogContents"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 1
  LOADK R5 K2 ["Slider"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_24:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["waitForDescendant"]
  MOVE R3 R0
  NEWTABLE R4 0 2
  LOADK R5 K1 ["SolidBackground"]
  LOADK R6 K2 ["ButtonContainer"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETTABLEN R1 R2 1
  RETURN R1 1

PROTO_25:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["waitForDescendant"]
  MOVE R3 R0
  NEWTABLE R4 0 2
  LOADK R5 K1 ["SolidBackground"]
  LOADK R6 K2 ["ButtonContainer"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETTABLEN R1 R2 2
  RETURN R1 1

PROTO_26:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["TrackEditor"]
  LOADK R6 K3 ["CurveEditorController"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_27:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getCurveEditorController"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["waitForDescendant"]
  MOVE R3 R1
  NEWTABLE R4 0 2
  LOADK R5 K2 ["CanvasContainer"]
  LOADK R6 K3 ["CurveCanvas"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["LuaFlags"]
  GETTABLEKS R2 R3 K7 ["GetFFlagFilterEvents"]
  CALL R1 1 1
  NEWTABLE R2 32 0
  DUPCLOSURE R3 K8 [PROTO_0]
  SETTABLEKS R3 R2 K9 ["waitForDescendant"]
  DUPCLOSURE R3 K10 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K11 ["getEditorController"]
  DUPCLOSURE R3 K12 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K13 ["getDopeSheetController"]
  DUPCLOSURE R3 K14 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K15 ["getDopeSheet"]
  DUPCLOSURE R3 K16 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K17 ["getTrack"]
  DUPCLOSURE R3 K18 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K19 ["getTrackList"]
  DUPCLOSURE R3 K20 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K21 ["getAnimationControlPanel"]
  DUPCLOSURE R3 K22 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K23 ["getMediaControls"]
  DUPCLOSURE R3 K24 [PROTO_8]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K25 ["getMediaControlButton"]
  DUPCLOSURE R3 K26 [PROTO_9]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K27 ["getTimeDisplay"]
  DUPCLOSURE R3 K28 [PROTO_10]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K29 ["getIKButton"]
  DUPCLOSURE R3 K30 [PROTO_11]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K31 ["getIKWindow"]
  DUPCLOSURE R3 K32 [PROTO_12]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K33 ["getIKEnableButton"]
  DUPCLOSURE R3 K34 [PROTO_13]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K35 ["getIKTreeView"]
  DUPCLOSURE R3 K36 [PROTO_14]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K37 ["getTreeViewJoint"]
  DUPCLOSURE R3 K38 [PROTO_15]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K39 ["getTreeViewJointPin"]
  DUPCLOSURE R3 K40 [PROTO_16]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K41 ["getEventsTitleTrack"]
  DUPCLOSURE R3 K42 [PROTO_17]
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K43 ["getEventsTrack"]
  DUPCLOSURE R3 K44 [PROTO_18]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K45 ["getEventsDialogContents"]
  DUPCLOSURE R3 K46 [PROTO_19]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K47 ["getEventEntry"]
  DUPCLOSURE R3 K48 [PROTO_20]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K49 ["getAddEventEntry"]
  DUPCLOSURE R3 K50 [PROTO_21]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K51 ["getStyledDialogContents"]
  DUPCLOSURE R3 K52 [PROTO_22]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K53 ["getKFRKeyframesText"]
  DUPCLOSURE R3 K54 [PROTO_23]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K55 ["getKFRSlider"]
  DUPCLOSURE R3 K56 [PROTO_24]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K57 ["getKFRCancel"]
  DUPCLOSURE R3 K58 [PROTO_25]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K59 ["getKFROk"]
  DUPCLOSURE R3 K60 [PROTO_26]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K61 ["getCurveEditorController"]
  DUPCLOSURE R3 K62 [PROTO_27]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K63 ["getCurveCanvas"]
  RETURN R2 1
