repeat
	wait(0.2)
until game:IsLoaded() and game:GetService("Players").LocalPlayer.Character

local executiontime = tick()
if not writefile or not readfile or not isfile or not isfolder then game.Players.LocalPlayer:Kick("you have a really shity executor"); while true do end; return end;
if printconsole then function print(v) printconsole(v, 0, 255, 255)end end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/NewMain.lua"))()
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/NotificationLibrary.lua"))()
local sdfh__jidsfe3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/data.lua"))()
local Notify = NotifyLibrary.Notify
Libraryflags = Library.flags

local ScriptVersion = "2.82"

speaker = game:GetService("Players").LocalPlayer
Mouse = speaker:GetMouse()
workspace = game:GetService("Workspace")
Camera = workspace.CurrentCamera
Lighting = game:GetService("Lighting")
UIS = game:GetService("UserInputService")
RunService = game:GetService("RunService")
CAS = game:GetService("ContextActionService")
ProximityPromptService = game:GetService("ProximityPromptService")

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local array = loadstring(game:HttpGet("https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/arraylist.lua"))()
shared["CometConfigs"] = {
    Enabled = false
}
local Window = Library:CreateWindow({
	Name = 'Vendetta',
	Themeable = {
		Info = '.gg/concat',
		Credit = true,
	},
	DefaultTheme = shared.themename or '{"__Designer.Colors.main":"f93f7c"}'
})
local RunLoops = {RenderStepTable = {}, StepTable = {}, HeartTable = {}}
do
	function RunLoops:BindToRenderStep(name, num, func)
		if RunLoops.RenderStepTable[name] == nil then
			RunLoops.RenderStepTable[name] = game:GetService("RunService").RenderStepped:Connect(func)
		end
	end

	function RunLoops:UnbindFromRenderStep(name)
		if RunLoops.RenderStepTable[name] then
			RunLoops.RenderStepTable[name]:Disconnect()
			RunLoops.RenderStepTable[name] = nil
		end
	end

	function RunLoops:BindToStepped(name, num, func)
		if RunLoops.StepTable[name] == nil then
			RunLoops.StepTable[name] = game:GetService("RunService").Stepped:Connect(func)
		end
	end

	function RunLoops:UnbindFromStepped(name)
		if RunLoops.StepTable[name] then
			RunLoops.StepTable[name]:Disconnect()
			RunLoops.StepTable[name] = nil
		end
	end

	function RunLoops:BindToHeartbeat(name, num, func)
		if RunLoops.HeartTable[name] == nil then
			RunLoops.HeartTable[name] = game:GetService("RunService").Heartbeat:Connect(func)
		end
	end

	function RunLoops:UnbindFromHeartbeat(name)
		if RunLoops.HeartTable[name] then
			RunLoops.HeartTable[name]:Disconnect()
			RunLoops.HeartTable[name] = nil
		end
	end
end

PlayerTab = Window:CreateTab({
	Name = 'Player'
})
VisualsTab = Window:CreateTab({
	Name = 'Visuals'
})
FunTab = Window:CreateTab({
	Name = 'Funny'
})
MiscTab = Window:CreateTab({
	Name = 'Misc'
})
CombatTab = Window:CreateTab({
	Name = 'Combat'
})
EBGTab = Window:CreateTab({
	Name = '[EBG]'
})
CreditsTab = Window:CreateTab({
	Name = 'Others'
})








--[[ EBG TAB ]]
local EBGSection = PepsisWorld:CreateSection({
    Name = "[EBG]",
    Side = "Bottom",
})

-- Bullets section
local BulletsSection = EBGSection:CreateSection({
    Name = "Bullets"
})
BulletsSection:AddToggle({
    Name = "Toggle",
    Flag = "BulletsToggle",
    Keybind = 2,
})
BulletsSection:AddDropdown({
    Name = "Dropdown",
    Flag = "BulletsDropdown",
    Options = {
        "Option 1"
    },
})

-- Blast section
local BlastSection = EBGSection:CreateSection({
    Name = "Blast"
})
BlastSection:AddToggle({
    Name = "Toggle",
    Flag = "BlastToggle",
    Keybind = 3,
})
BlastSection:AddDropdown({
    Name = "Dropdown",
    Flag = "BlastDropdown",
    Options = {
        "Option 1"
    },
})

-- AoE section
local AoESection = EBGSection:CreateSection({
    Name = "AoE"
})
AoESection:AddToggle({
    Name = "Toggle",
    Flag = "AoEToggle",
    Keybind = 4,
})
AoESection:AddDropdown({
    Name = "Dropdown",
    Flag = "AoEDropdown",
    Options = {
        "Option 1"
    },
})

-- Movement section
local MovementSection = EBGSection:CreateSection({
    Name = "Movement"
})
MovementSection:AddToggle({
    Name = "Toggle",
    Flag = "MovementToggle",
    Keybind = 5,
})
MovementSection:AddDropdown({
    Name = "Dropdown",
    Flag = "MovementDropdown",
    Options = {
        "Option 1"
    },
})

-- Armor section
local ArmorSection = EBGSection:CreateSection({
    Name = "Armor"
})
ArmorSection:AddToggle({
    Name = "Toggle",
    Flag = "ArmorToggle",
    Keybind = 6,
})
ArmorSection:AddDropdown({
    Name = "Dropdown",
    Flag = "ArmorDropdown",
    Options = {
        "Option 1"
    },
})

-- Healing section
local HealingSection = EBGSection:CreateSection({
    Name = "Healing"
})
HealingSection:AddToggle({
    Name = "Toggle",
    Flag = "HealingToggle",
    Keybind = 7,
})
HealingSection:AddDropdown({
    Name = "Dropdown",
    Flag = "HealingDropdown",
    Options = {
        "Option 1"
    },
})

-- Ultimate section
local UltimateSection = EBGSection:CreateSection({
    Name = "Ultimate"
})
UltimateSection:AddToggle({
    Name = "Toggle",
    Flag = "UltimateToggle",
    Keybind = 8,
})
UltimateSection:AddDropdown({
    Name = "Dropdown",
    Flag = "UltimateDropdown",
    Options = {
        "Option 1"
    },
})


Player0 = PlayerTab:CreateSection({
	Name = 'Modifications',
	Side = 'left'
})
Player1 = PlayerTab:CreateSection({
	Name = 'Player',
	Side = 'left'
})
Player2 = PlayerTab:CreateSection({
	Name = 'Stuff',
	Side = 'Right'
})
Player3 = PlayerTab:CreateSection({
	Name = 'Body',
	Side = 'Right'
})
Player4 = PlayerTab:CreateSection({
	Name = 'Others',
	Side = 'Left'
})

Visuals1 = VisualsTab:CreateSection({
	Name = 'World',
	Side = 'Left'
})
Visuals2 = VisualsTab:CreateSection({
	Name = 'Client Spoofer',
	Side = 'Right'
})
Visuals3 = VisualsTab:CreateSection({
	Name = 'Esp stuff',
	Side = 'Right'
})
Visuals4 = VisualsTab:CreateSection({
	Name = 'Screen Exploits',
	Side = 'Right'
})
Visuals5 = VisualsTab:CreateSection({
	Name = 'Spectate',
	Side = 'Left'
})

Funny1 = FunTab:CreateSection({
	Name = 'Sex',
	Side = 'Left'
})
Funny2 = FunTab:CreateSection({
	Name = 'Funny Scripts | kinda broken',
	Side = 'Right'
})
Funny3 = FunTab:CreateSection({
	Name = 'FE Scripts',
	Side = 'Right'
})
Funny4 = FunTab:CreateSection({
	Name = 'Fling',
	Side = 'Left'
})
Funny5 = FunTab:CreateSection({
	Name = 'Misc',
	Side = 'Left'
})
Funny6 = FunTab:CreateSection({
	Name = 'Cosmetics',
	Side = 'Left'
})
Funny7 = FunTab:CreateSection({
	Name = 'Chat Bypasser',
	Side = 'Left'
})

Misc1 = MiscTab:CreateSection({
	Name = 'Waypoints',
	Side = 'Left'
})
Misc2 = MiscTab:CreateSection({
	Name = 'Bread Crumbs',
	Side = 'Right'
})
Misc3 = MiscTab:CreateSection({
	Name = 'Bread Crumbs 2',
	Side = 'Right'
})
Misc4 = MiscTab:CreateSection({
	Name = 'Misc',
	Side = 'Right'
})
Misc6 = MiscTab:CreateSection({
	Name = 'Chat Spammer',
	Side = 'Left'
})
Misc7 = MiscTab:CreateSection({
	Name = 'Game',
	Side = 'Right'
})
Misc8 = MiscTab:CreateSection({
	Name = 'Hide',
	Side = 'left'
})
Misc9 = MiscTab:CreateSection({
	Name = 'HitBox',
	Side = 'Right'
})

Aim1 = CombatTab:CreateSection({
	Name = 'Aimbot',
	Side = 'Left'
})
Aim2 = CombatTab:CreateSection({
	Name = 'Silent Aim',
	Side = 'Right'
})
Aim3 = CombatTab:CreateSection({
	Name = 'Trigger Bot',
	Side = 'Right'
})
Aim4 = CombatTab:CreateSection({
	Name = 'Auto Clicker',
	Side = 'Right'
})

Credits1 = CreditsTab:CreateSection({
	Name = 'Developer',
	Side = 'Left'
})
Credits2 = CreditsTab:CreateSection({
	Name = 'Best Scripter',
	Side = 'Left'
})
Credits3 = CreditsTab:CreateSection({
	Name = 'Cool people',
	Side = 'Left'
})
Credits4 = CreditsTab:CreateSection({
	Name = 'Discord',
	Side = 'Right'
})
Credits5 = CreditsTab:CreateSection({
	Name = 'Info',
	Side = 'Right'
})


spoofingNotice = Player0:CreateLabel({
	Text = 'Spoofing Possible: Loading'
})
if hookmetamethod then
	spoofingNotice:SetText('Spoofing Possible: Yes')
else
	spoofingNotice:SetText('Spoofing Possible: No')
end

local ModificationsTable = {
	speed = 32;
	jump = 100;
	gravity = 100;
	hip = 2;
	slope = 89;
	fov = 120;
}
local ModificationsTable2 = {
	speed = false;
	jump = false;
	gravity = false;
	hip = false;
	slope = false;
	fov = false;
}

