--[[
	Package link auto-generated by manage_libraries and Rotriever
]]

local FFlagRigBuilderDeduplicatePackages = game:GetFastFlag("RigBuilderDeduplicatePackages")
if FFlagRigBuilderDeduplicatePackages then
	local PackageIndex = script.Parent._Index
	local Package = require(PackageIndex["roblox_roact"]["roact"])
	return Package
else
	local PackageIndex = script.Parent._IndexOld
	return require(PackageIndex["roblox_roact"]["roact"])
end

