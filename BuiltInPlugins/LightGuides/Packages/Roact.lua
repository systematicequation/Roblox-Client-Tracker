--[[
	Package link auto-generated by manage_libraries and Rotriever
]]

local FFlagLightGuidesDeduplicatePackages = game:GetFastFlag("LightGuidesDeduplicatePackages2")
if FFlagLightGuidesDeduplicatePackages then
	local PackageIndex = script.Parent._Index
	local Package = require(PackageIndex["Roact"]["Roact"])
	return Package
else
	local PackageIndex = script.Parent._IndexOld
	return require(PackageIndex["Roact"]["Roact"])
end
