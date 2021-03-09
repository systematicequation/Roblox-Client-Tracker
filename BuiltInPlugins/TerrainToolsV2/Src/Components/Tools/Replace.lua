--[[
	Displays panels associated with The Replace tool
]]

game:DefineFastFlag("TerrainToolsReplaceUseModeSelector", false)

local FFlagTerrainToolsReplaceUseModeSelector = game:GetFastFlag("TerrainToolsReplaceUseModeSelector")
local FFlagTerrainToolsReplaceBoxHotkey = game:GetFastFlag("TerrainToolsReplaceBoxHotkey")
local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetSourceMaterial = require(Actions.SetSourceMaterial)
local SetTargetMaterial = require(Actions.SetTargetMaterial)
local SetReplaceMode = require(Actions.SetReplaceMode)
local ChangeBaseSize = require(Actions.ChangeBaseSize)
local ChangeHeight = require(Actions.ChangeHeight)
local ChangePivot = require(Actions.ChangePivot)
local ChooseBrushShape = require(Actions.ChooseBrushShape)
local SetBaseSizeHeightLocked = require(Actions.SetBaseSizeHeightLocked)
local SetIgnoreWater = require(Actions.SetIgnoreWater)
local SetPlaneLock = require(Actions.SetPlaneLock)
local SetSnapToGrid = require(Actions.SetSnapToGrid)

local ToolParts = script.Parent.ToolParts
local ToggleButtonGroup = require(ToolParts.ToggleButtonGroup)
local ButtonGroup = require(ToolParts.ButtonGroup)
local Panel = require(ToolParts.Panel)
local MapSettingsWithPreview = require(ToolParts.MapSettingsWithPreview)
local MaterialSelector = require(ToolParts.MaterialSelector)
local ProgressDialog = require(Plugin.Src.Components.ProgressDialog)
local ModeSelector = require(ToolParts.ModeSelector)
local MouseListener = require(ToolParts.MouseListener)

local BaseBrush = require(Plugin.Src.Components.Tools.BaseBrush)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ReplaceMode = TerrainEnums.ReplaceMode

local REDUCER_KEY = "ReplaceTool"

local Replace = Roact.PureComponent:extend(script.Name)

function Replace:init()
	self.tryGenerateReplace = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)

		self.props.Replace:replaceMaterial(position, size, self.props.Source, self.props.Target, self.props.toolName)
	end

	self.setSourceMaterial = function(material)
		if material == Enum.Material.Water and self.props.ignoreWater == true then
			self.props.dispatchSetIgnoreWater(false)
		end

		--Checks to make sure you have plane lock + air, w/o plane lock the terrain zooms towards the camera
		if material == Enum.Material.Air and self.props.planeLock == false then
			self.props.dispatchSetPlaneLock(true)
		end
		self.props.dispatchSetSourceMaterial(material)
	end

	--Make sure the user does not engage ignorewater while having a brush + source material as water
	self.setIgnoreWater = function(mode)
		if self.props.Source == Enum.Material.Water then
			if self.props.ignoreWater then
				self.props.dispatchSetIgnoreWater(false)
			end
		else
			self.props.dispatchSetIgnoreWater(mode)
		end
	end

	--Make sure the user does no leave planelock while having air as the source material
	self.setPlaneLock = function(mode)
		if self.props.Source == Enum.Material.Air then
			if self.props.planeLock then
				self.props.dispatchSetPlaneLock(true)
			end
		else
			self.props.dispatchSetPlaneLock(mode)
		end
	end

	self.cancel = function()
		self.props.Replace:cancel()
	end
end

