-- Discards all errors in Settings.

local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework).Util.Action

return Action(script.Name, function()
	return {}
end)
