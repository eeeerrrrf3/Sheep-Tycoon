local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Topikhub", "RJTheme3")

local Tab = Window:NewTab("Hub free")

local Section = Tab:NewSection("Top scripts")

Section:NewButton("click tp", "Left CTRL + Click", function()
    local Player = game.Players.LocalPlayer 
local Mouse = Player:GetMouse() 
local UserInputService = game:GetService('UserInputService') 
 
local HoldingControl = false 
 
Mouse.Button1Down:connect(function() 
if HoldingControl then 
Player.Character:MoveTo(Mouse.Hit.p) 
end 
end) 
 
UserInputService.InputBegan:connect(function(Input, Processed) 
if Input.UserInputType == Enum.UserInputType.Keyboard then 
if Input.KeyCode == Enum.KeyCode.LeftControl then 
HoldingControl = true 
elseif Input.KeyCode == Enum.KeyCode.RightControl then 
HoldingControl = true 
end 
end 
end) 
 
UserInputService.InputEnded:connect(function(Input, Processed) 
if Input.UserInputType == Enum.UserInputType.Keyboard then 
if Input.KeyCode == Enum.KeyCode.LeftControl then 
HoldingControl = false 
elseif Input.KeyCode == Enum.KeyCode.RightControl then 
HoldingControl = false
end 
end
end)
end)

Section:NewButton("Tp to Finih", "ButtonInfo", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obby.Money.Finish.CFrame 
end)

Section:NewButton("Auto boost", "ButtonInfo", function()
    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Finish' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)

local Section = Tab:NewSection("Free money")

Section:NewButton("Hack money", "Lox", function()
local args = {
    [1] = 9, -- max is 17 dont change it
    [2] = Vector3.new(-162.36593627929688, 3.311232566833496, 938.9034423828125)
}

game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))
end)

Section:NewButton("Auto Sell", "Lox", function()
   while wait() do
   game:GetService("ReplicatedStorage").Signals.RemoteEvents.PutRemote:FireServer()
end
--ez
end)

local main = Window:NewTab("Player")
local mainSection = main:NewSection("Power chits")

mainSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

mainSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

local Settings = Window:NewTab("Settings")
local SettingsSection = Settings:NewSection("Settings")

SettingsSection:NewKeybind("ToggleGui", "Set you toggle gui key", Enum.KeyCode.E, function()	Library:ToggleUI()end)