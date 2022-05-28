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