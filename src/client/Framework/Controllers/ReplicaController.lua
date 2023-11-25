local Replicated = game:GetService("ReplicatedStorage")

local Packages = Replicated:WaitForChild("Packages")
local Knit = require(Packages:WaitForChild("Knit"))

local ReplicaService = require(Packages:WaitForChild("ReplicaService"))

local client = Knit.CreateController {
    Name = "ReplicaController";
}

function client:KnitStart()
    --[[
        ReplicaService.RequestData()

    ReplicaService.ReplicaOfClassCreated("Profile", function(replica)
        print(replica.Data)
    end)
    ]]
end

return client