local Replicated = game:GetService("ReplicatedStorage")

local Packages = Replicated:WaitForChild("Packages");

local Knit = require(Packages:WaitForChild("Knit"));
local TopbarPlus = require(Packages:WaitForChild("TopbarPlus"));
local Signal = require(Packages:WaitForChild("Signal"));
local Fusion = require(Packages:WaitForChild("Fusion"));

local controller = Knit.CreateController {
    Name = "UIController";
}

function controller:KnitStart()
    local TopbarPl = TopbarPlus
end

return controller