function Replace:render()
	local localization = self.props.Localization:get()

	local position = self.props.Position
	local size = self.props.Size

	local isReplacing = self.props.Replace:isReplacing()
	local progress = isReplacing and self.props.Replace:getProgress() or 0

	local baseSize = self.props.baseSize
	local baseSizeHeightLocked = self.props.baseSizeHeightLocked
	local brushShape = self.props.brushShape
	local height = self.props.height
	local ignoreWater = self.props.ignoreWater
	local pivot = self.props.pivot
	local planeLock = self.props.planeLock
	local snapToGrid = self.props.snapToGrid
	local strength = self.props.strength
	local source = self.props.Source
	local target = self.props.Target

	return Roact.createFragment({
		ReplaceTool = Roact.createElement(Panel, {
			Title = localization:getText("Replace", "ReplaceMaterial"),
			LayoutOrder = 1,
		}, {
			ModeButtonsWithBoxToggled = FFlagTerrainToolsReplaceUseModeSelector
			and Roact.createElement(ModeSelector, {
				Selected = self.props.Mode,
				Select = self.props.dispatchSetReplaceMode,

				Options = {
					{
						Data = ReplaceMode.Box,
						Text = localization:getText("ReplaceMode", "Box"),
					},
					{
						Data = ReplaceMode.Brush,
						Text = localization:getText("ReplaceMode", "Brush"),
					},
				},
			})
			or Roact.createElement(ToggleButtonGroup, {
				Selected = self.props.Mode,

				Buttons = {
					{
						Key = ReplaceMode.Box,
						Name = localization:getText("ReplaceMode", "Box"),
						Active = not isReplacing,
						OnClicked = self.props.dispatchSetReplaceMode,
					},
					{
						Key = ReplaceMode.Brush,
						Name = localization:getText("ReplaceMode", "Brush"),
						Active = not isReplacing,
						OnClicked = self.props.dispatchSetReplaceMode,
					},
				},
			}),

			Brush = self.props.Mode == ReplaceMode.Brush and Roact.createElement(BaseBrush, {
				LayoutOrder = 2,
				isSubsection = true,

				toolName = self.props.toolName,

				baseSize = baseSize,
				baseSizeHeightLocked = baseSizeHeightLocked,
				brushShape = brushShape,
				height = height,
				ignoreWater = ignoreWater,
				pivot = pivot,
				planeLock = planeLock,
				snapToGrid = snapToGrid,
				strength = strength,
				source = source,
				target = target,

				dispatchChangeBaseSize = self.props.dispatchChangeBaseSize,
				dispatchSetBaseSizeHeightLocked = self.props.dispatchSetBaseSizeHeightLocked,
				dispatchChooseBrushShape = self.props.dispatchChooseBrushShape,
				dispatchChangeHeight = self.props.dispatchChangeHeight,
				dispatchSetIgnoreWater = self.setIgnoreWater,
				dispatchChangePivot = self.props.dispatchChangePivot,
				dispatchSetPlaneLock = self.setPlaneLock,
				dispatchSetSnapToGrid = self.props.dispatchSetSnapToGrid,
				dispatchSetSourceMaterial = self.props.dispatchSetSourceMaterial,
				dispatchSetTargetMaterial = self.props.dispatchSetTargetMaterial,
				disablePlaneLock = self.props.Source == Enum.Material.Air,
				disableIgnoreWater = self.props.Source == Enum.Material.Water,
			}),

			MouseListener = (FFlagTerrainToolsReplaceBoxHotkey and self.props.Mode == ReplaceMode.Box) and Roact.createElement(MouseListener, {
				dispatchSetSourceMaterial = self.props.dispatchSetSourceMaterial,
				dispatchSetTargetMaterial = self.props.dispatchSetTargetMaterial,
			}),

			MapSettingsWithPreview = self.props.Mode == ReplaceMode.Box and Roact.createElement(MapSettingsWithPreview, {
				LayoutOrder = 3,
				isSubsection = true,

				toolName = self.props.toolName,

				Position = position,
				Size = size,

				OnPositionChanged = self.props.dispatchChangePosition,
				OnSizeChanged = self.props.dispatchChangeSize,
			}),

			MaterialPanel = Roact.createElement(Panel, {
				Title = localization:getText("Replace", "MaterialSettings"),
				LayoutOrder = 4,
				isSubsection = true,
			}, {
				SourceMaterialSelector = Roact.createElement(MaterialSelector, {
					LayoutOrder = 1,

					AllowAir = true,
					Label = localization:getText("Replace", "SourceMaterial"),
					material = self.props.Source,
					setMaterial = self.setSourceMaterial,
				}),
				TargetMaterialSelector = Roact.createElement(MaterialSelector, {
					LayoutOrder = 2,

					AllowAir = true,
					Label = localization:getText("Replace", "TargetMaterial"),
					material = self.props.Target,
					setMaterial = self.props.dispatchSetTargetMaterial,
				})
			}),

			ReplaceButtons = self.props.Mode == ReplaceMode.Box and Roact.createElement(ButtonGroup, {
				LayoutOrder = 5,
				Buttons = {
					{
						Key = "Replace",
						Name = localization:getText("Replace", "Replace"),
						Active = not isReplacing,
						OnClicked = self.tryGenerateReplace
					},
				}
			}),
		}),

		ProgressDialog = isReplacing and Roact.createElement(ProgressDialog, {
			Title = localization:getText("Replace", "ReplaceProgressTitle"),
			SubText = localization:getText("Replace", "Replacing"),

			Progress = progress,

			OnCancelButtonClicked = self.cancel,
		}),
	})
