--[[
	Package link auto-generated by Rotriever
]]
local FFlagAlignmentToolDeduplicatePackages = game:DefineFastFlag("AlignmentToolDeduplicatePackages", false)
if FFlagAlignmentToolDeduplicatePackages then
	local PackageIndex = script.Parent._Index
	return require(PackageIndex["roblox_rodux"]["rodux"])
else
	local PackageIndex = script.Parent._IndexOld
	local package = PackageIndex["roblox_rodux-46838fbb-1.0.0"]["rodux"]
	if package.ClassName == "ModuleScript" then
		return require(package)
	end
	return package
end
