local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
 
local Window = Rayfield:CreateWindow({
   Name = "KaGa HUB",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Coolest Gui ever",
   LoadingSubtitle = "by KaGa",
   ShowText = "KaGa HUB ", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Ocean", -- Check https://[Log in to view URL]
 
   ToggleUIKeybind = "B", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)
 
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "KaGa Hub"
   },
 
   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
 
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Red guy Sucks?",
      Subtitle = "Say True",
      Note = "Tip: say Yes it sucks", -- Use this to tell the user how to get a key
      FileName = "Question", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/rpqKvd9K"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
 
local MainTab = Window:CreateTab("Player", 4483362458) -- Title, Image
local MainSection = MainTab:CreateSection("Movility")
 
Rayfield:Notify({
   Title = "Notification",
   Content = "scipt have been executed correctly",
   Duration = 3,
   Image = 4483362458,
})
 
local Button = MainTab:CreateButton({
   Name = "Inf Jump",
   Callback = function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
   end,
})
 
        local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {16, 100},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

		local Button = MainTab:CreateButton({
   Name = "BluVelosity (q)",
   Callback = function()
   		loadstring(game:HttpGet("https://pastebin.com/raw/VDxFA1Ze"))()
   end,
})
 
        local Button = MainTab:CreateButton({
   Name = "Fly (Press F)",
   Callback = function()
   -- LocalScript dentro de StarterPlayerScripts
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
 
local player = Players.LocalPlayer
local Fly = false -- Estado inicial
local FlySpeed = 50 -- Velocidad de vuelo
 
-- Tecla F para activar/desactivar
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.F then
		Fly = not Fly
	end
end)
 
-- Loop de vuelo
RunService.RenderStepped:Connect(function()
	if Fly then
		local char = player.Character
		if char and char:FindFirstChild("HumanoidRootPart") then
			local hrp = char.HumanoidRootPart
			local move = Vector3.new(0,0,0)
			local cam = workspace.CurrentCamera.CFrame
 
			-- Movimiento WASD + SPACE/SHIFT
			if UserInputService:IsKeyDown(Enum.KeyCode.W) then move = move + cam.LookVector end
			if UserInputService:IsKeyDown(Enum.KeyCode.S) then move = move - cam.LookVector end
			if UserInputService:IsKeyDown(Enum.KeyCode.A) then move = move - cam.RightVector end
			if UserInputService:IsKeyDown(Enum.KeyCode.D) then move = move + cam.RightVector end
			if UserInputService:IsKeyDown(Enum.KeyCode.Space) then move = move + Vector3.new(0,1,0) end
			if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then move = move - Vector3.new(0,1,0) end
 
			if move.Magnitude > 0 then
				hrp.Velocity = move.Unit * FlySpeed
			else
				hrp.Velocity = Vector3.new(0,0,0)
			end
		end
	end
end)
 
   end,
})
 
        local Slider = MainTab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Stuts",
   CurrentValue = 50,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
          game.Players.LocalPlayer.Character.Humanoid.JumpPower= (Value)
   end,
})
 
        local Button = MainTab:CreateButton({
   Name = "Tp on click (Press X to tp)",
   Callback = function()
  -- LocalScript dentro de StarterPlayerScripts
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local mouse = player:GetMouse()
 
-- Tecla X para teleport
local TPKey = Enum.KeyCode.X
 
local UserInputService = game:GetService("UserInputService")
 
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == TPKey then
		local char = player.Character
		local hrp = char and char:FindFirstChild("HumanoidRootPart")
		if hrp and mouse.Target then
			-- Teleportar ligeramente arriba del punto para no caer dentro del suelo
			hrp.CFrame = CFrame.new(mouse.Hit.Position + Vector3.new(0,3,0))
		end
	end
end)
 
   end,
})
 
        local Misc = Window:CreateTab("Misc", 4483362458) -- Title, Image
        local Section = Misc:CreateSection("SelfDefense")
 
        local Button = Misc:CreateButton({
   Name = "Loop Health Safe",
   Callback = function()
       local Players = game:GetService("Players")
       local StarterGui = game:GetService("StarterGui")
       local player = Players.LocalPlayer
 
       StarterGui:SetCore("SendNotification", {
           Title = "Auto-Heal Activado",
           Text = "Tu vida se regenerará cada 0.5s",
           Duration = 5
       })
 
       -- Solo un loop activo a la vez
       if _G.autoHealActive then return end
       _G.autoHealActive = true
 
       local function enableAutoHeal(character)
           local humanoid = character:WaitForChild("Humanoid")
           task.spawn(function()
               while humanoid and humanoid.Parent and _G.autoHealActive do
                   if humanoid.Health > 0 and humanoid.Health < humanoid.MaxHealth then
                       humanoid.Health = humanoid.MaxHealth
                   end
                   task.wait(0.5)
               end
           end)
       end
 
       -- Activar en el personaje actual
       if player.Character then
           enableAutoHeal(player.Character)
       end
 
       -- Activar en respawns
       player.CharacterAdded:Connect(enableAutoHeal)
   end,
})
 
       -- NOCLIP
