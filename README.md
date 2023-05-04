<h1 align="center">ROBLOX</h1>

<p align="center">
  <b>ROBLOX scripts to make scripting easier!

[![Maintainability](https://img.shields.io/codeclimate/maintainability/alexlostorto/ROBLOX?style=for-the-badge&message=Code+Climate&labelColor=222222&logo=Code+Climate&logoColor=FFFFFF)](https://codeclimate.com/github/alexlostorto/ROBLOX/maintainability)

```lua
-- List of functions
function teleport(Player)
function fade_screen()
script playerHeight
program closeRoblox
```

## 📋 Scripts

#### `Teleport Script`

1. Add the Teleport_Script.lua inside the teleport part. This is the part that the player will touch to teleport.

<p align="left"><img height="40%" src="https://github.com/alexlostorto/ROBLOX/raw/main/git_images/Roblox Teleport Script.PNG" alt="location of black teleport frame"/></p>

2. Change the 'teleportTo' variable to the part which you want the player to teleport to.

```lua
-- Creates the variable for the object to teleport to
teleportTo = game.Workspace["GYM INDOOR"].Enter
```

#### `Fade Screen Script`

1. Create a screen GUI under 'StarterGUI', this will be the screen fade GUI.

<p align="left"><img height="40%" src="https://github.com/alexlostorto/ROBLOX/raw/main/git_images/Roblox Black Teleport GUI.PNG" alt="location of black teleport frame"/></p>

2. In the screen GUI, add a frame, set its colour to black and visibility to false. Add the Fade_Screen.lua script in the screen GUI too.

<p align="left"><img height="40%" src="https://github.com/alexlostorto/ROBLOX/raw/main/git_images/Roblox Black Teleport Frame.PNG" alt="location of black teleport frame"/></p>

3. Change the 'part' variable to the part which you want to trigger the screen fade.

```lua
-- The part which triggers the screen fade
local part = workspace.GYM.GymDoor
```

4. Change the 'duration' variable (in seconds) if you want to make the screen fade longer or shorter.

```lua
-- How long you want the fade screen to last
duration = 3
```

#### `Player Height Script`

1. Add the Player_Height.lua inside the StarterGUI height GUI.
<p align="left"><img height="40%" src="https://github.com/alexlostorto/ROBLOX/raw/main/git_images/Roblox Player Height Script.PNG" alt="image coming soon"/></p>

2. Change the 'offsetY' variable to make sure the value is zero when the player spawns.

```lua
-- Creates the variable for the y-offset
local offsetY = -76.99
```

3. The height value is divided by 3 to convert ROBLOX studs to metres.

```lua
-- Converts studs to metres
math.floor((Char.HumanoidRootPart.Position.Y + offsetY) / 3)
```

## 📜 Credits

Everything is coded by Alex lo Storto

Licensed under the MIT License.
