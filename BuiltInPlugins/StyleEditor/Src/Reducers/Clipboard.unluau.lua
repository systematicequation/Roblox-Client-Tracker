-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Dash).join
local var2 = var0.Src.Actions.Clipboard
local var3 = {}
var3.Instance = nil
var3.Attribute = nil
var3.Property = nil
function require(var2.CopyInstanceToClipboard).name(arg1, arg2)
   local var163 = {}
   var163.Instance = arg2.instance
   return var1(arg1, var163)
end

function require(var2.CopyAttributeToClipboard).name(arg1, arg2)
   local var171 = {}
   local var0 = {}
   var0.Name = arg2.attributeName
   var0.Value = arg2.attributeValue
   var171.Attribute = var0
   return var1(arg1, var171)
end

function require(var2.CopyPropertyToClipboard).name(arg1, arg2)
   local var181 = {}
   local var0 = {}
   var0.Name = arg2.propertyName
   var0.Value = arg2.propertyValue
   var181.Property = var0
   return var1(arg1, var181)
end

return require(var0.Packages.Rodux).createReducer(var3, {})
