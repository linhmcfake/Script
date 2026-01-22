local v81 = game:GetService("Players")
local v144 = game:GetService("RunService")
local v114 = {}
local v231 = tick()
local function v60(v237)
    for v235, v145 in ipairs(v81:GetPlayers()) do
        local v149 = v145.Character
        if v149 and v237:IsDescendantOf(v149) then
            return true
        end
    end
    return false
end
local function v61(v237)
    local v232 = workspace:FindFirstChild("Plates")
    if not v232 then return false end
    for v235, v240 in ipairs(v232:GetChildren()) do
        local v233 = v240:FindFirstChild("ActiveParts")
        if v233 and v237:IsDescendantOf(v233) then
            return true
        end
    end
    return false
end

for v235, v237 in ipairs(workspace:GetDescendants()) do
    if v237:IsA("BasePart") and not v60(v237) and not v61(v237) then
        v114[v237] = {
            Size = v237.Size,
            CFrame = v237.CFrame
        }
    end
end
v144.Heartbeat:Connect(function()
    local v234 = tick()
    if v234 - v231 >= 1 then
        for v237, v192 in pairs(v114) do
            if v237 and v237.Parent then
                v237.Anchored = true
                v237.Size = v192.Size
                v237.CFrame = v192.CFrame
                v237.Velocity = Vector3.zero
                v237.RotVelocity = Vector3.zero
            end
        end
        v231 = v234
    end
end)
print("plugin loaded")
