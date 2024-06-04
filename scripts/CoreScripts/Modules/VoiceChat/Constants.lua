local VOICE_CONTEXT_TYPE = {
	USER_AGENCY = "useragency",
	BUBBLE_CHAT = "bubblechat",
	IN_GAME_MENU = "ingamemenu",
	MUTE_TOGGLES = "mutetoggles",
	REPORT_MENU = "reportmenu",
	EASIER_UNMUTING = "easierunmuting",
	UNKNOWN = "unknown",
}

local VOICE_GROUP_TYPE = {
	ALL = "all",
	FRIENDS = "friends",
	NONFRIENDS = "nonfriends",
}

local VOICE_STATE = {
	INACTIVE = "Inactive",
	TALKING = "Talking",
	CONNECTING = "Connecting",
	MUTED = "Muted",
	LOCAL_MUTED = "LOCAL_MUTED",
	ERROR = "Error",
	HIDDEN = "Hidden",
}

local BAN_REASON = { NUDGE_V3 = 7, }

export type VoiceJoinProgressType = "Idle" | "Suspended" | "Joining" | "Joined" | "Left"

local VOICE_JOIN_PROGRESS = {
	Idle = "Idle" :: VoiceJoinProgressType, -- Initialization has not been started
	Joining = "Joining" :: VoiceJoinProgressType, -- Joining is in progress
	Suspended = "Suspended" :: VoiceJoinProgressType, -- Waiting on user input before continuing the join process
	Joined = "Joined" :: VoiceJoinProgressType, -- User 
	Left = "Left" :: VoiceJoinProgressType, -- User has declined to join call
}

return {
	VOICE_CONTEXT_TYPE = VOICE_CONTEXT_TYPE,
	VOICE_JOIN_PROGRESS = VOICE_JOIN_PROGRESS,
	VOICE_GROUP_TYPE = VOICE_GROUP_TYPE,
	VOICE_STATE = VOICE_STATE,
	BAN_REASON = BAN_REASON,
}
