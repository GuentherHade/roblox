repeat wait() until game:IsLoaded()

while true do
	if pcall(function() game.Players.LocalPlayer.leaderstats:WaitForChild("Blocks Mined") end) then
		if pcall(function() game.Players.LocalPlayer.PlayerGui.ScreenGui.StatsFrame.Coins:FindFirstChild("Amount") end) then
			if game.Players.LocalPlayer.PlayerGui.ScreenGui.StatsFrame.Tokens.Amount.Text ~= "Loading..." then
				break
			end
		end
	end
	wait(1)
end

local function comma_value(amount)
	local formatted = amount
	while true do
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k==0) then
			break
		end
	end
	return formatted
end

local RbGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Headline = Instance.new("TextLabel")
local Amount = Instance.new("TextLabel")
local Rebirths = game.Players.LocalPlayer.leaderstats.Rebirths

RbGui.Name = "RbGui"
RbGui.Parent = game.CoreGui

Frame.Name = "Frame"
Frame.Parent = RbGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(-0.0, 0, 0.212, 0)
Frame.Size = UDim2.new(0.122317559, 0, 0.139574475, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(39, 39, 39)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120
Frame.Draggable = true

Headline.Name = "Headline"
Headline.Parent = Frame
Headline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Headline.BackgroundTransparency = 1.000
Headline.Position = UDim2.new(0.0180435441, 0, -0.00317892432, 0)
Headline.Size = UDim2.new(0.980553269, 0, 0.437298268, 0)
Headline.Font = Enum.Font.ArialBold
Headline.Text = "Rebirths"
Headline.TextColor3 = Color3.fromRGB(132, 132, 132)
Headline.TextScaled = true
Headline.TextSize = 14.000
Headline.TextWrapped = true

Amount.Name = "Amount"
Amount.Parent = Frame
Amount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Amount.BackgroundTransparency = 1.000
Amount.Position = UDim2.new(0.0141390264, 0, 0.524912238, 0)
Amount.Size = UDim2.new(0.969151497, 0, 0.34163928, 0)
Amount.Font = Enum.Font.Arial
Amount.Text = comma_value(Rebirths.Value)
Amount.TextColor3 = Color3.fromRGB(132, 132, 132)
Amount.TextScaled = true
Amount.TextSize = 14.000
Amount.TextWrapped = true


Rebirths.Changed:Connect(function()
	Amount.Text = comma_value(Rebirths.Value)
end)
