print("Working")

local Text = script.Parent
wait(1)
local Player = game.Players.LocalPlayer
local Char = Player.Character

local offsetY = -76.99

game:GetService("RunService").Stepped:Connect(function()
	Text.Text = "Current Altitude: "..math.floor((Char.HumanoidRootPart.Position.Y + offsetY) / 3)
end)