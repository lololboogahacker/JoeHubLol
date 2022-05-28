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

				misc:CreateButton("Collect All Items", function()
					game.StarterGui:SetCore("SendNotification", {
						Title = "Joe Hub";
						Text = "This can be very glitchy if you dont own all the places necessary to use this. (still works but kinda bad)";
						Duration = 30;
						})

						for i,v in pairs(game:GetService("Workspace").Collectibles:GetChildren()) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame wait(0.37)
						end
				end)
                -------------
               
                
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


				misc:CreateDropdown("Dispensers/Boosters (might not work)", {"Free Royal Jelly","Royal Jelly (6 tix)","Honey Dispenser","Coconut Dispenser","Blue Field Booster","Red Field Booster","Field Booster","Glue Dispenser"}, function(String)
if String == "Free Royal Jelly" then game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Free Royal Jelly Dispenser")
elseif String == "Royal Jelly (6 tix)" then game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Royal Jelly Dispenser")
elseif String == "Honey Dispenser" then game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Honey Dispenser")
elseif String == "Coconut Dispenser" then game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Coconut Dispenser")	
elseif String == "Blue Field Booster" then game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Blue Field Booster")	
elseif String == "Red Field Booster" then game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Red Field Booster")	
elseif String == "Field Booster" then game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Field Booster")	
elseif String == "Glue Dispenser" then game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Glue Dispenser")	
end
				end)


				misc:CreateButton("Honey-Storm", function()
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Honeystorm"
}

game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer(unpack(args))

				end)

				
				misc:CreateToggle("Auto-Scoop", nil, function(State)
                    getgenv().autoscoop = State
                    while autoscoop do wait() 
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").ClickEvent:FireServer() end		
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