togglespeed = Player0:AddToggle({
	Name = 'Toggle Speed',
	Value = false,
	Flag = 'togglespeed1',
	Locked = false,
	Keybind = {
		Flag = 'togglespeed2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			ModificationsTable2.speed = true
			oldspd = speaker.Character:WaitForChild('Humanoid').WalkSpeed
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "WalkSpeed" then
						return oldspd
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').WalkSpeed = ModificationsTable.speed
				until ModificationsTable2.speed == false
			else
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').WalkSpeed = ModificationsTable.speed
				until ModificationsTable2.speed == false
			end
		else
			ModificationsTable2.speed = false
			task.wait()
			speaker.Character:WaitForChild('Humanoid').WalkSpeed = oldspd
		end
	end
})

togglejp = Player0:AddToggle({
	Name = 'Toggle Jump power',
	Value = false,
	Flag = 'togglehp1',
	Locked = false,
	Keybind = {
		Flag = 'togglJHPd2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			ModificationsTable2.jump = true
			oldjp = speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "JumpPower" then
						return oldjp
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').JumpPower = ModificationsTable.jump
				until ModificationsTable2.jump == false
			else
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').JumpPower = ModificationsTable.jump
				until ModificationsTable2.jump == false
			end
		else
			ModificationsTable2.jump = false
			task.wait()
			speaker.Character:WaitForChild('Humanoid').JumpPower = oldjp
		end
	end
})
togglegrav = Player0:AddToggle({
	Name = 'Toggle Gravity',
	Value = false,
	Flag = 'togglegrav1',
	Locked = false,
	Keybind = {
		Flag = 'togglgravity2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgr = game:GetService("Workspace").Gravity
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "Gravity" then
						return oldgr
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				game:GetService("Workspace").Gravity = ModificationsTable.gravity	
			else
				game:GetService("Workspace").Gravity = ModificationsTable.gravity	
			end
		else
			task.wait()
			game:GetService("Workspace").Gravity = oldgr
		end
	end
})
togglemaxslopeangle = Player0:AddToggle({
	Name = 'Toggle slope angle',
	Value = false,
	Flag = 'toggmss1',
	Locked = false,
	Keybind = {
		Flag = 'togglgmLLKy2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			ModificationsTable2.slope = true
			oldmsa = speaker.Character:WaitForChild('Humanoid').MaxSlopeAngle
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "MaxSlopeAngle" then
						return oldmsa
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').MaxSlopeAngle = ModificationsTable.slope
				until ModificationsTable2.slope == false
			else
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').MaxSlopeAngle = ModificationsTable.slope
				until ModificationsTable2.slope == false
			end
		else
			ModificationsTable2.slope = false
			task.wait()
			speaker.Character:WaitForChild('Humanoid').MaxSlopeAngle = oldmsa
		end
	end
})
togglehipheight = Player0:AddToggle({
	Name = 'Toggle Hip Height',
	Value = false,
	Flag = 'togglehh1',
	Locked = false,
	Keybind = {
		Flag = 'togglghh2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			ModificationsTable2.hip = true
			oldhh = speaker.Character:WaitForChild('Humanoid').HipHeight
			if hookmetamethod then
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "HipHeight" then
						return oldhh
					end
					return OldIndex(Self, Key)
				end))
				task.wait()
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').HipHeight = ModificationsTable.hip
				until ModificationsTable2.hip == false
			else
				repeat
					task.wait()
					speaker.Character:WaitForChild('Humanoid').HipHeight = ModificationsTable.hip
				until ModificationsTable2.hip == false
			end
		else
			ModificationsTable2.hip = false
			task.wait()
			speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = oldhh
		end
	end
})
togglefov = Player0:AddToggle({
	Name = 'Toggle FOV',
	Value = false,
	Flag = 'togglefov1',
	Locked = false,
	Keybind = {
		Flag = 'togglgfov2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldfov = workspace.CurrentCamera.FieldOfView
			wait()
			workspace.CurrentCamera.FieldOfView = ModificationsTable.fov
		else
			task.wait()
			workspace.CurrentCamera.FieldOfView = oldfov
		end
	end
})

Speed1 = Player0:AddTextbox({
	Name = 'Modify Speed',
	Flag = "speed_walkspeed",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed * 2,
	Multiline = true,
	Callback = function(x)
		ModificationsTable.speed = x
	end
})

jumpPower1 = Player0:AddTextbox({
	Name = 'Modify JumpPower',
	Flag = "jumppower12",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower * 2,
	Multiline = true,
	Callback = function(x)
		ModificationsTable.jump = x
	end
})

garv = Player0:AddTextbox({
	Name = 'Modify Gravity',
	Flag = "garvityworkspace",
	Value = workspace.Gravity,
	Multiline = true,
	Callback = function(x)
		ModificationsTable.gravity = x
	end
})

maxslope = Player0:AddTextbox({
	Name = 'Modify Max lope Angle',
	Flag = "4rft65ytgo",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle,
	Multiline = true,
	Callback = function( x )
		ModificationsTable.slope = x
	end
})

hiphieghyt = Player0:AddTextbox({
	Name = 'Modify Hip height',
	Flag = "65ythglkj",
	Value = speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight,
	Multiline = true,
	Callback = function( x )
		ModificationsTable.hip = x
	end
})

fov1 = Player0:AddTextbox({
	Name = 'Modify FOV',
	Flag = "65y54trfgtj",
	Value = workspace.CurrentCamera.FieldOfView,
	Multiline = true,
	Callback = function( x )
		ModificationsTable.fov = x
	end
})
modorign1 = Player0:CreateLabel({
	Text = 'Original Speed: '.. speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed
})
modorign2 = Player0:CreateLabel({
	Text = 'Original JumpPower: '.. speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower
})
modorign3 = Player0:CreateLabel({
	Text = 'Original Gravity: '.. math.floor(game:GetService("Workspace").Gravity)
})
modorign4 = Player0:CreateLabel({
	Text = 'Original Slope: '.. speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle
})
modorign5 = Player0:CreateLabel({
	Text = 'Original hip: '.. math.floor(speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight)
})
modorign6 = Player0:CreateLabel({
	Text = 'Original Fov: '.. math.floor(game:GetService("Workspace").CurrentCamera.FieldOfView)
})


local noclip = Player1:AddToggle({
	Name = 'NoClip',
	Value = false,
	Flag = 'nocli243242424p',
	Locked = false,
	Keybind = {
		Flag = 'noclip',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			nocliplooping = RunService.Stepped:Connect(function()
				for i,v in pairs(speaker.Character:GetChildren()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end)
		else
			if nocliplooping then nocliplooping:Disconnect() end
		end
	end
})

step = false
stepexploit = Player1:AddToggle({
	Name = 'Step',
	Value = false,
	Flag = 'stepp',
	Locked = false,
	Keybind = {
		Flag = '4tdrgsytsterp',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			step = true

			repeat wait()
				local currentTorso = nil
				function findT()
					if speaker.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
						currentTorso = speaker.Character.UpperTorso
					elseif speaker.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
						currentTorso = speaker.Character.Torso
					end
				end
				findT()
				if currentTorso == nil then
					findT()
				end
				currentTorso.Touched:Connect(function(hit)
					if step == true then
						local cmdlpHRP = speaker.Character.HumanoidRootPart
						if hit:IsA("BasePart") and hit.Position.Y > cmdlpHRP.Position.Y - speaker.Character.Humanoid.HipHeight then
							local findHRP = hit.Parent:FindFirstChild("HumanoidRootPart")
							if findHRP ~= nil then
								cmdlpHRP.CFrame = hit.CFrame * CFrame.new(cmdlpHRP.CFrame.lookVector.X,findHRP.Size.Z/2 + speaker.Character.Humanoid.HipHeight,cmdlpHRP.CFrame.lookVector.Z)
							elseif findHRP == nil then
								cmdlpHRP.CFrame = hit.CFrame * CFrame.new(cmdlpHRP.CFrame.lookVector.X,hit.Size.Y/2 + speaker.Character.Humanoid.HipHeight,cmdlpHRP.CFrame.lookVector.Z)
							end
						end
					end
				end)
			until step == false
		else
			step = false
		end
	end
})

Bhop = false
local bhopissodunny = Player1:AddToggle({
	Name = 'B Hop',
	Value = false,
	Flag = 'nbhop24p',
	Locked = false,
	Keybind = {
		Flag = 'nobhpopdfip',
		Mode = 'Toggle',
	},

	Callback = function( state )
		Bhop = state
		repeat
			wait()
			speaker.Character:WaitForChild("Humanoid").Jump = true
		until Bhop == false
	end
})

swimming = false
local swimbeat = nil
local swim = Player1:AddToggle({
	Name = 'Swim',
	Value = false,
	Flag = 'sdwinfishfudhsSWIM',
	Locked = false,
	Keybind = {
		Flag = 'swinsd3rh7w98f',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgrav = workspace.Gravity
			if not swimming and speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
				workspace.Gravity = 0
				local swimDied = function()
					workspace.Gravity = oldgrav
					swimming = false
				end
				local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
				gravReset = Humanoid.Died:Connect(swimDied)
				local enums = Enum.HumanoidStateType:GetEnumItems()
				table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
				for i, v in pairs(enums) do
					Humanoid:SetStateEnabled(v, false)
				end
				Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
				swimbeat = RunService.Heartbeat:Connect(function()
					pcall(function()
						speaker.Character.HumanoidRootPart.Velocity = ((Humanoid.MoveDirection ~= Vector3.new() or UserInputService:IsKeyDown(Enum.KeyCode.Space)) and speaker.Character.HumanoidRootPart.Velocity or Vector3.new())
					end)
				end)
				swimming = true
			end
		else
			if speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
				workspace.Gravity = oldgrav
				swimming = false
				if gravReset then
					gravReset:Disconnect()
				end
				if swimbeat ~= nil then
					swimbeat:Disconnect()
					swimbeat = nil
				end
				local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
				local enums = Enum.HumanoidStateType:GetEnumItems()
				table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
				for i, v in pairs(enums) do
					Humanoid:SetStateEnabled(v, true)
				end
			end
		end
	end
})

_G.flyjump = false
local flyjump = Player1:AddToggle({
	Name = 'Jet pack',
	Value = false,
	Flag = 'flyjumplol',
	Locked = false,
	Keybind = {
		Flag = 'keybindflyjump',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.flyjump = true
			game:GetService("UserInputService").JumpRequest:connect(function()
    			if true and _G.flyjump == true then
        			speaker.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    			end
			end)
		else
			_G.flyjump = false
		end
	end
})

_G.infjump = false
local infjump = Player1:AddToggle({
	Name = 'Inf Jump',
	Value = false,
	Flag = 'infjumplol',
	Locked = false,
	Keybind = {
		Flag = 'keybindinfjump',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.infjump = true
			function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
			UIS.InputBegan:connect(function(UserInput)
    			if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space and _G.infjump == true then
        			Action(speaker.Character.Humanoid, function(self)
            			if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                			Action(self.Parent.HumanoidRootPart, function(self)
                    			self.Velocity = Vector3.new(0, 50, 0);
                			end)
            			end
        			end)
    			end
			end)
		else
			_G.infjump = false
		end
	end
})



_G.clickTp = false
local clicktp = Player1:AddToggle({
	Name = 'CTRL + Click Tp',
	Value = false,
	Flag = 'click3ctrl',
	Locked = false,
	Keybind = {
		Flag = 'keyb43clicktp',
		Mode = 'Toggle',
	},

	Callback = function( clicktp )
		if ( clicktp ) then
			_G.clickTp = true

			function GetCharacter()
				return speaker.Character
			end

			function Teleport(pos)
				local Char = GetCharacter()
				if Char then
					Char:MoveTo(pos)
				end
			end
			UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and _G.clickTp == true then
					Teleport(Mouse.Hit.p)
				end
			end)
		else
			_G.clickTp = false
		end
	end
})

_G.clicktween = false
local clicktp = Player1:AddToggle({
	Name = 'CTRL + Click Tween',
	Value = false,
	Flag = 'clicktptweenrl',
	Locked = false,
	Keybind = {
		Flag = 'ke43erdflicktp',
		Mode = 'Toggle',
	},

	Callback = function( x )
		if ( x ) then
			oldgravy23 = workspace.Gravity
			_G.clicktween = true

			UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and _G.clicktween == true then
					wait()
					for i,v in pairs(workspace:GetChildren()) do
						if v.Name == "tween_vendetta" then 
							v:Destroy()
						end
					end
					wait()
					local Target = Instance.new("Part")
					Target.Parent = workspace
					Target.Name = "tween_vendetta"
					Target.CFrame = CFrame.new(Mouse.Hit.p.X, Mouse.Hit.p.Y + 1.5, Mouse.Hit.p.Z)
					Target.Transparency = 1
					Target.Anchored = true 
					Target.CanCollide = false
					wait()
					workspace.Gravity = 0
					tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
					_tweenTpzz_ =
						tweenService:Create(
						game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
						tweenInfo,
						{CFrame = workspace:WaitForChild("tween_vendetta").CFrame}
					)
					_tweenTpzz_:Play()
					wait()
					workspace.Gravity = oldgravy23
					for i,v in pairs(workspace:GetChildren()) do
						if v.Name == "tween_vendetta" then 
							v:Destroy()
						end
					end
					workspace.Gravity = oldgravy23
				end
			end)
		else
			_tweenTpzz_:Cancel()
			_G.clicktween = false
		end
	end
})
_G.clicktween2 = false
local clicktp = Player1:AddToggle({
	Name = 'CTRL Click Tween v2',
	Value = false,
	Flag = 'clicktptweenrl2',
	Locked = false,
	Keybind = {
		Flag = 'ke43erdflicktp2',
		Mode = 'Toggle',
	},

	Callback = function( x )
		if ( x ) then
			_G.clicktween2 = true
			oldgravy232 = workspace.Gravity

			--// create the input
			UIS.InputBegan:Connect(function(input)
				--// check if toggle is on
				if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and _G.clicktween2 == true then
					--// destroying the previous parts that might have been created
					task.wait()
					for i,v in pairs(workspace:GetChildren()) do
						if v.Name == "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___1" 
							or v.Name == "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___2" 
							or v.Name == "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___3" then 
							v:Destroy()
						end
					end
					--// Creating the parts
					wait()
					local tweenV2Part1_Target = Instance.new("Part", game:GetService("Workspace"))
					local tweenV2Part2 = Instance.new("Part", game:GetService("Workspace"))
					local tweenV2Part3 = Instance.new("Part", game:GetService("Workspace"))

					tweenV2Part2.Anchored = true 
					tweenV2Part1_Target.Anchored = true 
					tweenV2Part3.Anchored = true 

					--// part 1 properties
					tweenV2Part1_Target.Name = "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___1"
					tweenV2Part1_Target.CFrame = CFrame.new(Mouse.Hit.p.X, Mouse.Hit.p.Y + 1.5, Mouse.Hit.p.Z)
					tweenV2Part1_Target.Transparency = 1
					tweenV2Part1_Target.CanCollide = false

					local ni__sdj__2e = workspace:WaitForChild("TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___1")

					--// part 2 properties
					tweenV2Part2.Name = "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___2"
					tweenV2Part2.CFrame = CFrame.new(speaker.Character.HumanoidRootPart.Position.X, speaker.Character.HumanoidRootPart.Position.Y + 4000, speaker.Character.HumanoidRootPart.Position.Z)
					tweenV2Part2.Transparency = 1
					tweenV2Part2.CanCollide = false

					--// part 3 properties
					tweenV2Part3.Name = "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___3"
					tweenV2Part3.CFrame = CFrame.new(ni__sdj__2e.Position.X, ni__sdj__2e.Position.Y + 4000, ni__sdj__2e.Position.Z)
					tweenV2Part3.Transparency = 1
					tweenV2Part3.CanCollide = false

					--// tweening to the part above the character
					workspace.Gravity = 0
					wait()
					tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
					tween_to_part1 =
						tweenService:Create(
						game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
						tweenInfo,
						{CFrame = workspace:WaitForChild("TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___2").CFrame}
					)
					tween_to_part1:Play()

					--// tweening to the part above the target part
					wait(2)
					tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
					tween_to_part2 =
						tweenService:Create(
						game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
						tweenInfo,
						{CFrame = workspace:WaitForChild("TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___3").CFrame}
					)
					tween_to_part2:Play()

					--// tweening to the target part
					wait(2)
					tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(2, Enum.EasingStyle.Linear)
					tween_to_part3 =
						tweenService:Create(
						game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
						tweenInfo,
						{CFrame = workspace:WaitForChild("TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___1").CFrame}
					)
					tween_to_part3:Play()

					--// Ending stuff
					game:GetService("Workspace").Gravity = oldgravy232
					task.wait()
					for i,v in pairs(workspace:GetChildren()) do
						if v.Name == "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___1" 
							or v.Name == "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___2" 
							or v.Name == "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___3" then 
							v:Destroy()
						end
					end
				end
			end)
		else
			tween_to_part3:Cancel()
			tween_to_part2:Cancel()
			tween_to_part1:Cancel()
			game:GetService("Workspace").Gravity = oldgravy232
			_G.clicktween2 = false
			task.wait()
			for i,v in pairs(workspace:GetChildren()) do
				if v.Name == "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___1" 
					or v.Name == "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___2" 
					or v.Name == "TweS-==s=df/>,.,224984754#%4f43srf8i3ksd___3" then 
					v:Destroy()
				end
			end
		end
	end
})
_G.gjump = false
local gfly = Player1:AddToggle({
	Name = 'Gravity Air Boost',
	Value = false,
	Flag = 'fghighfhgpy',
	Locked = false,
	Keybind = {
		Flag = 'kefuhg33dfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.gjump = true
			task.spawn(function()
                repeat
                    task.wait(0.1)
                    if _G.gjump == false then break end
                    speaker.character.HumanoidRootPart.Velocity = speaker.character.HumanoidRootPart.Velocity + Vector3.new(0,35,0)
                until _G.gjump == false
            end)
		else
			_G.gjump = false
		end
	end
})


_G.gflyiing = false
local gfly = Player1:AddToggle({
	Name = 'Goofy Fly',
	Value = false,
	Flag = 'flybypassgoofy',
	Locked = false,
	Keybind = {
		Flag = 'kefuhgdfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.gflyiing = true
			while _G.gflyiing == true do
				task.wait()
				workspace.Gravity = 2
				speaker.Character:FindFirstChildOfClass'Humanoid':ChangeState("Freefall")
				wait(0.000000000000001)
				speaker.Character:FindFirstChildOfClass'Humanoid':ChangeState("Running")
				wait(0.000000000000001)
				speaker.Character:FindFirstChildOfClass'Humanoid':ChangeState("Climbing")
				wait(0.000000000000001)
				speaker.Character:FindFirstChildOfClass'Humanoid':ChangeState("Swimming")
				wait(0.000000000000001)
				speaker.Character:FindFirstChildOfClass'Humanoid':ChangeState("Landed")
				wait(0.000000000000001)
			end
		else
			workspace.Gravity = 196.19999694824
			_G.gflyiing = false
		end
	end
})


Mode = "old"
_G.funnifly = false
funnifly = Player1:AddToggle({
	Name = 'VClip Fly',
	Value = false,
	Flag = 'sofbfypsglyaoyFUNNI',
	Locked = false,
	Keybind = {
		Flag = 'f54u8sdds',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.funnifly = true
			nocliplooping2 = RunService.Stepped:Connect(function()
				for i,v in pairs(speaker.Character:GetChildren()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end)
			velo = Instance.new("BodyVelocity")
			velo.Name = "Shudf439h(834ru_0-+-R3JI>.?SDFJI3R"
			velo.MaxForce = Vector3.new(0,9e9,0)
			velo.Parent = speaker.Character:FindFirstChild("HumanoidRootPart")

			spawn(function()
				repeat
					speaker.Character.Humanoid:ChangeState(5)
					if Mode == "old" then
						velo.Velocity = Vector3.new(0,0,0)
						task.wait()
						velo.Velocity = Vector3.new(0,0,0)
						task.wait()
					end
				until _G.funnifly == false
			end)
		else
			if nocliplooping2 then nocliplooping2:Disconnect() end
			speaker.Character.Humanoid:ChangeState(8)
			for i,v in pairs(speaker.Character:FindFirstChild("HumanoidRootPart"):GetChildren()) do
				if v:IsA("BodyVelocity") and v.Name == "Shudf439h(834ru_0-+-R3JI>.?SDFJI3R" then
					v:Destroy()
				end
			end
			_G.funnifly = false
		end
	end
})


UIS.InputBegan:Connect(function(input)
    if UIS:IsKeyDown(Enum.KeyCode.Space) and _G.funnifly == true then
		speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)
    end
end)
UIS.InputBegan:Connect(function(input)
    if UIS:IsKeyDown(Enum.KeyCode.LeftControl) and _G.funnifly == true then
		speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, - 2, 0)
    end
end)

Players = game:GetService("Players")
FLYING = false
QEfly = true
iyflyspeed = 1
vehicleflyspeed = 1
function sFLY(vfly)
	repeat wait() until speaker and speaker.Character and getRoot(speaker.Character) and speaker.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until Mouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(speaker.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and speaker.Character:FindFirstChildOfClass('Humanoid') then
					speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if speaker.Character:FindFirstChildOfClass('Humanoid') then
				speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if speaker.Character:FindFirstChildOfClass('Humanoid') then
		speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local iyfly = Player1:AddToggle({
	Name = 'Classic Fly',
	Value = false,
	Flag = '54trfgius',
	Locked = false,
	Keybind = {
		Flag = 'cfe2aot21',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			NOFLY()
			task.wait()
			sFLY()
		else
			NOFLY()
		end
	end
})

local iyflyv2 = Player1:AddToggle({
	Name = 'Vehicle Fly',
	Value = false,
	Flag = '54trfgius2',
	Locked = false,
	Keybind = {
		Flag = 'cfe2aot21vehi',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			NOFLY()
			task.wait()
			sFLY(true)
		else
			NOFLY()
		end
	end
})
CFspeedBypassFly = 10
local iyflyv3 = Player1:AddToggle({
	Name = 'Bypass Fly',
	Value = false,
	Flag = '54trfgius22',
	Locked = false,
	Keybind = {
		Flag = 'cfe23vehi',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local Head = speaker.Character:WaitForChild("Head")
			Head.Anchored = true
			if CFloop then CFloop:Disconnect() end
			CFloop = game.RunService.Heartbeat:Connect(function(deltaTime)
				local moveDirection = speaker.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (CFspeedBypassFly * deltaTime)
				local headCFrame = Head.CFrame
				local cameraCFrame = workspace.CurrentCamera.CFrame
				local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
				cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
				local cameraPosition = cameraCFrame.Position
				local headPosition = headCFrame.Position
		
				local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
				Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
			end)
		else
			if CFloop then
				CFloop:Disconnect()
				local Head = speaker.Character:WaitForChild("Head")
				Head.Anchored = false
			end
		end
	end
})

fcRunning = false
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value

Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*math.pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = math.exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()

local velSpring = Spring.new(5, Vector3.new())
local panSpring = Spring.new(5, Vector2.new())

Input = {} do

	keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
	}

	mouse = {
		Delta = Vector2.new(),
	}

	NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	PAN_MOUSE_SPEED = Vector2.new(1, 1)*(math.pi/64)
	NAV_ADJ_SPEED = 0.75
	NAV_SHIFT_MUL = 0.25

	navSpeed = 1

	function Input.Vel(dt)
		navSpeed = math.clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A,
			keyboard.E - keyboard.Q,
			keyboard.S - keyboard.W
		)*NAV_KEYBOARD_SPEED

		local shift = UIS:IsKeyDown(Enum.KeyCode.LeftShift)

		return (kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kMouse
	end

	do
		function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			CAS:BindActionAtPriority("FreecamKeyboard",Keypress,false,INPUT_PRIORITY,
				Enum.KeyCode.W,
				Enum.KeyCode.A,
				Enum.KeyCode.S,
				Enum.KeyCode.D,
				Enum.KeyCode.E,
				Enum.KeyCode.Q,
				Enum.KeyCode.Up,
				Enum.KeyCode.Down
			)
			CAS:BindActionAtPriority("FreecamMousePan",MousePan,false,INPUT_PRIORITY,Enum.UserInputType.MouseMovement)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(keyboard)
			Zero(mouse)
			CAS:UnbindAction("FreecamKeyboard")
			CAS:UnbindAction("FreecamMousePan")
		end
	end
end

function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = Camera.ViewportSize
	local projy = 2*math.tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local _, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end

	return fz:Dot(minVect)*minDist
end

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))

	local zoomFactor = math.sqrt(math.tan(math.rad(70/2))/math.tan(math.rad(cameraFov/2)))

	cameraRot = cameraRot + pan*Vector2.new(0.75, 1)*8*(dt/zoomFactor)
	cameraRot = Vector2.new(math.clamp(cameraRot.x, -math.rad(90), math.rad(90)), cameraRot.y%(2*math.pi))

	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*Vector3.new(1, 1, 1)*64*dt)
	cameraPos = cameraCFrame.p

	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
	Camera.FieldOfView = cameraFov
end

local PlayerState = {} do
	mouseBehavior = ""
	mouseIconEnabled = ""
	cameraType = ""
	cameraFocus = ""
	cameraCFrame = ""
	cameraFieldOfView = ""

	function PlayerState.Push()
		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UIS.MouseIconEnabled
		UIS.MouseIconEnabled = true

		mouseBehavior = UIS.MouseBehavior
		UIS.MouseBehavior = Enum.MouseBehavior.Default
	end

	function PlayerState.Pop()
		Camera.FieldOfView = 70

		Camera.CameraType = cameraType
		cameraType = nil

		Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		Camera.Focus = cameraFocus
		cameraFocus = nil

		UIS.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UIS.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

function StartFreecam(pos)
	if fcRunning then
		StopFreecam()
	end
	local cameraCFrame = Camera.CFrame
	if pos then
		cameraCFrame = pos
	end
	cameraRot = Vector2.new()
	cameraPos = cameraCFrame.p
	cameraFov = Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
	fcRunning = true
end

function StopFreecam()
	if not fcRunning then return end
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
	workspace.Camera.FieldOfView = 70
	fcRunning = false
end

freecam3 = Player1:AddToggle({
	Name = 'Free cam',
	Value = false,
	Flag = 'freecam32',
	Locked = false,
	Keybind = {
		Flag = 'freecam322',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			StartFreecam()
		else
			StopFreecam()
		end
	end
})
tphighjump = false
tphg9ghsu = Player1:AddToggle({
	Name = 'TP High jump',
	Value = false,
	Flag = 'tphg9ghsu3',
	Locked = false,
	Keybind = {
		Flag = 'tphg9ghsu3d',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgrsva = workspace.Gravity
			tphighjump = true
			workspace.Gravity = 0
			speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, -2, 0)
			repeat
				if tphighjump == false then return end
				Workspace.Gravity = 0
				speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)
				task.wait(0.05)
				speaker.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
			until tphighjump == false
		else
			workspace.Gravity = oldgrsva
			tphighjump = false
		end
	end
})
function CreateFloa2()
	local floaty = Instance.new("Part")
	floaty.Name = "FLOAT_BICH_pvenPORN2"
	floaty.Anchored = true
	floaty.Size = Vector3.new(1000, 0.1, 1000)
	floaty.Parent = Workspace
	vendettalmao =  speaker.Character.HumanoidRootPart
	floaty.CFrame = CFrame.new(vendettalmao.Position.X, vendettalmao.Position.Y - 3.5, vendettalmao.Position.Z)
	floaty.Transparency = 1
end

function Nofloa2()
	for i,v in pairs(workspace:GetChildren()) do
		if v.Name == "FLOAT_BICH_pvenPORN2" then
			v:Destroy()
		end
	end
end


_G.PlatFormFloat = false
local Float = Player1:AddToggle({
	Name = 'Air Walk',
	Value = false,
	Flag = 'nifghgd1',
	Locked = false,
	Keybind = {
		Flag = 'fcxgtrfvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.PlatFormFloat = true
			while _G.PlatFormFloat == true do
				wait()
				CreateFloa2()
				wait(20)
				Nofloa2()
			end
		else
			_G.PlatFormFloat = false
			for i,v in pairs(workspace:GetChildren()) do
				if v.Name == "FLOAT_BICH_pvenPORN2" then
					v:Destroy()
				end
			end
		end
	end
})
local jesusPart = Instance.new("Part")
jesusPart.Parent = Lighting
jesusPart.Size = Vector3.new(7.5, 0.1, 7.5)
jesusPart.Position = Vector3.new(0, 9999, 0)
jesusPart.CanCollide = true
jesusPart.Anchored = true
jesusPart.Transparency = 1

jesus = Player1:AddToggle({
	Name = 'Air Walk v2',
	Value = false,
	Flag = 'kesus',
	Locked = false,
	Keybind = {
		Flag = 'sussje',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			jesusPart.Parent = game:GetService("Workspace")
			jesuscon = game:GetService("RunService").Stepped:Connect(function()
				local posJ_OUT = speaker.character.HumanoidRootPart.Position
                jesusPart.CFrame = CFrame.new(posJ_OUT.X, posJ_OUT.Y - 3, posJ_OUT.Z)
			end)
		else
			jesusPart.Parent = Lighting
			jesusPart.Position = Vector3.new(0, 12.75, 0)
			if jesuscon then
				jesuscon:Disconnect()
			end
		end
	end
})
_G.fflyiing = false
local gfly = Player1:AddToggle({
	Name = 'Clone Fly',
	Value = false,
	Flag = 'flsadybypasszr',
	Locked = false,
	Keybind = {
		Flag = 'rg354',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldgg = workspace.Gravity
			_G.fflyiing = true
			speaker.Character.Archivable = true
			local clonethingy = speaker.Character:Clone()

			clonethingy.Name = "clonethingy"
			clonethingy:FindFirstChild("HumanoidRootPart").Transparency = 1
			clonethingy.Parent = workspace
			workspace.Camera.CameraSubject = clonethingy.Humanoid
			partthingy = Instance.new("Part",workspace)
			partthingy.Size = Vector3.new(2048,500,2048)
			partthingy.CFrame = clonethingy.HumanoidRootPart.CFrame * CFrame.new(0,-4,0)
			partthingy.Anchored = true
			partthingy.Transparency = 1
			partthingy.Name = "partthingy"

			RunLoops:BindToHeartbeat("BoostSilentFly", 1, function(delta)
				clonethingy.HumanoidRootPart.CFrame = CFrame.new(speaker.character.HumanoidRootPart.CFrame.X,clonethingy.HumanoidRootPart.CFrame.Y,speaker.character.HumanoidRootPart.CFrame.Z)
				clonethingy.HumanoidRootPart.Rotation = speaker.character.HumanoidRootPart.Rotation
			end)

			task.spawn(function()
				repeat
					task.wait(0.1)
					if _G.fflyiing == false then break end
					speaker.character.HumanoidRootPart.Velocity = speaker.character.HumanoidRootPart.Velocity + Vector3.new(0,35,0)
				until _G.fflyiing == false
			end)

			repeat
				task.wait(0.001)
				if G.fflyiing == false then break end
				clonethingy.HumanoidRootPart.CFrame = CFrame.new(speaker.character.HumanoidRootPart.CFrame.X,clonethingy.HumanoidRootPart.CFrame.Y,speajer.character.HumanoidRootPart.CFrame.Z)
			until testing == true
		else
			_G.fflyiing = false
			if workspace:FindFirstChild("clonethingy") or workspace:FindFirstChild("partthingy") then
				workspace:FindFirstChild("clonethingy"):Destroy()
				workspace:FindFirstChild("partthingy"):Destroy()
				RunLoops:UnbindFromHeartbeat("BoostSilentFly")
				testing = true
				workspace.Camera.CameraSubject = speaker.Character.Humanoid
			end
			workspace.Gravity = 99999999999345098345
			wait(1.5)
			workspace.Gravity = oldgg
		end
	end
})
--10714340543
_G.CFrameSpeeding = false
CFrameSpeed = 5
local hb = game:GetService("RunService").Heartbeat
local cframefloat2 = Player1:AddToggle({
	Name = 'CFrame Speed',
	Value = false,
	Flag = '54trfgiukjfg',
	Locked = false,
	Keybind = {
		Flag = 'cferawtlaot21',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.CFrameSpeeding = true
			local hum = speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid")
			while _G.CFrameSpeeding == true and speaker.Character and hum and hum.Parent do
				local delta = hb:Wait()
				if hum.MoveDirection.Magnitude > 0 then
					speaker.Character:TranslateBy(hum.MoveDirection * CFrameSpeed * delta * 10)
				end
			end
		else
			_G.CFrameSpeeding = false
		end
	end
})

local cfrmamesoeed = Player1:AddTextbox({
	Name = 'CFrame speed',
	Flag = "speed_cframe",
	Value = CFrameSpeed,
	Callback = function( x ) 
		CFrameSpeed = x
	end
})

toollabel2 = Player2:CreateLabel({
	Text = 'B-Tools'
})

local btools = Player2:AddButton({
	Name = "Spawn BTools",
	Callback = function()
		loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
	end
})
local btoolsno = Player2:AddButton({
	Name = "Destroy BTools",
	Callback = function()
		for _,e in pairs(speaker.Backpack:GetDescendants()) do
			if e:IsA("Tool") and e.Name == "F3X" then
				e:Destroy()
			end
		end
	end
})

toollabel21 = Player2:CreateLabel({
	Text = 'Tools'
})

local destroytools = Player2:AddButton({
	Name = "Destroy All Tools",
	Callback = function()
		for _,e in pairs(speaker.Backpack:GetDescendants()) do
			if e:IsA("Tool") or e:IsA("HopperBin") then
				e:Destroy()
			end
		end
	end
})
local droptools = Player2:AddButton({
	Name = "Drop Tools",
	Callback = function()
		for i,v in pairs(speaker.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = speaker.Character
			end
		end
		wait()
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = workspace
			end
		end
	end
})
local tooldroptrue = Player2:AddButton({
	Name = "Make Tools Droppable",
	Callback = function()
		if speaker.Character then
			for _,obj in pairs(speaker.Character:GetChildren()) do
				if obj:IsA("Tool") then
					obj.CanBeDropped = true
				end
			end
		end
		if speaker:FindFirstChildOfClass("Backpack") then
			for _,obj in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
				if obj:IsA("Tool") then
					obj.CanBeDropped = true
				end
			end
		end
	end
})
local equiptools = Player2:AddButton({
	Name = "Equip All Tools",
	Callback = function()
		for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if v:IsA("Tool") or v:IsA("HopperBin") then
				v.Parent = speaker.Character
			end
		end
	end
})
local unequiptools = Player2:AddButton({
	Name = "Un-Equip Tools",
	Callback = function()
		speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
	end
})

local hatslable = Player2:CreateLabel({
	Text = 'Hats'
})

local drophats = Player2:AddButton({
	Name = "Drop Hats",
	Callback = function()
		if speaker.Character then
			for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
				v.Parent = workspace
			end
		end	
	end
})
local deletehats = Player2:AddButton({
	Name = "Destroy Hats",
	Callback = function()
		for i,v in next, speaker.Character:GetDescendants() do
			if v:IsA("Accessory") then
				for i,p in next, v:GetDescendants() do
					if p:IsA("Weld") then
						p:Destroy()
					end
				end
			end
		end
	end
})


local animlable = Player3:CreateLabel({
	Text = 'Animations'
})

_G.FreezeAnims = false
local Freezeanims = Player3:AddToggle({
	Name = 'Stupid Animations',
	Value = false,
	Flag = 'Freezeaniumsd',
	Locked = false,
	Keybind = {
		Flag = 'c4354rfdi1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.FreezeAnims = true
			while _G.FreezeAnims == true do
				wait()
				local Humanoidzzz_stupid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
				for _, v in pairs(Humanoidzzz_stupid:GetPlayingAnimationTracks()) do
					v:AdjustSpeed(0)
				end
			end
		else
			_G.FreezeAnims = false
			local Humanoidzzz_stupid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
			for _, v in pairs(Humanoidzzz_stupid:GetPlayingAnimationTracks()) do
				v:AdjustSpeed(1)
			end
		end
	end
})
local Disableanims = Player3:AddToggle({
	Name = 'Disable Animations',
	Value = false,
	Flag = 'DisableAnimations',
	Locked = false,
	Keybind = {
		Flag = 'c43rerfdi1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			CAS:BindAction("freezeMovement", function()
				return Enum.ContextActionResult.Sink
				end,
				false,
				unpack(Enum.PlayerActions:GetEnumItems())
			)
			task.wait(0.5)
			CAS:UnbindAction("freezeMovement")
			speaker.Character.HumanoidRootPart.Anchored = true
			wait()
			speaker.Character.HumanoidRootPart.Anchored = false
			speaker.Character.Animate.Disabled = true
		else
			speaker.Character.Animate.Disabled = false
		end
	end
})

Customanim = Player3:AddDropdown({
	Name = 'Custom Animation',
	Flag = "customani2",
	List = {
		"Default",
		"toy",
		"pirate",
		"knight",
		"astronaut",
		"vampire",
		"robot",
		"levitation",
		"bubbly",
		"werewolf",
		"stylish",
		"mage",
		"cartoony",
		"zombie",
		"superhero",
		"ninja",
		"elder",
		"oldschool",
		"popstar",
		"patrol",
		"princess",
		"cowboy",
		"toilet",
		"sneaky"
	},
	Callback = function( animpack )
		local Char = speaker.Character
		if animpack == "sneaky" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1132500520"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1132506407"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
		elseif animpack == "Default" then
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=387947158"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=387947464"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=387947975"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616092998"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616094091"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=382460631"
		elseif animpack == "toy" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=782844582"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=782845186"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
		elseif animpack == "pirate" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=750784579"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=750785176"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
		elseif animpack == "knight" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=657560551"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=657557095"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
		elseif animpack == "astronaut" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=891639666"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=891663592"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
		elseif animpack == "vampire" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083464683"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083467779"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
		elseif animpack == "robot" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616092998"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616094091"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
		elseif animpack == "levitation" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
		elseif animpack == "bubbly" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=909997997"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
		elseif animpack == "werewolf" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1083222527"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1083225406"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
		elseif animpack == "stylish" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616143378"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616144772"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
		elseif animpack == "mage" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=707876443"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=707894699"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
		elseif animpack == "cartoony" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=742639220"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=742639812"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
		elseif animpack == "zombie" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616165109"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616166655"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
		elseif animpack == "superhero" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616119360"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616120861"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
		elseif animpack == "ninja" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=656119721"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=656121397"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
		elseif animpack == "elder" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=845401742"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=845403127"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
		elseif animpack == "oldschool" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=5319816685"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=5319839762"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=5319828216"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=5319831086"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=5319841935"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=5319844329"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=5319850266"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=5319852613"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=5319847204"
		elseif animpack == "confident" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1070009914"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1070012133"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
		elseif animpack == "popstar" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1212852603"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1212998578"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
		elseif animpack == "patrol" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1151204998"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1151221899"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
		elseif animpack == "princess" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=941018893"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=941025398"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
		elseif animpack == "cowboy" then
			Char.Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
			Char.Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
			Char.Animate.idle.Animation1.Weight.Value = "9"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
			Char.Animate.idle.Animation2.Weight.Value = "1"
			Char.Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
			Char.Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=1014406523"
			Char.Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=1014411816"
			Char.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
		elseif animpack == "toilet" then
			Char.Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=4417977954"
			Char.Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=4417977954"
			Char.Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=4417979645"
		end
	end
})

local animlable = Player3:CreateLabel({
	Text = 'Body'
})

local sit = Player3:AddButton({
	Name = "Sit",
	Callback = function()
		speaker.Character:FindFirstChildOfClass("Humanoid").Sit = true
	end
})
local lay = Player3:AddButton({
	Name = "Lay/Rotate Body",
	Callback = function()
		local Human = speaker.Character and speaker.Character:FindFirstChildOfClass('Humanoid')
		if not Human then
			return
		end
		Human.Sit = true
		task.wait(.1)
		Human.RootPart.CFrame = Human.RootPart.CFrame * CFrame.Angles(math.pi * .5, 0, 0)
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
	end
})
local nolimbs = Player3:AddButton({
	Name = "No limbs",
	Callback = function()
		if r15(speaker) then
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "RightUpperLeg" or
					v.Name == "LeftUpperLeg" or
					v.Name == "RightUpperArm" or
					v.Name == "LeftUpperArm" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "Right Leg" or
					v.Name == "Left Leg" or
					v.Name == "Right Arm" or
					v.Name == "Left Arm" then
					v:Destroy()
				end
			end
		end
	end
})
local nohead = Player3:AddButton({
	Name = "No Head",
	Callback = function()
		if speaker.Character:FindFirstChild "Head" then
			local char = speaker.Character
			char.Archivable = true
			local new = char:Clone()
			new.Parent = workspace
			speaker.Character = new
			wait(2)
			local oldhum = char:FindFirstChildWhichIsA "Humanoid"
			local newhum = oldhum:Clone()
			newhum.Parent = char
			newhum.RequiresNeck = false
			oldhum.Parent = nil
			wait(2)
			speaker.Character = char
			new:Destroy()
			wait(1)
			newhum:GetPropertyChangedSignal("Health"):Connect(
			function()
				if newhum.Health <= 0 then
					oldhum.Parent = speaker.Character
					wait(1)
					oldhum:Destroy()
				end
			end)
			workspace.CurrentCamera.CameraSubject = char
			if char:FindFirstChild "Animate" then
				char.Animate.Disabled = true
				wait(.1)
				char.Animate.Disabled = false
			end
			speaker.Character:FindFirstChild "Head":Destroy()
		end
		if simulationradius then
			RunService.Heartbeat:Connect(function()
				setsimulationradius(1/0,1/0)
			end)
		end
	end
})
local noarms = Player3:AddButton({
	Name = "No Arms",
	Callback = function()
		if r15(speaker) then
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "RightUpperArm" or
					v.Name == "LeftUpperArm" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "Right Arm" or
					v.Name == "Left Arm" then
					v:Destroy()
				end
			end
		end
	end
})
local nolegs = Player3:AddButton({
	Name = "No Legs",
	Callback = function()
		if r15(speaker) then
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "RightUpperLeg" or
					v.Name == "LeftUpperLeg" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v:IsA("BasePart") and
					v.Name == "Right Leg" or
					v.Name == "Left Leg" then
					v:Destroy()
				end
			end
		end
	end
})
local nofacelkao = Player3:AddButton({
	Name = "No Face",
	Callback = function()
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v:IsA("Decal") and v.Name == 'face' then
				v:Destroy()
			end
		end
	end
})
local split = Player3:AddButton({
	Name = "Split Body",
	Callback = function()
		if r15(speaker) then
			speaker.Character.UpperTorso.Waist:Destroy()
		else
			Notify({
				Title = "Invalid Rig type",
				Description = "You Need to be in R15",
				Duration = 2
			})
		end
	end
})
local nudesnaked = Player3:AddButton({
	Name = "Become Naked",
	Callback = function()
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v:IsA("Clothing") or v:IsA("ShirtGraphic") then
				v:Destroy()
			end
		end
	end
})
tpplayer = Player4:AddTextbox({
	Name = 'Teleport to Player',
	Flag = "tptoplayers",
	Value = speaker.Name,
	Callback = function( plrTar )
		local plr1 = speaker.Character
		local plr2 = workspace:FindFirstChild(plrTar)
		if plr2 then
			if plr1 then
				if plr2 ~= plr1 then
					plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame + Vector3.new(3,1,0)
				end
			end
		end
	end
})
--[[
local Players_DropTP = game:GetService("Players"):GetChildren()
local Player_Tp_Table = {}

for i,v in pairs(Players_DropTP) do
	table.insert(Player_Tp_Table, v)
end

tpplayer2 = Player4:AddDropdown({
	Name = 'Teleport to Player 2',
	Flag = "tpotoskdfgijdfg",
	Multi = false,
	List = Player_Tp_Table, 
	Callback = function( x )
		local hrp_teleporr = speaker.Character.HumanoidRootPart
		hrp_teleporr.CFrame = x.Character.HumanoidRootPart.CFrame
	end
})

refreshplayerTP = Player4:AddButton({
    Name = "Refresh Players",
    Callback = function()
        Player_Tp_Table = {}
        wait()
        for i,v in pairs(game.Players:GetChildren()) do
            table.insert(Player_Tp_Table, v)
        end
        tpplayer2:Set(Player_Tp_Table)      
    end
})
]]
vtpplayer = Player4:AddTextbox({
	Name = 'Vehicle to Player',
	Flag = "tptoplayersv",
	Value = speaker.Name,
	Callback = function( plrTar )
		local plr1 = speaker.Character
		local plr2 = workspace:FindFirstChild(plrTar)
		if plr2 then
			if plr1 then
				if plr2 ~= plr1 then
					local seat = speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart
					local vehicleModel = seat:FindFirstAncestorWhichIsA("Model")
					
					vehicleModel:MoveTo(plr2.HumanoidRootPart.Position)
				end
			end
		end
	end
})
tpplayer = Player4:AddButton({
	Name = "Go to Random Player",
	Callback = function()
		local randomPlayer = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]

		speaker.Character.HumanoidRootPart.CFrame = CFrame.new(
			Vector3.new(
				randomPlayer.Character.Head.Position.X,
				randomPlayer.Character.Head.Position.Y,
				randomPlayer.Character.Head.Position.Z
			)
		)
	end
})
local breakvelocity2 = Player4:AddButton({
	Name = "break Velocity",
	Callback = function()
		local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
		delay(1, function()
			BeenASecond = true
		end)
		while not BeenASecond do
			for _, v in ipairs(speaker.Character:GetDescendants()) do
				if v.IsA(v, "BasePart") then
					v.Velocity, v.RotVelocity = V3, V3
				end
			end
			wait()
		end
	end
})
function gmode()
	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
end
local godmode = Player4:AddButton({
	Name = "GodMode",
	Callback = function()
		gmode()
	end
})
_G.spamgmode = false
local spamgmode = Player4:AddToggle({
	Name = 'Spam Godmode',
	Value = false,
	Flag = 'spamgmodesdf',
	Locked = false,
	Keybind = {
		Flag = 'ni43erdft1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.spamgmode = true
			while _G.spamgmode == true do
				wait()
				gmode()
			end
		else
			_G.spamgmode = false
		end
	end
})


local function skipFrame() 
    return RunService.Heartbeat:Wait()
end

TimerSpeed = 50
_G.Timer = false
timer = Player4:AddToggle({
	Name = 'Timer',
	Value = false,
	Flag = 'nderfgd1',
	Locked = false,
	Keybind = {
		Flag = 'nivc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.Timer = true
			oldg = workspace.Gravity
			oldws = speaker.Character.Humanoid.WalkSpeed
			if hookmetamethod then

				--// walk speed
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "WalkSpeed" then
						return oldws
					end
					return OldIndex(Self, Key)
				end))

				--// gravity
				local OldIndex = nil
				local protect = newcclosure or protect_function
				OldIndex = hookmetamethod(game, "__index", protect(function(Self, Key)
					if Key == "Gravity" then
						return oldg
					end
					return OldIndex(Self, Key)
				end))

				-- // main
				workspace.Gravity = workspace.Gravity * (TimerSpeed / 10)
				speaker.Character.Humanoid.WalkSpeed = speaker.Character.Humanoid.WalkSpeed * (TimerSpeed / 10)

				spawn(function()
					repeat skipFrame()
						for i,v in next, speaker.Character.Humanoid:GetPlayingAnimationTracks() do 
							v:AdjustSpeed((TimerSpeed / 10))
						end
					until _G.Timer == false
				end)
			else
				workspace.Gravity = workspace.Gravity * (TimerSpeed / 10)
				speaker.Character.Humanoid.WalkSpeed = speaker.Character.Humanoid.WalkSpeed * (TimerSpeed / 10)

				spawn(function()
					repeat skipFrame()
						for i,v in next, speaker.Character.Humanoid:GetPlayingAnimationTracks() do 
							v:AdjustSpeed((TimerSpeed / 10))
						end
					until _G.Timer == false
				end)
			end
		else
			_G.Timer = false
			workspace.Gravity = oldg
			speaker.Character.Humanoid.WalkSpeed = oldws
		end
	end
})

timervalue = Player4:AddTextbox({
	Name = 'Timer Value',
	Flag = "pdfsadrgtrdfro_flag",
	Value = TimerSpeed,
	Callback = function( x )
		TimerSpeed = x
	end
})

function respawn(plr)
	if invisRunning then TurnVisible() end
	local char = plr.Character
	if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end
local refreshCmd = false
function refresh(plr)
	refreshCmd = true
	local Human = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid", true)
	local pos = Human and Human.RootPart and Human.RootPart.CFrame
	local pos1 = workspace.CurrentCamera.CFrame
	respawn(plr)
	task.spawn(function()
		plr.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
		refreshCmd = false
	end)
end

function invis1()
    invisRunning = false
    if invisRunning then return end
    invisRunning = true
    local Player = speaker
    repeat wait(.1) until Player.Character
	local Character = Player.Character
	Character.Archivable = true
	local IsInvis = false
	local IsRunning = true
	local InvisibleCharacter = Character:Clone()
	InvisibleCharacter.Parent = Lighting
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
	local CF

    local invisFix = game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			local IsInteger
			if tostring(Void):find'-' then
				IsInteger = true
			else
				IsInteger = false
			end
			local Pos = Player.Character.HumanoidRootPart.Position
			local Pos_String = tostring(Pos)
			local Pos_Seperate = Pos_String:split(', ')
			local X = tonumber(Pos_Seperate[1])
			local Y = tonumber(Pos_Seperate[2])
			local Z = tonumber(Pos_Seperate[3])
			if IsInteger == true then
				if Y <= Void then
					Respawn()
				end
			elseif IsInteger == false then
				if Y >= Void then
					Respawn()
				end
			end
		end)
	end)

    for i,v in pairs(InvisibleCharacter:GetDescendants())do
		if v:IsA("BasePart") then
			if v.Name == "HumanoidRootPart" then
				v.Transparency = 1
			else
				v.Transparency = 0.5
			end
		end
	end

    function Respawn()
		IsRunning = false
		if IsInvis == true then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				IsInvis = false
				InvisibleCharacter.Parent = nil
				invisRunning = false
			end)
		elseif IsInvis == false then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				TurnVisible()
			end)
		end
	end

	local invisDied
	invisDied = InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
		Respawn()
		invisDied:Disconnect()
	end)

    if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = Player.Character.HumanoidRootPart.CFrame
	Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	wait(.2)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	InvisibleCharacter = InvisibleCharacter
	Character.Parent = Lighting
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	Player.Character = InvisibleCharacter
	
    workspace.CurrentCamera:remove()
	wait(.1)
    local speaker = speaker
	repeat wait() until speaker.Character ~= nil
	workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	speaker.CameraMinZoomDistance = 0.5
	speaker.CameraMaxZoomDistance = 400
	speaker.CameraMode = "Classic"
	speaker.Character.Head.Anchored = false
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false

	function TurnVisible()
		if IsInvis == false then return end
		invisFix:Disconnect()
		invisDied:Disconnect()
		CF = workspace.CurrentCamera.CFrame
		Character = Character
		local CF_1 = Player.Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart.CFrame = CF_1
		InvisibleCharacter:Destroy()
		Player.Character = Character
		Character.Parent = workspace
		IsInvis = false
		Player.Character.Animate.Disabled = true
		Player.Character.Animate.Disabled = false
		invisDied = Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
			invisDied:Disconnect()
		end)
		invisRunning = false
	end
	Notify({
		Title = "Invisible",
		Description = "You are now invis to other players",
		Duration = 2
	})
end

local invis = Player4:AddToggle({
	Name = 'Invisible',
	Value = false,
	Flag = 'Invisible3rew',
	Locked = false,
	Keybind = {
		Flag = 'niInvisiblefvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local invisible_timer = tick()
			invis1()
			Notify({
				Title = "Invisible",
				Description = "Turned Invisible in "..tick() - invisible_timer.. " seconds",
				Duration = 4
			})
			for i,m in pairs(speaker.Character:GetChildren()) do
				if m:IsA("Part") or m:IsA("MeshPart") then
					if m.Name ~= "HumanoidRootPart" and m.Name ~= "Handle" or m:IsA("Part")then
						m.Material = "ForceField" m.Color = Color3.fromRGB(0, 26, 255)
					end
				end
			end
		else
			refresh(speaker)
		end
	end
})

local triplol = Player4:AddButton({
	Name = "Trip",
	Callback = function()
		if speaker and speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") and getRoot(speaker.Character) then
			local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
			local root = getRoot(speaker.Character)
			hum:ChangeState(0)
			root.Velocity = root.CFrame.LookVector * 30
		end
	end
})


local Respawn = Player4:AddButton({
	Name = "Respawn",
	Callback = function()
		respawn(speaker)
	end
})
local Refresh = Player4:AddButton({
	Name = "Refresh",
	Callback = function()
		refresh(speaker)
	end
})
_G.KeepPos = false
local antiafk2 = Player4:AddToggle({
	Name = 'Keep Position',
	Value = false,
	Flag = 'keeppos21',
	Locked = false,
	Keybind = {
		Flag = 'keepsopos212',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.KeepPos = true
			oldKeep = speaker.Character.HumanoidRootPart.CFrame
			while _G.KeepPos == true do
				task.wait()
				speaker.Character.HumanoidRootPart.CFrame = oldKeep
			end
		else
			_G.KeepPos = false
		end
	end
})
local nilchar = Player4:AddToggle({
	Name = 'Nil Character',
	Value = false,
	Flag = 'nilchar1',
	Locked = false,
	Keybind = {
		Flag = 'nilll1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if speaker.Character ~= nil then
				speaker.Character.Parent = nil
			end
		else
			if speaker.Character ~= nil then
				speaker.Character.Parent = workspace
			end
		end
	end
})
_G.spamNilChar = false
local nilchar2 = Player4:AddToggle({
	Name = 'Spam Nil Character',
	Value = false,
	Flag = 'nilchar12',
	Locked = false,
	Keybind = {
		Flag = 'nill22222l1',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.spamNilChar = true
			while _G.spamNilChar ==  true do
				wait()
				if speaker.Character ~= nil then
					speaker.Character.Parent = nil
				end
				wait()
				if speaker.Character ~= nil then
					speaker.Character.Parent = workspace
				end
			end
		else
			_G.spamNilChar = false
		end
	end
})

local freeze = Player4:AddToggle({
	Name = 'Freeze',
	Value = false,
	Flag = 'freezeisfunni',
	Locked = false,
	Keybind = {
		Flag = '4r8uijkfdfdgdfgdfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Anchored = true
				end
			end
		else
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Anchored = false
				end
			end
		end
	end
})
_G.spamfreeze = false
local randomfreeze = Player4:AddToggle({
	Name = 'Freeze Lag',
	Value = false,
	Flag = 'freezeisfunni2',
	Locked = false,
	Keybind = {
		Flag = '4r8uifgdfg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.spamfreeze = true
			while _G.spamfreeze == true do
				wait()
				for i,v in pairs(speaker.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.Anchored = true
					end
				end
				wait(math.random(0.002,0.5))
				for i,v in pairs(speaker.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.Anchored = false
					end
				end
			end
		else
			_G.spamfreeze = false
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Anchored = false
				end
			end
		end
	end
})
local stun = Player4:AddToggle({
	Name = 'Stun',
	Value = false,
	Flag = 'stunfunni',
	Locked = false,
	Keybind = {
		Flag = 'syuuf_stun',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
		end
	end
})

_G.spamstun = false
local stun2 = Player4:AddToggle({
	Name = 'Become Retarded',
	Value = false,
	Flag = 'stunfunni1',
	Locked = false,
	Keybind = {
		Flag = 'syuufs_stun',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.spamstun = true
			while _G.spamstun == true do
				wait()
				speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				wait(0.6)
				speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		else
			_G.spamstun = false
		end
	end
})

local lightyesyes = Player4:AddToggle({
	Name = 'Light',
	Value = false,
	Flag = 'light23987hdf',
	Locked = false,
	Keybind = {
		Flag = 's43yhg8999un',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local light = Instance.new("PointLight")
			light.Parent = getRoot(speaker.Character)
			light.Range = 30
			light.Brightness = 5
			light.Name = "+=|dsf3a/.9|354k?/3/||hg23"
		else
			for i,v in pairs(speaker.Character:GetDescendants()) do
				if v.ClassName == "PointLight" and v.Name == "+=|dsf3a/.9|354k?/3/||hg23" then
					v:Destroy()
				end
			end
		end
	end
})


local funnyspin = Player4:AddToggle({
	Name = 'Spin',
	Value = false,
	Flag = 'spinnn',
	Locked = false,
	Keybind = {
		Flag = 'asf5ernugdf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
				if v.Name == "Spinning____48J(3*&$#9#40(35,>43953549|354k?/3/||hg234" then
					v:Destroy()
				end
			end
			local Spin = Instance.new("BodyAngularVelocity")
			Spin.Parent = getRoot(speaker.Character)
			while state do task.wait()
				Spin.Name = "Spinning____48J(3*&$#9#40(35,>43953549|354k?/3/||hg234"
				Spin.MaxTorque = Vector3.new(0, math.huge, 0)
				Spin.AngularVelocity = Vector3.new(0,getgenv().SpinSpeed,0)
			end
		else
			for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
				if v.Name == "Spinning____48J(3*&$#9#40(35,>43953549|354k?/3/||hg234" then
					v:Destroy()
				end
			end
		end
	end
})

local Slider = Player4:AddSlider({
	Name = 'Spin Speed',
	Flag = "Sping_speed_value",
	Value = 20,
	Min = 10,
	Max = 50,
	Decimals = 1,
	Callback = function( Spiin_speeed )
		getgenv().SpinSpeed = Spiin_speeed
	end
})
antitool = false
antitool = Player4:AddToggle({
	Name = 'Anti Tool',
	Value = false,
	Flag = 'antitools',
	Locked = false,
	Keybind = {
		Flag = 'antitoolsg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			antitool = true
			speaker.Character.ChildAdded:Connect(function(rg)
				if rg:IsA("Tool") and antitool == true then
					task.wait()
					rg:Destroy()
				end
			end)
		else
			antitool = false
		end
	end
})
antisit = false
antisi2t = Player4:AddToggle({
	Name = 'Anti Sit',
	Value = false,
	Flag = 'antisit2',
	Locked = false,
	Keybind = {
		Flag = 'antisit324',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			antisit = true
			while antisit == true do
				task.wait()
				if speaker.Character.Humanoid.Sit == true then
					wait(.1)
					speaker.Character.Humanoid.Sit = false
				end
			end
		else
			antisit = false
		end
	end
})
antiragdoll = false
antiragdoll = Player4:AddToggle({
	Name = 'Anti State',
	Value = false,
	Flag = 'antirag',
	Locked = false,
	Keybind = {
		Flag = 'antiragyesyes',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			antiragdoll = true
			while antiragdoll == true do
				task.wait()
				speaker.Character:WaitForChild("Humanoid"):ChangeState(8)
			end
		else
			antiragdoll = false
		end
	end
})
antifling = false
antifling = Player4:AddToggle({
	Name = 'Anti Fling',
	Value = false,
	Flag = 'antifling2',
	Locked = false,
	Keybind = {
		Flag = 'ahfu843',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			antifling = true
			local function Collisionless(person)
				if antifling == true and person.Character then
					for _,child in pairs(person.Character:GetDescendants()) do
						if child:IsA("BasePart") and child.CanCollide then
							child.CanCollide = false
						end
					end
				end
			end
			for _,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v ~= speaker then
					local antifling = game:GetService('RunService').Stepped:connect(function()
						Collisionless(v)
					end)
				end
			end
			game:GetService("Players").PlayerAdded:Connect(function()
				if v ~= speaker and antifling == true then
					local antifling = game:GetService('RunService').Stepped:connect(function()
						Collisionless(v)
					end)
				end
			end)
		else
			antifling = false
		end
	end
})
antinetorkclaim = Player4:AddToggle({
	Name = 'Anti Void',
	Value = false,
	Flag = 'antinetorkclaim',
	Locked = false,
	Keybind = {
		Flag = 'antinetorkclaim2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			DHSaved = workspace.FallenPartsDestroyHeight
			workspace.FallenPartsDestroyHeight = math.huge - math.huge
		else
			workspace.FallenPartsDestroyHeight = DHSaved
		end
	end
})
antirender = Player4:AddToggle({
	Name = 'Anti Render',
	Value = false,
	Flag = 'antirender',
	Locked = false,
	Keybind = {
		Flag = 'antirender2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			RunService:Set3dRenderingEnabled(false)
		else
			RunService:Set3dRenderingEnabled(true)
		end
	end
})
antirotation = Player4:AddToggle({
	Name = 'Anti Rotate',
	Value = false,
	Flag = 'antirotation',
	Locked = false,
	Keybind = {
		Flag = 'antirotation2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
		end
	end
})
antiafk = Player4:AddButton({
	Name = "Anti AFK",
	Callback = function()
		local GC = getconnections or get_signal_cons
		if GC then
			for i,v in pairs(GC(speaker.Idled)) do
				if v["Disable"] then
					v["Disable"](v)
				elseif v["Disconnect"] then
					v["Disconnect"](v)
				end
			end
		else
			speaker.Idled:Connect(function()
				game:GetService("VirtualUser"):CaptureController()
				game:GetService("VirtualUser"):ClickButton2(Vector2.new())
			end)
		end
		Notify({
			Title = "Client Disabler",
			Description = "idle kicks now disabled",
			Duration = 4
		})
	end
})



unlockcam = Visuals1:AddToggle({
	Name = 'Unlock Camera',
	Value = false,
	Flag = 'unlockcam2',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			origin_CameraMaxZoomDistance = speaker.CameraMaxZoomDistance
			origin_CameraMinZoomDistance = speaker.CameraMinZoomDistance

			speaker.CameraMaxZoomDistance = math.huge
			speaker.CameraMinZoomDistance = 0
		else
			speaker.CameraMinZoomDistance = origin_CameraMinZoomDistance
			speaker.CameraMaxZoomDistance = origin_CameraMaxZoomDistance
		end
	end
})
nobuyshit = Visuals1:AddToggle({
	Name = 'No Purchase Prompt',
	Value = false,
	Flag = 'nobuyshit2',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			game:GetService("CoreGui").PurchasePrompt.Enabled = false
		else
			game:GetService("CoreGui").PurchasePrompt.Enabled = true
		end
	end
})



local fb1 = Visuals1:AddButton({
	Name = "Full Bright",
	Callback = function()
		Lighting.Brightness = 2
		Lighting.ClockTime = 14
		Lighting.FogEnd = 100000
		Lighting.GlobalShadows = false
		Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end
})
fb1 = Visuals1:AddToggle({
	Name = 'Loop Full Bright',
	Value = false,
	Flag = 'loopb2',
	Locked = false,
	Keybind = {
		Flag = 'loopb2f',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if brightLoop then
				brightLoop:Disconnect()
			end
			local function brightFunc()
				Lighting.Brightness = 2
				Lighting.ClockTime = 14
				Lighting.FogEnd = 100000
				Lighting.GlobalShadows = false
				Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
			end
		
			brightLoop = RunService.RenderStepped:Connect(brightFunc)
		else
			if brightLoop then
				brightLoop:Disconnect()
			end
		end
	end
})
dgs = Visuals1:AddToggle({
	Name = 'Disable Global Shadows',
	Value = false,
	Flag = 'fgh743',
	Locked = false,

	Callback = function( state )
		Lighting.GlobalShadows = state
	end
})
local nofog = Visuals1:AddButton({
	Name = "No Fog",
	Callback = function()
		Lighting.FogEnd = 100000
		for i,v in pairs(Lighting:GetDescendants()) do
			if v:IsA("Atmosphere") then
				v:Destroy()
			end
		end
	end
})
SavedLightingSettings = {
	abt = Lighting.Ambient,
	oabt = Lighting.OutdoorAmbient,
	brt = Lighting.Brightness,
	time = Lighting.ClockTime,
	fe = Lighting.FogEnd,
	fs = Lighting.FogStart,
	gs = Lighting.GlobalShadows
}
local restorelighting = Visuals1:AddButton({
	Name = "Save Lighting",
	Callback = function()
		SavedLightingSettings.abt = Lighting.Ambient
		SavedLightingSettings.oabt = Lighting.OutdoorAmbient
		SavedLightingSettings.brt = Lighting.Brightness
		SavedLightingSettings.time = Lighting.ClockTime
		SavedLightingSettings.fe = Lighting.FogEnd
		SavedLightingSettings.fs = Lighting.FogStart
		SavedLightingSettings.gs = Lighting.GlobalShadows
	end
})
local restorelighting = Visuals1:AddButton({
	Name = "Load Lighting",
	Callback = function()
		Lighting.Ambient = SavedLightingSettings.abt
		Lighting.OutdoorAmbient = SavedLightingSettings.oabt
		Lighting.Brightness = SavedLightingSettings.brt
		Lighting.ClockTime = SavedLightingSettings.time
		Lighting.FogEnd = SavedLightingSettings.fe
		Lighting.FogStart = SavedLightingSettings.fs
		Lighting.GlobalShadows = SavedLightingSettings.gs
	end
})

local removeskybox = Visuals1:AddButton({
	Name = "Remove Sky Box",
	Callback = function()
		for i, v in pairs(game.Lighting:GetDescendants()) do
			if v:IsA("Sky") then
				v.Parent:Destroy()
			end
		end
	end
})
local day1 = Visuals1:AddButton({
	Name = "Day",
	Callback = function()
		Lighting.ClockTime = 14
	end
})
local night1 = Visuals1:AddButton({
	Name = "Night",
	Callback = function()
		Lighting.ClockTime = 0
	end
})

CustomTime = Visuals1:AddSlider({
	Name = 'Custom Time',
	Flag = "custom_ytime",
	Value = 13,
	Min = 0,
	Max = 18,
	Decimals = 2,
	Textbox = true,
	Callback = function(x)
		Lighting.ClockTime = x
	end
})

vendettamode = Visuals1:AddToggle({
	Name = 'vendetta Mode',
	Value = false,
	Flag = 'vendettamode',
	Locked = false,
	Keybind = {
		Flag = 'vendettamode',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local vensky = Instance.new("Sky")
			local venblur = Instance.new("BlurEffect")
			local vencc = Instance.new("ColorCorrectionEffect")
			
			vensky.Parent = game.Lighting
			vensky.Name = "vendettamode_out"
			vensky.CelestialBodiesShown = true
			vensky.MoonAngularSize = 11
			vensky.SkyboxBk = "rbxassetid://5084575798"
			vensky.SkyboxDn = "rbxassetid://5084575916"
			vensky.SkyboxFt = "rbxassetid://5103949679"
			vensky.SkyboxLf = "rbxassetid://5103948542"
			vensky.SkyboxRt = "rbxassetid://5103948784"
			vensky.SkyboxUp = "rbxassetid://5084576400"
			vensky.StarCount = 3000
			vensky.SunAngularSize = 21

			venblur.Parent = game.Lighting
			venblur.Name = "venblur_out"
			venblur.Size = 4
			venblur.Enabled = true

			vencc.Parent = game.Lighting
			vencc.Brightness = 0
			vencc.Contrast = 0
			vencc.Name = "venccolor_out"
			vencc.Enabled = true
			vencc.Saturation = 0.1
			vencc.TintColor = Color3.fromRGB(217, 79, 255)
		else
			wait()
			for _,v in pairs(game.Lighting:GetChildren()) do
				if v.Name == "vendettamode_out" and v:IsA("Sky") then
					v:Destroy()
				end
			end
			for _,v in pairs(game.Lighting:GetChildren()) do
				if v.Name == "venblur_out" and v:IsA("BlurEffect") then
					v:Destroy()
				end
			end
			for _,v in pairs(game.Lighting:GetChildren()) do
				if v.Name == "venccolor_out" and v:IsA("ColorCorrectionEffect") then
					v:Destroy()
				end
			end
		end
	end
})

function lesslag()
	local Terrain = workspace:FindFirstChildOfClass('Terrain')
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		coroutine.wrap(function()
			if child:IsA('ForceField') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			end
		end)()
	end)
end

local lesslag = Visuals1:AddButton({
	Name = "Less lag",
	Callback = function()
		lesslag()
	end
})

local fixcam = Visuals1:AddButton({
	Name = "Fix Camera",
	Callback = function()
		StopFreecam()
		freecam3:Set(false)
		workspace.CurrentCamera:remove()
		wait(.1)
		repeat wait() until speaker.Character ~= nil
		workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
		workspace.CurrentCamera.CameraType = "Custom"
		speaker.CameraMinZoomDistance = 0.5
		speaker.CameraMaxZoomDistance = 400
		speaker.CameraMode = "Classic"
		speaker.Character.Head.Anchored = false
	end
})


local shownParts = {}
local invisparts = Visuals1:AddToggle({
	Name = 'Show invis Parts',
	Value = false,
	Flag = 'infidsd87y',
	Locked = false,
	Keybind = {
		Flag = 'asfr453eernugdf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("BasePart") and v.Transparency == 1 then
					if not table.find(shownParts,v) then
						table.insert(shownParts,v)
					end
					v.Transparency = 0
				end
			end
		else
			for i,v in pairs(shownParts) do
				v.Transparency = 1
			end
			shownParts = {}
		end
	end
})

getgenv().XrayTrans = 0.5
local transparent = false
function x(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = getgenv().XrayTrans
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end
local xray213324 = Visuals1:AddToggle({
	Name = 'XRay',
	Value = false,
	Flag = 'xray2opruhies',
	Locked = false,
	Keybind = {
		Flag = 'asfer45ernugdf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			transparent = true
			x(transparent)
		else
			transparent = false
			x(transparent)
		end
	end
})
local chamtransda1 = Visuals1:AddSlider({
	Name = 'Xray Transparency',
	Flag = "s5tg_yoiDMldni4s",
	Value = getgenv().XrayTrans,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( y )
		getgenv().XrayTrans = y
	end
})

function clear_custom_skybox()
	for i,v in pairs(Lighting:GetChildren()) do
		if v.Name == "Night_Sky_OUT" or
		v.Name == "ORANGE_SUNSET_OUT" or
		v.Name == "SNOWY_SKY_OUT" or
		v.Name == "VOIDAL_OUT" or
		v.Name == "PURPLE_SUNSET_OUT" or
		v.Name == "SPACE_SKYBOX_BACLK_OUT" or
		v.Name == "NIGULA_OUT" or
		v.Name == "NIGULA2_OUT" or
		v.Name == "STORMMY_OUT" then
			v:Destroy()
		end
	end
end

local skybox = Visuals1:AddDropdown({
	Name = 'SkyBox',
	Flag = "sdsfsdfsue",
	Multi = false,
	List = {
		"No Skybox",
		"Night Sky",
		"Orange Sunset",
		"Snowy Sky",
		"Void Sky",
		"Purple Sunset",
		"Purple Nebula",
		"Green Nebula",
		"Stormy",
	},
	Callback = function( skybox )
		if skybox == "Night Sky" then
			local nightsky_skybox = Instance.new("Sky")
			nightsky_skybox.Parent = Lighting
			nightsky_skybox.Name = "Night_Sky_OUT"
			nightsky_skybox.CelestialBodiesShown = false
			nightsky_skybox.MoonAngularSize = 11
			nightsky_skybox.SkyboxBk = "http://www.roblox.com/Asset/?ID=12064107"
			nightsky_skybox.SkyboxDn = "http://www.roblox.com/Asset/?ID=12064152"
			nightsky_skybox.SkyboxFt = "http://www.roblox.com/Asset/?ID=12064121"
			nightsky_skybox.SkyboxLf = "http://www.roblox.com/Asset/?ID=12063984"
			nightsky_skybox.SkyboxRt = "http://www.roblox.com/Asset/?ID=12064115"
			nightsky_skybox.SkyboxUp = "http://www.roblox.com/Asset/?ID=12064131"
			nightsky_skybox.StarCount = 0
			nightsky_skybox.SunAngularSize = 21

		elseif skybox == "Orange Sunset" then
			local OrangeSunset_skybox = Instance.new("Sky")
			OrangeSunset_skybox.Parent = Lighting
			OrangeSunset_skybox.Name = "ORANGE_SUNSET_OUT"
			OrangeSunset_skybox.CelestialBodiesShown = true
			OrangeSunset_skybox.MoonAngularSize = 11
			OrangeSunset_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			OrangeSunset_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			OrangeSunset_skybox.SkyboxBk = "rbxassetid://600830446"
			OrangeSunset_skybox.SkyboxDn = "rbxassetid://600831635"
			OrangeSunset_skybox.SkyboxFt = "rbxassetid://600832720"
			OrangeSunset_skybox.SkyboxLf = "rbxassetid://600886090"
			OrangeSunset_skybox.SkyboxRt = "rbxassetid://600833862"
			OrangeSunset_skybox.SkyboxUp = "rbxassetid://600835177"
			OrangeSunset_skybox.StarCount = 3000
			OrangeSunset_skybox.SunAngularSize = 21

		elseif skybox == "Snowy Sky" then
			local SnowySky_skybox = Instance.new("Sky")
			SnowySky_skybox.Parent = Lighting
			SnowySky_skybox.Name = "SNOWY_SKY_OUT"
			SnowySky_skybox.CelestialBodiesShown = false
			SnowySky_skybox.MoonAngularSize = 11
			SnowySky_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			SnowySky_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			SnowySky_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=155657655"
			SnowySky_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=155674246"
			SnowySky_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=155657609"
			SnowySky_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=155657671"
			SnowySky_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=155657619"
			SnowySky_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=155674931"
			SnowySky_skybox.StarCount = 3000
			SnowySky_skybox.SunAngularSize = 21

		elseif skybox == "Void Sky" then
			local voidal_skybox = Instance.new("Sky")
			voidal_skybox.Parent = Lighting
			voidal_skybox.Name = "VOIDAL_OUT"
			voidal_skybox.CelestialBodiesShown = true
			voidal_skybox.MoonAngularSize = 11
			voidal_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			voidal_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			voidal_skybox.SkyboxBk = "rbxassetid://6847661057"
			voidal_skybox.SkyboxDn = "rbxassetid://6847661380"
			voidal_skybox.SkyboxFt = "rbxassetid://6847661671"
			voidal_skybox.SkyboxLf = "rbxassetid://6847661950"
			voidal_skybox.SkyboxRt = "rbxassetid://6847665479"
			voidal_skybox.SkyboxUp = "rbxassetid://6847663751"
			voidal_skybox.StarCount = 3000
			voidal_skybox.SunAngularSize = 21

		elseif skybox == "Purple Sunset" then
			local PurpleSunset_skybox = Instance.new("Sky")
			PurpleSunset_skybox.Parent = Lighting
			PurpleSunset_skybox.Name = "PURPLE_SUNSET_OUT"
			PurpleSunset_skybox.CelestialBodiesShown = false
			PurpleSunset_skybox.MoonAngularSize = 11
			PurpleSunset_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			PurpleSunset_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			PurpleSunset_skybox.SkyboxBk = "rbxassetid://264908339"
			PurpleSunset_skybox.SkyboxDn = "rbxassetid://264907909"
			PurpleSunset_skybox.SkyboxFt = "rbxassetid://264909420"
			PurpleSunset_skybox.SkyboxLf = "rbxassetid://264909758"
			PurpleSunset_skybox.SkyboxRt = "rbxassetid://264908886"
			PurpleSunset_skybox.SkyboxUp = "rbxassetid://264907379"
			PurpleSunset_skybox.StarCount = 3000
			PurpleSunset_skybox.SunAngularSize = 21

		elseif skybox == "Green Nebula" then
			local Nebula2_skybox = Instance.new("Sky")
			Nebula2_skybox.Parent = Lighting
			Nebula2_skybox.Name = "NIGULA2_OUT"
			Nebula2_skybox.CelestialBodiesShown = false
			Nebula2_skybox.MoonAngularSize = 11
			Nebula2_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			Nebula2_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			Nebula2_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=159248188"
			Nebula2_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=159248183"
			Nebula2_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=159248187"
			Nebula2_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=159248173"
			Nebula2_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=159248192"
			Nebula2_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=159248176"
			Nebula2_skybox.StarCount = 0
			Nebula2_skybox.SunAngularSize = 21

		elseif skybox == "Purple Nebula" then
			local Nebula_skybox = Instance.new("Sky")
			Nebula_skybox.Parent = Lighting
			Nebula_skybox.Name = "NIGULA_OUT"
			Nebula_skybox.CelestialBodiesShown = false
			Nebula_skybox.MoonAngularSize = 11
			Nebula_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			Nebula_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			Nebula_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=159454299"
			Nebula_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=159454296"
			Nebula_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=159454293"
			Nebula_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=159454286"
			Nebula_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=159454300"
			Nebula_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=159454288"
			Nebula_skybox.StarCount = 0
			Nebula_skybox.SunAngularSize = 21

		elseif skybox == "Stormy" then
			local Stormy_skybox = Instance.new("Sky")
			Stormy_skybox.Parent = Lighting
			Stormy_skybox.Name = "STORMMY_OUT"
			Stormy_skybox.CelestialBodiesShown = false
			Stormy_skybox.MoonAngularSize = 11
			Stormy_skybox.MoonTextureId = "rbxasset://sky/moon.jpg"
			Stormy_skybox.SunTextureId = "rbxasset://sky/sun.jpg"
			Stormy_skybox.SkyboxBk = "http://www.roblox.com/asset/?id=48015734"
			Stormy_skybox.SkyboxDn = "http://www.roblox.com/asset/?id=48015300"
			Stormy_skybox.SkyboxFt = "http://www.roblox.com/asset/?id=48015344"
			Stormy_skybox.SkyboxLf = "http://www.roblox.com/asset/?id=48015327"
			Stormy_skybox.SkyboxRt = "http://www.roblox.com/asset/?id=48015359"
			Stormy_skybox.SkyboxUp = "http://www.roblox.com/asset/?id=48015387"
			Stormy_skybox.StarCount = 3000
			Stormy_skybox.SunAngularSize = 21
			
		elseif skybox == "No Skybox" then
			clear_custom_skybox()
		end
	end
})
local RemoveAds2 = Visuals1:AddButton({
	Name = "Remove Surface Guis",
	Callback = function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("SurfaceGui") then
				v:Destroy()
			end
		end
	end
})
local RemoveAds3 = Visuals1:AddButton({
	Name = "Remove Billboard Guis",
	Callback = function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("BillboardGui") then
				v:Destroy()
			end
		end
	end
})
local RemoveAds = Visuals1:AddButton({
	Name = "Remove Paid Ads",
	Callback = function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v:IsA("PackageLink") then
				v.Parent:Destroy()
			end
		end
	end
})
crosshaircustm = Visuals1:AddToggle({
	Name = 'Crosshair',
	Value = false,
	Flag = 'Crosshair3',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			Mouse.Icon = "rbxassetid://9943168532"
		else
			Mouse.Icon = ""
		end
	end
})
spoof_notifs = false
nickfer = Visuals2:AddTextbox({
	Name = 'Dislay Name',
	Flag = "displayspfokf",
	Value = speaker.DisplayName,
	Multiline = true,
	Callback = function( x )
		speaker.DisplayName = x
		if spoof_notifs == true then
			Notify({
				Title = "Spoofer",
				Description = "Your Display Name is now " .. tostring(x).." \nHover over leaderboard to see change",
				Duration = 4
			})
		end
	end
})
namespoofer = Visuals2:AddTextbox({
	Name = 'User Name',
	Flag = "displayspfofokf",
	Value = speaker.Name,
	Multiline = true,
	Callback = function( x )
		speaker.Name = x
		if spoof_notifs == true then
			Notify({
				Title = "Spoofer",
				Description = "Your User Name is now " .. tostring(x).." \nHover over leaderboard to see change",
				Duration = 4
			})
		end
	end
})
osspoofers = Visuals2:AddTextbox({
	Name = 'Openarting system',
	Flag = "342342fgdfg	",
	Value = speaker.OsPlatform,
	Multiline = true,
	Callback = function( x )
		speaker.OsPlatform = x
		if spoof_notifs == true then
			Notify({
				Title = "Spoofer",
				Description = "Your Openarting system is now " .. tostring(x),
				Duration = 4
			})
		end
	end
})

local cvhamslable = Visuals2:CreateLabel({
	Text = 'contant change my break'
})
spoof_notifs = true
local cvhamslable = Visuals3:CreateLabel({
	Text = 'Chams'
})
local ChamSettings = {
	FillColor = Color3.new(1, 0.666667, 0);
	FillTransparency = 0;
	OutlineColor = Color3.new(1, 0.333333, 1);
	OutlineTransparency = 0;
};

cgamesopCHAMS = Visuals3:AddToggle({
	Name = 'Chams',
	Value = false,
	Flag = 'rdiuygdf',
	Locked = false,
	Keybind = {
		Flag = 'as546frug453eerndf',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local players = game.Players:GetPlayers()
			for i,v in pairs(players) do
			 	local espCHAMS__OLD = Instance.new("Highlight")
			 	espCHAMS__OLD.Name = "KLjhfehu904eoiuiuoiIuOIUDfhuIde89iuhdf8U_oiuhfdjukHU9if90ns=o'sd.fodsk9dsf"
			 	espCHAMS__OLD.FillTransparency = ChamSettings.FillTransparency
			 	espCHAMS__OLD.FillColor = ChamSettings.FillColor
			 	espCHAMS__OLD.OutlineColor = ChamSettings.OutlineColor
			 	espCHAMS__OLD.OutlineTransparency = ChamSettings.OutlineTransparency
			 	espCHAMS__OLD.Parent = v.Character
			end
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v.Name == "KLjhfehu904eoiuiuoiIuOIUDfhuIde89iuhdf8U_oiuhfdjukHU9if90ns=o'sd.fodsk9dsf" then
					v:Destroy()
				end
			end
		else
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name == "KLjhfehu904eoiuiuoiIuOIUDfhuIde89iuhdf8U_oiuhfdjukHU9if90ns=o'sd.fodsk9dsf" then
					v:Destroy()
				end
			end
		end
	end
})
CockerChalorPimdfu = Visuals3:AddColorPicker({
	Name = "Fill Color",
	Value = ChamSettings.FillColor,
	Callback = function( color )
		ChamSettings.FillColor = color
	end
})
CeroChamdfkloru = Visuals3:AddColorPicker({
	Name = "Outline Color",
	Value = ChamSettings.OutlineColor,
	Callback = function( color )
		ChamSettings.OutlineColor = color
	end
})
chamtransda1 = Visuals3:AddSlider({
	Name = 'Fill Transparency',
	Flag = "sli45tgdn_yoDMis",
	Value = ChamSettings.FillTransparency,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( y )
		ChamSettings.FillTransparency = y
	end
})
chamtransda2 = Visuals3:AddSlider({
	Name = 'Outline Transparency',
	Flag = "sl4tooi8ytrr_DMs",
	Value = ChamSettings.OutlineTransparency,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( y )
		ChamSettings.OutlineTransparency = y
	end
})

i4rdgdhgdfgh = Visuals3:CreateLabel({
	Text = 'Esp'
})

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/esplib.lua"))()
ESPboxToggle4 = Visuals3:AddToggle({
	Name = 'Boxes',
	Value = false,
	Flag = '54r',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.Boxes = true
		else
			ESP.Boxes = false
		end
	end
})

ESPboxToggle3 = Visuals3:AddToggle({
	Name = 'Tracers',
	Value = false,
	Flag = 'rdvf',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.Tracers = true
		else
			ESP.Tracers = false
		end
	end
})

ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'Names',
	Value = false,
	Flag = 'h6rhfgch1',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.Names = true
		else
			ESP.Names = false
		end
	end
})


ColorPicker = Visuals3:AddColorPicker({
	Name = "Esp color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function( x )
		ESP.Color = x
	end
})

ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'FaceCamera',
	Value = false,
	Flag = 'h6rhfgch',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.FaceCamera = true
		else
			ESP.FaceCamera = false
		end
	end
})


local ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'Use Team Color',
	Value = false,
	Flag = 'h6rhfgch2',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.TeamColor = true
		else
			ESP.TeamColor = false
		end
	end
})

local ESPboxToggleset1 = Visuals3:AddToggle({
	Name = 'TeamMates',
	Value = true,
	Flag = 'h6rhfgch3',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			ESP.TeamMates = true
		else
			ESP.TeamMates = false
		end
	end
})


viewclip = Visuals4:AddToggle({
	Name = 'View Clip',
	Value = false,
	Flag = 'rdfgsgdygdf',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			speaker.DevCameraOcclusionMode = "Invisicam"
		else
			speaker.DevCameraOcclusionMode = "Zoom"
		end
	end
})

local PromptButtonHoldBegan = nil
instantproxpromts = Visuals4:AddToggle({
	Name = 'Instant proximity prompts',
	Value = false,
	Flag = 'rd4erfdygdf',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			if fireproximityprompt then
				if PromptButtonHoldBegan ~= nil then
					PromptButtonHoldBegan:Disconnect()
					PromptButtonHoldBegan = nil
				end
				wait()
				PromptButtonHoldBegan = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
					fireproximityprompt(prompt)
				end)
			else
				instantproxpromts:Set(false)
				Notify({
					Title = "Missing Function",
					Description = "missing: fireproximityprompt",
					Duration = 2
				})
			end
		else
			if PromptButtonHoldBegan ~= nil then
				PromptButtonHoldBegan:Disconnect()
				PromptButtonHoldBegan = nil
			end
		end
	end
})
noproximitypromptlimits = Visuals4:AddButton({
	Name = "No Proximity prompt limit",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("ProximityPrompt") then
				v.MaxActivationDistance = math.huge
			end
		end
	end
})
fireproximityprompts = Visuals4:AddButton({
	Name = "Fire Proximity prompts",
	Callback = function()
		if fireproximityprompt then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ProximityPrompt") then
					fireproximityprompt(v)
				end
			end
		else
			Notify({
				Title = "Missing Function",
				Description = "missing: fireproximityprompt",
				Duration = 2
			})
		end
	end
})

local proximitypromptslabel = Visuals4:CreateLabel({
	Text = 'Click Detectors'
})

fireclickdetectors = Visuals4:AddButton({
	Name = "Fire Click Detectors",
	Callback = function()
		if fireclickdetector then
			for i,v in pairs(workspace:GetDescendants()) do
				if v:IsA("ClickDetector") then
					fireclickdetector(v)
				end
			end
		else
			Notify({
				Title = "Missing Function",
				Description = "missing: fireclickdetector",
				Duration = 2
			})
		end
	end
})
noclickdetectorlimits = Visuals4:AddButton({
	Name = "No Click Detector limit",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("ClickDetector") then
				v.MaxActivationDistance = math.huge
			end
		end
	end
})

spectateasd = Visuals5:AddTextbox({
	Name = 'Player',
	Flag = "hfgchgdfhgg",
	Value = speaker.Name,
	Multiline = false,
	Callback = function( plrTar )
		local plr1 = speaker.Character
		local plr2 = workspace:FindFirstChild(plrTar)

		if plr2 then
			if plr2 ~= plr1 then
				game:GetService("Workspace").CurrentCamera.CameraSubject = plr2.Head
			end
		end
	end
})
noclickdetectorlimits = Visuals5:AddButton({
	Name = "Stop Spectating",
	Callback = function()
		game:GetService("Workspace").CurrentCamera.CameraSubject = speaker.Character
	end
})

local cumball = Funny3:AddButton({
	Name = "Become a ball",	
	Callback = function()

	 	SPEED_MULTIPLIER = 30
		JUMP_POWER = 60
		JUMP_GAP = 0.3

		character = speaker.Character

		for i,v in ipairs(character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end

		local ball = character.HumanoidRootPart
		ball.Shape = Enum.PartType.Ball
		ball.Size = Vector3.new(5,5,5)
		local humanoid = character:WaitForChild("Humanoid")
		local params = RaycastParams.new()
		params.FilterType = Enum.RaycastFilterType.Blacklist
		params.FilterDescendantsInstances = {character}

		local tc = RunService.RenderStepped:Connect(function(delta)
			ball.CanCollide = true
			humanoid.PlatformStand = true
			if UIS:GetFocusedTextBox() then
				return 
			end
			if UIS:IsKeyDown("W") then
				ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
			end
			if UIS:IsKeyDown("A") then
				ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
			end
			if UIS:IsKeyDown("S") then
				ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
			end
			if UIS:IsKeyDown("D") then
				ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
			end
		end)

		UIS.JumpRequest:Connect(function()
			local result = workspace:Raycast(
			ball.Position,
			Vector3.new(
				0,
				-((ball.Size.Y/2)+JUMP_GAP),
				0
			),
			params
			)
			if result then
				ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)
			end
		end)

		Camera.CameraSubject = ball
		humanoid.Died:Connect(function() tc:Disconnect() end)	
	end
})
hathub = Funny3:AddButton({
	Name = "Hat hub",
	Callback = function()
		if r15(speaker) then
			Notify({
				Title = "Invalid Rig type",
				Description = "You Need to be in R6",
				Duration = 2
			})
		else
			loadstring(game:HttpGet('https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/vendettacmds.lua'))()
		end
	end
})

hathub1 = Funny3:CreateLabel({
	Text = '.orbit (plr)'
})
hathub2 = Funny3:CreateLabel({
	Text = '.speed (number)'
})
hathub3 = Funny3:CreateLabel({
	Text = '.offset (number)'
})
hathub4 = Funny3:CreateLabel({
	Text = '.mode (number)'
})
hathub5 = Funny3:CreateLabel({
	Text = '.angular (number)'
})

raybeamyesyeyse = Funny3:AddButton({
	Name = "Ray Beam",
	Callback = function()
		if r15(speaker) then

			TypeOfFling = 1
			DeleteArm = true
			SayDramaticStuff = false
			FlingVelocity = 9000

			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = 0

			if DeleteArm then
				speaker.Character.RightUpperArm:Destroy()
			end

			if SayDramaticStuff then
				AnimationId = "3303161675"
				local Anim = Instance.new("Animation")
				Anim.AnimationId = "rbxassetid://"..AnimationId
				local k = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
				k:Play()
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("UNLEASH POWER OF HEAVEN","All")
				k:AdjustSpeed(1)
				wait(4.7)
			end

			local Noclipping = nil
			local Clip = true
			wait(0.1)
			local function NoclipLoop()
			if Clip then
					if speaker.Character ~= nil then
						for _, child in pairs(speaker.Character:GetDescendants()) do
							if child:IsA("BasePart") and child.CanCollide == true then
								child.CanCollide = false
							end
						end
					end
				end
			end

			Noclipping = RunService.Stepped:Connect(NoclipLoop)
			wait(0.3)
			for i, x in pairs(speaker.Character:GetDescendants()) do
				if x:IsA("BasePart") and not x.Anchored then
					x.Anchored = true
				end
			end

			if SayDramaticStuff then
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE POWER OF HEAVEN CHEATS.","All")
				wait(3)
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("POWER OF DIMENSIONAL DIVERSION.","All")
				wait(2.3)
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("HEAVEN SKILL, SUPERNOVA!!","All")
			end

			local IsFlying = true
			local flyv
			local flyg
			local Speed = 70

			local LastSpeed = Speed
			local IsRunning = false
			local f = 1

			flyv = Instance.new("BodyVelocity")
				
			flyv.Parent = speaker.Character:FindFirstChild('Torso') or speaker.Character:FindFirstChild('UpperTorso')
			flyv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				
			flyg = Instance.new("BodyGyro")
			flyg.Parent = speaker.Character:FindFirstChild('Torso') or speaker.Character:FindFirstChild('UpperTorso')
			flyg.MaxTorque = Vector3.new(9e9,9e9,9e9)
			flyg.P = 1000
			flyg.D = 50
			speaker.Character:WaitForChild('Humanoid').PlatformStand = true

			spawn(function()
				while true do
					wait()
					if IsFlying then
						flyg.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(-math.rad((f+0)*50*Speed),0,0) 
						flyv.Velocity = workspace.CurrentCamera.CoordinateFrame.LookVector * Speed
					else
						f = 0
					end
					if IsRunning then
						Speed = LastSpeed
					else
						if not Speed == 0 then
							LastSpeed = Speed
						end 
						Speed = 0
					end
				end
			end)

			speaker.Character.Humanoid.Changed:Connect(function()
				if speaker.Character.Humanoid.Health == 0 then
					if IsFlying then
						Noclipping:Disconnect()
						Clip = false
						flyg:Destroy()
						flyv:Destroy()
					end
				end
			end)

			speaker.CharacterAdded:Connect(function()
				if isFlying then
					Noclipping:Disconnect()
					Clip = false
					flyg:Destroy()
					flyv:Destroy()
				end
			end)

			speaker.Character.Humanoid.Changed:Connect(function(Prop)
				if speaker.Character.Humanoid.MoveDirection == Vector3.new(0,0,0) then
					IsRunning = false
				else
					IsRunning = true
				end	
			end)

			wait(0.3)

			local char = speaker.Character
			function helpmeget(char)
				local c4 = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
				return c4
			end

			local Spin = Instance.new("BodyAngularVelocity")
			Spin.Name = "SpinnerVelocity"
			Spin.Parent = helpmeget(speaker.Character)
			Spin.MaxTorque = Vector3.new(0, math.huge, 0) 
			Spin.AngularVelocity = Vector3.new(0,FlingVelocity,0)

			wait(0.3)

			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
			if TypeOfFling == 1 then
				speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
				speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
				speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
			elseif TypeOfFling == 2 then
				speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
			else
				speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
			end

			loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Leg%20Resize'))()

			wait(0.4)

			for i, x in pairs(speaker.Character:GetDescendants()) do
				if x:IsA("BasePart") and x.Anchored then
					x.Anchored = false
				end
			end

		else
			Notify({
				Title = "Invalid Rig type",
				Description = "You Need to be in R15",
				Duration = 2
			})
		end
	end
})
raybeam1 = Funny3:CreateLabel({
	Text = 'Layered clothing recommended /!\\'
})

heartattack = Funny3:AddButton({
	Name = "Heart Attack",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/yeerma/1/main/my-back'))()
	end
})
heartaytta1 = Funny3:CreateLabel({
	Text = 'Press Z to toggle'
})
indfsdf = Funny4:AddToggle({
	Name = 'Invis Fling',
	Value = false,
	Flag = 'invidikdsf',
	Locked = true,
	Keybind = {
		Flag = 'd34r___0',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			local ch = speaker.Character
			local prt = Instance.new("Model")
			prt.Parent = speaker.Character
			local z1 = Instance.new("Part")
			z1.Name = "Torso"
			z1.CanCollide = false
			z1.Anchored = true
			local z2 = Instance.new("Part")
			z2.Name = "Head"
			z2.Parent = prt
			z2.Anchored = true
			z2.CanCollide = false
			local z3 = Instance.new("Humanoid")
			z3.Name = "Humanoid"
			z3.Parent = prt
			z1.Position = Vector3.new(0,9999,0)
			speaker.Character = prt
			wait(3)
			speaker.Character = ch
			wait(3)
			local Hum = Instance.new("Humanoid")
			z2:Clone()
			Hum.Parent = speaker.Character
			local root =  getRoot(speaker.Character)
			for i,v in pairs(speaker.Character:GetChildren()) do
				if v ~= root and v.Name ~= "Humanoid" then
					v:Destroy()
				end
			end
			root.Transparency = 0
			root.Color = Color3.new(1, 1, 1)
			local invisflingStepped
			invisflingStepped = RunService.Stepped:Connect(function()
				if speaker.Character and getRoot(speaker.Character) then
					getRoot(speaker.Character).CanCollide = false
				else
					invisflingStepped:Disconnect()
				end
			end)
			sFLY()
			workspace.CurrentCamera.CameraSubject = root
			local bambam = Instance.new("BodyThrust")
			bambam.Parent = getRoot(speaker.Character)
			bambam.Force = Vector3.new(99999,99999*10,99999)
			bambam.Location = getRoot(speaker.Character).Position
		else
			refresh(speaker)
		end
	end
})
function stopFling()
	if nocliplooping3 then 
		nocliplooping3:Disconnect() 
	end
	if flingDied then
		flingDied:Disconnect()
	end
	flinging = false
	wait(.1)
	local speakerChar = speaker.Character
	if not speakerChar or not getRoot(speakerChar) then 
		return 
	end
	for i,v in pairs(getRoot(speakerChar):GetChildren()) do
		if v.ClassName == 'BodyAngularVelocity' then
			v:Destroy()
		end
	end
	for _, child in pairs(speakerChar:GetDescendants()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end
flinging = false
indfsdf2 = Funny4:AddToggle({
	Name = 'Fling',
	Value = false,
	Flag = 'invidikdsf2',
	Locked = false,
	Keybind = {
		Flag = 'd34r___02',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			flinging = false
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") then
					child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, 0.3, 0.5)
				end
			end
			nocliplooping3 = RunService.Stepped:Connect(function()
				for i,v in pairs(speaker.Character:GetChildren()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end)
			wait(.1)
			local bambam = Instance.new("BodyAngularVelocity")
			bambam.Name = "sdh99354_+340I#_-------#-44jf"
			bambam.Parent = getRoot(speaker.Character)
			bambam.AngularVelocity = Vector3.new(0,99999,0)
			bambam.MaxTorque = Vector3.new(0,math.huge,0)
			bambam.P = math.huge
			local Char = speaker.Character:GetChildren()
			for i, v in next, Char do
				if v:IsA("BasePart") then
					v.CanCollide = false
					v.Massless = true
					v.Velocity = Vector3.new(0, 0, 0)
				end
			end
			flinging = true
			local function flingDiedF()
				stopFling()
			end
			flingDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(flingDiedF)
			repeat
				bambam.AngularVelocity = Vector3.new(0,99999,0)
				wait(.2)
				bambam.AngularVelocity = Vector3.new(0,0,0)
				wait(.1)
			until flinging == false
		else
			stopFling()
		end
	end
})
orbitaplayer = Funny5:AddTextbox({
	Name = 'Orbit a Player',
	Flag = "orbitaplayer",
	Value = speaker.Name,
	Callback = function( plrTar )
		local plr1 = speaker.Character
		local plr2 = workspace:FindFirstChild(plrTar)
		if plr2 then
			if plr2 ~= plr1 then
				oldcfORBIT = speaker.Character.HumanoidRootPart.CFrame
				_G.OrbitTp = true
				local P = Instance.new("Part",plr2)
				P.Transparency = 1
				P.Name = "ThePart"
				P.Size = Vector3.new(1.7,1.7,1.7)
				P.Massless = true
				P.CanCollide = false
				local W = Instance.new("Weld", P)
				W.Part1 = plr2.HumanoidRootPart
				W.Part0 = P
				local sine = 0
				local change = 1
				local spin = 0
				local spin2 = 0
				local rp = Instance.new("RocketPropulsion")
				rp.Parent = speaker.Character.HumanoidRootPart
				rp.CartoonFactor = 1
				rp.MaxThrust = 5000
				rp.MaxSpeed = 100
				rp.ThrustP = 5000
				rp.Name = "OrbitalDestructionPart"
				rp.Target = plr2.ThePart
				rp:Fire()
				speaker.Character.Humanoid.PlatformStand = true

				while true do
					game:GetService("RunService").RenderStepped:wait()
					sine = sine + change
					spin2 = spin2 + 0.6
					spin = spin + 1
					W.C0 = CFrame.new(7 * math.cos(20),-2 - 2 * math.sin(sine/10),7 * math.sin(20))*CFrame.Angles(math.rad(0),math.rad(spin),math.rad(0))
				end
			end
		end
	end
})
noorbit = Funny5:AddButton({
	Name = "Stop Orbiting",
	Callback = function()
		if _G.OrbitTp == true then
			speaker.Character.HumanoidRootPart.CFrame = oldcfORBIT
		end
		_G.OrbitTp = false
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v.Name == "OrbitalDestructionPart" or v.Name == "OrbitalDestruction" then
				v:Destroy()
			end
		end
		speaker.Character.Humanoid.PlatformStand = false
		speaker.Character.Humanoid.Sit = false
	end
})
local ff = false
fuckaplayerface = Funny5:AddTextbox({
	Name = 'Face fuck a Player',
	Flag = "orbitaplay1er",
	Value = "let them eat you out :3",
	Callback = function( plrTar )
		local plr1 = speaker.Character
		local plr2 = workspace:FindFirstChild(plrTar)
		if plr2 then
			if plr1 then
				if plr2 ~= plr1 then
					if ff == true then
						ff = false
						speaker.Character.Humanoid.Sit = false			
					return

					else ff = true
						while ff do
							speaker.Character.Humanoid.Sit = true
							speaker.Character.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(180),0)* CFrame.new(0,1.7,0.4)
							speaker.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new()
							wait()
						end
					end
				end
			end
		end
	end
})
fuckaplayerfaceNAH = Funny5:AddButton({
	Name = "Stop face fucking",
	Callback = function()
		speaker.Character.Humanoid.Sit = false
		ff = false
	end
})

fucktardSettings = {
	Color = Color3.new(233, 152, 3);
	Heat = 9;
	SecondaryColor = Color3.new(139, 80, 55);
	Size = 5;
}

local fucktard
headfire = Funny6:AddToggle({
	Name = 'Head Fire',
	Value = false,
	Flag = 'headfire1',
	Locked = false,
	Keybind = {
		Flag = 'headfire2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if fucktard == nil then
				local fucktard = Instance.new("Fire")
				fucktard.Parent = speaker.Character.Head
				while state == true do
					fucktard.Name = "fucktard"
					fucktard.SecondaryColor = fucktardSettings.SecondaryColor
					fucktard.Size = fucktardSettings.Size
					fucktard.Heat = fucktardSettings.Heat
					task.wait()
					fucktard.Color = fucktardSettings.Color
				end
			end
		else
			fucktard = nil
			for _,v in pairs(speaker.Character.Head:GetChildren()) do
				if v.Name == "fucktard" then
					v:Destroy()
				end
			end
		end
	end
})

fucktardset1 = Funny6:AddColorPicker({
	Name = "Primary Color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function( x )
		fucktardSettings.Color = x
	end
})
fucktardset2 = Funny6:AddColorPicker({
	Name = "Secondary Color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function( x )
		fucktardSettings.SecondaryColor = x
	end
})
heatsajhafs = Funny6:AddSlider({
	Name = 'Fire Heat',
	Flag = "slidds",
	Value = 13,
	Min = 0,
	Max = 1000,
	Decimals = 2,
	llegalInput = false,
	Callback = function(x)
		fucktardSettings.Heat = x
	end
})
sizeugsdfsdfs = Funny6:AddSlider({
	Name = 'Fire Size',
	Flag = "s82",
	Value = 5,
	Min = 1,
	Max = 30,
	Decimals = 2,
	llegalInput = false,
	Callback = function( x )
		fucktardSettings.Size = x
	end
})

local chinahattrail
local chinahatattachment
chinaColor = Color3.fromRGB(131, 36, 209)

chinahat = Funny6:AddToggle({
	Name = 'China Hat',
	Value = false,
	Flag = 'yangleicountryoriginhat',
	Locked = false,
	Keybind = {
		Flag = 'yangleicountryoriginhat2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			ChinaHatLoop = game.RunService.RenderStepped:Connect(function()
				if chinahattrail == nil or chinahattrail.Parent == nil then
					chinahattrail = Instance.new("Part")
					chinahattrail.CFrame = speaker.character.Head.CFrame * CFrame.new(0, 1.1, 0)
					chinahattrail.Size = Vector3.new(3, 0.7, 3)
					chinahattrail.Name = "ChinaHat=?____OUT"
					chinahattrail.Material = Enum.Material.Neon
					chinahattrail.CanCollide = false
					chinahattrail.Transparency = 0.3
					local chinahatmesh = Instance.new("SpecialMesh")
					chinahatmesh.Parent = chinahattrail
					chinahatmesh.MeshType = "FileMesh"
					chinahatmesh.MeshId = "http://www.roblox.com/asset/?id=1778999"
					chinahatmesh.Scale = Vector3.new(3, 0.6, 3)
					chinahattrail.Parent = workspace.Camera
				end
				chinahattrail.CFrame = speaker.character.Head.CFrame * CFrame.new(0, 1.1, 0)
				chinahattrail.Velocity = Vector3.zero
				chinahattrail.LocalTransparencyModifier = ((workspace.CurrentCamera.CFrame.Position - workspace.CurrentCamera.Focus.Position).Magnitude <= 0.6 and 1 or 0)
				chinahattrail.Color = chinaColor
			end)
		else
			if ChinaHatLoop then
				ChinaHatLoop:Disconnect()
			end
			task.wait()
			for i,v in pairs(workspace.Camera:GetChildren()) do
				if v.Name =="ChinaHat=?____OUT" then
					v:Destroy()
				end
			end
		end
	end
})
chinacolor = Funny6:AddColorPicker({
	Name = "Color",
	Value = Color3.new(0.619607, 0.168627, 0.168627),
	Callback = function( x )
		chinaColor = x
	end
})

if getgenv().IncludedModuleBypass == true then
	math.randomseed(tick())
	ChatMain = require(game:GetService("Players").LocalPlayer.PlayerScripts.ChatScript.ChatMain)

	local function bypass()
		ChatMain.MessagePosted:fire("dffhdfshfd"..math.random(100000,1000000))
		ChatMain.MessagesChanged:fire(math.random(100000,1000000))
	end

	BypasserWordString = "Fucker"
	BypassedWord = Funny7:AddTextbox({
		Name = 'Word to Bypass',
		Flag = "bypasesesese",
		Value = BypasserWordString,
		Callback = function( x )
			BypasserWordString = x
		end
	})
	StartBypass = Funny7:AddButton({
		Name = "Bypass",
		Callback = function()
			for v in BypasserWordString:gmatch"." do
				task.wait(.1)
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v, "All")
				bypass()
			end
		end
	})
end

local wayPointTables = {
	WayPointTransparency = 1;
	WayPointCanCollide = false;
	WayPointAnchored = true;
	TweenModeIsActive = false;
	TweenDelay = 5;
}

settingslabelwaypoint = Misc1:CreateLabel({
	Text = 'Settings'
})

Waypoints_visible = Misc1:AddSlider({
	Name = 'Transparency',
	Flag = "slide_in_transs_pussy",
	Value = 0,
	Min = 0,
	Max = 1,
	Decimals = 2,
	Callback = function( trans )
		wayPointTables.WayPointTransparency = trans
	end
})
Waypoints_CanCollide = Misc1:AddToggle({
	Name = 'Can Collide',
	Value = false,
	Flag = 'CanCollideiudfg',
	Locked = true,
	Keybind = {
		Flag = '4erf243',
		Mode = 'Toggle',
	},

	Callback = function( state )
		wayPointTables.WayPointCanCollide = state
	end
})
local tween_mode = Misc1:AddToggle({
	Name = 'Tween Mode',
	Value = false,
	Flag = 'tweningjdhu',
	Locked = false,
	Keybind = {
		Flag = '4refdiukj4erdfrff',
		Mode = 'Toggle',
	},

	Callback = function( state )
		wayPointTables.TweenModeIsActive = state
	end
})
local tweendelLMAO = Misc1:AddSlider({
	Name = 'Tween delay',
	Flag = "tween_is_gay",
	Value = 5,
	Min = 1,
	Max = 30,
	Decimals = 2,
	Callback = function( trans )
		wayPointTables.TweenDelay = trans
	end
})
function waypoint1()
	local waypoint1 = Instance.new("Part")
	waypoint1.Name = "wayPoint1_VENDETTA"
	waypoint1.CFrame = speaker.Character.HumanoidRootPart.CFrame
	waypoint1.Parent = workspace
	waypoint1.Anchored = wayPointTables.WayPointAnchored
	waypoint1.CanCollide = wayPointTables.WayPointCanCollide
	waypoint1.Transparency = wayPointTables.WayPointTransparency
	waypoint1.Size = Vector3.new(0.5, 0.5, 0.5)
	vendettawaypoint1 = workspace:WaitForChild("wayPoint1_VENDETTA")
end
function waypoint2()
	local waypoint2 = Instance.new("Part")
	waypoint2.Name = "wayPoint2_VENDETTA"
	waypoint2.CFrame = speaker.Character.HumanoidRootPart.CFrame
	waypoint2.Parent = workspace
	waypoint2.Anchored = wayPointTables.WayPointAnchored
	waypoint2.CanCollide = wayPointTables.WayPointCanCollide
	waypoint2.Transparency = wayPointTables.WayPointTransparency
	waypoint2.Size = Vector3.new(0.5, 0.5, 0.5)
end
function waypoint3()
	local waypoint3 = Instance.new("Part")
	waypoint3.Name = "wayPoint3_VENDETTA"
	waypoint3.CFrame = speaker.Character.HumanoidRootPart.CFrame
	waypoint3.Parent = workspace
	waypoint3.Anchored = wayPointTables.WayPointAnchored
	waypoint3.CanCollide = wayPointTables.WayPointCanCollide
	waypoint3.Transparency = wayPointTables.WayPointTransparency
	waypoint3.Size = Vector3.new(0.5, 0.5, 0.5)
end

local createlabelwaypoint = Misc1:CreateLabel({
	Text = 'Create'
})

local createwayPoint1 = Misc1:AddButton({
	Name = "Create Waypoint 1",
	Callback = function()
		for _,vendetta in pairs(workspace:GetDescendants()) do
			if vendetta.Name == "wayPoint1_VENDETTA" then
				vendetta:Destroy()
			end
		end
		wait()
		waypoint1()
	end
})
local createwayPoint2 = Misc1:AddButton({
	Name = "Create Waypoint 2",
	Callback = function()
		for _,vendetta in pairs(workspace:GetDescendants()) do
			if vendetta.Name == "wayPoint2_VENDETTA" then
				vendetta:Destroy()
			end
		end
		wait()
		waypoint2()
	end
})
local createwayPoint3 = Misc1:AddButton({
	Name = "Create Waypoint 3",
	Callback = function()
		for _,vendetta in pairs(workspace:GetDescendants()) do
			if vendetta.Name == "wayPoint3_VENDETTA" then
				vendetta:Destroy()
			end
		end
		wait()
		waypoint3()
	end
})

local destroylabelwaypoint = Misc1:CreateLabel({
	Text = 'Destroy'
})

local noPoint1 = Misc1:AddButton({
	Name = "Destroy Waypoint 1",
	Callback = function()
		for _,vendetta in pairs(workspace:GetDescendants()) do
			if vendetta.Name == "wayPoint1_VENDETTA" then
				vendetta:Destroy()
			end
		end
	end
})
local noPoint2 = Misc1:AddButton({
	Name = "Destroy Waypoint 2",
	Callback = function()
		for _,vendetta in pairs(workspace:GetDescendants()) do
			if vendetta.Name == "wayPoint2_VENDETTA" then
				vendetta:Destroy()
			end
		end
	end
})
local noPoint3 = Misc1:AddButton({
	Name = "Destroy Waypoint 3",
	Callback = function()
		for _,vendetta in pairs(workspace:GetDescendants()) do
			if vendetta.Name == "wayPoint3_VENDETTA" then
				vendetta:Destroy()
			end
		end
	end
})
local noPoint = Misc1:AddButton({
	Name = "Destroy All Waypoint",
	Callback = function()
		for _,vendetta in pairs(workspace:GetDescendants()) do
			if vendetta.Name == "wayPoint3_VENDETTA" or
			vendetta.Name == "wayPoint2_VENDETTA" or
			vendetta.Name == "wayPoint1_VENDETTA" then
				vendetta:Destroy()
			end
		end
	end
})

local Controllabelwaypoint = Misc1:CreateLabel({
	Text = 'Control'
})

function tweenMode1()
	workspace.Gravity = 0
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(wayPointTables.TweenDelay, Enum.EasingStyle.Linear)
    tween =
        tweenService:Create(
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
        tweenInfo,
        {CFrame = workspace:WaitForChild("wayPoint1_VENDETTA").CFrame}
    )
    tween:Play()
	workspace.Gravity = 196.2
end
function tweenMode2()
	workspace.Gravity = 0
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(wayPointTables.TweenDelay, Enum.EasingStyle.Linear)
    tween =
        tweenService:Create(
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
        tweenInfo,
        {CFrame = workspace:WaitForChild("wayPoint2_VENDETTA").CFrame}
    )
    tween:Play()
	workspace.Gravity = 196.2
end
function tweenMode3()
	workspace.Gravity = 0
    tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(wayPointTables.TweenDelay, Enum.EasingStyle.Linear)
    tween =
        tweenService:Create(
        game:GetService("Players")["LocalPlayer"].Character:WaitForChild("HumanoidRootPart"),
        tweenInfo,
        {CFrame = workspace:WaitForChild("wayPoint3_VENDETTA").CFrame}
    )
    tween:Play()
	workspace.Gravity = 196.2
end 


local goPoint1 = Misc1:AddButton({
	Name = "To Waypoint 1",
	Callback = function()
		if wayPointTables.TweenModeIsActive == false then
			speaker.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("wayPoint1_VENDETTA").CFrame
		elseif wayPointTables.TweenModeIsActive == true then
			workspace.Gravity = 0
			tweenMode1()
		end
	end
})
local goPoint2 = Misc1:AddButton({
	Name = "To Waypoint 2",
	Callback = function()
		if wayPointTables.TweenModeIsActive == false then
			speaker.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("wayPoint2_VENDETTA").CFrame
		elseif wayPointTables.TweenModeIsActive == true then
			workspace.Gravity = 0
			tweenMode2()
		end
	end
})
local goPoint3 = Misc1:AddButton({
	Name = "To Waypoint 3",
	Callback = function()
		if wayPointTables.TweenModeIsActive == false then
			speaker.Character.HumanoidRootPart.CFrame = workspace:WaitForChild("wayPoint3_VENDETTA").CFrame
		elseif wayPointTables.TweenModeIsActive == true then
			workspace.Gravity = 0
			tweenMode3()
		end
	end
})


local waypooints = {}

_G.BreadCrumbs = false
breadcrumbSettinds = {
	BallDelay = 0.001;
	BallSize = 0.4;
	BallTransparency = 0;
	BallShape = "Ball";
	SmoothDestroy = false;
};

local breadcrumsbs = Misc2:AddToggle({
	Name = 'BreadCrumbs',
	Value = false,
	Flag = 'nilchbreadcrueadcrumsbsbrmsbsar1',
	Locked = false,
	Keybind = {
		Flag = 'nilbreadsl1',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			_G.BreadCrumbs = true
			while _G.BreadCrumbs == true do
				task.wait(breadcrumbSettinds.BallDelay)
				local breadball = Instance.new("Part")
				breadball.Shape = breadcrumbSettinds.BallShape
				breadball.Parent = workspace
				yeyesy = speaker.Character.HumanoidRootPart.CFrame
				breadball.CFrame = CFrame.new(yeyesy.Position.X, yeyesy.Position.Y - 1.7, yeyesy.Position.Z)
				breadball.Name = "breadcrumbs_VENDETTA"
				breadball.CanCollide = false
				breadball.Anchored = true
				breadball.Size = Vector3.new(breadcrumbSettinds.BallSize ,breadcrumbSettinds.BallSize, breadcrumbSettinds.BallSize)
				breadball.Material = "Neon"
				breadball.BrickColor = BrickColor.new("Really red")
				breadball.Transparency = breadcrumbSettinds.BallTransparency
			end
		else
			_G.BreadCrumbs = false
			wait()
			for i,v in pairs(workspace:GetChildren()) do
				if v.Name == "breadcrumbs_VENDETTA" then
					v:Destroy()
					if getgenv().SmoothDestroy == true then
						wait()
						v:Destroy()
					end
				end
			end
		end
	end
})
local breadcrumsbssmooth = Misc2:AddToggle({
	Name = 'Smooth Destroy',
	Value = false,
	Flag = 'nil4r1',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			breadcrumbSettinds.SmoothDestroy = true
		else
			breadcrumbSettinds.SmoothDestroy = false
		end
	end
})
local BallDelay = Misc2:AddSlider({
	Name = 'Delay',
	Flag = "slide_in_your_DMs4refd",
	Value = 0.001,
	Min = 0.001,
	Max = 0.5,
	Decimals = 5,
	llegalInput = false,
	Callback = function( BallDelay )
		breadcrumbSettinds.BallDelay = BallDelay
	end
})
local BallSize = Misc2:AddSlider({
	Name = 'Size',
	Flag = "slide_in_your_DMstfg",
	Value = 0.4,
	Min = 0.1,
	Max = 1,
	Decimals = 4,
	llegalInput = false,
	Callback = function( BallSize )
		breadcrumbSettinds.BallSize = BallSize
	end
})
local BallTransparency = Misc2:AddSlider({
	Name = 'Transparency',
	Flag = "slide_in_your_DMslkjbvcx",
	Value = 0,
	Min = 0,
	Max = 1,
	Decimals = 3,
	llegalInput = false,
	Callback = function( BallTransparency )
		breadcrumbSettinds.BallTransparency = BallTransparency
	end
})
local breamselecter = Misc2:AddDropdown({
	Name = 'Type',
	Flag = "balstyprvendetta",
	Multi = false,
	List = {
		"Ball",
		"Block"
	},
	Callback = function( WHAT_THE_FUCK )
		breadcrumbSettinds.BallShape = WHAT_THE_FUCK
	end
})
collidWithPLayers = false
coliideYes = Misc4:AddToggle({
	Name = 'Enable player Collisions',
	Value = false,
	Flag = 'enableplayr3sd',
	Locked = false,

	Callback = function( state )
		if ( state ) then
			collidWithPLayers = true
			while collidWithPLayers == true do
				wait(1)
				for i,v in pairs(game:GetService("Players"):GetDescendants()) do
					if v:IsA("Player") and workspace:FindFirstChild(v.Name) and v ~= speaker and workspace[v.Name]:FindFirstChild("CHECKER@__2") == nil then
						checker = Instance.new("BoolValue",workspace[v.Name])
						checker.Name = "CHECKER@__2"
						for i,v in pairs(workspace:WaitForChild(v.Name):GetDescendants()) do
							if v:IsA("Part") or v:IsA("MeshPart") then
								local collider = Instance.new("Part",v)
								collider.Name = "Cm8y4uh)(*-347u98dsn38rh)"
								collider.Size = v.Size
								collider.Position = v.Position
								collider.Transparency = 1
								local weld_000 = Instance.new("Weld",v)
								weld_000.Name = "dfhe4r8yf_3904uj(*37(873))"
								weld_000.Part0 = v
								weld_000.Part1 = collider
							end
						end
					end
				end
			end
		else
			collidWithPLayers = false
			wait()
			for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v.Name == "CHECKER@__2" or 
				v.Name == "Cm8y4uh)(*-347u98dsn38rh)" or 
				v.Name == "dfhe4r8yf_3904uj(*37(873))" then
					v:Destroy()
				end
			end
			Notify({
				Title = "player Collider",
				Description = "Could not revert :(",
				Duration = 2
			})
		end
	end
})
enlerespawn = Misc4:AddToggle({
	Name = 'Enable Respawn Button',
	Value = false,
	Flag = 'nilfrgr1',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
		else
			game:GetService("StarterGui"):SetCore("ResetButtonCallback", false)
		end
	end
})
enablechat = Misc4:AddToggle({
	Name = 'Show Chat',
	Value = false,
	Flag = 'sjpwc2hat',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', true)
			local player = speaker or game:GetService("Players"):GetPropertyChangedSignal("LocalPlayer"):Wait() or speaker

			local chatFrame = player.PlayerGui.Chat.Frame
			chatFrame.ChatChannelParentFrame.Visible = true
			chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
		else
			game:GetService("StarterGui"):SetCoreGuiEnabled('Chat', false)
			local player = speaker or game:GetService("Players"):GetPropertyChangedSignal("LocalPlayer"):Wait() or speaker

			local chatFrame = player.PlayerGui.Chat.Frame
			chatFrame.ChatChannelParentFrame.Visible = false
			chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
		end
	end
})
bubblechatheheh = Misc4:AddToggle({
	Name = 'Bubble Chat',
	Value = false,
	Flag = 'sjpwchat',
	Locked = false,
	Callback = function( state )
		game:GetService("Chat").BubbleChatEnabled = state
	end
})

words = {
    ['gay'] = 'Bullying',
    ['lesbian'] = 'Bullying',
    ['retard'] = 'Bullying',
    ['noob'] = 'Bullying',
    ['clown'] = 'Bullying',
    ['get a life'] = 'Bullying',
    ['getalife'] = 'Bullying',
    ['no life'] = 'Bullying',
    ['nolife'] = 'Bullying',
    ['wizard'] = 'Bullying',
    ['reports'] = 'Bullying',
    ['father'] = 'Bullying',
    ['mother'] = 'Bullying',
    ['dumb'] = 'Bullying',
    ['stupid'] = 'Bullying',
    ['cringe'] = 'Bullying',
    ['skill issue'] = 'Bullying',
    ['parent'] = 'Bullying',
    ['kid'] = 'Bullying',
    ['ugly'] = 'Bullying',
    ['child'] = 'Bullying',
    ['trash'] = 'Bullying',
    ['bozo'] = 'Bullying',
    ['kys'] = 'Bullying',
    ['die'] = 'Bullying',
    ['killyou'] = 'Bullying',
    ['loser'] = 'Bullying',
    ['black'] = 'Bullying',
    ['white'] = 'Bullying',
    ['ez l'] = 'Bullying',
    ['l ez'] = 'Bullying',
    ['negro'] = 'Bullying',
    ['nivver'] = 'Bullying',
    ['negar'] = 'Bullying',
    ['bad'] = 'Bullying',
    ['worst'] = 'Bullying',
    ['fat'] = 'Bullying',
    ['hack'] = 'Scamming',
	['scam'] = 'Scamming',
    ['exploit'] = 'Scamming',
    ['cheat'] = 'Scamming',
    ['download'] = 'Offsite Links',
    ['youtube'] = 'Offsite Links',
    ['dizzy'] = 'Offsite Links',
	['vendetta'] = 'Bullying',
	['vendetta'] = 'Bullying',
	['sex'] = 'Bullying',
	['fuck'] = 'Bullying',
	['fucker'] = 'Bullying',
	['porn'] = 'Bullying',
	['dick'] = 'Bullying',
	['pussy'] = 'Bullying',
	['vendetta'] = 'Bullying',
	['shit'] = 'Bullying',
	['roleplay'] = 'Bullying',
	['kys'] = 'Bullying',
	['kzzyzzszz'] = 'Bullying',
	['lgbt'] = 'Bullying',
	['iy'] = 'Bullying', -- heeheeheehaw
	['infinte'] = 'Bullying',
	['vxpe'] = 'Bullying',
	['vape'] = 'Bullying',
	['cunt'] = 'Bullying',
	['fag'] = 'Bullying',
	['dc'] = 'Offsite Links',
	['disc'] = 'Offsite Links',
	['discoard'] = 'Offsite Links',
	['rosabelle'] = 'Bullying', -- we dont talk about this
	['gg/'] = 'Offsite Links',
	['DEFAULT'] = 'Bullying',
	['nub'] = 'Bullying',
	['crap'] = 'Bullying',
	['cum'] = 'Bullying',
	['cock'] = 'Bullying',
	['dyke'] = 'Bullying',
	['shut'] = 'Bullying',
	['haha'] = 'Bullying',
	['skid'] = 'Bullying',
	['pornhub'] = 'Offsite Links', -- hehe
	['cp'] = 'Bullying',
	['loli'] = 'Bullying',
	['hentai'] = 'Bullying',
	['auto farm'] = 'Bullying',
	['autofarm'] = 'Bullying',
	['evon'] = 'Bullying',
	['jjsploit'] = 'Bullying',
	['synapse'] = 'Bullying',
	['krnl'] = 'Bullying',
	['eclipse'] = 'Bullying',
	['test_Vo_re'] = 'Bullying',
}


_G.AutoReport = false
autoreportvape = Misc4:AddToggle({
	Name = 'Auto report',
	Value = false,
	Flag = 'autoreportNOTSKIDDEDFROMVAPE',
	Keybind = {
		Flag = 'nilbr2eadcrumsbsl1',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			if syn then
				autoreportvape:Set(false)
				Notify({
					Title = "Auto Report",
					Description = "Auto report does not work on synapse",
					Duration = 2
				})
			else
				_G.AutoReport = true
				if not game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents') or not game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents'):FindFirstChild('OnMessageDoneFiltering') then return end
				DCSCE = game:GetService('ReplicatedStorage'):FindFirstChild('DefaultChatSystemChatEvents')
				local players = game:GetService("Players")

				function handler(msg,speaker2)
					for i,v in next, words do
						if string.match(string.lower(msg),i) then
							if _G.AutoReport == true then
								players:ReportAbuse(players[speaker2],v,'He is breaking roblox TOS')
								task.wait(1.5)
								players:ReportAbuse(players[speaker2],v,'He is breaking roblox TOS')
								Notify({
									Title = "Auto Report",
									Description = "Reported "..players[speaker2].Name.. "for "..v.."messgae: "..msg,
									Duration = 7
								})
							end
						end
					end
				end

				msg = DCSCE:FindFirstChild('OnMessageDoneFiltering')
				msg.OnClientEvent:Connect(function(msgdata)
					if tostring(msgdata.FromSpeaker) ~= speaker.Name then
						handler(tostring(msgdata.Message),tostring(msgdata.FromSpeaker))
					end
				end)
			end
		else
			_G.AutoReport = false
		end
	end
})
fakelag = Misc4:AddToggle({
	Name = 'Back Track',
	Value = false,
	Flag = 'fakelaggg',
	Keybind = {
		Flag = 'laggfeuash',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			settings():GetService("NetworkSettings").IncomingReplicationLag = 999999999
		else
			settings():GetService("NetworkSettings").IncomingReplicationLag = 0
		end
	end
})
_G.blinking = false
blinkvape = Misc4:AddToggle({
	Name = 'Blink',
	Value = false,
	Flag = 'fakelaggg2',
	Keybind = {
		Flag = 'lageragsdf',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			_G.blinking = true
			if sethiddenproperty then
				while _G.blinking == true do
					task.wait()
					sethiddenproperty(speaker.character.HumanoidRootPart, "NetworkIsSleeping", true)
				end
			else
				blinkvape:Set(false)
				Notify({
					Title = "Missing Function",
					Description = "Missing: sethiddenproperty",
					Duration = 2
				})
			end
		else
			_G.blinking = false
			sethiddenproperty(speaker.character.HumanoidRootPart, "NetworkIsSleeping", false)
		end
	end
})

chatcrsaher1 = flase
chatcrasher = Misc4:AddToggle({
	Name = 'Chat Crasher',
	Value = false,
	Flag = 'chatcrasher',
	Keybind = {
		Flag = 'crashololol',
		Mode = 'Toggle',
	},
	Callback = function( state )
		if ( state ) then
			chatcrsaher1 = true
			while chatcrsaher1 == true do
				wait(1.7)
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" ", "All")
			end
		else
			chatcrsaher1 = flase
		end
	end
})
antiyanglei = false
antiyanglei2 = Misc4:AddToggle({
	Name = 'Player Notifyer',
	Value = false,
	Flag = 'antiyeang',
	Locked = false,
	Keybind = {
		Flag = 'antiyeahg',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			antiyanglei = true
			game.Players.PlayerAdded:Connect(function(newPlayer)
				if antiyanglei == true then
					Notify({
						Title = "Player Notifyer",
						Description = newPlayer.Name .." has Joined. ID:" .. newPlayer.UserId,
						Duration = 4
					})
				end
			end)
		else
			antiyanglei = false
		end
	end
})

local disableshafechat = Misc4:AddButton({
	Name = "Disable Safe Chat   ",
	Callback = function()
		speaker:SetSuperSafeChat(false)
		Notify({
			Title = "Client Disabler",
			Description = "safe chat disabled.. i hope",
			Duration = 4
		})
	end
})

local safewarning = Visuals1:CreateLabel({
	Text = 'If your account is 13+,'
})
local safewarning2 = Visuals1:CreateLabel({
	Text = 'this might flag you!'
})

local antichatlogg = Misc4:AddButton({
	Name = "Anti Chat logger",
	Callback = function()
		if not getgenv().Anti_Chat_Logger_Has_Ran then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/ACL.lua"))()
			Notify({
				Title = "Anti Chat logger",
				Description = "Anti Chat Logger is now active",
				Duration = 4
			})
		end
		getgenv().Anti_Chat_Logger_Has_Ran = true
	end
})
local antikick = Misc4:AddButton({
	Name = "Disable Client-Kicks",
	Callback = function()
		local oldhmmi
		local oldhmmnc
		oldhmmi = hookmetamethod(game, "__index", function(self, method)
			if self == speaker and method:lower() == "kick" then
				return error("Expected ':' not '.' calling member function Kick", 2)
			end
			return oldhmmi(self, method)
		end)
		oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
			if self == speaker and getnamecallmethod():lower() == "kick" then
				return
			end
			return oldhmmnc(self, ...)
		end)
		wait()
		Notify({
			Title = "Client Disabler",
			Description = "Client kicks are now disabled.",
			Duration = 2
		})
	end
})
local anticlirnttp = Misc4:AddButton({
	Name = "Anti Client Teleport",
	Callback = function()
		local TeleportService = TeleportService
		local oldhmmi
		local oldhmmnc
		oldhmmi = hookmetamethod(game, "__index", function(self, method)
			if self == TeleportService then
				if method:lower() == "teleport" then
					return error("Expected ':' not '.' calling member function Kick", 2)
				elseif method == "TeleportToPlaceInstance" then
					return error("Expected ':' not '.' calling member function TeleportToPlaceInstance", 2)
				end
			end
			return oldhmmi(self, method)
		end)
		oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
			if self == TeleportService and getnamecallmethod():lower() == "teleport" or getnamecallmethod() == "TeleportToPlaceInstance" then
				return
			end
			return oldhmmnc(self, ...)
		end)
		Notify({
			Title = "Client Disabler",
			Description = "Client teleports are now disabled.",
			Duration = 2
		})
	end
})
local shiftlockyes = Misc4:AddButton({
	Name = "Force Shift Lock",
	Callback = function()
		speaker.DevEnableMouseLock = true
		Notify({
			Title = "Enable Shift Lock",
			Description = "Shift-lock is now enabled",
			Duration = 2
		})
	end
})
local uscambleNaes = Misc4:AddButton({
	Name = "Unscrambled names",
	Callback = function()
		for i,v in pairs(game:GetDescendants()) do
			if v:IsA("Workspace") or v:IsA("Camera") or v:IsA("Players") or v:IsA("Lighting") or v:IsA("ReplicatedStorage") or v:IsA("StarterPlayer") then
				v.Name = v.ClassName
			end
		end
	end
})
local NoInviWalls = Misc4:AddButton({
	Name = "Remove invisible parts",
	Callback = function()
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
				if v.Transparency == 1 then
					v:Destroy()
				end
			end
		end
	end
})
anticheatdisablerslabe = Misc4:CreateLabel({
	Text = 'Anticheat Disablers'
})
ancdiabled = Misc4:AddButton({
	Name = "Godmode Disabler",
	Callback = function()
		speaker.Character.Parent = nil
		speaker.Character.HumanoidRootPart:Destroy()
		speaker.Character.Parent = workspace
	end
})
local ancdiabled = Misc4:AddButton({
	Name = "Get Reg Disabler",
	Callback = function()
		Library.Prompt({
			Name = "Get Reg Disabler",
			Text = "/!\\ This could potentially crash you! /!\\",
			Buttons = {
				Yes = function()
					local reg = getreg()

					for i, Function in next, reg do
						if type(Function) == "function" then
							local info = getinfo(Function)
							
							if info.name == "kick" then
								if (hookfunction(info.func, function(...)end)) then
									Notify({
										Title = "Client Disabler",
										Description = "Kick has been hooked",
										Duration = 2
									})
								else
									Notify({
										Title = "Client Disabler",
										Description = "Failed to hook the kick",
										Duration = 2
									})
								end
							end
						end
					end
				end,
				No = function()
					print("pussy")
				end
			}
		})
	end
})

local SpammerTable = {
	Message = "string";
	Delay = 0.001;
}
_G.ChatSpam = false
local chatspamRwuygdf = Misc6:AddToggle({
	Name = 'Chat Spammer',
	Value = false,
	Flag = 'nchatasoammerrgr1',
	Locked = false,
	Callback = function( state )
		if ( state ) then
			_G.ChatSpam = true
			while _G.ChatSpam == true do
				task.wait()
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SpammerTable.Message, "All")
				wait(SpammerTabl.eDelay)
			end
		else
			_G.ChatSpam = false
		end
	end
})
local message = Misc6:AddTextbox({
	Name = 'Message',
	Flag = "pvendettadsg",
	Value = "Vo is hot :3",
	Callback = function( x )
		SpammerTable.Message = x
	end
})
local meaggadrdelay = Misc6:AddSlider({
	Name = 'Delay',
	Flag = "slSYUSs",
	Value = 0.1,
	Min = 0.1,
	Max = 20,
	Decimals = 2,
	Callback = function( x )
		SpammerTable.Delay = x
	end
})

local Players = game.Players
local exitgames = Misc7:AddButton({
	Name = "Exit Game",
	Callback = function()
		game:Shutdown()
	end
})
local rejoinyesyes = Misc7:AddButton({
	Name = "Rejoin Game",
	Callback = function()
		local plr = game.Players.LocalPlayer
		game:GetService("TeleportService"):Teleport(game.PlaceId, plr)
	end
})

jobid = Misc7:AddButton({
	Name = "Copy jobId",
	Callback = function()
		setclipboard('Roblox.GameLauncher.joinGameInstance('..game.PlaceId..', "'..game.JobId..'")')
		Notify({
			Title = "Job Id",
			Description = "Job Id copied to clipboard.",
			Duration = 2
		})
	end
})
gameid = Misc7:AddButton({
	Name = "Copy gameId",
	Callback = function()
		setclipboard(game.PlaceId)
		Notify({
			Title = "game Id",
			Description = "game Id copied to clipboard.",
			Duration = 2
		})
	end
})

heehehawhasd12 = Misc7:CreateLabel({
	Text = 'Place Id: '.. game.PlaceId
})
heehehawhasd13 = Misc7:CreateLabel({
	Text = 'Job Id: '.. game.JobId
})
heehehawhasd15 = Misc7:CreateLabel({
	Text = 'Game Name: '.. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
})
heehehawhasd14 = Misc7:CreateLabel({
	Text = 'Max Players: '.. game:GetService("Players").MaxPlayers
})

local HideCharTable = {
	vendettaTransparency = 0.5;
	vendettaSizeX = 3; 
	vendettaSizeY = 5;
	vendettaSizeZ = 3;
	vendettaColor = Color3.new(115, 15, 180);
	Veiwvendetta = true;
}

local hidechar = Misc8:AddToggle({
	Name = 'Hide Character',
	Value = false,
	Flag = 'njhgfhjdrfgd1',
	Locked = false,
	Keybind = {
		Flag = '54i54recxgtrfvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			oldcf = speaker.Character.HumanoidRootPart.CFrame
			vendetta = speaker.Character.HumanoidRootPart
			vendetta.CFrame = CFrame.new(0, -50, 0)
			vendetta.Anchored = true
			vendettapart = Instance.new("Part")
			vendettapart.Size = Vector3.new(HideCharTable.vendettaSizeX, HideCharTable.vendettaSizeY, HideCharTable.vendettaSizeZ)
			vendettapart.Anchored = true
			
			vendettapart.Material = Enum.Material.Neon
			vendettapart.Transparency = HideCharTable.vendettaTransparency
			vendettapart.CFrame = oldcf
			vendettapart.CanCollide = false
			vendettapart.Parent = game:GetService("Workspace")
			if HideCharTable.Veiwvendetta == true then
				game:GetService("Workspace").CurrentCamera.CameraSubject = vendettapart
			end
			while state == true do
				wait()
				vendettapart.Color = HideCharTable.vendettaColor
			end
		else
			vendetta.Anchored = false
			vendetta.CFrame = oldcf
			vendettapart:Destroy()
			game:GetService("Workspace").CurrentCamera.CameraSubject = speaker.Character
		end
	end
})

settingssad3dasdsdf = Misc8:CreateLabel({
	Text = 'Settings'
})

hidechar2 = Misc8:AddToggle({
	Name = 'View Part',
	Value = true,
	Flag = 'njrfgd1',
	Locked = false,

	Callback = function( state )
		HideCharTable.Veiwvendetta = state
	end
})

hidechar3 = Misc8:AddSlider({
	Name = 'Transparency',
	Flag = "sliMslkjbvcx",
	Value = 0.5,
	Min = 0,
	Max = 1,
	Decimals = 3,
	llegalInput = false,
	Callback = function( y )
		HideCharTable.vendettaTransparency = y
	end
})

hidechar22 = Misc8:AddTextbox({
	Name = 'X Axis Value',
	Flag = "pven",
	Value = 3,
	Callback = function( x )
		HideCharTable.vendettaSizeX = x
	end
})
hidechar24 = Misc8:AddTextbox({
	Name = 'Y Axis Value',
	Flag = "pvendettadsgefs",
	Value = 5,
	Callback = function( x )
		HideCharTable.vendettaSizeY = x
	end
})
hidechar26 = Misc8:AddTextbox({
	Name = 'Z Axis Value',
	Flag = "pvendettadsg35eg",
	Value = 3,
	Callback = function( x )
		HideCharTable.vendettaSizeZ = x
	end
})
hidechar26E = Misc8:AddColorPicker({
	Name = "part Color",
	Value = Color3.new(115, 15, 180),
	Callback = function( color )
		HideCharTable.vendettaColor = color
	end
})


HitBoxSizeExpand = 10
_G.ExpandHitbox = false
expandhitbox = Misc9:AddToggle({
	Name = 'Expand HitBoxes',
	Value = false,
	Flag = 'hitbox_big',
	Locked = false,
	Keybind = {
		Flag = '54asddsf_bigvc',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			_G.ExpandHitbox = true
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name == "Head" and v:IsA("MeshPart") then
					if v ~= speaker.Character.Head then
						v.Size = Vector3.new((HitBoxSizeExpand / 10), (HitBoxSizeExpand / 10), (HitBoxSizeExpand / 10))
					end
				end
			end
		else
			_G.ExpandHitbox = false
			for i,v in pairs(workspace:GetDescendants()) do
				if v.Name == "Head" and v:IsA("MeshPart") then
					v.Size = Vector3.new(1, 1, 1)
				end
			end
		end
	end
})


expandhitboxsizr = Misc9:AddTextbox({
	Name = 'Expand amount',
	Flag = "ecnpandsizxe",
	Value = 10,
	Callback = function( x )
		getgenv().HitBoxSizeExpand = x
	end
})

loadstring(game:HttpGet("https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/aimlib.lua"))()
local Aimbot = getgenv().Aimbot
local Settings, FOVSettings, Functions = Aimbot.Settings, Aimbot.FOVSettings, Aimbot.Functions
local Parts = {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "LowerTorso", "RightUpperLeg"}

Aim1:AddToggle({
	Name = "Enabled",
	Value = Settings.Disabled,
	Keybind = {
		Flag = 'aimbotyesyteys',
		Mode = 'Toggle',
	},
	Callback = function(New, Old)
		Settings.Enabled = New
	end
}).Default = Settings.Disabled

aimbotdevuder = Aim1:CreateLabel({
	Text = 'Aim Settings'
})

Aim1:AddToggle({
	Name = "Toggle mode",
	Value = Settings.Toggle,
	Callback = function(New, Old)
		Settings.Toggle = New
	end
}).Default = Settings.Toggle

Settings.LockPart = Parts[1]; Aim1:AddDropdown({
	Name = "Lock Part",
	Value = Parts[1],
	Callback = function(New, Old)
		Settings.LockPart = New
	end,
	List = Parts,
	Nothing = "Head"
}).Default = Parts[1]

Aim1:AddTextbox({
	Name = "Aim Key",
	Value = Settings.TriggerKey,
	Callback = function(New, Old)
		Settings.TriggerKey = New
	end
}).Default = Settings.TriggerKey

Aim1:AddSlider({
	Name = "Smoothness",
	Value = Settings.Sensitivity,
	Callback = function(New, Old)
		Settings.Sensitivity = New
	end,
	Min = 0,
	Max = 1,
	Decimals = 2
}).Default = Settings.Sensitivity

Aim1:AddToggle({
	Name = "Team Check",
	Value = Settings.TeamCheck,
	Callback = function(New, Old)
		Settings.TeamCheck = New
	end
}).Default = Settings.TeamCheck

Aim1:AddToggle({
	Name = "Wall Check",
	Value = Settings.WallCheck,
	Callback = function(New, Old)
		Settings.WallCheck = New
	end
}).Default = Settings.WallCheck

Aim1:AddToggle({
	Name = "Alive Check",
	Value = Settings.AliveCheck,
	Callback = function(New, Old)
		Settings.AliveCheck = New
	end
}).Default = Settings.AliveCheck

aimbotdevuder2 = Aim1:CreateLabel({
	Text = 'Misc'
})

Aim1:AddToggle({
	Name = "Third Person Mode",
	Value = Settings.ThirdPerson,
	Callback = function(New, Old)
		Settings.ThirdPerson = New
	end
}).Default = Settings.ThirdPerson

Aim1:AddSlider({
	Name = "Sensitivity",
	Value = Settings.ThirdPersonSensitivity,
	Callback = function(New, Old)
		Settings.ThirdPersonSensitivity = New
	end,
	Min = 0.1,
	Max = 1.5,
	Decimals = 2
}).Default = Settings.ThirdPersonSensitivity


fovcircleyes = Aim1:CreateLabel({
	Text = 'FOV Circle Settings'
})

Aim1:AddToggle({
	Name = "Fov Circle",
	Value = FOVSettings.Enabled,
	Callback = function(New, Old)
		FOVSettings.Enabled = New
	end
}).Default = FOVSettings.Enabled

Aim1:AddToggle({
	Name = "Visible",
	Value = FOVSettings.Visible,
	Callback = function(New, Old)
		FOVSettings.Visible = New
	end
}).Default = FOVSettings.Visible

Aim1:AddSlider({
	Name = "Size",
	Value = FOVSettings.Amount,
	Callback = function(New, Old)
		FOVSettings.Amount = New
	end,
	Min = 10,
	Max = 300
}).Default = FOVSettings.Amount


Aim1:AddToggle({
	Name = "Filled",
	Value = FOVSettings.Filled,
	Callback = function(New, Old)
		FOVSettings.Filled = New
	end
}).Default = FOVSettings.Filled

Aim1:AddSlider({
	Name = "Transparency",
	Value = FOVSettings.Transparency,
	Callback = function(New, Old)
		FOVSettings.Transparency = New
	end,
	Min = 0,
	Max = 1,
	Decimal = 1
}).Default = FOVSettings.Transparency

Aim1:AddSlider({
	Name = "Sides",
	Value = FOVSettings.Sides,
	Callback = function(New, Old)
		FOVSettings.Sides = New
	end,
	Min = 3,
	Max = 60
}).Default = FOVSettings.Sides

Aim1:AddSlider({
	Name = "Thickness",
	Value = FOVSettings.Thickness,
	Callback = function(New, Old)
		FOVSettings.Thickness = New
	end,
	Min = 1,
	Max = 50
}).Default = FOVSettings.Thickness

Aim1:AddColorpicker({
	Name = "Color",
	Value = FOVSettings.Color,
	Callback = function(New, Old)
		FOVSettings.Color = New
	end
}).Default = FOVSettings.Color

Aim1:AddColorpicker({
	Name = "Locked Color",
	Value = FOVSettings.LockedColor,
	Callback = function(New, Old)
		FOVSettings.LockedColor = New
	end
}).Default = FOVSettings.LockedColor


getgenv().settings = {
	TeamCheck = true;
	Delay = 0;
}
trigger = false
triggerbotyes = Aim3:AddToggle({
	Name = 'Enabled',
	Value = false,
	Flag = 'troiggernotvendetta',
	Locked = false,
	Keybind = {
		Flag = 'troiggernotvendetta2',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			trigger = true
			if trigger == true then
				while trigger == true do task.wait()
					if Mouse.Target and game.Players:FindFirstChild(Mouse.Target.Parent.Name) then
						local HitPlayer = game.Players:FindFirstChild(Mouse.Target.Parent.Name)
						if HitPlayer.Team ~= speaker.Team or not getgenv().settings.TeamCheck then
							if getgenv().settings.Delay > 0 then wait(getgenv().settings.Delay) end
							mouse1press(); wait(); mouse1release()
						end
					end
					if trigger == false then break end
				end
			end
		else
			trigger = false
		end
	end
})
dpveneaevtr1 = Aim3:CreateLabel({
	Text = 'Settings'
})
triggerbiteamcheck = Aim3:AddToggle({
	Name = 'Team Check',
	Value = true,
	Flag = 'yeaijuhdfgds',

	Callback = function( state )
		getgenv().settings.TeamCheck = state
	end
})
truggedelay = Aim3:AddSlider({
	Name = 'Trigger delay',
	Flag = "tesyhidshUHURIGGGER",
	Value = 0,
	Min = 0,
	Max = 5,
	Decimals = 2,
	Callback = function(x)
		getgenv().settings.Delay = x
	end
})

local clickMouseTable = {
	clickDelay = 0.1;
	releaseDelay = 0.1;
}

clicker_mouse = false
trclickmouse = Aim4:AddToggle({
	Name = 'Auto Clicker',
	Value = false,
	Flag = 'autofliucjejh84',
	Locked = false,
	Keybind = {
		Flag = 'sjftji4r',
		Mode = 'Toggle',
	},

	Callback = function( state )
		if ( state ) then
			if mouse1press and mouse1release then
				clicker_mouse = true
				Notify({
					Title = "Auto Clicker",
					Description = "click backspace and equals for fast toggle",
					Duration = 9
				})
				cancelAutoClick = UIS.InputBegan:Connect(function(input, gameProcessedEvent)
					if not gameProcessedEvent then
						if (input.KeyCode == Enum.KeyCode.Backspace and UIS:IsKeyDown(Enum.KeyCode.Equals)) or (input.KeyCode == Enum.KeyCode.Equals and UIS:IsKeyDown(Enum.KeyCode.Backspace)) then
							clicker_mouse = false
							trclickmouse:Set(false)
							cancelAutoClick:Disconnect()
						end
					end
				end)
				repeat wait(clickMouseTable.clickDelay)
					mouse1press()
					wait(clickMouseTable.releaseDelay)
					mouse1release()
				until clicker_mouse == false
			else
				trclickmouse:Set(false)
				Notify({
					Title = "Missing function",
					Description = "missing: mouse1press and mouse1release",
					Duration = 2
				})
			end
		else
			clicker_mouse = false
		end
	end
})
clickDelay22 = Aim4:AddSlider({
	Name = 'Click delay',
	Flag = "cldu94tws",
	Value = 0.1,
	Min = 0,
	Max = 5,
	Decimals = 2,
	Callback = function(x)
		clickMouseTable.clickDelay = x
	end
})
clickDelay22 = Aim4:AddSlider({
	Name = 'Release Delay',
	Flag = "cldu94ts",
	Value = 0.1,
	Min = 0,
	Max = 5,
	Decimals = 2,
	Callback = function(x)
		clickMouseTable.releaseDelay = x
	end
})


dev1 = Credits1:CreateLabel({
	Text = 'valk | Main Dev'
})

Scripter1 = Credits2:CreateLabel({
	Text = 'Exunys	 | Aimbot'
})

Scripter3 = Credits2:CreateLabel({
	Text = 'valk	 | Thirdperson Aimbot Fix'
})

Scripter2 = Credits2:CreateLabel({
	Text = 'zurewrath | Old CFrame Speed'
})

Cool1 = Credits3:CreateLabel({
	Text = 'E009'
})
Cool2 = Credits3:CreateLabel({
	Text = 'Noro'
})
Cool5 = Credits3:CreateLabel({
	Text = 'Azura'
})

copydc = Credits4:AddButton({
	Name = "Copy Discord Invite",
	Callback = function()
		setclipboard('https://discord.gg/concat')
		Notify({
			Title = "Copy Discord Invite",
			Description = "invite Copied to clipboard",
			Duration = 2
		})
	end
})


Cool6 = Credits5:CreateLabel({
	Text = 'Script Version: '.. ScriptVersion
})
do
	local arraylist = Credits5:AddToggle({
		Name = 'Array List',
		Value = false,
		Flag = 'd8h4iARRAQY',
		Locked = false,

		Callback = function( state )
			if ( state ) then
                shared["CometConfigs"] = {
                	Enabled = true
                }
			else
				shared["CometConfigs"] = {
					Enabled = false
				}
			end
		end
	})
end
arrayexae = Credits5:CreateLabel({
	Text = 'Experimental feature, not yet implemented. '
})

devoidersaslas = Credits5:CreateLabel({
	Text = '⸻⸻⸻⸻⸻'
})

if syn then
	syn.queue_on_teleport(
		[[
			game:GetService('ReplicatedFirst'):RemoveDefaultLoadingScreen()
			repeat wait(.1) until game:GetService('Players').LocalPlayer
			loadstring(game:HttpGet("https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/NewMain.lua"))()
		]]
	)
else
	queue_on_teleport(
		[[
			game:GetService('ReplicatedFirst'):RemoveDefaultLoadingScreen()
			repeat wait(.1) until game:GetService('Players').LocalPlayer
			loadstring(game:HttpGet("https://raw.githubusercontent.com/valkryant/vendettaOwnCheck/main/NewMain.lua"))()
		]]
	)
end

Notify({
	Title = "Vendetta   |   v".. ScriptVersion,
	Description = "Loaded in "..tick() - executiontime.. " seconds.",
	Duration = 4
})