local noclipEnabled = false
local noclipConnection
local function toggleNoclip(state)
    noclipEnabled = state
    if state then
        noclipConnection = game:GetService("RunService").Stepped:Connect(function()
            for _, part in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end)
    else
        if noclipConnection then noclipConnection:Disconnect() end
    end
end

MainTab:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Flag = "NoclipToggle",
    Callback = toggleNoclip
})
        -- FULL BRIGHT
local fullBrightEnabled = false
local function toggleFullBright(state)
    fullBrightEnabled = state
    if state then
        game.Lighting.Brightness = 2
        game.Lighting.ClockTime = 12
        game.Lighting.FogEnd = 1e6
        game.Lighting.GlobalShadows = false
        game.Lighting.OutdoorAmbient = Color3.fromRGB(128,128,128)
    else
        -- Reset Lighting (puedes ajustarlo)
        game.Lighting.Brightness = 1
        game.Lighting.ClockTime = 14
        game.Lighting.FogEnd = 1000
        game.Lighting.GlobalShadows = true
        game.Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
    end
end

Misc:CreateToggle({
    Name = "Full Bright",
    CurrentValue = false,
    Flag = "FullBrightToggle",
    Callback = toggleFullBright
})
 
                local Button = Misc:CreateButton({
   Name = "Anti Kick (client Sided)",
   Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Anti-Kick/main/Anti-Kick.lua"))()
   end,
})
 
        local Button = Misc:CreateButton({
   Name = "Unban VC",
   Callback = function()
           voiceChatService = game:GetService("VoiceChatService")
voiceChatService:joinVoice()
   end,
})
 
        local Button = Misc:CreateButton({
   Name = "ESP",
   Callback = function()
           loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexDevlpr/Simple-ESP-using-Highlight-Roblox-/main/Minified_ver.lua"))()
   end,
})
 
        local Button = Misc:CreateButton({
   Name = "FE Invisible",
   Callback = function()
 
loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
   end,
})
 
-- Crear la tab Scripts
local ScriptsTab = Window:CreateTab("Scripts", 4483362458)
 
-- Crear sección Hubs dentro de Scripts
local HubsSection = ScriptsTab:CreateSection("Hubs")
 
-- Botones dentro de la sección Hubs
local Button = ScriptsTab:CreateButton({
    Name = "NameLess Admin",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/FilteringEnabled/NamelessAdmin/blob/main/Source?raw=true"))()
    end,
})
 
local Button = ScriptsTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Infinite-Yield-43437"))()
    end,
})
 
local Button = ScriptsTab:CreateButton({
    Name = "GhostHub",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-X-Ghost-Hub-X-7595"))()
    end,
})
 
