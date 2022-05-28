if game.PlaceId == 6488220605 then
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
	 v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
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
	wait(.05)
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
	
	
	hitboxslider:SetValue(5)
	
	
	
	Section1:CreateButton("Tp to Spawn (1st island)", function()
		game:GetService("ReplicatedStorage").PlayerTP:FireServer()
	end)
	
	
	Section1:CreateButton("Tp to Spawn (2nd island)", function()
		local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart
	
		game:GetService("ReplicatedStorage").PlayerTP:FireServer()
		wait(0.85)
	
	playerHead.CFrame = game:GetService("Workspace").tppart2.CFrame
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
elseif game.PlaceId == 7860844204 then
    local Config = {
        WindowName = "Joe Hub",
        Color = Color3.fromRGB(255,128,64),
        Keybind = Enum.KeyCode.RightShift
    }
    
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
    local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))
    
    local Tab1 = Window:CreateTab("Life Sentence")
    local Tab2 = Window:CreateTab("UI Settings")
    
    local Section1 = Tab1:CreateSection("Main")
    local Section2 = Tab1:CreateSection("Teleports/Buys")
    local Section3 = Tab2:CreateSection("Menu")
    local Section4 = Tab2:CreateSection("Background")
    
    getgenv().TeleportEnabled = false
    
    getgenv().WalkSpeedEnabled = false
    
    getgenv().smoke1 = false
    
    getgenv().walkspeedvalue = false
    
    getgenv().players = game.Players
    
    getgenv().plr = players.LocalPlayer
    
    getgenv().char = plr.Character
    
    getgenv().root = char.HumanoidRootPart
    
    getgenv().human = char.Humanoid
    
    local mouse = plr:GetMouse()
    
    
    Section1:CreateButton("Get Gun Parts", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
       for i,v in pairs(game:GetService("Workspace").LootSpawns:GetChildren()) do
        if v:IsA("Model") and v.Gear.Transparency == 0 or v.Blade.Transparency == 0 or v.Spring.Transparency == 0 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame + Vector3.new(0, 5, 0)
            wait(0.3)
            fireproximityprompt(v.Part.Attachment.ProximityPrompt)
            wait(0.3)
        end
       end
    wait(0.1) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    Section1:CreateButton("Player-ESP", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnameddESP.lua')())
    end)
    
    
    Section1:CreateToggle("Click TP (Z)", nil, function(State)
        local Plr = game:GetService("Players").LocalPlayer
        local Mouse = Plr:GetMouse()
        
        Mouse.Button1Down:connect(function()
        if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Z) then return end
        if not Mouse.Target then return end
        if State then
        Plr.Character:MoveTo(Mouse.Hit.p) end
        end)
    end)
    
    Section1:CreateToggle("Farm Gun Parts", nil, function(State)
    getgenv().gunpartsfarm = State
    if State then
    farmgunparts() end
    end)
    
    Section1:CreateToggle("Auto-Collect-Money", nil, function(State)
    getgenv().moneyloop = State
    if State then
    collectmoney()
    end
    end)
    
    Section1:CreateToggle("Smoke", nil, function(State)
    smoke1 = State
    if State then
    smoke32()
    end
    end)
    
    Section1:CreateToggle("WalkSpeed", nil, function(State)
        WalkSpeedEnabled = State
    if State then veryspeed() end
        end)
    
    local speedslider = Section1:CreateSlider("Speed", 16,100,nil,true, function(value)
        if WalkSpeedEnabled then
            walkspeedvalue = value end
    end)
    speedslider:SetValue(16)

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
    --[[Toggle1:CreateKeybind("Y", function(Key)
        print(Key)
    end)]]
    
    --[[local TextBox1 = Section1:CreateTextBox("TextBox 1", "Only numbers", true, function(Value)
        print(Value)
    end)
    TextBox1:AddToolTip("Yes only numbers")
    TextBox1:SetValue("new value here")]]
    
    local dropdownteleports = Section2:CreateDropdown("Teleports", {"Yard","Cell Block","Work Shop","Laundry Room","Sewer","Coal Mine","Cafe","Solitary Hall","Guard Hall"}, function(mob)
        if mob == "Yard" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(62.6827698, 6.49230194, -56.8713837) end
    if mob == "Cell Block" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.152359, 16.1129208, 105.52282) end
    if mob == "Laundry Room" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(183.185425, 2.21661067, -104.592781) end
    if mob == "Sewer" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.202415, -39.0209007, -145.600067) end
    if mob == "Coal Mine" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-72.8877792, 3.66992235, -172.95314) end
    if mob == "Cafe" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(150.364258, 2.06775856, -6.4443469) end
    if mob == "Solitary Hall" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16.1553001, 2.21343613, -180.875778) end
    if mob == "Work Shop" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(185.677246, 4.9634347, -104.82489) end
    if mob == "Guard Hall" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115.637627, 2.16125679, -24.7234993) end
    end)
    
    
    
    
    local safetps = Section2:CreateDropdown("Safe Teleports", {"Safe 1","Safe 2","Safe 3","Safe 4","Safe 5","Safe 6","Safe 7","Safe 8","Safe 9","Safe 10","Safe 11","Safe 12"}, function(String)
    if mob == "Safe 1" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(208.038193, 3.00996375, -77.9116364) end
    if mob == "Safe 2" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(196.779694, 3.1160624, 95.6684494) end
    if mob == "Safe 3" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.0278282, 3.00995898, -110.235954) end
    if mob == "Safe 4" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.147552, -36.7120323, -197.00412) end
    if mob == "Safe 5" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.2790909, -36.3854675, 58.1328125) end
    if mob == "Safe 6" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(208.038193, 3.00996375, -77.9116364) end
    if mob == "Safe 7" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-65.2025681, 3.00996375, 68.4922485) end
    if mob == "Safe 8" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109.333473, 3.00995851, -66.6397018) end
    if mob == "Safe 9" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71.6962204, 6.01010799, 67.661972) end
    if mob == "Safe 10" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.8019409, 3.0099678, 32.3738327) end
    if mob == "Safe 11" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(58.1852722, 3.00995946, 52.7050972) end
    if mob == "Safe 12" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.9564285, 2.99617577, 177.611771) end
    end)
    
    
    local AutoBuys = Section2:CreateDropdown("Auto-Buys", {"Buy Water 10$","Buy Milk 12$","Buy Cola 10$","Buy Burger 20$","Buy LockPick 15$","Buy Brick 50$","Buy Pipe 175$","Buy Knife 45$","Buy Axe 300$","Buy Pickaxe 50$","Buy Sledgehammer 350$"}, function(string)
    if String == "Buy Water 10$" then game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180.274277, 2.46432185, 96.139328)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.WaterButton.Button.ProximityPrompt)
    
    elseif string == "Buy Milk 12$" then game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(144.584305, 2.35821986, 15.3796902)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.MilkButton.Button.ProximityPrompt)
    elseif string == "Buy Cola 10$" then game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29.7972908, 1.35852289, -17.8943501)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.ColaButton.Button.ProximityPrompt)
    elseif string == "Buy Burger 20$" then game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(153.211105, 2.35821986, 15.3796902)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.BurgerButton.Button.ProximityPrompt)
    elseif string == "Buy LockPick 15$" then game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(40.8240623, 1.35852289, -17.8943501)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.LockPickButton.Button.ProximityPrompt)
    elseif string == "Buy Brick 50$" then game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30.1088142, 1.7620883, 12.7063904)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.BrickButton.Button.ProximityPrompt)
    elseif string == "Buy Pipe 175$" then game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-34.8957329, 1.657938, -72.8807373)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.PipeButton.Button.ProximityPrompt)
    elseif string == "Buy Knife 45$" then game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(155.294205, 2.35922027, 37.1378517)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.KnifeButton.Button.ProximityPrompt)
    elseif string == "Buy Axe 300$" then game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(107.668289, -39.5373535, 50.3270264)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.AxeButton.Button.ProximityPrompt)
    elseif string == "Buy Pickaxe 50$" then	
        game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-98.9681549, 1.55801129, -179.423523)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.PickaxeButton.Button.ProximityPrompt)
    elseif string == "Buy Sledgehammer 350$" then	
        game:GetService("Workspace").Buttons:GetChildren()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-122.759277, 2.35822058, -84.1536255)
        wait(0.23)
        fireproximityprompt(game:GetService("Workspace").Buttons.SledgehammerButton.Button.ProximityPrompt) end
    end)
    
    
    
    --[[Section1:CreateTextBox("TextBox 1\nMultiline", "numbers and letters", false, function(String)
        print(String)
    end)
    -------------
    local Slider1 = Section1:CreateSlider("Slider 1", 0,100,nil,true, function(Value)
        print(Value)
    end)
    Slider1:SetValue(50)
    -------------
    local Dropdown1 = Section1:CreateDropdown("Dropdown 1", {"Option 1","Option 2","Option 3"}, function(String)
        print(String)
    end)
    Dropdown1:AddToolTip("Dropdown 1 ToolTip")
    Dropdown1:SetOption("Option 1")
    -------------
    local Colorpicker1 = Section1:CreateColorpicker("Colorpicker 1", function(Color)
        print(Color)
    end)
    Colorpicker1:AddToolTip("Colorpicker 1 ToolTip")
    Colorpicker1:UpdateColor(Color3.fromRGB(255,0,0))
    -------------
    Section2:CreateLabel("Label 2\nMultiline")
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
    
    function collectmoney()
        spawn(function()
            while moneyloop do 
               for _,v in next, Workspace:GetChildren() do
                    local Prompt = v:FindFirstChildOfClass("ProximityPrompt")
                    if Prompt and v.Name == "DroppedCash" and game.Players.LocalPlayer:DistanceFromCharacter(v.Position) < Prompt.MaxActivationDistance then
                        fireproximityprompt(Prompt)
                    end
               end
            wait()
            end
        
        end) end
    
    
        function farmgunparts()
            spawn(function()
                while gunpartsfarm do
                
                   for i,v in pairs(game:GetService("Workspace").LootSpawns:GetChildren()) do
            if v:IsA("Model") and v.Gear.Transparency == 0 or v.Blade.Transparency == 0 or v.Spring.Transparency == 0 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame + Vector3.new(0, 5, 0)
                wait(0.3)
                fireproximityprompt(v.Part.Attachment.ProximityPrompt) end 
            end
                
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15.2103424, 4.9634347, -156.199493) end end) end
    
        function veryspeed()
            spawn(function()
                while WalkSpeedEnabled do
                    if WalkSpeedEnabled then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeedvalue wait()end end
                end) end
        
        function smoke32()
            spawn(function()
                
                while smoke1 do
            
        
        game:GetService("ReplicatedStorage").Events.SnowBreath:FireServer("SnowBreath") wait()end 
                end) end
    
                while true do
                    wait(1.5)
                game:GetService("Players").LocalPlayer.Backpack.Stats.TeleportPass.Value = true
                end
    
                function collectmoney()
                    spawn(function()
                        while moneyloop do 
                           for _,v in next, Workspace:GetChildren() do
                                local Prompt = v:FindFirstChildOfClass("ProximityPrompt")
                                if Prompt and v.Name == "DroppedCash" and game.Players.LocalPlayer:DistanceFromCharacter(v.Position) < Prompt.MaxActivationDistance then
                                    fireproximityprompt(Prompt)
                                end
                           end
                        wait()
                        end
                    
                    end) end
                    
                    
                
                
                function farmgunparts()
                    spawn(function()
                        while gunpartsfarm do
                        
                           for i,v in pairs(game:GetService("Workspace").LootSpawns:GetChildren()) do
                    if v:IsA("Model") and v.Gear.Transparency == 0 or v.Blade.Transparency == 0 or v.Spring.Transparency == 0 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame + Vector3.new(0, 5, 0)
                        wait(0.3)
                        fireproximityprompt(v.Part.Attachment.ProximityPrompt) end 
                    end
                        
                wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15.2103424, 4.9634347, -156.199493) end end) end
                elseif game.PlaceId == 1962086868 then
                    local Config = {
                        WindowName = "Joe Hub",
                        Color = Color3.fromRGB(255,128,64),
                        Keybind = Enum.KeyCode.RightShift
                    }
                    
                    
                    local mt = getrawmetatable(game)
                    make_writeable(mt)
                    
                    local namecall = mt.__namecall
                    
                    mt.__namecall = newcclosure(function(self, ...)
                        local method = getnamecallmethod()
                        
                        if method == "Kick" or method == "kick" then
                            return wait(9e9)
                        end
                        
                    
                        
                        return namecall(self, ...)
                    end)
                    
                    game.Players.LocalPlayer.PlayerScripts.LocalScript2:Destroy()
                    game.Players.LocalPlayer.PlayerScripts.LocalScript:Destroy()
                    
                    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
                    local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))
                    
                    local Tab1 = Window:CreateTab("Tower Of Hell")
                    local Tab2 = Window:CreateTab("UI Settings")
                    
                    local Section1 = Tab1:CreateSection("Main")
                    local Section3 = Tab2:CreateSection("Menu")
                    local Section4 = Tab2:CreateSection("Background")
                    
                    
                    
                    
                    
                    Section1:CreateSlider("WalkSpeed",16,100,nil,false,function(v)
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v;
                    end)
                    
                    Section1:CreateSlider("JumpPower",50,200,nil,false,function(v)
                        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v;
                    end)
                    Section1:CreateButton("Win",function()
                        local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart
                    
                    playerHead.CFrame = game:GetService("Workspace").tower.sections.finish.start.CFrame
                    wait(0.4)
                    playerHead.CFrame = game:GetService("Workspace").tower.sections.finish.FinishGlow.CFrame
                    wait()
                    playerHead.CFrame = game:GetService("Workspace").tower.sections.finish.FinishGlow.CFrame
                    wait()
                    playerHead.CFrame = game:GetService("Workspace").tower.sections.finish.FinishGlow.CFrame 
                    
                        game.StarterGui:SetCore("SendNotification", {
                    Title = "Joe Hub";
                    Text = "If you died, wait 20 seconds and try again";
                    Duration = "10";
                    })
                    
                    end)
                    
                    Section1:CreateButton("Open A Crate (you need the money)",function()
                    local args = {
                        [1] = "Regular"
                    }
                    
                    game:GetService("ReplicatedStorage").openBox:InvokeServer(unpack(args))
                    end)
                    
                    Section1:CreateButton("Become Invincible")
                    game.Players.LocalPlayer.Character.KillScript:Destroy()
                    game.Players.LocalPlayer.Character.hitboxScript:Destroy()
                    
                    
                    
                    
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
                elseif game.PlaceId == 8131316275 or 8131331959 then
                    if game.PlaceId == 8131316275 then
                    game.Lighting.SunRays.Intensity = 0.25
                    game.Lighting.ColorCorrection.Contrast = 0.2
                    game.Lighting.ColorCorrection.Saturation = 0.53
                    game.Lighting.Bloom.Enabled = false end
                
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "Kill Aura";
                        Text = "Make Sure To be in a tribe or else aura wont work.";
                        Duration = "60";
                        })
                
                local Config = {
                  WindowName = "JOE HUB",
                  Color = Color3.fromRGB(255,128,64),
                  Keybind = Enum.KeyCode.RightControl
                }
                
                function autoeatfood()
                  spawn(function()
                local lol = 1
                local plr = game:GetService("Players").LocalPlayer
                local mouse = plr:GetMouse()
                mouse.KeyDown:connect(function(key)
                  if key == _G.autoeatkeybind then
                      lol = 0
                      while lol == 0 do
                          wait(0.067)
                          local Event = game:GetService("ReplicatedStorage").Events.UseBagItem
                          if _G.Eattoggle then
                          Event:FireServer(_G.autoeatfood1)
                      end end end end)
                local plr = game:GetService("Players").LocalPlayer
                local mouse = plr:GetMouse()
                mouse.KeyUp:connect(function(key)
                  if key == _G.autoeatkeybind then
                      lol = 1
                  end end) 
                end) end
                
                local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart;
                
                
                local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
                local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))
                
                local Tab1 = Window:CreateTab("Booga")
                local Tab2 = Window:CreateTab("UI Settings")
                
                local Section1 = Tab1:CreateSection("Main")
                local Section2 = Tab1:CreateSection("Auto Plant")
                local Section99 = Tab1:CreateSection("Misc")
                local Section100 = Tab1:CreateSection("Teleportation")
                local Section103 = Tab1:CreateSection("Inf Bag")
                local Section7 = Tab1:CreateSection("Misc #2")
                local Section3 = Tab2:CreateSection("Menu")
                local Section4 = Tab2:CreateSection("Background")
                
                
                
                Buttonnahhhhhhhhhhhhhhhhhhhh = Section1:CreateButton("Anti-Aura", function()
                  local STUPIDKIDSAVATAR = game.Players.LocalPlayer;
                      STUPIDKIDSAVATAR.Character.LeftUpperArm:Destroy()
                      STUPIDKIDSAVATAR.Character.RightUpperArm:Destroy()
                      STUPIDKIDSAVATAR.Character["Left Arm"]:Destroy()
                      STUPIDKIDSAVATAR.Character["Right Arm"]:Destroy()
                  end)
                
                    
                    
                local Toggle1 = Section1:CreateToggle("Kill-Aura", nil, function(State)
                    
                  getgenv().killaura = State
                  if getgenv().killaura == true then
                    getgenv().killaura = false
                    game.StarterGui:SetCore("ChatMakeSystemMessage", {
                      Text = "[JOE]: Disabled Killaura",
                      Color = Color3.fromRGB(255, 100, 150),
                      Font = Enum.Font.SourceSansBold,
                      FontSize = Enum.FontSize.Size24
                    })
                  else
                    getgenv().killaura = true
                    game.StarterGui:SetCore("ChatMakeSystemMessage", {
                      Text = "[JOE]: Enabled Killaura",
                      Color = Color3.fromRGB(30, 255, 30),
                      Font = Enum.Font.SourceSansBold,
                      FontSize = Enum.FontSize.Size24
                    })
                              while getgenv().killaura == true do wait()
                          local Players = game:GetService("Players")
                          local LocalPlayer = Players.LocalPlayer
                  
                          local function closestplr()
                              local Character = LocalPlayer.Character
                              local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")
                              if not (Character or HumanoidRootPart) then return end
                  
                              local TargetDistance = math.huge
                              local Target
                  
                              for i,v in ipairs(Players:GetPlayers()) do
                                  if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                                      local TargetHRP = v.Character.HumanoidRootPart
                                      local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
                                      if mag < TargetDistance then
                                          TargetDistance = mag
                                          Target = v
                                      end
                                  end
                              end
                  
                              return tostring(Target)
                          end
                
                              
                          
                          -- Script generated by SimpleSpy - credits to exx#9394
                          local killauratarget = closestplr()
                          if game.Players[killauratarget].Character["Body Colors"].TorsoColor3 == game.Players.LocalPlayer.Character["Body Colors"].TorsoColor3 then 
                          else
                          local args = {
                              [1] = {
                                  [1] = game:GetService("Players")[killauratarget].Character.HumanoidRootPart}}
                  
                          game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(unpack(args))
                      end end end
                end)
                Toggle1:CreateKeybind("Q", function(Key)
                end)
                -------------
                
                
                
                
                local Toggle100000 = Section1:CreateToggle("Auto-Pickup", nil, function(State)
                
                getgenv().autopickup = State;
                
                local Players = game:GetService("Players")
                local Lp = Players.LocalPlayer
                local Char = Lp.Character
                local Root = Char.HumanoidRootPart
                local uis = game:GetService'UserInputService'
                
                
                local Load;
                local Pick = function(Character)
                  local Pos = Root.Position
                  local Load = {}
                
                  for i,v in pairs(workspace:GetChildren()) do
                      if v:FindFirstChild("Pickup") ~= nil and v.ClassName == "Part" or v.ClassName == "UnionOperation" then
                          local Object = v.Position
                          local Mag = (Pos - Object).Magnitude
                
                          if Mag < 50 then
                              table.insert(Load, v)
                          end
                      end
                  end
                  for i,v in pairs(Load) do
                      for i=1,10 do
                          v.Position = Pos
                          game:GetService'ReplicatedStorage'.Events.Pickup:FireServer(v)
                      end
                  end
                end
                wait(0.12)
                
                uis.InputBegan:Connect(function(Key)
                  if uis:GetFocusedTextBox() then return end
                
                  if Key.KeyCode == Enum.KeyCode.G then
                      if getgenv().autopickup then-- Enum.KeyCode[PickupKey] for certain Key!
                      Pick(Char)
                  end end end)
                
                
                end)
                
                
                autoeatfood()
                
                
                
                
                
                local Toggle2 = Section1:CreateToggle("Walkspeed", nil, function(State)
                  getgenv().WalkSpeed = State;
                getgenv().Speed = Speed;
                
                local mt = getrawmetatable(game)
                local old = mt.__newindex
                setreadonly(mt, false)
                
                mt.__newindex = newcclosure(function(t,k,v)
                  pcall(function()
                      if t == game:GetService("Players").LocalPlayer.Character.Humanoid and k == "WalkSpeed" and getgenv().WalkSpeed then
                          v = getgenv().Speed;
                      end
                  end)
                  return old(t,k,v)
                end)
                end)
                
                
                
                
                local Slider1 = Section1:CreateSlider("Speed", 16,18,nil,true, function(Value)
                  getgenv().Speed = Value;
                end)
                Slider1:SetValue(16)
                -------------
                
                
                
                
                
                  
                
                
                
                
                
                
                
                
                
                local Toggle4 = Section1:CreateToggle("Auto-eat", nil, function(State)
                  _G.Eattoggle = State
                end)
                
                Section1:CreateTextBox("Auto-eat Food", "yes", false, function(String)
                  _G.autoeatfood1 = String
                end)
                
                Section1:CreateTextBox("Auto-eat Keybind", "yes", false, function(String)
                  _G.autoeatkeybind = String
                end)
                
                if game.PlaceId == 8131331959 then local Button5 = Section99:CreateButton("Void Rock TP", function()
                  local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart;
                  for i, v in pairs(game:GetService("Workspace").TeleportParts.Part:GetDescendants()) do
                      if v.Name == "TouchInterest" and v.Parent then 
                          firetouchinterest(playerHead, v.Parent, 0)
                          wait(0.1)
                          firetouchinterest(playerHead, v.Parent, 1)
                          break;
                      end
                  end
                  end) end
                
                local Toggle3 = Section7:CreateToggle("Spam", nil, function(State)
                  getgenv().spam = State;
                while spam do
                  
                
                local args = {
                  [1] = getgenv().spamwords,
                  [2] = "All"
                }
                
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args)) wait(getgenv().spamdelay)
                end
                end)
                
                local Dropdown3 = Section99:CreateDropdown("Teleports", {"Sun Island","Old God","Haven","Volcano"}, function(mob3)
                  if mob3 == "Sun Island" then local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart;
                      for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
                          if v.Name == "TouchInterest" and v.Parent then 
                              firetouchinterest(playerHead, v.Parent, 0)
                              wait(0.1)
                              firetouchinterest(playerHead, v.Parent, 1)
                              break;
                          end
                      end
                wait(1.5)
                
                playerHead.CFrame = CFrame.new(-765.80188, 310.448242, -1193.0903) end
                if mob3 == "Old God" then   local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart;
                      for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
                          if v.Name == "TouchInterest" and v.Parent then 
                              firetouchinterest(playerHead, v.Parent, 0)
                              wait(0.1)
                              firetouchinterest(playerHead, v.Parent, 1)
                              break;
                          end
                      end
                wait(1.5)
                
                playerHead.CFrame = game:GetService("Workspace").Resources["Old God"].Eyes.CFrame end
                if mob3 == "Haven" then local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart;
                      for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
                          if v.Name == "TouchInterest" and v.Parent then 
                              firetouchinterest(playerHead, v.Parent, 0)
                              wait(0.1)
                              firetouchinterest(playerHead, v.Parent, 1)
                              break;
                          end
                      end end
                
                
                if mob3 == "Volcano" then
                  local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart;
                      for i, v in pairs(game:GetService("Workspace").HavenPortal:GetDescendants()) do
                          if v.Name == "TouchInterest" and v.Parent then 
                              firetouchinterest(playerHead, v.Parent, 0)
                              wait(0.1)
                              firetouchinterest(playerHead, v.Parent, 1)
                              break;
                          end
                      end end end)
                
                
                local Button100 = Section99:CreateButton("God Set", function()
                local eventc = game:GetService("ReplicatedStorage").Events.CraftItem;
                local eventu = game:GetService("ReplicatedStorage").Events.UseBagItem;
                eventc:FireServer("God Halo")
                eventc:FireServer("God Chestplate")
                eventc:FireServer("God Legs")
                eventc:FireServer("God Rock")
                wait(0.06)
                eventu:FireServer("God Halo")
                eventu:FireServer("God Chestplate")
                eventu:FireServer("God Legs")
                
                end)
                
                if game.PlaceId == 8131316275 then local Toggle30 = Section99:CreateToggle("Crystal Bridge", nil, function(State)
                  getgenv().crybridge = State;
                  if crybridge then
                      game:GetService("Workspace").CrystalBridge.Transparency = 0
                
                game:GetService("Workspace").CrystalBridge.CanCollide = true else
                  
                  game:GetService("Workspace").CrystalBridge.Transparency = 1
                  
                  game:GetService("Workspace").CrystalBridge.CanCollide = false end
                  end) end
                
                
                
                
                Section7:CreateTextBox("Spam Words", "Spam Words", false, function(String)
                getgenv().spamwords = String;
                end)
                
                Section7:CreateTextBox("Spam Delay", "Spam Delay", true, function(String)
                  getgenv().spamdelay = String;
                end)
                
                local Dropdown2 = Section2:CreateDropdown("Plant Boxes", {"10x10 Plant","7x7 Plant","5x5 Plant"}, function(mob1)
                  if mob1 == "10x10 Plant" then  pos = game.Players.LocalPlayer.Character.LowerTorso.Position
                      loc = {
                        1,
                        0,
                        0,
                        0,
                        1,
                        -5.56028681E-08,
                        0,
                        -5.56028681E-08,
                        1
                      }
                      ps = game:GetService("ReplicatedStorage").Events.PlaceStructure
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z + 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z + 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z + 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z + 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z + 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z + 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z + 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z + 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 36, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 36, pos.y - 2, pos.z + 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 36, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 36, pos.y - 2, pos.z + 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 36, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 36, pos.y - 2, pos.z + 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 36, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 36, pos.y - 2, pos.z + 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 36, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 36, pos.y - 2, pos.z - 4, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 36, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 36, pos.y - 2, pos.z - 12, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 36, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 36, pos.y - 2, pos.z - 20, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 36, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 36, pos.y - 2, pos.z - 28, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 28, pos.y - 2, pos.z - 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 20, pos.y - 2, pos.z - 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 12, pos.y - 2, pos.z - 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 4, pos.y - 2, pos.z - 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 4, pos.y - 2, pos.z - 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 12, pos.y - 2, pos.z - 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 20, pos.y - 2, pos.z - 36, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 28, pos.y - 2, pos.z - 36, unpack(loc)), 0)
                    end if mob1 == "5x5 Plant" then pos = game.Players.LocalPlayer.Character.LowerTorso.Position
                      loc = {
                        1,
                        0,
                        0,
                        0,
                        1,
                        -5.56028681E-08,
                        0,
                        -5.56028681E-08,
                        1
                      }
                      ps = game:GetService("ReplicatedStorage").Events.PlaceStructure
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                    end
                    if mob1 == "7x7 Plant" then
                          pos = game.Players.LocalPlayer.Character.LowerTorso.Position
                      loc = {
                        1,
                        0,
                        0,
                        0,
                        1,
                        -5.56028681E-08,
                        0,
                        -5.56028681E-08,
                        1
                      }
                      ps = game:GetService("ReplicatedStorage").Events.PlaceStructure
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 24, pos.y - 2, pos.z + 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z + 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z + 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z + 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z + 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z + 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 24, pos.y - 2, pos.z + 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 24, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 24, pos.y - 2, pos.z + 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 24, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 24, pos.y - 2, pos.z + 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 24, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 24, pos.y - 2, pos.z, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 24, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 24, pos.y - 2, pos.z - 8, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 24, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 24, pos.y - 2, pos.z - 16, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 24, pos.y - 2, pos.z - 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 16, pos.y - 2, pos.z - 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x + 8, pos.y - 2, pos.z - 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x, pos.y - 2, pos.z - 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 8, pos.y - 2, pos.z - 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 16, pos.y - 2, pos.z - 24, unpack(loc)), 0)
                      ps:FireServer("Plant Box", CFrame.new(pos.x - 24, pos.y - 2, pos.z - 24, unpack(loc)), 0)
                    end
                    
                end)
                
                
                
                local Button999 = Section100:CreateButton("TP to Player", function()
                  
                  for i,v in pairs(game:GetService("Players"):GetChildren()) do
                  if v.Name:lower():find(getgenv().player43klol:lower()) then
                local playerHead = game.Players.LocalPlayer.Character.HumanoidRootPart
                for i, v in pairs(game:GetService("Workspace").LavaPortal:GetDescendants()) do
                          if v.Name == "TouchInterest" and v.Parent then 
                              firetouchinterest(playerHead, v.Parent, 0)
                              wait(0.1)
                              firetouchinterest(playerHead, v.Parent, 1)
                              break;
                          end
                      end
                wait(1.5)
                
                playerHead.CFrame = CFrame.new(74.8618622, -3.24557328, 1457.4646, -0.137807131, -0.138335854, 0.980750918, -0.0462418757, 0.990017176, 0.133145332, -0.989379048, -0.0270033851, -0.142828226) 
                wait(0.03)
                
                player = game.Players.LocalPlayer.Character
                player.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.Part.CFrame
                
                
                
                end end
                end)
                
                Section100:CreateTextBox("TP", "Player Name", false, function(String)
                  getgenv().player43klol  = String;
                end)
                
                
                local Button4 = Section2:CreateButton("AutoPlant (p and b)", function()
                local plantkey = "p"
                local collectkey = "b"
                
                
                local Player = game:GetService("Players").LocalPlayer
                local Mouse = Player:GetMouse()
                
                
                _G.plant = function()
                  for _, v in pairs(workspace.Deployables:GetChildren()) do
                      if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 500 then
                          game.ReplicatedStorage.Events.InteractStructure:FireServer(v, _G.item)
                      end
                  end
                end
                
                if _G.Bush == true then
                
                _G.collect = function()
                  for _, v in pairs(workspace:GetChildren()) do
                      if v.Name ==  _G.item.." Bush" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                          game.ReplicatedStorage.Events.Pickup:FireServer(v)
                      end
                  end
                end end
                
                if _G.Crop == true then
                  _G.collect = function()
                  for _, v in pairs(workspace:GetChildren()) do
                      if v.Name ==  _G.item.." Crop" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                          game.ReplicatedStorage.Events.Pickup:FireServer(v)
                      end
                  end
                end end
                
                if _G.Tree == true then
                  _G.collect = function()
                  for _, v in pairs(workspace:GetChildren()) do
                      if v.Name ==  _G.item.." Tree" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                          game.ReplicatedStorage.Events.Pickup:FireServer(v)
                      end
                  end
                end end
                
                
                Mouse.KeyUp:connect(function(k)
                  if k == placekey then
                      for i = 1, amountofpots do
                          game.ReplicatedStorage.Events.PlaceStructure:FireServer("Plant Box", Mouse.Hit, 0)
                      end
                      
                
                  elseif k == plantkey then
                      
                      _G.plant()
                      
                      
                      elseif k == collectkey then
                  
                      _G.collect()
                  end end)
                end)
                
                Section2:CreateTextBox("Item", "AutoPlant Item", false, function(String)
                  _G.item = String;
                end)
                
                
                local Toggle3 = Section2:CreateToggle("Bush", nil, function(State)
                  getgenv().Bush = State; end)
                  
                  local Toggle4 = Section2:CreateToggle("Crop", nil, function(State)
                  getgenv().Crop = State; end)
                  
                  local Toggle5 = Section2:CreateToggle("Tree", nil, function(State)
                  getgenv().Tree = State; end)
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                -------------
                local Colorpicker1 = Section1:CreateColorpicker("Ambient", function(Color)
                  if getgenv().ambienttg then
                  game:GetService("Lighting").ColorCorrection.TintColor = Color
                  else
                      
                  game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(255, 255, 255)
                  end
                getgenv().lol13 = Color;
                end)
                
                local Toggle5 = Section1:CreateToggle("Ambient Toggle", nil, function(State)
                  getgenv().ambienttg = State;
                  if getgenv().ambienttg then
                     game:GetService("Lighting").ColorCorrection.TintColor = getgenv().lol13
                      else game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(255, 255, 255) end
                end)
                
                
                
                
                
                
                
                
                
                
                
                -------------
                
                -------------
                
                -------------
                local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
                  Window:Toggle(State)
                end)
                Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
                  Config.Keybind = Enum.KeyCode[Key]
                end)
                Toggle3:SetState(true)
                
                local Toggle8 = Section2:CreateToggle("Alt Delete", nil, function(State)
                  getgenv().altdel = State;
                local Plr = game:GetService("Players").LocalPlayer
                local Mouse = Plr:GetMouse()
                
                Mouse.Button1Down:connect(function()
                if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then return end
                if not Mouse.Target then return end if altdel then Mouse.Target:Destroy() end
                end)
                end)
                
                local Toggle8 = Section2:CreateToggle("FOV", nil, function(State)
                  getgenv().FOV = State;
                  if getgenv().FOV then
                      game.Workspace.Camera.FieldOfView = getgenv().fovvalue
                      else game.Workspace.Camera.FieldOfView = 70 end
                end)
                
                
                local Slider10 = Section2:CreateSlider("FOV Amount", 70,120,nil,true, function(Value)
                  if getgenv().FOV then
                  game.Workspace.Camera.FieldOfView = Value end
                  
                  getgenv().fovvalue = Value
                end)
                
                Slider10:SetValue(70)
                
                -------------
                
                Section103:CreateButton("Open Market", function()
                    game.Players.LocalPlayer.PlayerGui.MainGui.RightPanel.Market.Visible = true
                end)
                
                Section103:CreateButton("Put Item For Sale", function()
                    local Item = _G.ligma1
                    local Amount = _G.ligma2
                    local Price = 10000
                game:GetService("ReplicatedStorage").Events.SubmitTrade:FireServer(Item, Amount, Price)
                    
                end)     
                
                Section103:CreateTextBox("Item", "Item Name", false, function(String)
                    _G.ligma1 = String;
                  end)
                
                  Section103:CreateTextBox("Amount", "Amount Of Item", false, function(String)
                    _G.ligma2 = String;
                  end)
                
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
                      Window:SetBackground("2151741365")
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
            elseif game.PlaceId == 1537690962 then
                local Config = {
                    WindowName = "Joe Hub",
                    Color = Color3.fromRGB(255,128,64),
                    Keybind = Enum.KeyCode.RightShift
                }
                
                local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
                local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))
                
                local Tab1 = Window:CreateTab("Bee Swarm")
                local Tab2 = Window:CreateTab("UI Settings")
                
                local misc = Tab1:CreateSection("Misc")
                --local Section2 = Tab1:CreateSection("Second Section")
                local Section3 = Tab2:CreateSection("Menu")
                local Section4 = Tab2:CreateSection("Background")
                
                -------------
                misc:CreateButton("Teleport To Hive", function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.SpawnPos.Value
                end)
                misc:CreateButton("Remove Red HQ doors (works)", function()
                    game:GetService("Workspace").MonsterBarriers.RoseZoneSouth:Destroy()
                    game:GetService("Workspace").Gates["Red HQ Gate"]:Destroy()
                    wait()
                    game:GetService("Workspace").Gates["Red HQ Gate"]:Destroy()
                    game:GetService("Workspace").Toys["Red HQ"]:Destroy()
                end)
                -------------
                 misc:CreateToggle("Auto-Scoop", nil, function(State)
                    getgenv().autoscoop = State
                    while autoscoop do wait() 
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").ClickEvent:FireServer() end		
                end)
                
                -------------
                misc:CreateDropdown("Teleports", {"Mushroom Field","Strawberry Field","Pumpkin Patch","Sunflower Field","Blue Flower Field","Mountain Top Field","Bamboo Field","Spider Field","Pine Tree Forest","Rose Field","Cactus Field","Stump Field","Clover Field","Coconut Field","Pepper Patch","Pineapple Patch","Dandelion Field"}, function(String)
                if String == "Mushroom Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Mushroom Field"].CFrame
                elseif String == "Strawberry Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Strawberry Field"].CFrame
                elseif String == "Pumpkin Patch" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Pumpkin Patch"].CFrame	
                elseif String == "Sunflower Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Sunflower Field"].CFrame
                elseif String == "Blue Flower Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Blue Flower Field"].CFrame
                elseif String == "Mountain Top Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Mountain Top Field"].CFrame
                                    elseif String == "Spider Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Spider Field"].CFrame
                                    elseif String == "Pine Tree Forest" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Pine Tree Forest"].CFrame
                                    elseif String == "Rose Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Rose Field"].CFrame
                                    elseif String == "Cactus Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Cactus Field"].CFrame
                                                                                                                                                                                                                            elseif String == "Stump Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Stump Field"].CFrame
                                                                                                                                                                                                                            elseif String == "Clover Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Clover Field"].CFrame
                                                                                                                                                                                                                            elseif String == "Pepper Patch" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Pepper Patch"].CFrame
                                                                                                                                                                                                                            elseif String == "Pineapple Patch" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Pineapple Patch"].CFrame
                                                                                                                                                                                                                            elseif String == "Dandelion Field" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FlowerZones["Dandelion Field"].CFrame
                                                                                                                                                                                                                            end
                end)
                -------------
                
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
                Slider4:SetValue(0.12) end
