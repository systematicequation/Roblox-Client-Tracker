MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["TerrainEnums"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Biome"]
  GETTABLEKS R3 R1 K9 ["ToolId"]
  NEWTABLE R4 32 0
  GETIMPORT R5 K11 [game]
  LOADK R7 K12 ["TerrainEditorFixStudioTheme"]
  NAMECALL R5 R5 K13 ["GetFastFlag"]
  CALL R5 2 1
  NEWTABLE R6 32 0
  GETTABLEKS R7 R3 K14 ["Generate"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K16 ["mt_generate.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K17 ["ImportLocal"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K18 ["mt_terrain_import.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K19 ["SeaLevel"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K20 ["mt_sea_level.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K21 ["Replace"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K22 ["mt_replace.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K23 ["Clear"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K24 ["mt_terrain_clear.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K25 ["Select"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K26 ["icon_regions_select.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K27 ["Transform"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K28 ["icon_regions_move.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K29 ["Material"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K30 ["icon_regions_fill.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K31 ["Move"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K28 ["icon_regions_move.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K32 ["Resize"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K33 ["icon_regions_resize.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K34 ["Rotate"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K35 ["icon_regions_rotate.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K36 ["Copy"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K37 ["icon_regions_copy.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K38 ["Paste"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K39 ["icon_regions_paste.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K40 ["Delete"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K41 ["icon_regions_delete.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K42 ["Fill"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K30 ["icon_regions_fill.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K43 ["Add"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K44 ["mt_add.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K45 ["Draw"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K44 ["mt_add.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K46 ["Subtract"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K47 ["mt_subtract.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K48 ["Sculpt"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K49 ["mt_grow.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K50 ["Grow"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K49 ["mt_grow.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K51 ["Erode"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K52 ["mt_erode.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K53 ["Smooth"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K54 ["mt_smooth.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K55 ["Flatten"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K56 ["mt_flatten.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  GETTABLEKS R7 R3 K57 ["Paint"]
  LOADK R9 K15 ["rbxasset://textures/TerrainTools/"]
  LOADK R10 K58 ["mt_paint.png"]
  CONCAT R8 R9 R10
  SETTABLE R8 R6 R7
  SETTABLEKS R6 R4 K59 ["ToolIcons"]
  JUMPIFNOT R5 [+2]
  LOADNIL R6
  JUMP [+1]
  LOADK R6 K60 ["rbxasset://studio_svg_textures/Lua/Terrain/%s/Large/"]
  JUMPIFNOT R5 [+2]
  LOADNIL R7
  JUMP [+1]
  LOADK R7 K61 ["rbxasset://studio_svg_textures/Shared/DraggerTools/%s/Large/"]
  JUMPIFNOT R5 [+2]
  LOADNIL R8
  JUMP [+1]
  LOADK R8 K62 ["rbxasset://studio_svg_textures/Shared/Clipboard/%s/Large/"]
  JUMPIFNOT R5 [+2]
  LOADNIL R9
  JUMP [+146]
  NEWTABLE R9 32 0
  GETTABLEKS R10 R3 K14 ["Generate"]
  MOVE R12 R6
  LOADK R13 K63 ["Terrain_Generate.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K17 ["ImportLocal"]
  MOVE R12 R6
  LOADK R13 K64 ["Terrain_Import.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K19 ["SeaLevel"]
  MOVE R12 R6
  LOADK R13 K65 ["Terrain_SeaLevel.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K21 ["Replace"]
  MOVE R12 R6
  LOADK R13 K66 ["Terrain_Replace.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K23 ["Clear"]
  MOVE R12 R6
  LOADK R13 K67 ["Terrain_Clear.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K25 ["Select"]
  MOVE R12 R7
  LOADK R13 K68 ["Select.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K29 ["Material"]
  MOVE R12 R6
  LOADK R13 K69 ["Terrain_Fill.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K27 ["Transform"]
  MOVE R12 R7
  LOADK R13 K70 ["Move.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K31 ["Move"]
  MOVE R12 R7
  LOADK R13 K70 ["Move.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K32 ["Resize"]
  MOVE R12 R6
  LOADK R13 K71 ["Terrain_Resize.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K34 ["Rotate"]
  MOVE R12 R7
  LOADK R13 K72 ["Rotate.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K36 ["Copy"]
  MOVE R12 R8
  LOADK R13 K73 ["Copy.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K38 ["Paste"]
  MOVE R12 R8
  LOADK R13 K74 ["Paste.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K40 ["Delete"]
  MOVE R12 R6
  LOADK R13 K75 ["Terrain_Delete.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K42 ["Fill"]
  MOVE R12 R6
  LOADK R13 K69 ["Terrain_Fill.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K43 ["Add"]
  MOVE R12 R6
  LOADK R13 K76 ["Terrain_Add.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K45 ["Draw"]
  MOVE R12 R6
  LOADK R13 K76 ["Terrain_Add.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K46 ["Subtract"]
  MOVE R12 R6
  LOADK R13 K77 ["Terrain_Subtract.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K50 ["Grow"]
  MOVE R12 R6
  LOADK R13 K78 ["Terrain_Grow.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K48 ["Sculpt"]
  MOVE R12 R6
  LOADK R13 K78 ["Terrain_Grow.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K51 ["Erode"]
  MOVE R12 R6
  LOADK R13 K79 ["Terrain_Erode.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K53 ["Smooth"]
  MOVE R12 R6
  LOADK R13 K80 ["Terrain_Smooth.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K55 ["Flatten"]
  MOVE R12 R6
  LOADK R13 K81 ["Terrain_Flatten.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K57 ["Paint"]
  MOVE R12 R6
  LOADK R13 K82 ["Terrain_Paint.png"]
  CONCAT R11 R12 R13
  SETTABLE R11 R9 R10
  SETTABLEKS R9 R4 K83 ["HighDpiToolIconsWithTheme1"]
  LOADN R9 6
  SETTABLEKS R9 R4 K84 ["INITIAL_BRUSH_SIZE"]
  LOADN R9 1
  SETTABLEKS R9 R4 K85 ["MIN_BRUSH_SIZE"]
  LOADN R9 64
  SETTABLEKS R9 R4 K86 ["MAX_BRUSH_SIZE"]
  LOADN R9 1
  SETTABLEKS R9 R4 K87 ["INITIAL_BRUSH_STRENGTH"]
  LOADN R9 30
  SETTABLEKS R9 R4 K88 ["INITIAL_PLANE_POSITION_Y"]
  LOADN R9 4
  SETTABLEKS R9 R4 K89 ["VOXEL_RESOLUTION"]
  LOADN R9 16
  SETTABLEKS R9 R4 K90 ["MIN_BIOME_SIZE"]
  LOADN R9 0
  SETTABLEKS R9 R4 K91 ["MAX_BIOME_SIZE"]
  LOADN R9 4
  SETTABLEKS R9 R4 K92 ["BIOME_SNAP_INCREMENT"]
  LOADK R9 K93 [0.05]
  SETTABLEKS R9 R4 K94 ["FLATTEN_PLANE_TOLERANCE"]
  NEWTABLE R9 32 0
  GETTABLEKS R10 R3 K25 ["Select"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K27 ["Transform"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K29 ["Material"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K31 ["Move"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K32 ["Resize"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K34 ["Rotate"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K36 ["Copy"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K38 ["Paste"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K40 ["Delete"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K42 ["Fill"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K43 ["Add"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K46 ["Subtract"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K45 ["Draw"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K50 ["Grow"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K51 ["Erode"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K48 ["Sculpt"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K53 ["Smooth"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K55 ["Flatten"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K57 ["Paint"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K19 ["SeaLevel"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K14 ["Generate"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K17 ["ImportLocal"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K21 ["Replace"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  SETTABLEKS R9 R4 K95 ["ToolActivatesPlugin"]
  NEWTABLE R9 16 0
  GETTABLEKS R10 R2 K96 ["Water"]
  LOADK R11 K97 ["BiomeWater"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K98 ["Marsh"]
  LOADK R11 K99 ["BiomeMarsh"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K100 ["Plains"]
  LOADK R11 K101 ["BiomePlains"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K102 ["Hills"]
  LOADK R11 K103 ["BiomeHills"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K104 ["Dunes"]
  LOADK R11 K105 ["BiomeDunes"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K106 ["Canyons"]
  LOADK R11 K107 ["BiomeCanyons"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K108 ["Mountains"]
  LOADK R11 K109 ["BiomeMountains"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K110 ["Lavascape"]
  LOADK R11 K111 ["BiomeLavascape"]
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K112 ["Arctic"]
  LOADK R11 K113 ["BiomeArctic"]
  SETTABLE R11 R9 R10
  SETTABLEKS R9 R4 K114 ["BiomeToLocalizationKey"]
  NEWTABLE R9 16 0
  GETTABLEKS R10 R3 K43 ["Add"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K46 ["Subtract"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K45 ["Draw"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K50 ["Grow"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K51 ["Erode"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K48 ["Sculpt"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K53 ["Smooth"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K57 ["Paint"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K21 ["Replace"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  SETTABLEKS R9 R4 K115 ["ToolUsesPlaneLock"]
  NEWTABLE R9 4 0
  GETTABLEKS R10 R3 K27 ["Transform"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K25 ["Select"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K14 ["Generate"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R3 K17 ["ImportLocal"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  SETTABLEKS R9 R4 K116 ["ToolUsesRegion"]
  LOADN R9 90
  SETTABLEKS R9 R4 K117 ["FIRST_COLUMN_WIDTH"]
  LOADN R9 8
  SETTABLEKS R9 R4 K118 ["MIDDLE_PADDING"]
  LOADN R9 20
  SETTABLEKS R9 R4 K119 ["SIDE_PADDING"]
  GETTABLEKS R11 R4 K119 ["SIDE_PADDING"]
  GETTABLEKS R12 R4 K117 ["FIRST_COLUMN_WIDTH"]
  ADD R10 R11 R12
  GETTABLEKS R11 R4 K118 ["MIDDLE_PADDING"]
  ADD R9 R10 R11
  SETTABLEKS R9 R4 K120 ["SECOND_COLUMN_START"]
  LOADN R9 136
  SETTABLEKS R9 R4 K121 ["SECOND_COLUMN_WIDTH"]
  LOADN R9 20
  SETTABLEKS R9 R4 K122 ["GRID_LINE_WIDTH"]
  LOADN R9 4
  SETTABLEKS R9 R4 K123 ["GRID_SIZE"]
  LOADK R9 K124 [0.01]
  SETTABLEKS R9 R4 K125 ["DISABLED_GRID_SIZE"]
  LOADN R9 0
  SETTABLEKS R9 R4 K126 ["RAY_CAST_LENGTH"]
  GETIMPORT R9 K129 [Vector2.new]
  GETTABLEKS R14 R4 K119 ["SIDE_PADDING"]
  GETTABLEKS R15 R4 K117 ["FIRST_COLUMN_WIDTH"]
  ADD R13 R14 R15
  GETTABLEKS R14 R4 K118 ["MIDDLE_PADDING"]
  ADD R12 R13 R14
  GETTABLEKS R13 R4 K121 ["SECOND_COLUMN_WIDTH"]
  ADD R11 R12 R13
  GETTABLEKS R12 R4 K119 ["SIDE_PADDING"]
  ADD R10 R11 R12
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R4 K130 ["MIN_WIDGET_SIZE"]
  LOADK R9 K131 [0.9]
  SETTABLEKS R9 R4 K132 ["TERRAIN_BRUSH_TRANSPARENCY"]
  LOADK R9 K133 [0.97]
  SETTABLEKS R9 R4 K134 ["TERRAIN_BRUSH_TRANSPARENCY_MOUSE_DOWN"]
  LOADN R9 7
  SETTABLEKS R9 R4 K135 ["FILENAME_ELLIPSIZE_MIDDLE_SUFFIX_LENGTH"]
  LOADN R9 4
  SETTABLEKS R9 R4 K136 ["REGION_MIN_SIZE"]
  LOADN R9 0
  SETTABLEKS R9 R4 K137 ["REGION_MAX_SIZE"]
  LOADN R9 10
  SETTABLEKS R9 R4 K138 ["SCROLL_WHEEL_SPEED"]
  RETURN R4 1
