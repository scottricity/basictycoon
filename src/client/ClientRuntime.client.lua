local Replicated = game:GetService("ReplicatedStorage")

local PlayerScripts = script.Parent
local Framework = PlayerScripts:WaitForChild("Framework")

local Packages = Replicated:WaitForChild("Packages")
local Knit = require(Packages:WaitForChild("Knit"))

local Controllers = Framework:WaitForChild("Controllers")
local Components = Framework:WaitForChild("Components")

for _,c in Controllers:GetDescendants() do
    if c:IsA("ModuleScript") and not c:GetAttribute("Ignore") then
        require(c)
    end
end
Knit.Start({ServicePromises = false}):andThen(function()
    for _,v in Components:GetDescendants() do
        if v:IsA("ModuleScript") and not v:GetAttribute("Ignore") then
            require(v)
        end
    end
end)