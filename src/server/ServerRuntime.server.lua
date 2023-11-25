local Replicated = game:GetService("ReplicatedStorage")
local Server = game:GetService("ServerScriptService")

local Packages = Replicated:WaitForChild("Packages")
local Knit = require(Packages:WaitForChild("Knit"))

local Services = Server:WaitForChild("Services")
local Components = Server:WaitForChild("Components")

for _,v in Services:GetDescendants() do
    if v:IsA("ModuleScript") and not v:GetAttribute("Ignore") then
        require(v)
    end
end
Knit.Start():andThen(function()
    print("Knit started")
    for _,v in Components:GetDescendants() do
        if v:IsA("ModuleScript") and not v:GetAttribute("Ignore") then
            require(v)
        end
    end
end):catch(warn)