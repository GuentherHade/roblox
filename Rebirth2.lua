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

local Rebirths = game.Players.LocalPlayer.leaderstats.Rebirths
local lb = game:GetService("CoreGui").PlayerList.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame["p_"..tostring(game.Players.LocalPlayer.UserId)].ChildrenFrame["GameStat_Rebirths"].OverlayFrame.StatText

lb.Changed:Connect(function()
	lb.Text = comma_value(Rebirths.Value)
end)
