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
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
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
