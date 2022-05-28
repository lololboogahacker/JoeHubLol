game.Lighting.SunRays.Intensity = 0.25
                    game.Lighting.ColorCorrection.Contrast = 0.2
                    game.Lighting.ColorCorrection.Saturation = 0.53
                    game.Lighting.Bloom.Enabled = false 
                
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