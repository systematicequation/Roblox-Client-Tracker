local Packages = script.Parent
local VirtualizedListUpgradeFlag = require(Packages.VirtualizedListUpgradeFlag)

if VirtualizedListUpgradeFlag() then
  return require(Packages.VirtualizedList_v101)
else
  return require(Packages.VirtualizedList_rc4)
end
