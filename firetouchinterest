getgenv().ha = true
while getgenv().ha do task.wait(2)
pcall(function()
local lp = game.Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:wait()
local h = char.Head
for _, a in pairs(workspace.Coins:GetDescendants()) do
if a:FindFirstChild("TouchInterest") then
firetouchinterest(h, a, 0)
end
end
end)
end
