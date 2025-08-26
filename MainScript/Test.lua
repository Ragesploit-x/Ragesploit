function GoTo(Location)
    if Location == "Home" then
        print("Going home!")
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2985.95337, 3993, -9006.82324)
        game:GetService("ReplicatedStorage").API:FindFirstChild("LocationAPI/SetLocation"):FireServer("housing", LocalPlayer)
        for _, Furniture in pairs(OwnedFurnitures) do
            game:GetService("ReplicatedStorage").API:FindFirstChild("DownloadsAPI/Download"):InvokeServer("Furniture", Furniture)
        end
        return
    end
    if Location == "MainMap" then
        print("Going to the main map...")
        local args = {
            [1] = "MainMap",
            [2] = nil,
            [3] = "Default"
        }
        for _, Furniture in pairs(OwnedFurnitures) do
            game:GetService("ReplicatedStorage").API:FindFirstChild("DownloadsAPI/Download"):InvokeServer("Furniture", Furniture)
        end
        game:GetService("ReplicatedStorage").API:FindFirstChild("LocationAPI/SetLocation"):FireServer(unpack(args))
        return
    end
    game:GetService("ReplicatedStorage").API:FindFirstChild("LocationAPI/SetLocation"):FireServer(Location)
    return
end

return GoTo
