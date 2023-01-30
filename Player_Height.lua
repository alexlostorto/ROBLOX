print("Working")

local RS = game:GetService("RunService")
local char = script.Parent
local hrp = char.HumanoidRootPart

RS.Heartbeat:Connect(function()
    local height = math.floor(hrp.Position.y / 3)
    print(height)
end)