print("Working")

local Text = script.Parent
wait(1)
local Player = game.Players.LocalPlayer
local Char = Player.Character

game:GetService("RunService").Stepped:Connect(function()
	Text.Text = "Current Altitude: "..math.floor((Char.HumanoidRootPart.Position.Y-76.99)/3)
end)