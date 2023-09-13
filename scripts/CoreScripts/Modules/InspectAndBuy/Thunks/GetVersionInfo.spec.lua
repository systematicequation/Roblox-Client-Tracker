--[[
	TODO AVBURST-12905:
		Remove and use item details endpoint for getting attribution data
		instead of using the asset-versions endpoint.
--]]

return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)
	local InspectAndBuyFolder = script.Parent.Parent
	local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
	local Network = require(InspectAndBuyFolder.Services.Network)
	local Thunk = require(InspectAndBuyFolder.Thunk)
	local MockId = require(InspectAndBuyFolder.MockId)
	local GetVersionInfo = require(script.Parent.GetVersionInfo)

	it("should get the version info of an asset", function()
		local store = Rodux.Store.new(Reducer)
		local mockId = MockId()
		local thunk = GetVersionInfo(mockId)

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(),
		})

		local versionInfo = MockNetwork.GetVersionInfo()
		local latestVersion = versionInfo.data[1]
		-- Asset info converts ID to string
		local creatingUniverseId = tostring(latestVersion.creatingUniverseId)

		local state = store:getState()
		expect(state.assets[mockId].creatingUniverseId).to.equal(creatingUniverseId)
	end)

	it("should catch network errors that happen and still run", function()
		local store = Rodux.Store.new(Reducer)
		local thunk = GetVersionInfo()

		Thunk.test(thunk, store, {
			[Network] = MockNetwork.new(true),
		})
	end)
end
