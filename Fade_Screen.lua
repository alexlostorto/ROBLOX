--  _____         _         ____
-- |  ___|_ _  __| | ___   / ___|  ___ _ __ ___  ___ _ __
-- | |_ / _` |/ _` |/ _ \  \___ \ / __| '__/ _ \/ _ \ '_ \
-- |  _| (_| | (_| |  __/   ___) | (__| | |  __/  __/ | | |
-- |_|  \__,_|\__,_|\___|  |____/ \___|_|  \___|\___|_| |_|
--
-- CREDITS
-- Author: Alex lo Storto
-- Github: https://github.com/alexlostorto
-- Website: https://alexlostorto.github.io/
--
-- All code is mine and subject to the MIT License

-- This script changes the transparency of the Parent.Frame to fade the client's screen black

-- Gets the client's player
local player = game:GetService("Players").LocalPlayer

-- The part which triggers the screen fade
local part = workspace.GYM.GymDoor

-- How long you want the fade screen to last
duration = 3
interval = duration / 20


function fade_screen()
	script.Parent.Frame.Visible = true
		for i = 1, 10 do
			script.Parent.Frame.BackgroundTransparency = script.Parent.Frame.BackgroundTransparency - 0.1
			task.wait(interval)
		end
		for i = 1, 10 do
			script.Parent.Frame.BackgroundTransparency = script.Parent.Frame.BackgroundTransparency + 0.1
			task.wait(interval)
		end
		script.Parent.Frame.Visible = false
end

-- When the part touches the player, the for loop incrementally increases and decreases the Parent.Frame background transparency, fading the screen black in and out
part.Touched:Connect(function(hit)
	if hit.Parent == player.Character then
		fade_screen()
	end
end)