local Button = ScriptsTab:CreateButton({
    Name = "AirHub",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/Exunys/AirHub-V2/main/src/Main.lua"))()
    end,
})
        local Utility = Misc:CreateSection("Utility")
 
        local Button = Misc:CreateButton({
   Name = "Check FPS and ping",
   Callback = function()
           local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui")
local StarterGui = game:GetService("StarterGui")
local RunService = game:GetService("RunService")
 
-- Revisar si ya existe el HUD
local existingHUD = gui:FindFirstChild("FPSHUD")
if existingHUD then
    existingHUD:Destroy()
    return
end
 
-- Crear sonido de notificación
local sound = gui:FindFirstChild("FPSNotifySound")
if not sound then
    sound = Instance.new("Sound")
    sound.Name = "FPSNotifySound"
    sound.SoundId = "rbxassetid://911882330" -- Sonido de notificación
    sound.Volume = 1
    sound.Parent = gui
end
sound:Play()
 
-- Crear ScreenGui y TextLabel para HUD
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FPSHUD"
screenGui.Parent = gui
 
local fpsLabel = Instance.new("TextLabel")
fpsLabel.Size = UDim2.new(0,200,0,50)
fpsLabel.Position = UDim2.new(0,10,0,10)
fpsLabel.BackgroundTransparency = 0.5
fpsLabel.BackgroundColor3 = Color3.fromRGB(121,156,208) -- #799CD0
fpsLabel.TextColor3 = Color3.fromRGB(255,255,255)
fpsLabel.TextScaled = true
fpsLabel.Font = Enum.Font.SourceSansBold
fpsLabel.Text = "FPS: 0 | Ping: 0ms"
fpsLabel.Parent = screenGui
 
-- Variables
local fps = 0
local ping = 0
local frames = 0
local lastTime = tick()
 
-- Calcular FPS
RunService.RenderStepped:Connect(function()
    frames = frames + 1
    if tick() - lastTime >= 1 then
        fps = frames
        frames = 0
        lastTime = tick()
    end
end)
 
-- Calcular ping
RunService.Heartbeat:Connect(function(delta)
    ping = math.floor(delta * 1000) -- ms aproximado
end)
 
-- Actualizar HUD cada segundo
task.spawn(function()
    while fpsLabel.Parent do
        fpsLabel.Text = "FPS: "..fps.." | Ping: "..ping.."ms"
        task.wait(1)
    end
end)
 
   end,
})
 
        local Button = Misc:CreateButton({
   Name = "Check Health",
   Callback = function()
           local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local gui = player:WaitForChild("PlayerGui")
 
-- Crear sonido en PlayerGui si no existe
local sound = gui:FindFirstChild("HealthNotifySound")
if not sound then
    sound = Instance.new("Sound")
    sound.Name = "HealthNotifySound"
    sound.SoundId = "rbxassetid://911882330" -- Sonido de notificación
    sound.Volume = 1
    sound.Parent = gui
end
sound:Play()
 
-- Mostrar notificación con salud
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Health Check",
        Text = "Tu salud actual es: " .. math.floor(humanoid.Health) .. " / " .. humanoid.MaxHealth,
        Duration = 5
    })