end

ContextServices.mapToProps(Replace, {
	Localization = ContextItems.UILibraryLocalization,
	-- Replace tool reuses SeaLevel object
	-- TODO: Rename SeaLevel object to TerrainReplacer?
	Replace = ContextItems.SeaLevel,
})

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Replace,

		Position = state[REDUCER_KEY].position,
		Size = state[REDUCER_KEY].size,
		Source = state[REDUCER_KEY].SourceMaterial,
		Target = state[REDUCER_KEY].TargetMaterial,
		Mode = state[REDUCER_KEY].ReplaceMode,
		baseSize = state[REDUCER_KEY].baseSize,
		baseSizeHeightLocked = state[REDUCER_KEY].baseSizeHeightLocked,
		brushShape = state[REDUCER_KEY].brushShape,
		height = state[REDUCER_KEY].height,
		ignoreWater = state[REDUCER_KEY].ignoreWater,
		pivot = state[REDUCER_KEY].pivot,
		planeLock = state[REDUCER_KEY].planeLock,
		snapToGrid = state[REDUCER_KEY].snapToGrid,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToReplace = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function(position)
			dispatchToReplace(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToReplace(ChangeSize(size))
		end,
		dispatchSetSourceMaterial = function(SourceMaterial)
			dispatchToReplace(SetSourceMaterial(SourceMaterial))
		end,
		dispatchSetTargetMaterial = function(TargetMaterial)
			dispatchToReplace(SetTargetMaterial(TargetMaterial))
		end,
		dispatchSetReplaceMode = function(ReplaceMode)
			dispatchToReplace(SetReplaceMode(ReplaceMode))
		end,
		dispatchChangeBaseSize = function(size)
			dispatchToReplace(ChangeBaseSize(size))
		end,
		dispatchSetBaseSizeHeightLocked = function(locked)
			dispatchToReplace(SetBaseSizeHeightLocked(locked))
		end,
		dispatchChooseBrushShape = function(shape)
			dispatchToReplace(ChooseBrushShape(shape))
		end,
		dispatchChangeHeight = function(height)
			dispatchToReplace(ChangeHeight(height))
		end,
		dispatchSetIgnoreWater = function(ignoreWater)
			dispatchToReplace(SetIgnoreWater(ignoreWater))
		end,
		dispatchChangePivot = function(pivot)
			dispatchToReplace(ChangePivot(pivot))
		end,
		dispatchSetPlaneLock = function(planeLock)
			dispatchToReplace(SetPlaneLock(planeLock))
		end,
		dispatchSetSnapToGrid = function(snapToGrid)
			dispatchToReplace(SetSnapToGrid(snapToGrid))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Replace)
