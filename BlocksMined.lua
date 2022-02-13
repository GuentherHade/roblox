repeat wait() until game:IsLoaded()

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

local MinedGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Headline = Instance.new("TextLabel")
local Amount = Instance.new("TextLabel")
local Mined = game.Players.LocalPlayer.leaderstats.Mined

MinedGui.Name = "MinedGui"
MinedGui.Parent = game.CoreGui

Frame.Name = "Frame"
Frame.Parent = MinedGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(-0.0, 0, 0.812, 0)
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
Headline.Text = "Blocks Mined"
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
Amount.Text = comma_value(Mined.Value)
Amount.TextColor3 = Color3.fromRGB(132, 132, 132)
Amount.TextScaled = true
Amount.TextSize = 14.000
Amount.TextWrapped = true


Mined.Changed:Connect(function()
	Amount.Text = comma_value(Mined.Value)
end)