end)
 
   end,
})
local Button = Misc:CreateButton({
   Name = "Esp Npc Tools Models etc...",
   Callback = function()
   -- ESP para Tools y Models con ProximityPrompt
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local StarterGui = game:GetService("StarterGui")
 
local ESPEnabled = true -- toggle para activar/desactivar
 
-- Función para crear highlight en un item
local function highlightItem(item)
    if item:IsA("BasePart") or item:IsA("Model") then
        if item:IsA("Model") then
            if not item.PrimaryPart then
                item.PrimaryPart = item:FindFirstChildWhichIsA("BasePart")
            end
            item = item.PrimaryPart
        end
        if not item:FindFirstChild("ESP_Highlight") then
            local highlight = Instance.new("Highlight")
            highlight.Name = "ESP_Highlight"
            highlight.Adornee = item
            highlight.FillColor = Color3.fromRGB(121, 156, 208) -- azul #799CD0
            highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            highlight.Parent = item
        end
    end
end
 
-- Loop de ESP
RunService.RenderStepped:Connect(function()
    if ESPEnabled then
        for _, obj in pairs(Workspace:GetDescendants()) do
            if obj:IsA("Tool") then
                highlightItem(obj.Handle or obj)
            elseif obj:IsA("Model") and obj:FindFirstChildWhichIsA("ProximityPrompt") then
                highlightItem(obj)
            end
        end
    else
        -- Limpiar ESP si se desactiva
        for _, obj in pairs(Workspace:GetDescendants()) do
            local h = obj:FindFirstChild("ESP_Highlight")
            if h then h:Destroy() end
        end
    end
end)
 
-- Notificación al ejecutar
StarterGui:SetCore("SendNotification", {
    Title = "ESP Activado",
    Text = "Resaltando Tools y Models con ProximityPrompt",
    Duration = 3
})
 
   end,
})
 
        local Button = Misc:CreateButton({
   Name = "Restore Live",
   Callback = function()
           -- Heal Once Script (para tu simulador de exploits)
-- Solo cura al jugador una vez al ejecutarlo
 
local player = game.Players.LocalPlayer
 
local function healOnce()
    local char = player.Character
    if char then
        local hum = char:FindFirstChildOfClass("Humanoid")
        if hum and hum.MaxHealth > 0 then
            hum.Health = hum.MaxHealth
        end
    end
end
 
-- Ejecutar la curación inmediata
healOnce()
 
   end,
})
 
        local Button = Misc:CreateButton({
   Name = "Invisiblity v2 (z toggle)",
   Callback = function()
           --// Script: Invisibility Toggle con tecla Z
-- Tecla: Z
 
local player = game.Players.LocalPlayer
local userInput = game:GetService("UserInputService")
local sound = Instance.new("Sound", player:WaitForChild("PlayerGui"))
sound.SoundId = "rbxassetid://942127495"
sound.Volume = 1
 
-- Estado global para mantener toggle aunque re-ejecutes
if _G.invis_on == nil then
    _G.invis_on = false
end
 
local function setTransparency(character, transparency)
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("Decal") then
            part.Transparency = transparency
        end
    end
end
 
local function toggleInvisibility()
    _G.invis_on = not _G.invis_on
    sound:Play()
 
    if _G.invis_on then
        local savedpos = player.Character.HumanoidRootPart.CFrame
        task.wait()
        player.Character:MoveTo(Vector3.new(-25.95, 84, 3537.55))
        task.wait(0.15)
 
        local Seat = Instance.new("Seat", workspace)
        Seat.Anchored = false
        Seat.CanCollide = false
        Seat.Name = "invischair"
        Seat.Transparency = 1
        Seat.Position = Vector3.new(-25.95, 84, 3537.55)
 
        local Weld = Instance.new("Weld", Seat)
        Weld.Part0 = Seat
        Weld.Part1 = player.Character:FindFirstChild("Torso") or player.Character:FindFirstChild("UpperTorso")
 
        task.wait()
        Seat.CFrame = savedpos
        setTransparency(player.Character, 0.5)
 
        game.StarterGui:SetCore("SendNotification", {
            Title = "Invis ON",
            Duration = 3,
            Text = "Eres semi invisible"
        })
    else
        local invisChair = workspace:FindFirstChild("invischair")
        if invisChair then invisChair:Destroy() end
        setTransparency(player.Character, 0)
 
        game.StarterGui:SetCore("SendNotification", {
            Title = "Invis OFF",
            Duration = 3,
            Text = "Ya no eres invisible"
        })
    end
end
 
-- Toggle con tecla Z
userInput.InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == Enum.KeyCode.Z then
        toggleInvisibility()
    end
end)
 
-- También toggle inmediato al ejecutar
toggleInvisibility()
 
   end,
})

