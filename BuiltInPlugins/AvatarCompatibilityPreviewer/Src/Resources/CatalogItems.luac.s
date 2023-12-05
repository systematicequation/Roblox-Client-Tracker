PROTO_0:
  GETIMPORT R2 K2 [BrickColor.new]
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["Color"]
  RETURN R1 1

PROTO_1:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [tonumber]
  CALL R1 1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["map"]
  GETIMPORT R2 K3 [string.split]
  MOVE R3 R0
  LOADK R4 K4 [","]
  CALL R2 2 1
  DUPCLOSURE R3 K5 [PROTO_1]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["CatalogItemUtil"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K13 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagAvatarPreviewerEyebrowsAndEyelashes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K13 ["Flags"]
  GETTABLEKS R7 R8 K15 ["getFFlagAvatarPreviewerFixBadAssetTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K13 ["Flags"]
  GETTABLEKS R8 R9 K16 ["getFFlagAvatarPreviewerFixTShirtImportingAgain"]
  CALL R7 1 1
  GETIMPORT R8 K18 [game]
  LOADK R10 K19 ["AvatarPreviewerSweaters"]
  LOADB R11 0
  NAMECALL R8 R8 K20 ["DefineFastFlag"]
  CALL R8 3 1
  GETIMPORT R9 K18 [game]
  LOADK R11 K21 ["AvatarPreviewerEyebrowIds"]
  LOADK R12 K22 ["11572097774"]
  NAMECALL R9 R9 K23 ["DefineFastString"]
  CALL R9 3 1
  GETIMPORT R10 K18 [game]
  LOADK R12 K24 ["AvatarPreviewerEyelashIds"]
  LOADK R13 K25 ["11572100557"]
  NAMECALL R10 R10 K23 ["DefineFastString"]
  CALL R10 3 1
  DUPCLOSURE R11 K26 [PROTO_0]
  DUPCLOSURE R12 K27 [PROTO_2]
  CAPTURE VAL R2
  DUPTABLE R13 K33 [{"accessories", "animations", "body", "clothing", "face"}]
  GETTABLEKS R14 R2 K34 ["append"]
  NEWTABLE R15 0 3
  GETTABLEKS R16 R3 K35 ["basicAccessoryPalette"]
  LOADK R17 K36 ["Hair"]
  GETIMPORT R18 K40 [Enum.AssetType.HairAccessory]
  NEWTABLE R19 0 10
  LOADK R20 K41 [9244021842]
  LOADK R21 K42 [9244122897]
  LOADK R22 K43 [9243987340]
  LOADK R23 K44 [9244060144]
  LOADK R24 K45 [9174353649]
  LOADK R25 K46 [7193450455]
  LOADK R26 K47 [9244067444]
  LOADK R27 K48 [9244097555]
  LOADK R28 K49 [7193445686]
  LOADK R29 K50 [7193454569]
  SETLIST R19 R20 10 [1]
  CALL R16 3 1
  GETTABLEKS R17 R3 K35 ["basicAccessoryPalette"]
  LOADK R18 K51 ["Head"]
  GETIMPORT R19 K53 [Enum.AssetType.Hat]
  MOVE R21 R6
  CALL R21 0 1
  JUMPIFNOT R21 [+14]
  NEWTABLE R20 0 9
  LOADK R21 K54 [607702162]
  LOADK R22 K55 [7951064603]
  LOADK R23 K56 [7893381364]
  LOADK R24 K57 [102619342]
  LOADK R25 K58 [1374269]
  LOADK R26 K59 [1038669]
  LOADK R27 K60 [10527448135]
  LOADK R28 K61 [89615321]
  LOADK R29 K62 [13476872]
  SETLIST R20 R21 9 [1]
  JUMP [+14]
  NEWTABLE R20 0 10
  LOADK R21 K54 [607702162]
  LOADK R22 K55 [7951064603]
  LOADK R23 K56 [7893381364]
  LOADK R24 K57 [102619342]
  LOADK R25 K58 [1374269]
  LOADK R26 K59 [1038669]
  LOADK R27 K60 [10527448135]
  LOADK R28 K61 [89615321]
  LOADK R29 K62 [13476872]
  LOADK R30 K63 [3756432119]
  SETLIST R20 R21 10 [1]
  CALL R17 3 1
  GETTABLEKS R18 R3 K35 ["basicAccessoryPalette"]
  LOADK R19 K64 ["Face"]
  GETIMPORT R20 K66 [Enum.AssetType.FaceAccessory]
  MOVE R22 R6
  CALL R22 0 1
  JUMPIFNOT R22 [+13]
  NEWTABLE R21 0 8
  LOADK R22 K67 [1192464705]
  LOADK R23 K68 [74970669]
  LOADK R24 K69 [1241185542]
  LOADK R25 K70 [20642008]
  LOADK R26 K71 [3210207381]
  LOADK R27 K72 [12313685]
  LOADK R28 K73 [158066137]
  LOADK R29 K74 [13702134]
  SETLIST R21 R22 8 [1]
  JUMP [+13]
  NEWTABLE R21 0 9
  LOADK R22 K63 [3756432119]
  LOADK R23 K67 [1192464705]
  LOADK R24 K68 [74970669]
  LOADK R25 K69 [1241185542]
  LOADK R26 K70 [20642008]
  LOADK R27 K71 [3210207381]
  LOADK R28 K72 [12313685]
  LOADK R29 K73 [158066137]
  LOADK R30 K74 [13702134]
  SETLIST R21 R22 9 [1]
  CALL R18 3 -1
  SETLIST R15 R16 -1 [1]
  MOVE R17 R5
  CALL R17 0 1
  JUMPIFNOT R17 [+23]
  NEWTABLE R16 0 2
  GETTABLEKS R17 R3 K75 ["layeredClothingPalette"]
  LOADK R18 K76 ["Eyebrows"]
  GETIMPORT R19 K78 [Enum.AssetType.EyebrowAccessory]
  MOVE R20 R12
  MOVE R21 R9
  CALL R20 1 -1
  CALL R17 -1 1
  GETTABLEKS R18 R3 K75 ["layeredClothingPalette"]
  LOADK R19 K79 ["Eyelashes"]
  GETIMPORT R20 K81 [Enum.AssetType.EyelashAccessory]
  MOVE R21 R12
  MOVE R22 R10
  CALL R21 1 -1
  CALL R18 -1 -1
  SETLIST R16 R17 -1 [1]
  JUMP [+2]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 4
  GETTABLEKS R18 R3 K35 ["basicAccessoryPalette"]
  LOADK R19 K82 ["Neck"]
  GETIMPORT R20 K84 [Enum.AssetType.NeckAccessory]
  NEWTABLE R21 0 6
  LOADK R22 K85 [13881788203]
  LOADK R23 K86 [12566318504]
  LOADK R24 K87 [12272017766]
  LOADK R25 K88 [11515295880]
  LOADK R26 K89 [12272010851]
  LOADK R27 K90 [10648495674]
  SETLIST R21 R22 6 [1]
  CALL R18 3 1
  GETTABLEKS R19 R3 K35 ["basicAccessoryPalette"]
  LOADK R20 K91 ["Shoulder"]
  GETIMPORT R21 K93 [Enum.AssetType.ShoulderAccessory]
  NEWTABLE R22 0 5
  LOADK R23 K94 [2620477453]
  LOADK R24 K95 [106709021]
  LOADK R25 K96 [7243878029]
  LOADK R26 K97 [8760832521]
  LOADK R27 K98 [6467614725]
  SETLIST R22 R23 5 [1]
  CALL R19 3 1
  GETTABLEKS R20 R3 K35 ["basicAccessoryPalette"]
  LOADK R21 K99 ["Back"]
  GETIMPORT R22 K101 [Enum.AssetType.BackAccessory]
  NEWTABLE R23 0 5
  LOADK R24 K102 [1180432276]
  LOADK R25 K103 [11821667294]
  LOADK R26 K104 [12272035364]
  LOADK R27 K105 [13820443205]
  LOADK R28 K106 [1744123855]
  SETLIST R23 R24 5 [1]
  CALL R20 3 1
  GETTABLEKS R21 R3 K35 ["basicAccessoryPalette"]
  LOADK R22 K107 ["Waist"]
  GETIMPORT R23 K109 [Enum.AssetType.WaistAccessory]
  NEWTABLE R24 0 10
  LOADK R25 K110 [791329052]
  LOADK R26 K111 [187846604]
  LOADK R27 K112 [738679517]
  LOADK R28 K113 [472507574]
  LOADK R29 K114 [3576665068]
  LOADK R30 K115 [1117719026]
  LOADK R31 K116 [8697885688]
  LOADK R32 K117 [10616839810]
  LOADK R33 K118 [3230476122]
  LOADK R34 K119 [7065897530]
  SETLIST R24 R25 10 [1]
  CALL R21 3 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  SETTABLEKS R14 R13 K28 ["accessories"]
  NEWTABLE R14 0 3
  GETTABLEKS R15 R3 K120 ["createBodyAnimationPalette"]
  LOADK R16 K121 ["BodyRangeOfMotion"]
  NEWTABLE R17 0 1
  LOADK R18 K122 [13899730930]
  SETLIST R17 R18 1 [1]
  CALL R15 2 1
  GETTABLEKS R16 R3 K120 ["createBodyAnimationPalette"]
  LOADK R17 K123 ["Movement"]
  NEWTABLE R18 0 7
  LOADK R19 K124 [11600208470]
  LOADK R20 K125 [11600249883]
  LOADK R21 K126 [11600211410]
  LOADK R22 K127 [11600210487]
  LOADK R23 K128 [11600205519]
  LOADK R24 K129 [11600206437]
  LOADK R25 K130 [11600212676]
  SETLIST R18 R19 7 [1]
  CALL R16 2 1
  GETTABLEKS R17 R3 K120 ["createBodyAnimationPalette"]
  LOADK R18 K131 ["BodyEmotes"]
  NEWTABLE R19 0 13
  LOADK R20 K132 [10714395441]
  LOADK R21 K133 [10714374484]
  LOADK R22 K134 [10714359093]
  LOADK R23 K135 [10714388352]
  LOADK R24 K136 [10714338461]
  LOADK R25 K137 [10714389988]
  LOADK R26 K138 [10714352626]
  LOADK R27 K139 [10714360164]
  LOADK R28 K140 [10714340543]
  LOADK R29 K141 [12507085924]
  LOADK R30 K142 [11453082181]
  LOADK R31 K143 [10370351535]
  LOADK R32 K144 [10214319518]
  SETLIST R19 R20 13 [1]
  CALL R17 2 -1
  SETLIST R14 R15 -1 [1]
  SETTABLEKS R14 R13 K29 ["animations"]
  GETTABLEKS R15 R1 K145 ["List"]
  GETTABLEKS R14 R15 K146 ["join"]
  NEWTABLE R15 0 2
  GETTABLEKS R16 R3 K147 ["skinPalette"]
  NEWTABLE R17 0 74
  GETIMPORT R19 K150 [BrickColor.new]
  LOADK R20 K151 ["Dirt brown"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K152 ["Color"]
  GETIMPORT R20 K150 [BrickColor.new]
  LOADK R21 K153 ["Reddish brown"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K152 ["Color"]
  GETIMPORT R21 K150 [BrickColor.new]
  LOADK R22 K154 ["Brown"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K152 ["Color"]
  GETIMPORT R22 K150 [BrickColor.new]
  LOADK R23 K155 ["Sand red"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K152 ["Color"]
  GETIMPORT R23 K150 [BrickColor.new]
  LOADK R24 K156 ["Linen"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K152 ["Color"]
  GETIMPORT R24 K150 [BrickColor.new]
  LOADK R25 K157 ["Burlap"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K152 ["Color"]
  GETIMPORT R25 K150 [BrickColor.new]
  LOADK R26 K158 ["Brick yellow"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K152 ["Color"]
  GETIMPORT R26 K150 [BrickColor.new]
  LOADK R27 K159 ["Medium red"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K152 ["Color"]
  GETIMPORT R27 K150 [BrickColor.new]
  LOADK R28 K160 ["Dusty Rose"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K152 ["Color"]
  GETIMPORT R28 K150 [BrickColor.new]
  LOADK R29 K161 ["CGA brown"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K152 ["Color"]
  GETIMPORT R29 K150 [BrickColor.new]
  LOADK R30 K162 ["Dark orange"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K152 ["Color"]
  GETIMPORT R30 K150 [BrickColor.new]
  LOADK R31 K163 ["Nougat"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K152 ["Color"]
  GETIMPORT R31 K150 [BrickColor.new]
  LOADK R32 K164 ["Light orange"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K152 ["Color"]
  GETIMPORT R32 K150 [BrickColor.new]
  LOADK R33 K165 ["Pastel brown"]
  CALL R32 1 1
  GETTABLEKS R31 R32 K152 ["Color"]
  GETIMPORT R33 K150 [BrickColor.new]
  LOADK R34 K166 ["Neon orange"]
  CALL R33 1 1
  GETTABLEKS R32 R33 K152 ["Color"]
  GETIMPORT R34 K150 [BrickColor.new]
  LOADK R35 K167 ["Bright orange"]
  CALL R34 1 1
  GETTABLEKS R33 R34 K152 ["Color"]
  SETLIST R17 R18 16 [1]
  GETIMPORT R19 K150 [BrickColor.new]
  LOADK R20 K168 ["Br. yellowish orange"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K152 ["Color"]
  GETIMPORT R20 K150 [BrickColor.new]
  LOADK R21 K169 ["Deep orange"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K152 ["Color"]
  GETIMPORT R21 K150 [BrickColor.new]
  LOADK R22 K170 ["Bright yellow"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K152 ["Color"]
  GETIMPORT R22 K150 [BrickColor.new]
  LOADK R23 K171 ["Daisy orange"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K152 ["Color"]
  GETIMPORT R23 K150 [BrickColor.new]
  LOADK R24 K172 ["Cool yellow"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K152 ["Color"]
  GETIMPORT R24 K150 [BrickColor.new]
  LOADK R25 K173 ["Earth green"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K152 ["Color"]
  GETIMPORT R25 K150 [BrickColor.new]
  LOADK R26 K174 ["Camo"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K152 ["Color"]
  GETIMPORT R26 K150 [BrickColor.new]
  LOADK R27 K175 ["Dark green"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K152 ["Color"]
  GETIMPORT R27 K150 [BrickColor.new]
  LOADK R28 K176 ["Bright green"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K152 ["Color"]
  GETIMPORT R28 K150 [BrickColor.new]
  LOADK R29 K177 ["Shamrock"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K152 ["Color"]
  GETIMPORT R29 K150 [BrickColor.new]
  LOADK R30 K178 ["Moss"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K152 ["Color"]
  GETIMPORT R30 K150 [BrickColor.new]
  LOADK R31 K179 ["Br. yellowish green"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K152 ["Color"]
  GETIMPORT R31 K150 [BrickColor.new]
  LOADK R32 K180 ["Navy blue"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K152 ["Color"]
  GETIMPORT R32 K150 [BrickColor.new]
  LOADK R33 K181 ["Deep blue"]
  CALL R32 1 1
  GETTABLEKS R31 R32 K152 ["Color"]
  GETIMPORT R33 K150 [BrickColor.new]
  LOADK R34 K182 ["Really blue"]
  CALL R33 1 1
  GETTABLEKS R32 R33 K152 ["Color"]
  GETIMPORT R34 K150 [BrickColor.new]
  LOADK R35 K183 ["Bright blue"]
  CALL R34 1 1
  GETTABLEKS R33 R34 K152 ["Color"]
  SETLIST R17 R18 16 [17]
  GETIMPORT R19 K150 [BrickColor.new]
  LOADK R20 K184 ["Steel blue"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K152 ["Color"]
  GETIMPORT R20 K150 [BrickColor.new]
  LOADK R21 K185 ["Medium blue"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K152 ["Color"]
  GETIMPORT R21 K150 [BrickColor.new]
  LOADK R22 K186 ["Light blue"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K152 ["Color"]
  GETIMPORT R22 K150 [BrickColor.new]
  LOADK R23 K187 ["Bright bluish green"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K152 ["Color"]
  GETIMPORT R23 K150 [BrickColor.new]
  LOADK R24 K188 ["Teal"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K152 ["Color"]
  GETIMPORT R24 K150 [BrickColor.new]
  LOADK R25 K189 ["Pastel blue-green"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K152 ["Color"]
  GETIMPORT R25 K150 [BrickColor.new]
  LOADK R26 K190 ["Toothpaste"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K152 ["Color"]
  GETIMPORT R26 K150 [BrickColor.new]
  LOADK R27 K191 ["Cyan"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K152 ["Color"]
  GETIMPORT R27 K150 [BrickColor.new]
  LOADK R28 K192 ["Pastel Blue"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K152 ["Color"]
  GETIMPORT R28 K150 [BrickColor.new]
  LOADK R29 K193 ["Pastel light blue"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K152 ["Color"]
  GETIMPORT R29 K150 [BrickColor.new]
  LOADK R30 K194 ["Bright violet"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K152 ["Color"]
  GETIMPORT R30 K150 [BrickColor.new]
  LOADK R31 K195 ["Lavender"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K152 ["Color"]
  GETIMPORT R31 K150 [BrickColor.new]
  LOADK R32 K196 ["Lilac"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K152 ["Color"]
  GETIMPORT R32 K150 [BrickColor.new]
  LOADK R33 K197 ["Magenta"]
  CALL R32 1 1
  GETTABLEKS R31 R32 K152 ["Color"]
  GETIMPORT R33 K150 [BrickColor.new]
  LOADK R34 K198 ["Royal purple"]
  CALL R33 1 1
  GETTABLEKS R32 R33 K152 ["Color"]
  GETIMPORT R34 K150 [BrickColor.new]
  LOADK R35 K199 ["Alder"]
  CALL R34 1 1
  GETTABLEKS R33 R34 K152 ["Color"]
  SETLIST R17 R18 16 [33]
  GETIMPORT R19 K150 [BrickColor.new]
  LOADK R20 K200 ["Pastel violet"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K152 ["Color"]
  GETIMPORT R20 K150 [BrickColor.new]
  LOADK R21 K201 ["Bright red"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K152 ["Color"]
  GETIMPORT R21 K150 [BrickColor.new]
  LOADK R22 K202 ["Really red"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K152 ["Color"]
  GETIMPORT R22 K150 [BrickColor.new]
  LOADK R23 K203 ["Hot pink"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K152 ["Color"]
  GETIMPORT R23 K150 [BrickColor.new]
  LOADK R24 K204 ["Pink"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K152 ["Color"]
  GETIMPORT R24 K150 [BrickColor.new]
  LOADK R25 K205 ["Carnation pink"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K152 ["Color"]
  GETIMPORT R25 K150 [BrickColor.new]
  LOADK R26 K206 ["Light reddish violet"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K152 ["Color"]
  GETIMPORT R26 K150 [BrickColor.new]
  LOADK R27 K207 ["Pastel orange"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K152 ["Color"]
  GETIMPORT R27 K150 [BrickColor.new]
  LOADK R28 K208 ["Dark taupe"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K152 ["Color"]
  GETIMPORT R28 K150 [BrickColor.new]
  LOADK R29 K209 ["Cork"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K152 ["Color"]
  GETIMPORT R29 K150 [BrickColor.new]
  LOADK R30 K210 ["Olive"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K152 ["Color"]
  GETIMPORT R30 K150 [BrickColor.new]
  LOADK R31 K211 ["Medium green"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K152 ["Color"]
  GETIMPORT R31 K150 [BrickColor.new]
  LOADK R32 K212 ["Grime"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K152 ["Color"]
  GETIMPORT R32 K150 [BrickColor.new]
  LOADK R33 K213 ["Sand green"]
  CALL R32 1 1
  GETTABLEKS R31 R32 K152 ["Color"]
  GETIMPORT R33 K150 [BrickColor.new]
  LOADK R34 K214 ["Sand blue"]
  CALL R33 1 1
  GETTABLEKS R32 R33 K152 ["Color"]
  GETIMPORT R34 K150 [BrickColor.new]
  LOADK R35 K215 ["Lime green"]
  CALL R34 1 1
  GETTABLEKS R33 R34 K152 ["Color"]
  SETLIST R17 R18 16 [49]
  GETIMPORT R19 K150 [BrickColor.new]
  LOADK R20 K216 ["Pastel green"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K152 ["Color"]
  GETIMPORT R20 K150 [BrickColor.new]
  LOADK R21 K217 ["New Yeller"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K152 ["Color"]
  GETIMPORT R21 K150 [BrickColor.new]
  LOADK R22 K218 ["Pastel yellow"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K152 ["Color"]
  GETIMPORT R22 K150 [BrickColor.new]
  LOADK R23 K219 ["Really black"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K152 ["Color"]
  GETIMPORT R23 K150 [BrickColor.new]
  LOADK R24 K220 ["Black"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K152 ["Color"]
  GETIMPORT R24 K150 [BrickColor.new]
  LOADK R25 K221 ["Dark stone grey"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K152 ["Color"]
  GETIMPORT R25 K150 [BrickColor.new]
  LOADK R26 K222 ["Medium stone grey"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K152 ["Color"]
  GETIMPORT R26 K150 [BrickColor.new]
  LOADK R27 K223 ["Mid gray"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K152 ["Color"]
  GETIMPORT R27 K150 [BrickColor.new]
  LOADK R28 K224 ["Light stone grey"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K152 ["Color"]
  GETIMPORT R34 K150 [BrickColor.new]
  LOADK R35 K225 ["White"]
  CALL R34 1 1
  GETTABLEKS R27 R34 K152 ["Color"]
  SETLIST R17 R18 10 [65]
  CALL R16 1 1
  GETTABLEKS R17 R3 K226 ["createHeadPalette"]
  NEWTABLE R18 0 9
  LOADK R19 K227 [10687288296]
  LOADK R20 K228 [10725626210]
  LOADK R21 K229 [11572085825]
  LOADK R22 K230 [11584333045]
  LOADK R23 K231 [9107287520]
  LOADK R24 K232 [4908014528]
  LOADK R25 K233 [11775683481]
  LOADK R26 K234 [10407915508]
  LOADK R27 K235 [13207192743]
  SETLIST R18 R19 9 [1]
  CALL R17 1 -1
  SETLIST R15 R16 -1 [1]
  GETTABLEKS R16 R3 K236 ["createBodyCategory"]
  NEWTABLE R17 0 6
  DUPTABLE R18 K242 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R19 K243 [10610645439]
  SETTABLEKS R19 R18 K237 ["Torso"]
  LOADK R19 K244 [10610637502]
  SETTABLEKS R19 R18 K238 ["LeftArm"]
  LOADK R19 K245 [10610642340]
  SETTABLEKS R19 R18 K239 ["RightArm"]
  LOADK R19 K246 [10610640030]
  SETTABLEKS R19 R18 K240 ["LeftLeg"]
  LOADK R19 K247 [10610643939]
  SETTABLEKS R19 R18 K241 ["RightLeg"]
  DUPTABLE R19 K242 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R20 K248 [11572083496]
  SETTABLEKS R20 R19 K237 ["Torso"]
  LOADK R20 K249 [11572074613]
  SETTABLEKS R20 R19 K238 ["LeftArm"]
  LOADK R20 K250 [11572079320]
  SETTABLEKS R20 R19 K239 ["RightArm"]
  LOADK R20 K251 [11572076845]
  SETTABLEKS R20 R19 K240 ["LeftLeg"]
  LOADK R20 K252 [11572081357]
  SETTABLEKS R20 R19 K241 ["RightLeg"]
  DUPTABLE R20 K242 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R21 K253 [11740060397]
  SETTABLEKS R21 R20 K237 ["Torso"]
  LOADK R21 K254 [11740050465]
  SETTABLEKS R21 R20 K238 ["LeftArm"]
  LOADK R21 K255 [11740055375]
  SETTABLEKS R21 R20 K239 ["RightArm"]
  LOADK R21 K0 ["script"]
  SETTABLEKS R21 R20 K240 ["LeftLeg"]
  LOADK R21 K1 [script]
  SETTABLEKS R21 R20 K241 ["RightLeg"]
  DUPTABLE R21 K242 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R22 K2 ["AvatarCompatibilityPreviewer"]
  SETTABLEKS R22 R21 K237 ["Torso"]
  LOADK R22 K3 ["FindFirstAncestor"]
  SETTABLEKS R22 R21 K238 ["LeftArm"]
  LOADK R22 K4 ["require"]
  SETTABLEKS R22 R21 K239 ["RightArm"]
  LOADK R22 K5 [require]
  SETTABLEKS R22 R21 K240 ["LeftLeg"]
  LOADK R22 K6 ["Packages"]
  SETTABLEKS R22 R21 K241 ["RightLeg"]
  DUPTABLE R22 K242 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R23 K7 ["Cryo"]
  SETTABLEKS R23 R22 K237 ["Torso"]
  LOADK R23 K8 ["Dash"]
  SETTABLEKS R23 R22 K238 ["LeftArm"]
  LOADK R23 K9 ["Src"]
  SETTABLEKS R23 R22 K239 ["RightArm"]
  LOADK R23 K10 ["Util"]
  SETTABLEKS R23 R22 K240 ["LeftLeg"]
  LOADK R23 K11 ["CatalogItemUtil"]
  SETTABLEKS R23 R22 K241 ["RightLeg"]
  DUPTABLE R23 K242 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R24 K12 ["Types"]
  SETTABLEKS R24 R23 K237 ["Torso"]
  LOADK R24 K13 ["Flags"]
  SETTABLEKS R24 R23 K238 ["LeftArm"]
  LOADK R24 K14 ["getFFlagAvatarPreviewerEyebrowsAndEyelashes"]
  SETTABLEKS R24 R23 K239 ["RightArm"]
  LOADK R24 K15 ["getFFlagAvatarPreviewerFixBadAssetTypes"]
  SETTABLEKS R24 R23 K240 ["LeftLeg"]
  LOADK R24 K16 ["getFFlagAvatarPreviewerFixTShirtImportingAgain"]
  SETTABLEKS R24 R23 K241 ["RightLeg"]
  SETLIST R17 R18 6 [1]
  CALL R16 1 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K30 ["body"]
  GETTABLEKS R15 R1 K145 ["List"]
  GETTABLEKS R14 R15 K146 ["join"]
  NEWTABLE R15 0 1
  GETTABLEKS R16 R3 K75 ["layeredClothingPalette"]
  LOADK R17 K17 ["game"]
  MOVE R19 R6
  CALL R19 0 1
  JUMPIFNOT R19 [+3]
  GETIMPORT R18 K275 [Enum.AssetType.ShirtAccessory]
  JUMP [+2]
  GETIMPORT R18 K277 [Enum.AssetType.TShirtAccessory]
  NEWTABLE R19 0 6
  LOADK R20 K22 ["11572097774"]
  LOADK R21 K23 ["DefineFastString"]
  LOADK R22 K24 ["AvatarPreviewerEyelashIds"]
  LOADK R23 K25 ["11572100557"]
  LOADK R24 K26 [PROTO_0]
  LOADK R25 K27 [PROTO_2]
  SETLIST R19 R20 6 [1]
  CALL R16 3 -1
  SETLIST R15 R16 -1 [1]
  MOVE R17 R6
  CALL R17 0 1
  JUMPIFNOT R17 [+21]
  MOVE R17 R7
  CALL R17 0 1
  JUMPIFNOT R17 [+18]
  NEWTABLE R16 0 1
  GETTABLEKS R17 R3 K75 ["layeredClothingPalette"]
  LOADK R18 K28 ["accessories"]
  GETIMPORT R19 K277 [Enum.AssetType.TShirtAccessory]
  NEWTABLE R20 0 3
  LOADK R21 K29 ["animations"]
  LOADK R22 K22 ["11572097774"]
  LOADK R23 K30 ["body"]
  SETLIST R20 R21 3 [1]
  CALL R17 3 -1
  SETLIST R16 R17 -1 [1]
  JUMP [+2]
  NEWTABLE R16 0 0
  NEWTABLE R17 0 1
  GETTABLEKS R18 R3 K75 ["layeredClothingPalette"]
  LOADK R19 K31 ["clothing"]
  GETIMPORT R20 K289 [Enum.AssetType.JacketAccessory]
  NEWTABLE R21 0 5
  LOADK R22 K34 ["append"]
  LOADK R23 K35 ["basicAccessoryPalette"]
  LOADK R24 K36 ["Hair"]
  LOADK R25 K37 ["Enum"]
  LOADK R26 K38 ["AssetType"]
  SETLIST R21 R22 5 [1]
  CALL R18 3 -1
  SETLIST R17 R18 -1 [1]
  JUMPIFNOT R8 [+23]
  NEWTABLE R18 0 1
  GETTABLEKS R19 R3 K75 ["layeredClothingPalette"]
  LOADK R20 K39 ["HairAccessory"]
  GETIMPORT R21 K297 [Enum.AssetType.SweaterAccessory]
  NEWTABLE R22 0 8
  LOADK R23 K42 [9244122897]
  LOADK R24 K43 [9243987340]
  LOADK R25 K44 [9244060144]
  LOADK R26 K45 [9174353649]
  LOADK R27 K46 [7193450455]
  LOADK R28 K47 [9244067444]
  LOADK R29 K48 [9244097555]
  LOADK R30 K49 [7193445686]
  SETLIST R22 R23 8 [1]
  CALL R19 3 -1
  SETLIST R18 R19 -1 [1]
  JUMP [+2]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 4
  GETTABLEKS R20 R3 K75 ["layeredClothingPalette"]
  LOADK R21 K50 [7193454569]
  GETIMPORT R22 K308 [Enum.AssetType.PantsAccessory]
  NEWTABLE R23 0 5
  LOADK R24 K53 [Enum.AssetType.Hat]
  LOADK R25 K54 [607702162]
  LOADK R26 K55 [7951064603]
  LOADK R27 K56 [7893381364]
  LOADK R28 K57 [102619342]
  SETLIST R23 R24 5 [1]
  CALL R20 3 1
  GETTABLEKS R21 R3 K75 ["layeredClothingPalette"]
  LOADK R22 K58 [1374269]
  GETIMPORT R23 K316 [Enum.AssetType.ShortsAccessory]
  NEWTABLE R24 0 3
  LOADK R25 K61 [89615321]
  LOADK R26 K62 [13476872]
  LOADK R27 K63 [3756432119]
  SETLIST R24 R25 3 [1]
  CALL R21 3 1
  GETTABLEKS R22 R3 K75 ["layeredClothingPalette"]
  LOADK R23 K64 ["Face"]
  GETIMPORT R24 K322 [Enum.AssetType.DressSkirtAccessory]
  NEWTABLE R25 0 5
  LOADK R26 K67 [1192464705]
  LOADK R27 K68 [74970669]
  LOADK R28 K69 [1241185542]
  LOADK R29 K70 [20642008]
  LOADK R30 K71 [3210207381]
  SETLIST R25 R26 5 [1]
  CALL R22 3 1
  GETTABLEKS R23 R3 K328 ["shoesPalette"]
  NEWTABLE R24 0 3
  DUPTABLE R25 K331 [{"left", "right"}]
  LOADK R26 K76 ["Eyebrows"]
  SETTABLEKS R26 R25 K329 ["left"]
  LOADK R26 K77 ["EyebrowAccessory"]
  SETTABLEKS R26 R25 K330 ["right"]
  DUPTABLE R26 K331 [{"left", "right"}]
  LOADK R27 K78 [Enum.AssetType.EyebrowAccessory]
  SETTABLEKS R27 R26 K329 ["left"]
  LOADK R27 K79 ["Eyelashes"]
  SETTABLEKS R27 R26 K330 ["right"]
  DUPTABLE R27 K331 [{"left", "right"}]
  LOADK R28 K80 ["EyelashAccessory"]
  SETTABLEKS R28 R27 K329 ["left"]
  LOADK R28 K81 [Enum.AssetType.EyelashAccessory]
  SETTABLEKS R28 R27 K330 ["right"]
  SETLIST R24 R25 3 [1]
  CALL R23 1 1
  SETLIST R19 R20 4 [1]
  CALL R14 5 1
  SETTABLEKS R14 R13 K31 ["clothing"]
  NEWTABLE R14 0 1
  GETTABLEKS R15 R3 K338 ["emotionPalette"]
  NEWTABLE R16 0 6
  LOADK R17 K83 ["NeckAccessory"]
  LOADK R18 K84 [Enum.AssetType.NeckAccessory]
  LOADK R19 K85 [13881788203]
  LOADK R20 K86 [12566318504]
  LOADK R21 K87 [12272017766]
  LOADK R22 K88 [11515295880]
  SETLIST R16 R17 6 [1]
  CALL R15 1 -1
  SETLIST R14 R15 -1 [1]
  SETTABLEKS R14 R13 K32 ["face"]
  RETURN R13 1
