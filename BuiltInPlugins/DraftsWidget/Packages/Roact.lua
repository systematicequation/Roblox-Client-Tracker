--[[
	Package link auto-generated by Rotriever
]]
local FFlagDraftsWidgetDeduplicatePackages = game:GetFastFlag("DraftsWidgetDeduplicatePackages")
if FFlagDraftsWidgetDeduplicatePackages then
	local PackageIndex = script.Parent._Index
	local Package = require(PackageIndex["roblox_roact"]["roact"])
	return Package
else
	local PackageIndex = script.Parent.package_index
	return require(PackageIndex["Roact-c4d9a64d540b-41af74df7307"].packages["Roact"])
end