local Button = Misc:CreateButton({
   Name = "Bring all tools and models with PP",
   Callback = function()
           -- 🔹 Script: Traer todos los Tools y Modelos con Handle + ProximityPrompt hacia el jugador
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

-- Función para traer objetos
local function bringObject(obj)
	if obj:IsA("Tool") or (obj:IsA("Model") and obj:FindFirstChild("Handle")) then
		obj:PivotTo(root.CFrame + Vector3.new(0, 5, 0)) -- Los trae justo arriba tuyo
	elseif obj:IsA("BasePart") and obj:FindFirstChildOfClass("ProximityPrompt") then
		obj.CFrame = root.CFrame + Vector3.new(0, 5, 0)
	end
end

-- Buscar en Workspace
for _, obj in pairs(workspace:GetDescendants()) do
	bringObject(obj)
end

-- 🔁 Auto detectar nuevos objetos
workspace.DescendantAdded:Connect(function(obj)
	task.wait(0.2)
	bringObject(obj)
end)

-- 🔊 Notificación y Sonido
game.StarterGui:SetCore("SendNotification", {
	Title = "Bring Items",
	Text = "All Tools & Prompt Objects have been teleported!",
	Duration = 5
})

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://12222225" -- Sonido simple
sound.Volume = 3
sound.Parent = root
sound:Play()
   end,
})
        
        local Button = MainTab:CreateButton({
   Name = "Velocity Boost (C)",
   Callback = function()
           --// Script: Speed Boost Toggle
-- Tecla: C
 
local player = game.Players.LocalPlayer
local userInput = game:GetService("UserInputService")
local sound = Instance.new("Sound", player:WaitForChild("PlayerGui"))
sound.SoundId = "rbxassetid://942127495"
sound.Volume = 1
 
local defaultSpeed = 16
local boostedSpeed = 48
local isSpeedBoosted = false
 
local function toggleSpeedBoost()
    isSpeedBoosted = not isSpeedBoosted
    sound:Play()
 
    local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
    if humanoid then
        if isSpeedBoosted then
            humanoid.WalkSpeed = boostedSpeed
            game.StarterGui:SetCore("SendNotification", {
                Title = "Speed ON",
                Duration = 3,
                Text = "Velocidad: " .. boostedSpeed
            })
        else
            humanoid.WalkSpeed = defaultSpeed
            game.StarterGui:SetCore("SendNotification", {
                Title = "Speed OFF",
                Duration = 3,
                Text = "Velocidad: " .. defaultSpeed
            })
        end
    end
end
 
userInput.InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == Enum.KeyCode.C then
        toggleSpeedBoost()
    end
end)
 
-- Reset al respawn
player.CharacterAdded:Connect(function(character)
    isSpeedBoosted = false
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = defaultSpeed
end)
 
   end,
})
 
        local Trolling = Window:CreateTab("Trolling", 4483362458) -- Title, Image
        local Section = Trolling:CreateSection("Random stuff")
 
        local Button = Trolling:CreateButton({
   Name = "Kill All (need sword)",
   Callback = function()
           -- LocalScript: Kill All en loop sin GUI
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
 
-- Toggle global
if _G.killAllActive == nil then
    _G.killAllActive = false
end
 
-- Función principal para matar a todos usando firetouchinterest
local function killAllLoop()
    while _G.killAllActive do
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and tool:FindFirstChild("Handle") then
            tool:Activate()
            for _, plr in pairs(game.Players:GetPlayers()) do
                if plr ~= player and plr.Character then
                    local character = plr.Character
                    for _, part in ipairs(character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            firetouchinterest(tool.Handle, part, 0)
                            firetouchinterest(tool.Handle, part, 1)
                        end
                    end
                end
            end
        end
        task.wait(0.5) -- espera medio segundo antes de repetir
    end
end
 
-- Toggle al ejecutar
if not _G.killAllActive then
    _G.killAllActive = true
    spawn(killAllLoop) -- ejecuta en loop en un hilo separado
else
    _G.killAllActive = false
    warn("Kill All loop detenido.")
end
 
   end,
})
 
        local Button = Trolling:CreateButton({
   Name = "Fe Kill npc Katana",
   Callback = function()
           loadstring(game:HttpGet("https://pastebin.com/raw/NTNHKeMZ", true))()
   end,
})
 
        local Button = Trolling:CreateButton({
   Name = "Super Ring",
   Callback = function()
           loadstring(game:HttpGet("https://pastebin.com/raw/aZjaAr6F"))()
   end,
})

local Tab = Window:CreateTab("Games", 4483362458)
local BiastSec = Tab:CreateSection("Biast")
        
local player = game.Players.LocalPlayer
local selectedItem = nil
local itemsFolder = workspace:FindFirstChild("Items") -- Carpeta donde están los items

-- Función para escanear items
local function scanItems()
    local items = {}
    if itemsFolder then
        for _, obj in pairs(itemsFolder:GetChildren()) do
            if obj:IsA("Model") or obj:IsA("BasePart") then
                table.insert(items, obj.Name)
            end
        end
    end
    return items
end

-- Crear Dropdown usando scanItems
local Dropdown = Tab:CreateDropdown({
    Name = "Select Item",
    Options = scanItems(),
    CurrentOption = {},
    MultipleOptions = false,
    Flag = "Dropdown1",
    Callback = function(option)
        selectedItem = option[1]
    end
})

-- Botón Teleport
Tab:CreateButton({
    Name = "Teleport to Item",
    Callback = function()
        if not selectedItem or not itemsFolder then return end
        local obj = itemsFolder:FindFirstChild(selectedItem)
        local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if obj and hrp then
            if obj:IsA("Model") and obj.PrimaryPart then
                hrp.CFrame = obj.PrimaryPart.CFrame + Vector3.new(0,3,0)
            elseif obj:IsA("BasePart") then
                hrp.CFrame = obj.CFrame + Vector3.new(0,3,0)
            end
        end
    end
})

-- Botón para actualizar Dropdown si hay nuevos items
Tab:CreateButton({
    Name = "Refresh Item List",
    Callback = function()
        Dropdown:Refresh(scanItems())
    end
})

        -- Botón Inf Stamina
Tab:CreateButton({
    Name = "Inf Stamina",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local stamina = char:FindFirstChild("Stamina")
        if stamina then
            local noCD = stamina:FindFirstChild("NoCooldown")
            if noCD and noCD:IsA("BoolValue") then
                noCD.Value = true
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Inf Stamina",
                    Text = "Stamina infinito activado",
                    Duration = 3
                })
            else
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Inf Stamina",
                    Text = "No se encontró el valor NoCooldown",
                    Duration = 3
                })
            end
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Inf Stamina",
                Text = "No se encontró Stamina en el personaje",
                Duration = 3
            })
        end
    end
})

        -- TP TO NEAREST TOOL/MODEL WITH HANDLE + PROXIMITYPROMPT
