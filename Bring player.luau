getgenv().looptp = true
while getgenv().looptp do task.wait(0.2)
pcall(function()
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:wait()
for _, n in ipairs(game.Players:GetPlayers()) do
if n.Name ~= p.Name then
n.Character.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4.5)
end
end
end)
end
