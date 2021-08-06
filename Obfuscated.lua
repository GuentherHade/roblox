--Waitng and Checking
repeat wait() until game:IsLoaded()
if game.PlaceId == 1417427737 then
	if getfenv().running_instance ~= true then
		getgenv().running_instance = true
        repeat wait() until game:IsLoaded() and
        game.Workspace:FindFirstChild("Blocks") and
        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
        game.Players.LocalPlayer:FindFirstChild("PlayerGui") and
        game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") and
        game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("StatsFrame") and 
        game.Players.LocalPlayer.PlayerGui.ScreenGui.StatsFrame:FindFirstChild("Coins") and
        game.Players.LocalPlayer.PlayerGui.ScreenGui.StatsFrame.Coins:FindFirstChild("Amount") and
        game.Players.LocalPlayer.PlayerGui.ScreenGui.StatsFrame2:FindFirstChild("Inventory") and
        game.ReplicatedStorage:FindFirstChild("Network") and
        game.Players.LocalPlayer:FindFirstChild("leaderstats") 
        repeat wait() until game.Players.LocalPlayer.leaderstats:FindFirstChild("Rebirths") and
        game.Players.LocalPlayer.leaderstats:FindFirstChild("Coins") and
        game.Players.LocalPlayer.leaderstats:FindFirstChild("Blocks Mined")



        --Functions
        function GetInventoryAmount()
        local Amount = game.Players.LocalPlayer.PlayerGui.ScreenGui.StatsFrame2.Inventory.Amount.Text
        local Amount2 = game.Players.LocalPlayer.PlayerGui.ScreenGui.StatsFrame2.Inventory.Amount.Text
        Amount = Amount:gsub('%s+', '')
        Amount2 = Amount2:gsub('%s+', '')
        Amount = Amount:gsub(',', '')

        local stringTable = Amount:split("/")
        local stringTable2 = Amount2:split("/")
        return tonumber(stringTable[1]), tonumber(stringTable[2]), stringTable2[1], stringTable2[2]
        end

        function Split(s, delimiter)
        result = {};
        for match in (s..delimiter):gmatch("(.-)"..delimiter) do
            table.insert(result, match);
        end
        return result;
        end

        function GetCoinsAmount()
        local CoinsAmount = game.Players.LocalPlayer.leaderstats.Coins
        local Amount = CoinsAmount.Value
        Amount = Amount:gsub(',', '')

        return tonumber(Amount)
        end

        function comma_value(amount)
        local formatted = amount
        while true do
            formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
            if (k==0) then
                break
            end
        end
        return formatted
        end

        function tp(x,y,z)
        -- SETTINGS START
        local valtomove = 3
        noclip = true
        anchored = false
        -- SETTINGS END
        moving = true
        if x < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X then
        while x < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X-valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
        end
        end
        if z < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z then
        while z < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z-valtomove))
        end
        end
        if x > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X then
        while x > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X+valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
        end
        end
        if z > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z then
        while z > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z+valtomove))
        end
        end
        if y < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y then
        while y < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y-valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
        end
        end
        if y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y then
        while y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y+valtomove,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
        end
        end
        moving = false
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,y,z))
        if anchored == true then
        game.Players.LocalPlayer.Character.Head.Anchored = false
        end
        end

        spawn (function()
        game:getService("RunService"):BindToRenderStep("",0,function()
        if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
        if moving == true then
        if noclip == true then
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
        end
        if anchored == true then
        game.Players.LocalPlayer.Character.Head.Anchored = true
        end
        end
        end)
        end)

        function UpdateSellArea()
            local PrivateMines = game:GetService("Workspace").PrivateMines:GetChildren()
            local SellAreas = game:GetService("Workspace").Activation:GetChildren()
            for i,v in pairs(PrivateMines) do
                if v.Owner.Value == nil then
                    for _,s in pairs(SellAreas) do
                        if s.Name == "Sell" and s:IsA("BasePart") then
                            if (v.SurfaceSpawn.Position - s.Position).Magnitude < 100 then
                                getgenv().SellCFrame = s.CFrame
                            end
                        end
                    end
                end
            end
        end
        
        spawn(function()
            while true do
                wait(5)
                UpdateSellArea()
            end
        end)



        --Webhookcheck
        getgenv().webhookcheck =
        is_sirhurt_closure and "Sirhurt" or 
        pebc_execute and "ProtoSmasher" or 
        syn and "Synapse X" or
        secure_load and "Sentinel" or
        KRNL_LOADED and "Krnl" or
        SONA_LOADED and "Sona" or
        "Kid with shit exploit"



        --Auto Mine
        spawn(function()
            while true do
                if getgenv().AutoMine == true then
                    local HumanoidRootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local depth = Split(game.Players.LocalPlayer.PlayerGui.ScreenGui.TopInfoFrame.Depth.Text," ")
                    if HumanoidRootPart then
                        if tonumber(depth[1]) > 160 then
                            minp = HumanoidRootPart.CFrame + Vector3.new(-10,-10,-10)
                            maxp = HumanoidRootPart.CFrame + Vector3.new(10,10,10)
                        else
                            minp = HumanoidRootPart.CFrame + Vector3.new(-1,-10,-1)
                            maxp = HumanoidRootPart.CFrame + Vector3.new(1,0,1)
                        end
                        local region = Region3.new(minp.Position, maxp.Position)
                        local parts = workspace:FindPartsInRegion3WithWhiteList(region, {game.Workspace.Blocks}, 100) --  ignore part
                        local Remote = game.ReplicatedStorage.Network:InvokeServer()
                        for each, block in pairs(parts) do
                            if block:IsA("BasePart") and getgenv().AutoMine == true then
                                Remote:FireServer("MineBlock",{{block.Parent}})
                                wait()
                            end
                        end
                    end
                end
                wait()
            end
        end)



        --Auto Sell
        spawn(function()
            local Running_AutoSell = false
            local LocalPlayer = game.Players.LocalPlayer
            local InventoryAmount = LocalPlayer.PlayerGui.ScreenGui.StatsFrame2.Inventory.Amount
            local Remote = game.ReplicatedStorage.Network:InvokeServer()
            local runServ = game:GetService("RunService")
            while true do
                if getgenv().AutoSell == true then
                    local Amount, MaxAmount, AmountComma, MaxAmountComma2 = GetInventoryAmount()
                    if getgenv().SELL_TRESHOLD ~= nil then
                        MaxAmount = getgenv().SELL_TRESHOLD
                    end
                    if Amount >= MaxAmount and Running_AutoSell == false then
                        Running_AutoSell = true
                        if getgenv().AutoMine == true then
                            getgenv().AutoMine = false
                        end
                        local Character = LocalPlayer.Character
                        if Character then
                            local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
                            if HumanoidRootPart then
                                local SavedLocation = HumanoidRootPart.CFrame
                                local SavedPosition = HumanoidRootPart.Position
                                local SavedText = InventoryAmount.Text
                                local Amount, MaxAmount123, AmountComma, MaxAmountComma2 = GetInventoryAmount()
                                RSBind = true
                                runServ:BindToRenderStep("Sell", Enum.RenderPriority.Camera.Value, function()
                                    if Amount >= MaxAmount then
                                        HumanoidRootPart.CFrame = getgenv().SellCFrame
                                        Remote:FireServer("SellItems",{{               }})
                                        Amount, MaxAmount123, AmountComma, MaxAmountComma2 = GetInventoryAmount()
                                    else
                                        runServ:UnbindFromRenderStep("Sell")
                                        RSBind = false
                                    end
                                end)
                                repeat wait() until RSBind == false
                                local starttime1 = os.time()
                                while (HumanoidRootPart.Position - SavedPosition).Magnitude > 1 do
                                    HumanoidRootPart.CFrame = SavedLocation
                                    wait()
                                    if os.time() - starttime1 > 5 then
                                        break
                                    end
                                end
                                if getgenv().AutoTool == true or getgenv().AutoBackpack == true then
                                    wait(1)
                                end
                                if getgenv().AutoMineToggle == true then
                                    getgenv().AutoMine = true
                                end
                                Running_AutoSell = false
                            end
                        end
                    end
                end
                wait()
            end
        end)



        --Auto Rebirth
        local Rebirths = game.Players.LocalPlayer.leaderstats.Rebirths
        local Remote = game.ReplicatedStorage.Network:InvokeServer()
        local runServ = game:GetService("RunService")

        runServ:BindToRenderStep("Rebirth", Enum.RenderPriority.Camera.Value, function()
        if getgenv().AutoRebirth then
            local Amount = GetCoinsAmount()
            if Amount >= (10000000 * (Rebirths.Value + 1)) then
                Remote:FireServer("Rebirth",{{					                }})
            end
        end
        end)



        --Auto Recover
        local LocalPlayer = game.Players.LocalPlayer
        game.Workspace.Collapsed.Changed:connect(function()
        if game.Workspace.Collapsed.Value == true then
            if getgenv().AutoRecover == true then
                wait(1)
                pcall(function()
                    wait(1)
                    game.Workspace.Collapsed.Value = false
                    if LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("CollapsedCave").Visible == true then
                        LocalPlayer.PlayerGui.ScreenGui.CollapsedCave.Visible = false
                    end
                end)
                if game.Workspace.LavaPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(30, 23, 26208)
                elseif game.Workspace.ForestPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(30, 23, 22392)
                elseif game.Workspace.CavernPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(30, 23, 18372)
                elseif game.Workspace.BeachPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(30, 23, 14346)
                elseif game.Workspace.SeaPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(30, 23, 11940)
                elseif game.Workspace.DinoPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(30, 23, 10524)
                elseif game.Workspace.FoodPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(36, 23, 8748)
                elseif game.Workspace.ToyPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(36, 23, 5670)
                elseif game.Workspace.CandyPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(30, 23, 3030)
                elseif game.Workspace.SpacePosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                    tp(0, 23, 1578)
                else
                    tp(0, 23, 12)
                end
            end
        end
        end)

        spawn(function()
        local LocalPlayer = game.Players.LocalPlayer
        while true do
            wait(0.3)
            if getgenv().AutoRecover == true then
                depth = Split(LocalPlayer.PlayerGui.ScreenGui.TopInfoFrame.Depth.Text," ")
                if tonumber(depth[1]) >= 1500 then
                    if game.Workspace.LavaPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"LavaSpawn"}})
                        wait(1)
                        tp(30, 23, 26208)
                    elseif game.Workspace.ForestPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"ForestSpawn"}})
                        wait(1)
                        tp(30, 23, 22392)
                    elseif game.Workspace.CavernPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"CavernSpawn"}})
                        wait(1)
                        tp(30, 23, 18372)
                    elseif game.Workspace.BeachPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"BeachSpawn"}})
                        wait(1)
                        tp(30, 23, 14346)
                    elseif game.Workspace.SeaPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"SeaSpawn"}})
                        wait(1)
                        tp(30, 23, 11940)
                    elseif game.Workspace.DinoPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"DinoSpawn"}})
                        wait(1)
                        tp(30, 23, 10524)
                    elseif game.Workspace.FoodPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"FoodSpawn"}})
                        wait(1)
                        tp(36, 23, 8748)
                    elseif game.Workspace.ToyPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"ToySpawn"}})
                        wait(1)
                        tp(36, 23, 5670)
                    elseif game.Workspace.CandyPosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"CandySpawn"}})
                        wait(1)
                        tp(30, 23, 3030)
                    elseif game.Workspace.SpacePosition.Value.Z < LocalPlayer.Character.HumanoidRootPart.Position.Z then
                        Remote:FireServer("MoveTo", {{"SpaceSpawn"}})
                        wait(1)
                        tp(0, 23, 1578)
                    else
                        Remote:FireServer("MoveTo", {{"SurfaceSpawn"}})
                        wait(1)
                        tp(0, 23, 12)
                    end
                end
            end
        end
        end)



        --Auto Tool / Backpck
        local LocalPlayer = game.Players.LocalPlayer
        local Remote = game.ReplicatedStorage.Network:InvokeServer()
        local Rebirths = LocalPlayer.leaderstats.Rebirths
        CoinsAmount = game.Players.LocalPlayer.leaderstats.Coins

        getgenv().Tool = 1
        getgenv().Backpack = 1

        Rebirths.Changed:Connect(function(Change)
        getgenv().Tool = 1
        getgenv().Backpack = 1
        end)


        spawn(function()
        function GetCoinsAmount()
            local Amount = CoinsAmount.Value
            Amount = Amount:gsub(',', '')

            return tonumber(Amount)
        end
        while true do
            wait()
            if getgenv().AutoBackpack == true then
                local AutoTAmount = GetCoinsAmount()
                local rebirth = Rebirths.Value
                if rebirth == 0 then
                    rebirth = 1
                end
                rebirth = rebirth + 1
                if AutoTAmount >= 14500000*(rebirth)+1 and getgenv().Backpack < 26 then
                    Remote:FireServer("BuyItem",{{"Backpack",26}})
                    getgenv().Backpack = 26
                    wait(0.1)
                elseif AutoTAmount >= 8501000*(rebirth)+1 and getgenv().Backpack < 25 then
                    Remote:FireServer("BuyItem",{{"Backpack",25}})
                    getgenv().Backpack = 25
                    wait(0.1)
                elseif AutoTAmount >= 4000000*(rebirth)+1 and getgenv().Backpack < 24 then
                    Remote:FireServer("BuyItem",{{"Backpack",24}})
                    getgenv().Backpack = 24
                    wait(0.1)
                elseif AutoTAmount >= 2750000*(rebirth)+1 and getgenv().Backpack < 23 then
                    Remote:FireServer("BuyItem",{{"Backpack",23}})
                    getgenv().Backpack = 23
                    wait(0.1)
                elseif AutoTAmount >= 1200000*(rebirth)+1 and getgenv().Backpack < 22 then
                    Remote:FireServer("BuyItem",{{"Backpack",22}})
                    getgenv().Backpack = 22
                    wait(0.1)
                elseif AutoTAmount >= 900000*(rebirth)+1 and getgenv().Backpack < 21 then
                    Remote:FireServer("BuyItem",{{"Backpack",21}})
                    getgenv().Backpack = 21
                    wait(0.1)
                elseif AutoTAmount >= 600000*(rebirth)+1 and getgenv().Backpack < 20 then
                    Remote:FireServer("BuyItem",{{"Backpack",20}})
                    getgenv().Backpack = 20
                    wait(0.1)
                elseif AutoTAmount >= 350000*(rebirth)+1 and getgenv().Backpack < 19 then
                    Remote:FireServer("BuyItem",{{"Backpack",19}})
                    getgenv().Backpack = 19
                    wait(0.1)
                elseif AutoTAmount >= 225000*(rebirth)+1 and getgenv().Backpack < 18 then
                    Remote:FireServer("BuyItem",{{"Backpack",18}})
                    getgenv().Backpack = 18
                    wait(0.1)
                elseif AutoTAmount >= 187500*(rebirth)+1 and getgenv().Backpack < 17 then
                    Remote:FireServer("BuyItem",{{"Backpack",17}})
                    getgenv().Backpack = 17
                    wait(0.1)
                elseif AutoTAmount >= 150000*(rebirth)+1 and getgenv().Backpack < 16 then
                    Remote:FireServer("BuyItem",{{"Backpack",16}})
                    getgenv().Backpack = 16
                    wait(0.1)
                elseif AutoTAmount >= 130000*(rebirth)+1 and getgenv().Backpack < 15 then
                    Remote:FireServer("BuyItem",{{"Backpack",15}})
                    getgenv().Backpack = 15
                    wait(0.1)
                elseif AutoTAmount >= 100000*(rebirth)+1 and getgenv().Backpack < 14 then
                    Remote:FireServer("BuyItem",{{"Backpack",14}})
                    getgenv().Backpack = 14
                    wait(0.1)
                elseif AutoTAmount >= 75000*(rebirth)+1 and getgenv().Backpack < 13 then
                    Remote:FireServer("BuyItem",{{"Backpack",13}})
                    getgenv().Backpack = 13
                    wait(0.1)
                elseif AutoTAmount >= 36000*(rebirth)+1 and getgenv().Backpack < 12 then
                    Remote:FireServer("BuyItem",{{"Backpack",12}})
                    getgenv().Backpack = 12
                    wait(0.1)
                elseif AutoTAmount >= 17500*(rebirth)+1 and getgenv().Backpack < 11 then
                    Remote:FireServer("BuyItem",{{"Backpack",11}})
                    getgenv().Backpack = 11
                    wait(0.1)
                elseif AutoTAmount >= 12500*(rebirth)+1 and getgenv().Backpack < 10 then
                    Remote:FireServer("BuyItem",{{"Backpack",10}})
                    getgenv().Backpack = 10
                    wait(0.1)
                elseif AutoTAmount >= 7500*(rebirth)+1 and getgenv().Backpack < 9 then
                    Remote:FireServer("BuyItem",{{"Backpack",9}})
                    getgenv().Backpack = 9
                    wait(0.1)
                elseif AutoTAmount >= 3750*(rebirth)+1 and getgenv().Backpack < 8 then
                    Remote:FireServer("BuyItem",{{"Backpack",8}})
                    getgenv().Backpack = 8
                    wait(0.1)
                elseif AutoTAmount >= 2500*(rebirth)+1 and getgenv().Backpack < 7 then
                    Remote:FireServer("BuyItem",{{"Backpack",7}})
                    getgenv().Backpack = 7
                    wait(0.1)
                elseif AutoTAmount >= 1750*(rebirth)+1 and getgenv().Backpack < 6 then
                    Remote:FireServer("BuyItem",{{"Backpack",6}})
                    getgenv().Backpack = 6
                    wait(0.1)
                elseif AutoTAmount >= 600*(rebirth)+1 and getgenv().Backpack < 5 then
                    Remote:FireServer("BuyItem",{{"Backpack",5}})
                    getgenv().Backpack = 5
                    wait(0.1)
                elseif AutoTAmount >= 175*(rebirth)+1 and getgenv().Backpack < 4 then
                    Remote:FireServer("BuyItem",{{"Backpack",4}})
                    getgenv().Backpack = 4
                    wait(0.1)
                elseif AutoTAmount >= 23*(rebirth)+1 and getgenv().Backpack < 3 then
                    Remote:FireServer("BuyItem",{{"Backpack",3}})
                    getgenv().Backpack = 3
                    wait(0.1)
                end
            end
            wait(0.5)
            if getgenv().AutoTool == true then
                local AutoTAmount = GetCoinsAmount()
                local rebirth = Rebirths.Value
                rebirth = rebirth + 2
                if AutoTAmount >= 7500000*(rebirth)+1 and getgenv().Tool < 33 then
                    Remote:FireServer("BuyItem",{{"Tools",33}})
                    getgenv().Tool = 33
                    wait(0.1)
                elseif AutoTAmount >= 4000000*(rebirth)+1 and getgenv().Tool < 32 then
                    Remote:FireServer("BuyItem",{{"Tools",32}})
                    getgenv().Tool = 32
                    wait(0.1)
                elseif AutoTAmount >= 2250000*(rebirth)+1 and getgenv().Tool < 30 then
                    Remote:FireServer("BuyItem",{{"Tools",30}})
                    getgenv().Tool = 30
                    wait(0.1)
                elseif AutoTAmount >= 1750000*(rebirth)+1 and getgenv().Tool < 29 then
                    Remote:FireServer("BuyItem",{{"Tools",29}})
                    getgenv().Tool = 29
                    wait(0.1)
                elseif AutoTAmount >= 1225000*(rebirth)+1 and getgenv().Tool < 28 then
                    Remote:FireServer("BuyItem",{{"Tools",28}})
                    getgenv().Tool = 28
                    wait(0.1)
                elseif AutoTAmount >= 1000000*(rebirth)+1 and getgenv().Tool < 27 then
                    Remote:FireServer("BuyItem",{{"Tools",27}})
                    getgenv().Tool = 27
                    wait(0.1)
                elseif AutoTAmount >= 550000*(rebirth)+1 and getgenv().Tool < 26 then
                    Remote:FireServer("BuyItem",{{"Tools",26}})
                    getgenv().Tool = 26
                    wait(0.1)
                elseif AutoTAmount >= 387500*(rebirth)+1 and getgenv().Tool < 25 then
                    Remote:FireServer("BuyItem",{{"Tools",25}})
                    getgenv().Tool = 25
                    wait(0.1)
                elseif AutoTAmount >= 305000*(rebirth)+1 and getgenv().Tool < 24 then
                    Remote:FireServer("BuyItem",{{"Tools",24}})
                    getgenv().Tool = 24
                    wait(0.1)
                elseif AutoTAmount >= 277500*(rebirth)+1 and getgenv().Tool < 23 then
                    Remote:FireServer("BuyItem",{{"Tools",23}})
                    getgenv().Tool = 23
                    wait(0.1)
                elseif AutoTAmount >= 250000*(rebirth)+1 and getgenv().Tool < 22 then
                    Remote:FireServer("BuyItem",{{"Tools",22}})
                    getgenv().Tool = 22
                    wait(0.1)
                elseif AutoTAmount >= 200000*(rebirth)+1 and getgenv().Tool < 21 then
                    Remote:FireServer("BuyItem",{{"Tools",21}})
                    getgenv().Tool = 21
                    wait(0.1)
                elseif AutoTAmount >= 180000*(rebirth)+1 and getgenv().Tool < 18 then
                    Remote:FireServer("BuyItem",{{"Tools",18}})
                    getgenv().Tool = 18
                    wait(0.1)
                elseif AutoTAmount >= 125000*(rebirth)+1 and getgenv().Tool < 17 then
                    Remote:FireServer("BuyItem",{{"Tools",17}})
                    getgenv().Tool = 17
                    wait(0.1)
                elseif AutoTAmount >= 60000*(rebirth)+1 and getgenv().Tool < 16 then
                    Remote:FireServer("BuyItem",{{"Tools",16}})
                    getgenv().Tool = 16
                    wait(0.1)
                elseif AutoTAmount >= 50000*(rebirth)+1 and getgenv().Tool < 15 then
                    Remote:FireServer("BuyItem",{{"Tools",15}})
                    getgenv().Tool = 15
                    wait(0.1)
                elseif AutoTAmount >= 39000*(rebirth)+1 and getgenv().Tool < 14 then
                    Remote:FireServer("BuyItem",{{"Tools",14}})
                    getgenv().Tool = 14
                    wait(0.1)
                elseif AutoTAmount >= 16000*(rebirth)+1 and getgenv().Tool < 13 then
                    Remote:FireServer("BuyItem",{{"Tools",13}})
                    getgenv().Tool = 13
                    wait(0.1)
                elseif AutoTAmount >= 8250*(rebirth)+1 and getgenv().Tool < 12 then
                    Remote:FireServer("BuyItem",{{"Tools",12}})
                    getgenv().Tool = 12
                    wait(0.1)
                elseif AutoTAmount >= 6000*(rebirth)+1 and getgenv().Tool < 11 then
                    Remote:FireServer("BuyItem",{{"Tools",11}})
                    getgenv().Tool = 11
                    wait(0.1)
                elseif AutoTAmount >= 4500*(rebirth)+1 and getgenv().Tool < 10 then
                    Remote:FireServer("BuyItem",{{"Tools",10}})
                    getgenv().Tool = 10
                    wait(0.1)
                elseif AutoTAmount >= 3500*(rebirth)+1 and getgenv().Tool < 9 then
                    Remote:FireServer("BuyItem",{{"Tools",9}})
                    getgenv().Tool = 9
                    wait(0.1)
                elseif AutoTAmount >= 3000*(rebirth)+1 and getgenv().Tool < 8 then
                    Remote:FireServer("BuyItem",{{"Tools",8}})
                    getgenv().Tool = 8
                    wait(0.1)
                elseif AutoTAmount >= 1750*(rebirth)+1 and getgenv().Tool < 7 then
                    Remote:FireServer("BuyItem",{{"Tools",7}})
                    getgenv().Tool = 7
                    wait(0.1)
                elseif AutoTAmount >= 1000*(rebirth)+1 and getgenv().Tool < 6 then
                    Remote:FireServer("BuyItem",{{"Tools",6}})
                    getgenv().Tool = 6
                    wait(0.1)
                elseif AutoTAmount >= 300*(rebirth)+1 and getgenv().Tool < 5 then
                    Remote:FireServer("BuyItem",{{"Tools",5}})
                    getgenv().Tool = 5
                    wait(0.1)
                elseif AutoTAmount >= 125*(rebirth)+1 and getgenv().Tool < 4 then
                    Remote:FireServer("BuyItem",{{"Tools",4}})
                    getgenv().Tool = 4
                    wait(0.1)
                elseif AutoTAmount >= 75*(rebirth)+1 and getgenv().Tool < 3 then
                    Remote:FireServer("BuyItem",{{"Tools",3}})
                    getgenv().Tool = 3
                    wait(0.1)
                elseif AutoTAmount >= 25*(rebirth)+1 and getgenv().Tool < 2 then
                    Remote:FireServer("BuyItem",{{"Tools",2}})
                    getgenv().Tool = 2
                    wait(0.1)
                end
            end
        end
        end)



        --Block Counter
        local LocalPlayer = game.Players.LocalPlayer
        local BlockDisplay = LocalPlayer.PlayerGui.ScreenGui.StatsFrame:WaitForChild("Candycanes"):clone()
        local BlocksAmount = LocalPlayer.leaderstats["Blocks Mined"]

        BlockDisplay.Parent = LocalPlayer.PlayerGui.ScreenGui.StatsFrame
        BlockDisplay.Name = "BlocksMined"
        LocalPlayer.PlayerGui.ScreenGui.StatsFrame:WaitForChild("BlocksMined").Amount.Text = comma_value(BlocksAmount.Value)
        LocalPlayer.PlayerGui.ScreenGui.StatsFrame:WaitForChild("BlocksMined").ImageColor3 = Color3.fromRGB(39, 180, 255)
        LocalPlayer.PlayerGui.ScreenGui.StatsFrame:WaitForChild("BlocksMined").Amount.TextColor3 = Color3.fromRGB(255,255,255)
        LocalPlayer.PlayerGui.ScreenGui.StatsFrame:WaitForChild("BlocksMined").More:Destroy()
        LocalPlayer.PlayerGui.ScreenGui.StatsFrame:WaitForChild("BlocksMined").Logo:Destroy()
        LocalPlayer.PlayerGui.ScreenGui.StatsFrame:WaitForChild("BlocksMined").Value:Destroy()
        LocalPlayer.PlayerGui.ScreenGui.StatsFrame.BlocksMined.Amount.AnchorPoint = Vector2.new(0.1,0.5)

        BlocksAmount.Changed:Connect(function(Change)
        if getgenv().BlockCounter == true then
            local blocks0 = comma_value(BlocksAmount.Value)
            LocalPlayer.PlayerGui.ScreenGui.StatsFrame:WaitForChild("BlocksMined").Amount.Text = blocks0
        end
        end)



        --FullBright
        if not _G.FullBrightExecuted then

        _G.FullBrightEnabled = false

        _G.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }

        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Brightness = 1
            end
        end)

        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").ClockTime = 12
            end
        end)

        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").FogEnd = 786543
            end
        end)

        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").GlobalShadows = false
            end
        end)

        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
        end)

        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

        local LatestValue = true
        spawn(function()
            repeat
                wait()
            until _G.FullBrightEnabled
            while wait() do
                if _G.FullBrightEnabled ~= LatestValue then
                    if not _G.FullBrightEnabled then
                        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                        game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                    else
                        game:GetService("Lighting").Brightness = 1
                        game:GetService("Lighting").ClockTime = 12
                        game:GetService("Lighting").FogEnd = 786543
                        game:GetService("Lighting").GlobalShadows = false
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                    LatestValue = not LatestValue
                end
            end
        end)
        end

        _G.FullBrightExecuted = true




        --Instant Mine
        local Remote = game.ReplicatedStorage.Network:InvokeServer()
        local Mouse = game.Players.LocalPlayer:GetMouse()
        MouseDown = false

        Mouse.Button1Down:connect(function()
        if getgenv().InstantMine == true then
            MouseDown = true
            while MouseDown == true do
                if Mouse.Target ~= nil and Mouse.Target.Parent ~= nil then
                    Remote:FireServer("MineBlock", {{Mouse.Target.Parent}})
                end
                wait()
            end
        end
        end)

        Mouse.Button1Up:connect(function()
        MouseDown = false
        end)



        --Anti AFK
        local vuAF = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
        vuAF:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vuAF:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)



        --Library
        local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


        local Window = Library.CreateLib("Mining Simulator", "Sentinel")



        --Player Tab
        local Player_Tab = Window:NewTab("Player")


        local Movement_Section = Player_Tab:NewSection("Movement")

        Movement_Section:NewSlider("Speed", "changes the player's speed.", 100, 16, function(s) -- 100 (MaxValue) | 16 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end)

        Movement_Section:NewSlider("Jump Power", "changes the player's jump power.", 250, 50, function(s) -- 250 (MaxValue) | 50 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
        end)


        local Username_Section = Player_Tab:NewSection("Username")

        Username_Section:NewTextBox("Local Player Name", "changes the player name locally.", function(txt)
        game.Players.LocalPlayer.Character.Head.CustomPlayerTag.PlayerName.Text = txt
        game:GetService("CoreGui").PlayerList.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame[tostring("p_"..game.Players.LocalPlayer.UserId)].ChildrenFrame.NameFrame.BGFrame.OverlayFrame.PlayerName.PlayerName.Text = txt
        end)

        Username_Section:NewButton("Reset Name", "resets the player name to default.", function()
        game.Players.LocalPlayer.Character.Head.CustomPlayerTag.PlayerName.Text = game.Players.LocalPlayer.Name
        game:GetService("CoreGui").PlayerList.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame[tostring("p_"..game.Players.LocalPlayer.UserId)].ChildrenFrame.NameFrame.BGFrame.OverlayFrame.PlayerName.PlayerName.Text = game.Players.LocalPlayer.DisplayName
        end)



        --Menu Tab
        local Menu_Tab = Window:NewTab("Menu")


        local AutoSuff_Section = Menu_Tab:NewSection("Auto Stuff")

        AutoSuff_Section:NewToggle("Auto Mine", "mines automatically.", function(state)
        getgenv().AutoMine = state
        getgenv().AutoMineToggle = state
        end)

        AutoSuff_Section:NewToggle("Auto Sell", "sells automatically.", function(state)
        getgenv().AutoSell = state
        UpdateSellArea()
        end)

        AutoSuff_Section:NewTextBox("Sell Treshold", "sells automatically when the sell threshold is reached.", function(txt)
        getgenv().SELL_TRESHOLD = tonumber(txt)
        end)

        AutoSuff_Section:NewToggle("Auto Rebirth", "Rebirths automatically.", function(state)
        getgenv().AutoRebirth = state
        end)

        AutoSuff_Section:NewToggle("Auto Recover", "Recovers Character after mine collapsed.", function(state)
        getgenv().AutoRecover = state
        end)

        AutoSuff_Section:NewToggle("Auto Tool", "automatically buys Tools.", function(state)
        getgenv().AutoTool = state
        end)

        AutoSuff_Section:NewToggle("Auto Backpack", "automatically buys Backpacks.", function(state)
        getgenv().AutoBackpack = state
        end)



        local Misc_Section = Menu_Tab:NewSection("Misc")

        Misc_Section:NewToggle("Instant Mine", "Mines block instantly without delay.", function(state)
        getgenv().InstantMine = state
        end)

        Misc_Section:NewToggle("Collapse Meter", "Enables / disables the Collapse Meter.", function(state)
        game.Players.LocalPlayer.PlayerGui.ScreenGui.Collapse.Visible = state
        end)

        Misc_Section:NewToggle("Block Counter", "Enables / disables Block Counter.", function(state)
        game.Players.LocalPlayer.PlayerGui.ScreenGui.StatsFrame:WaitForChild("BlocksMined").Visible = state
        getgenv().BlockCounter = state
        end)

        Misc_Section:NewToggle("FullBright", "Enables full brightness.", function(state)
        _G.FullBrightEnabled = state
        end)



        --Credits Tab
        local Credits_Tab = Window:NewTab("Credits")


        local Discord_Section = Credits_Tab:NewSection("Discord")

        Discord_Section:NewButton("GuentherHade#0159", "copy to clipboard.", function()
        pcall(function() setclipboard("GuentherHade#0159") end)

        end)

        Discord_Section:NewButton("https://discord.gg/Jh7sM3dkk6", "copy to clipboard.", function()
        pcall(function() setclipboard("https://discord.gg/Jh7sM3dkk6") end)
        end)



        --Patch Notes Tab
        local PatchNotes_Tab = Window:NewTab("Patch Notes")


        local PatchNotes_Section = PatchNotes_Tab:NewSection("Latest Update:  08/06/2021")

        PatchNotes_Section:NewButton("-Auto Mine fixed", "", function()
        end)

        PatchNotes_Section:NewButton("-Auto Sell uses empty private mines now", "", function()
        end)

        print("Loaded Mining Simulator V2 BY GuentherHade#0159")



        --Settings Tab
        local Settings_Tab = Window:NewTab("Settings")


        local Settings_Section = Settings_Tab:NewSection("Settings")

        Settings_Section:NewKeybind("Toggle UI", "Hide / Show UI", Enum.KeyCode.RightShift, function()
            Library:ToggleUI()
        end)

        Settings_Section:NewButton("Rejoin", "Rejoins the game", function()
            local ts = game:GetService("TeleportService")
            local p = game:GetService("Players").LocalPlayer
            ts:Teleport(game.PlaceId, p)
        end)
    end
end
