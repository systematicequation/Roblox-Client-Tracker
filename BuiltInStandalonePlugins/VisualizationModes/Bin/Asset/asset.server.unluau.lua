-- Generated with Unluau (https://github.com/valencefun/unluau)
if not plugin then
end
local var0 = script:FindFirstAncestor("VisualizationModes")
require(var0.Bin.Common.defineLuaFlags)
local var1 = require(var0.Packages.TestLoader)
var1.launch("VisualizationModes", var0.Src)
if var1.isCli() then
end
if not game:GetFastFlag("StudioVisualizationModes") then
end
local var2 = var1.getDebugFlags("VisualizationModes")
local var3 = require(var0.Src.Util.Maid)
local var4 = var3.new()
local function fun0()
   if not plugin.HostDataModelTypeIsCurrent then
   end
   local var0 = var3.new()
   local var236 = require(var0.Src.Model.Tracking.VisualizationModeServiceTracker).new()
   local var242 = require(var0.Src.Model.VisualizationModeCombinerClient).new(plugin, var0:add())
   var0:add()
   local var3 = require(var0.Src.Modes.StudioVisualizationModeProvider).new()
   var0:add()
   if var2.MountAssetReactTree then
      local var261 = var0.Src
      var261 = require(var261.VisualizationModesPlugin)
      local var265 = {}
      local var266 = plugin
      var265.Plugin = var266
      local var3 = Instance.new("ScreenGui")
      var266 = var3
      local var4 = require(var0.Packages.ReactRoblox).createRoot(var266)
      var4:render(require(var0.Packages.React).createElement(var261, var265))
      var0:giveTask(function()
         var4:unmount()
      end)
      var3.Parent = game:GetService("StarterGui")
   end
   var4._mount = var0
end

local function fun1()
   var4._mount = nil
end

plugin.Unloading:Connect(fun1)
local var5 = plugin.MultipleDocumentInterfaceInstance.FocusedDataModelSession
var5.CurrentDataModelTypeAboutToChange:Connect(fun1)
var5.CurrentDataModelTypeChanged:Connect(fun0)
fun0()
