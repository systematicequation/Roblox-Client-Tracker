local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	baseMaterial : Enum.Material
}

return Action(script.Name, function(baseMaterial : Enum.Material) : Payload
	return {
		baseMaterial = baseMaterial,
	}
end)
