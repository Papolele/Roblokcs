local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Papolele/Roblokcs-UI/main/source.lua"))()
local Window = Library.CreateLib("ApocTool", "Sentinel")
--Naw



local Tab = Window:NewTab("ApocTools")

local section = Tab:NewSection(Reset)
section:NewButton("Refresh", "Refresh the whole script for you and only you <3", function()
	
	
	game.CoreGui.AR2s:Destroy()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Papolele/Roblokcs/main/AR2Tooler.lua"))()
end)

Players = game:GetService("Players")
for i, player in pairs(Players:GetPlayers()) do
	primary = tostring(player.Stats.Primary.Value or "")
		if primary == "" then
			primary = "none"
		end
	secondary = tostring(player.Stats.Secondary.Value or "")
		if secondary == "" then
			secondary = "none"
		end
	local namesec = Tab:NewSection(player.Name)
	namesec:NewLabel(primary)
	namesec:NewLabel(secondary)
end

local Tab = Window:NewTab("Setting")
local Section = Tab:NewSection("Setting")
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.LeftBracket, function()
	Library:ToggleUI()

end)

local Tab = Window:NewTab("Credit")
local Section = Tab:NewSection("Credit")
Section:NewLabel("This script was made by Papolele#0066")

wait(1)
local ScreenGui = game.CoreGui.AR2s
