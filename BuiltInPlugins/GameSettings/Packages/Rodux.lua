--[[
	Package link auto-generated by manage_libraries and Rotriever
]]

local FFlagGameSettingsDeduplicatePackages = game:GetFastFlag("GameSettingsDeduplicatePackages")
if FFlagGameSettingsDeduplicatePackages then
	local PackageIndex = script.Parent._Index
	local Package = require(PackageIndex["roblox_rodux"]["rodux"])
	return Package
else
	local PackageIndex = script.Parent._IndexOld
	return require(PackageIndex["Rodux"]["lib"])
end

