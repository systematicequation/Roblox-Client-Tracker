local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local RoduxFriends = dependencies.RoduxFriends
local RODUX_KEY = require(FriendsLanding.Common.Constants).RODUX_KEY
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local SocialCommon = dependencies.SocialCommon
local RecommendationSourceEnum = SocialCommon.Enums.RecommendationSourceEnum

local getFriendRecommendationsFromState = function(state)
	local localUserId = state.LocalUserId

	local addFriendsPageRecommendationIds =
		RoduxFriends.Selectors.getRecommendationIdsBySource(state)(RecommendationSourceEnum.AddFriendsPage)
	local sortedRecommendationIds =
		RoduxFriends.Selectors.getSortedByRankRecommendationIds(state)(localUserId, addFriendsPageRecommendationIds)

	local mapRecommendationToUser = function(id)
		local mappedRecommendation = llama.Dictionary.join(
			getDeepValue(state, string.format("%s.Users.byUserId.%s", RODUX_KEY, id)),
			getDeepValue(state, string.format("%s.Friends.recommendations.byUserId.%s.%s", RODUX_KEY, localUserId, id)),
			{
				isRecommendation = true,
			}
		)
		return mappedRecommendation
	end

	local mappedRecommendations = llama.List.map(sortedRecommendationIds, mapRecommendationToUser)
	return mappedRecommendations
end

return getFriendRecommendationsFromState
