--[[
	Package link auto-generated by Rotriever
]]
local FFlagConvertToPackageDeduplicatePackages = game:GetFastFlag("ConvertToPackageDeduplicatePackages")
if FFlagConvertToPackageDeduplicatePackages then

	local PackageIndex = script.Parent._Index

	return require(PackageIndex["roblox_roact-rodux"]["roact-rodux"])
else
	local PackageIndex = script.Parent.package_index

	return require(PackageIndex["RoactRodux-d65ac2db2841-f36097a9ef27"].packages["RoactRodux"])
end
