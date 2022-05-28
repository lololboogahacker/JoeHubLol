local Config = {
	WindowName = "Joe Hub",
	Color = Color3.fromRGB(255,128,64),
	Keybind = Enum.KeyCode.RightShift
}

game:GetService("ReplicatedStorage").AntiCheat.Punish:Destroy()



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Time Game")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("Main")
--local Section2 = Tab1:CreateSection("Second Section")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

game:GetService("Workspace").World1.kickpart2:Destroy()
game:GetService("Workspace").World1.kickpart:Destroy()
game:GetService("Workspace").kickpart:Destroy()


local root = game.Players.LocalPlayer.Character.HumanoidRootPart

function hitboxes()
	getgenv().bruh = false;
	getgenv().HeadSize = 10 -- edit  here, 1-7ish is less blatant if used correctly
 game:GetService('RunService').RenderStepped:connect(function()
 for i,v in next, game:GetService('Players'):GetPlayers() do
 if v.Name ~= game:GetService('Players').LocalPlayer.Name then
 pcall(function()
	 if getgenv().bruh then
 v.Character.HumanoidRootPart.Size = Vector3.new(getgenv().HeadSize,getgenv().HeadSize,getgenv().HeadSize)
 v.Character.HumanoidRootPart.Transparency = 0.65   -- edit if you want it to be visible or transparent
 v.Character.HumanoidRootPart.Color = getgenv().hitboxexpandercolor
 v.Character.HumanoidRootPart.Material = "Smooth Plastic"
 v.Character.HumanoidRootPart.CanCollide = false else
 v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
 v.Character.HumanoidRootPart.Transparency = 1  v.Character.HumanoidRootPart.CanCollide = true end
 
 end) end end end)
end

hitboxes()

-------------

Section1:CreateButton("Collect Some Boxes (E)", function()
	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(key)
if key == "e" then
		local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart
		for i, v in pairs(game:GetService("Workspace").Box:GetDescendants()) do
			if v.Name == "TouchInterest" and v.Parent then 
				firetouchinterest(playerHead, v.Parent, 0)
				wait(0.1)
				firetouchinterest(playerHead, v.Parent, 1)
				break;
			end
		end 
wait(.1)
		local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart
		for i, v in pairs(game:GetService("Workspace").BoxSecond:GetDescendants()) do
			if v.Name == "TouchInterest" and v.Parent then 
				firetouchinterest(playerHead, v.Parent, 0)
				wait(0.1)
				firetouchinterest(playerHead, v.Parent, 1)
				break;
			end
		end 
	end end)
end)


Section1:CreateToggle("Inf-Jump", nil, function(State)
		getgenv().InfiniteJumpEnabled = State
		game:GetService("UserInputService").JumpRequest:connect(function()
			if InfiniteJumpEnabled then
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end)
end)
-------------
local Toggle1 = Section1:CreateToggle("Hit-Box-Expander", nil, function(State)
	getgenv().bruh = State
end)



Section1:CreateToggle("Advertise us, We need it!", nil, function(State)
	getgenv().bruh1 = State
	while bruh1 do
			wait(1.2555555)

local args = {
	[1] = "Anon Cheats Has The Best Cheetos Buy Today @ .gg/QQq7MMwMhA ",
	[2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

		end
end)

local hitboxslider = Section1:CreateSlider("Hit-Box-Size",7,14,nil,false, function(Value)
	getgenv().HeadSize = Value
end)

Section1:CreateColorpicker("Hitbox Color", function(Color)
getgenv().hitboxexpandercolor = Color;
			end)


hitboxslider:SetValue(5)


Section1:CreateButton("Dash (F)", function()
	local lol = 1
	local mouse = game.Players.LocalPlayer:GetMouse()
	mouse.KeyDown:Connect(function(key)
		if key == "f" then
			lol = 0
			while lol == 0 do
				wait(0.088)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *= CFrame.new(0, 0, -5) end end
	end)

	mouse.KeyUp:connect(function(key)
		if key == "f" then
			lol = 1 end end)
end)

Section1:CreateButton("TP To Spawn (1st island)", function()
	game:GetService("ReplicatedStorage").PlayerTP:FireServer()
end)


Section1:CreateButton("TP To Spawn (2nd island)", function()
	local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart

	game:GetService("ReplicatedStorage").PlayerTP:FireServer()
	wait(0.85)

playerHead.CFrame = game:GetService("Workspace").tppart2.CFrame
end)



Section1:CreateTextBox("Player Name", "Player's Name that you want to teleport to.", false, function(String)
	getgenv().name = String
end)

Section1:CreateButton("Teleport", function()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v.DisplayName:lower():find(getgenv().name:lower()) then
			
			game:GetService("ReplicatedStorage").PlayerTP:FireServer()
			wait(0.85)
			player = game.Players.LocalPlayer.Character
			player.HumanoidRootPart.CFrame = v.Character:FindFirstChild("Left Leg").CFrame
			
		end end
end)



	

--[[Toggle1:CreateKeybind("Y", function(Key)
	print(Key)
end)]]

--[[local TextBox1 = Section1:CreateTextBox("TextBox 1", "Only numbers", true, function(Value)
	print(Value)
end)
TextBox1:AddToolTip("Yes only numbers")
TextBox1:SetValue("new value here")
Section1:CreateTextBox("TextBox 1\nMultiline", "numbers and letters", false, function(String)
	print(String)
end)]]

-------------
-------------


-------------
--[[Section2:CreateLabel("Label 2\nMultiline")
-------------
local Button2 = Section2:CreateButton("Button 2\nMultiline", function()
	print("Click Button 2")
end)
Button2:AddToolTip("Button 2 ToolTip\nMultiline")
-------------
local Toggle2 = Section2:CreateToggle("Toggle 2\nMultiline", nil, function(State)
	print(State)
end)
Toggle2:AddToolTip("Toggle 2 ToolTip\nMultiline")
Toggle2:CreateKeybind("U", function(Key)
	print(Key)
end)
-------------
local Slider2 = Section2:CreateSlider("Slider 2\nMultiline", 0,100,nil,false, function(Value)
	print(Value)
end)
Slider2:AddToolTip("Slider 2 ToolTip\nMultiline")
Slider2:SetValue(25)
-------------
local Dropdown2 = Section2:CreateDropdown("Dropdown 2\nMultiline", {"Option 4","Option 5","Option 6"}, function(String)
	print(String)
end)
Dropdown2:AddToolTip("Dropdown 2 ToolTip")
Dropdown2:SetOption("Option 6")
-------------
local Colorpicker2 = Section2:CreateColorpicker("Colorpicker 2\nMultiline", function(Color)
	print(Color)
end)
Colorpicker2:AddToolTip("Colorpicker 2 ToolTip")
Colorpicker2:UpdateColor(Color3.fromRGB(0,0,0))]]
-------------
local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)

local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

-- credits to jan for patterns
local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("5553946656")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
end)
Dropdown3:SetOption("Default")

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(0,0,0))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.12)
