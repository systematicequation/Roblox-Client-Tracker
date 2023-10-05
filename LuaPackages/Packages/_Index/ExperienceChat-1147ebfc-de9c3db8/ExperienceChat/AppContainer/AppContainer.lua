local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local ClientSettings = require(ExperienceChat.ClientSettings)

local mapStateToProps = require(script.Parent.mapStateToProps)
local mapDispatchToProps = require(script.Parent.mapDispatchToProps)

local BubbleChat = require(script.Parent.Parent.BubbleChat)
local AppLayout = require(script.Parent.Parent.AppLayout)
local ChatTranslationFTUX = require(script.Parent.Parent.ChatTranslationFTUX)

local TextChatService = game:GetService("TextChatService")

local getFFlagChatTranslationUIEnabled = require(ExperienceChat.Flags.getFFlagChatTranslationUIEnabled)
local getFFlagChatTranslationShowFTUX = require(ExperienceChat.Flags.getFFlagChatTranslationShowFTUX)

function getChatTranslationEnabled()
	local canGetSetting, setting = pcall(function()
		return TextChatService.ChatTranslationEnabled
	end)

	return canGetSetting and setting
end

function getChatTranslationToggleEnabled()
	local canGetSetting, setting = pcall(function()
		return TextChatService.ChatTranslationToggleEnabled
	end)

	return canGetSetting and setting
end

local AppContainer = Roact.Component:extend("AppContainer")
AppContainer.defaultProps = {
	isChatInputBarVisible = true,
	isChatWindowVisible = true,
	onSendChat = nil,
	messages = {},
	mutedUserIds = nil,
	textTimer = nil,
	timer = nil,
}

local GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat =
	require(ExperienceChat.Flags.GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat)

local TextChatServiceConnection

function AppContainer:willUnmount()
	if getFFlagChatTranslationUIEnabled() then
		TextChatServiceConnection:Disconnect()
	end
end

function AppContainer:didMount()
	if getFFlagChatTranslationUIEnabled() then
		local function onTextChatServicePropertyChanged(nameOfSetting)
			if nameOfSetting == "ChatTranslationEnabled" then
				local canGetSetting, setting = pcall(function()
					return TextChatService.ChatTranslationEnabled
				end)

				if canGetSetting then
					self.props.onToggleTranslation(setting)

					self:setState({
						showTranslationButton = getChatTranslationEnabled() and getChatTranslationToggleEnabled(),
					})
				end
			elseif nameOfSetting == "ChatTranslationToggleEnabled" then
				local canGetSetting, _ = pcall(function()
					return TextChatService.ChatTranslationToggleEnabled
				end)

				local canGetTranslationSetting, translationSetting = pcall(function()
					return TextChatService.ChatTranslationEnabled
				end)

				if canGetSetting then
					-- Refresh the translated messages so the state is consistent
					if canGetTranslationSetting then
						self.props.onToggleTranslation(translationSetting)
					end

					self:setState({
						showTranslationButton = getChatTranslationEnabled() and getChatTranslationToggleEnabled(),
					})
				end
			end
		end

		if not TextChatServiceConnection then
			TextChatServiceConnection = TextChatService.Changed:Connect(onTextChatServicePropertyChanged)
		end

		self:setState({
			showTranslationButton = getChatTranslationEnabled() and getChatTranslationToggleEnabled(),
		})
	end
end

function AppContainer:render()
	-- We pass in our selected clientSettings prop into a custom
	-- provider since we do not have RoduxHooks at this time.
	return Roact.createElement(ClientSettings.Provider, {
		value = self.props.clientSettings,
	}, {
		app = Roact.createFragment({
			appLayout = Roact.createElement(AppLayout, {
				canLocalUserChat = self.props.canLocalUserChat,
				isChatInputBarVisible = self.props.isChatInputBarVisible,
				isChatWindowVisible = self.props.isChatWindowVisible,
				chatTopBarVisibility = self.props.chatTopBarVisibility,
				messages = self.props.messages,
				mutedUserIds = self.props.mutedUserIds,
				onSendChat = self.props.onSendChat,
				timer = self.props.timer,
				textTimer = self.props.textTimer,

				activateWhisperMode = self.props.activateWhisperMode,
				resetTargetChannel = self.props.resetTargetChannel,

				lastGeneralActivityTimestamp = self.props.lastGeneralActivityTimestamp,
				lastMessageActivityTimestamp = self.props.lastMessageActivityTimestamp,
				isTextBoxFocused = self.props.isTextBoxFocused,
				onHovered = self.props.onHovered,
				onUnhovered = self.props.onUnhovered,
				chatLayoutAlignment = self.props.chatLayoutAlignment,
				chatWindowSettings = self.props.chatWindowSettings,
				clientSettings = GetFFlagEnableAccessibilitySettingsEffectsInExperienceChat()
						and self.props.clientSettings
					or nil,
				showTranslationButton = if getFFlagChatTranslationUIEnabled()
					then self.state.showTranslationButton
					else nil,
			}),
			bubbleChat = Roact.createElement(BubbleChat, {
				getIconVoiceIndicator = self.props.getIconVoiceIndicator,
				onClickedVoiceIndicator = self.props.onClickedVoiceIndicator,
				onClickedCameraIndicator = self.props.onClickedCameraIndicator,
				selfViewListenerChanged = self.props.selfViewListenerChanged,
				getPermissions = self.props.getPermissions,
			}),
			ChatTranslationFTUX = if getFFlagChatTranslationUIEnabled()
					and getFFlagChatTranslationShowFTUX()
					and getChatTranslationEnabled()
				then Roact.createElement(ChatTranslationFTUX, {})
				else nil,
		}),
	})
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AppContainer)
