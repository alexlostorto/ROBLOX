--  _____    _                       _     ____            _       _
-- |_   _|__| | ___ _ __   ___  _ __| |_  / ___|  ___ _ __(_)_ __ | |_
--   | |/ _ \ |/ _ \ '_ \ / _ \| '__| __| \___ \ / __| '__| | '_ \| __|
--   | |  __/ |  __/ |_) | (_) | |  | |_   ___) | (__| |  | | |_) | |_
--   |_|\___|_|\___| .__/ \___/|_|   \__| |____/ \___|_|  |_| .__/ \__|
--                 |_|                                      |_|
--
-- CREDITS
-- Author: Alex lo Storto
-- Github: https://github.com/alexlostorto
-- Website: https://alexlostorto.github.io/
--
-- All code is mine and subject to the MIT License

-- This script is used to teleport the player from the script's parent to a chosen object

-- Creates the variable for the object to teleport to
teleportTo = game.Workspace["GYM INDOOR"].Enter

-- Teleport variables
teleportOffset = Vector3.new(0, 3, 0)


function teleport(Player)
	local currentlyTeleporting = Player.Character:FindFirstChild("CurrentlyTeleporting")
	if not currentlyTeleporting then return end

	if not currentlyTeleporting.Value then
		currentlyTeleporting.Value = true

		Player.Character.HumanoidRootPart.CFrame = teleportTo.CFrame + teleportOffset
	end
end

-- When the part touches the player, trigger the teleport() function
script.Parent.Touched:Connect(function(hit)
	print("Touched outer gym door")

	local Player = game.Players:GetPlayerFromCharacter(hit.Parent)

	if Player then
		teleport(Player)
	end
end)