local function tpNearest()
    local player = game.Players.LocalPlayer
    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then return end

    local root = player.Character.HumanoidRootPart
    local nearest, dist = nil, math.huge

    for _, obj in ipairs(workspace:GetDescendants()) do
        if (obj:IsA("Tool") or obj:IsA("Model")) and obj:FindFirstChild("Handle") and obj:FindFirstChildWhichIsA("ProximityPrompt", true) then
            local handle = obj:FindFirstChild("Handle")
            if handle then
                local d = (handle.Position - root.Position).Magnitude
                if d < dist then
                    dist = d
                    nearest = handle
                end
            end
        end
    end

    if nearest then
        root.CFrame = nearest.CFrame + Vector3.new(0,3,0)
    end
end

Misc:CreateButton({
    Name = "TP to Nearest Tool/Model",
    Callback = tpNearest
})
        
       -- Crear Tab
local Useful = Window:CreateTab("Useful", 4483362458) -- Título y icono

-- Sección Protection
local Inmunity = Useful:CreateSection("Protection")

-- Anti Void
Useful:CreateToggle({
    Name = "Anti Void",
    CurrentValue = false,
    Flag = "AntiVoid",
    Callback = function(Value)
        _G.AntiVoid = Value
        if Value then
            spawn(function()
                while _G.AntiVoid do
                    local player = game.Players.LocalPlayer
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        if player.Character.HumanoidRootPart.Position.Y < -20 then
                            player.Character.HumanoidRootPart.CFrame = CFrame.new(0,50,0)
                        end
                    end
                    task.wait(0.2)
                end
            end)
        end
    end
})

