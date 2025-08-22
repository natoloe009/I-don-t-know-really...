-- // Team Check
-- // Config 
local size = Vector3.new(40,40,40)
local color = Color3.fromRGB(255, 0, 0)
local transparency = 0.7

-- // On / Off
getgenv().turn = true

-- // Code...
while task.wait() do
if not getgenv().turn then break end
pcall(function()
local p = game:GetService("Players").LocalPlayer
for i,v in next, game:GetService("Players"):GetPlayers() do
if v.Name ~= p.Name and v.Character and v.Team ~= p.Team then
v.Character.HumanoidRootPart.Size = size
v.Character.HumanoidRootPart.Transparency = transparency
v.Character.HumanoidRootPart.Color = color
v.Character.HumanoidRootPart.Material = Enum.Material.Neon
v.Character.HumanoidRootPart.CanCollide = false
end
end
end)
end

-- // No Team Check
-- // Config 
local size = Vector3.new(40,40,40)
local color = Color3.fromRGB(255, 0, 0)
local transparency = 0.7

-- // On / Off
getgenv().turn = true

-- // Code...
while task.wait() do
if not getgenv().turn then break end
pcall(function()
local p = game:GetService("Players").LocalPlayer
for i,v in next, game:GetService("Players"):GetPlayers() do
if v.Name ~= p.Name and v.Character then
v.Character.HumanoidRootPart.Size = size
v.Character.HumanoidRootPart.Transparency = transparency
v.Character.HumanoidRootPart.Color = color
v.Character.HumanoidRootPart.Material = Enum.Material.Neon
v.Character.HumanoidRootPart.CanCollide = false
end
end
end)
end

