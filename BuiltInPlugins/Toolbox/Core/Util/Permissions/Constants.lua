--[[
	Constants used for communicating with the permissions endpoints
--]]

--[[
	Keys used by the web permission endpoint. By returning them like this, we can easily
	tell what the meaning of keys are. {userId=_} doesn't communicate where userId is coming
	from, its scope, what files we need to use it in, etc, whereas {[webKeys.UserId] = _} is
	a lot more explicit
--]]
local FFlagToolboxPrivatePublicAudioAssetConfig = game:GetFastFlag("ToolboxPrivatePublicAudioAssetConfig")
local FFlagToolboxGrantUniverseAudioPermissions = game:GetFastFlag("ToolboxGrantUniverseAudioPermissions")

local webKeys = {
	All = if FFlagToolboxPrivatePublicAudioAssetConfig then "All" else nil,

	UserId = "userId",
	UserName = "userName",

	GroupId = "groupId",
	GroupName = "groupName",

	RoleId = "rolesetId",
	RoleName = "rolesetName",
	RoleRank = "rank",

	UpToVersion = "upToVersion",

	Action = "action",

	UseViewAction = "UseView",
	EditAction = "Edit",
	RevokedAction = "Revoked",
	UseAction = "Use",
	GrantAssetPermissionsAction = "GrantAssetPermissions",

	-- Outbound POST/DELETE requests
	SubjectType = "subjectType",
	SubjectId = "subjectId",

	UserSubject = "User",
	GroupSubject = "Group",
	RoleSubject = "Roleset",
	GroupRolesetSubject = "GroupRoleset",
	Requests = "requests",
	Universe = if FFlagToolboxGrantUniverseAudioPermissions then "Universe" else nil,

	--Permissions Status
	UnknownError = "UnknownError",
	HasPermission = "HasPermission",
	NoPermission = "NoPermission",
	AssetNotFound = "AssetNotFound",
}

return {
	webKeys = webKeys,
}
