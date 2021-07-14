spawn(function()
	while wait() do
		if G_Chroma == true then
			local t = G_Chroma_Tick;
			local hue = tick() % t / t
			local color = Color3.fromHSV(hue, 1, 1)
			G_main_color = color
		end
	end
end)
