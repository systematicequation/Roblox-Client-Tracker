--[[
	Package link auto-generated by manage_libraries and Rotriever
]]

local FFlagGameSettingsDeduplicatePackages = game:GetFastFlag("GameSettingsDeduplicatePackages")
if FFlagGameSettingsDeduplicatePackages then
	local PackageIndex = script.Parent._Index
	local Package = require(PackageIndex["Roact"]["Roact"])
	return Package
else
	local PackageIndex = script.Parent._IndexOld
	return require(PackageIndex["Roact"]["Roact"])
end

