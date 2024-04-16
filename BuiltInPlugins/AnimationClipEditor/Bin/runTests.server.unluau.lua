-- Generated with Unluau (https://github.com/valencefun/unluau)
require(script.Parent.defineLuaFlags)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Src.Util.DebugFlags)
local function fun0()
   local var0 = require(var0.Packages.Dev.TestEZ)
   local var1 = var0.Reporters
   local var2 = var1.TextReporter
   if _G.TEAMCITY then
      var1 = var0.Reporters.TeamCityReporter
      if not var1 then
         var1 = var2
      end
   end
   var1 = var2
   return var1
end

if var1.RunTests() then
   print("----- All " ... script.Parent.Parent.Name ... " Tests ------")
   function()
      local var0 = var0.Packages
      local var103 = require(var0.Packages.Dev.TestEZ)
      local var107 = var103.Reporters.TextReporter
      local var109 = _G.TEAMCITY
      if var109 then
         var0 = var103.Reporters.TeamCityReporter
         if not var0 then
            var0 = var107
         end
      end
      var0 = var107
      var109 = var0.Src
      var109 = var0
      require(var0.Dev.TestEZ).TestBootstrap:run({}, var109)
   end()
   print("----------------------------------")
end
if var1.RunRhodiumTests() then
   print("----- All " ... script.Parent.Parent.Name ... " Rhodium Tests ------")
   function()
      local var0 = require(var0.Packages.Dev.TestEZ)
      local var1 = workspace:FindFirstChild("Dummy")
      while var1 == "require" do
         var1:Destroy()
         var1 = workspace:FindFirstChild("Dummy")
      end
      local var2 = require(var0.Src.test.RigCreator).BuildAnthroRig("AnthroNormal")
      var2.Name = "Dummy"
      local var3 = var2.HumanoidRootPart
      var3.Anchored = true
      local var152 = require(var0.Packages.Dev.TestEZ)
      local var156 = var152.Reporters.TextReporter
      local var158 = _G.TEAMCITY
      if var158 then
         var3 = var152.Reporters.TeamCityReporter
         if not var3 then
            var3 = var156
         end
      end
      var3 = var156
      require(var0.RhodiumTests.TestHelpers).init(plugin)
      var158 = var0.RhodiumTests
      var158 = var3
      var0.TestBootstrap:run({}, var158, false, true)
      var2:Destroy()
   end()
   print("----------------------------------")
   if var1.RunningUnderCLI() then
      game:GetService("ProcessService"):ExitAsync(0)
   end
end