-- Anti Seat Lock
Useful:CreateToggle({
    Name = "Anti Seat Lock",
    CurrentValue = false,
    Flag = "AntiSeat",
    Callback = function(Value)
        _G.AntiSeat = Value
        if Value then
            spawn(function()
                while _G.AntiSeat do
                    local player = game.Players.LocalPlayer
                    if player.Character then
                        local hum = player.Character:FindFirstChildOfClass("Humanoid")
                        if hum and hum.Sit then
                            hum.Sit = false
                        end
                    end
                    task.wait(0.2)
                end
            end)
        end
    end
})

-- Anti Freeze
Useful:CreateToggle({
    Name = "Anti Freeze",
    CurrentValue = false,
    Flag = "AntiFreeze",
    Callback = function(Value)
        _G.AntiFreeze = Value
        if Value then
            spawn(function()
                while _G.AntiFreeze do
                    local player = game.Players.LocalPlayer
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local root = player.Character.HumanoidRootPart
                        if root.Anchored == true then
                            root.Anchored = false
                        end
                    end
                    task.wait(0.2)
                end
            end)
        end
    end
})

-- Reset Stats
Useful:CreateToggle({
    Name = "Reset Stats",
    CurrentValue = false,
    Flag = "ResetStats",
    Callback = function(Value)
        _G.ResetStats = Value
        local player = game.Players.LocalPlayer
        local defaultWalkSpeed = 16
        local defaultJumpPower = 50

        local function applyReset(char)
            local hum = char:WaitForChild("Humanoid")
            hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                if _G.ResetStats and hum.WalkSpeed ~= defaultWalkSpeed then
                    hum.WalkSpeed = defaultWalkSpeed
                end
            end)
            hum:GetPropertyChangedSignal("JumpPower"):Connect(function()
                if _G.ResetStats and hum.JumpPower ~= defaultJumpPower then
                    hum.JumpPower = defaultJumpPower
                end
            end)
        end

        if player.Character then
            applyReset(player.Character)
        end
        player.CharacterAdded:Connect(applyReset)
    end
})

-- Sección Teleport
local TP = Useful:CreateSection("Teleport")

-- Variable global para guardar posición
_G.SavedPosition = nil

-- Botón Set Position
Useful:CreateButton({
    Name = "Set Position",
    Callback = function()
        local player = game.Players.LocalPlayer
        local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            _G.SavedPosition = hrp.Position
            game.StarterGui:SetCore("SendNotification", {
                Title = "Position Saved",
                Text = "Coordinates saved successfully!",
                Duration = 3
            })
        end
    end
})

-- Botón Teleport
Useful:CreateButton({
    Name = "Teleport to Saved Position",
    Callback = function()
        local player = game.Players.LocalPlayer
        local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if hrp then
            if _G.SavedPosition then
                hrp.CFrame = CFrame.new(_G.SavedPosition)
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Teleported",
                    Text = "You have been teleported to the saved position!",
                    Duration = 3
                })
            else
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Error",
                    Text = "No saved position found. Press 'Set Position' first.",
                    Duration = 3
                })
            end
        end
    end
})

local Combat = Useful:CreateSection("Combat")

local Button = Useful:CreateButton({
   Name = "Enable Jason Hitbox",
   Callback = function()
   		loadstring(game:HttpGet("https://raw.githubusercontent.com/Qwoqeex/Hitbox-Expander/refs/heads/main/Hitboxes"))()
   end,
})
