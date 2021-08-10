local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local InputService = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

local library = {}
library.Colours  = {}

local libraryColours = library.Colours
libraryColours.Main = Color3.fromRGB(20, 20, 20)
libraryColours.Primary = Color3.fromRGB(26, 26, 26)
libraryColours.Secondary = Color3.fromRGB(38, 38, 38)
libraryColours.Status = Color3.fromRGB(65, 65, 65)
libraryColours.Check = Color3.fromRGB(30, 30, 30)
libraryColours.Text = Color3.fromRGB(170, 170, 170)
libraryColours.Picker = Color3.fromRGB(50, 50, 50)
libraryColours.Accents = Color3.fromRGB(0, 255, 109)
libraryColours.White = Color3.fromRGB(255,255,255)
libraryColours.OffWhite = Color3.fromRGB(225,225,225)
libraryColours.Black = Color3.fromRGB(0,0,0)

local function RelativeXY(GuiObject)
	local x, y = Mouse.X - GuiObject.AbsolutePosition.X, Mouse.Y - GuiObject.AbsolutePosition.Y
	local xm, ym = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
	x = math.clamp(x, 0, xm)
	y = math.clamp(y, 0, ym)
	return x, y, x/xm, y/ym
end

local function RoundBox()
	local Round = Instance.new("ImageLabel")
	Round.BackgroundTransparency = 1
	Round.Image = "rbxasset://textures/ui/dialog_white@2x.png"
	Round.ScaleType = Enum.ScaleType.Slice
	Round.SliceCenter = Rect.new(10, 10, 10, 10)
	return Round
end

local function RoundButton()
	local Round = Instance.new("ImageButton")
	Round.AutoButtonColor = false
	Round.BackgroundTransparency = 1
	Round.Image = "rbxasset://textures/ui/dialog_white@2x.png"
	Round.ScaleType = Enum.ScaleType.Slice
	Round.SliceCenter = Rect.new(10, 10, 10, 10)
	return Round
end

local function Status()
	local Stat = Instance.new("ImageButton")
	Stat.Size = UDim2.new(0,14,0,14)
	Stat.AutoButtonColor = false
	Stat.BackgroundTransparency = 1
	Stat.ImageColor3 = libraryColours.Status
	Stat.Image = "http://www.roblox.com/asset/?id=71659683"
	Stat.Rotation = -90
	return Stat
end

local function Label(text)
	local NewLabel = Instance.new("TextLabel")
	NewLabel.Text = text
	NewLabel.BackgroundTransparency = 1
	NewLabel.Position = UDim2.new(0, 0, 0, 0)
	return NewLabel
end

local function Button(text)
	local NewLabel = Instance.new("TextButton")
	NewLabel.AutoButtonColor = false
	NewLabel.Text = text
	NewLabel.BackgroundTransparency = 1
	NewLabel.Position = UDim2.new(0, 0, 0, 0)
	return NewLabel
end

local function GetUUID()
	local NewUUID = HttpService:GenerateGUID(false)
	return NewUUID
end

local function Gui(bool)
	local NewGui = Instance.new("ScreenGui")
	NewGui.ResetOnSpawn = bool or false
	return NewGui
end

local function Frame()
	local NewFrame = Instance.new("Frame")
	NewFrame.BorderSizePixel = 0
	return NewFrame
end

local function List()
	local NewList = Instance.new("UIListLayout")
	return NewList
end

local function Click()
	local ClickImage = Instance.new("ImageLabel")
	ClickImage.Size = UDim2.new(0,14,0,14)
	ClickImage.Image = "http://www.roblox.com/asset/?id=4941650889"
	ClickImage.BackgroundTransparency = 1
	return ClickImage
end

local function CheckBox()
	local Checker = Instance.new("ImageLabel")
	Checker.Size = UDim2.new(1,-8,1,-8)
	Checker.Position = UDim2.new(0,4,0,4)
	Checker.ImageColor3 = libraryColours.Primary
	Checker.BackgroundTransparency = 1
	Checker.Image = "http://www.roblox.com/asset/?id=4941544626"
	return Checker
end

local wrap = function(func)
	coroutine.wrap(func)()
end

local CircleAnim = function(guiObject)
	local ncircle = Instance.new("ImageLabel")
	ncircle.BackgroundTransparency = 1
	ncircle.Image = "http://www.roblox.com/asset/?id=87913710"
	ncircle.Parent = guiObject
	ncircle.ImageColor3 = libraryColours.Black
	wrap(function()
		local x, y = RelativeXY(guiObject)
		for i = 1, 50, 1 do
			ncircle.Size = UDim2.new(0, i, 0, i)
			ncircle.Position = UDim2.new(0, x - i / 2, 0, y - i / 2)
			ncircle.ImageTransparency = i / 50
			RunService.Heartbeat:Wait()
		end
		ncircle:Destroy()
	end)
	return ncircle
end

local function Circle()
	local CircleImg = Instance.new("ImageLabel")
	CircleImg.Image = "http://www.roblox.com/asset/?id=87913710"
	CircleImg.Size = UDim2.new(0,12,0,12)
	CircleImg.BackgroundTransparency = 1
	return CircleImg
end

local SSB = Enum.Font.SourceSansBold
local SS = Enum.Font.SourceSans
local GB = Enum.Font.GothamBlack

local Left = Enum.TextXAlignment.Left
local Center = Enum.TextXAlignment.Center
local Right = Enum.TextXAlignment.Right

local ContainerPadding = 7

local OldInstance

function library:Init(parent)
	local parent = parent or game.Players.LocalPlayer.PlayerGui

    if OldInstance then
        OldInstance:Destroy()
    end
	
	local tabcount = 0
	
	local newgui = Gui(false)
	newgui.Name = GetUUID()
	newgui.Parent = parent

    OldInstance = newgui

	print(OldInstance, newgui)
	
	local optionLibrary = {}
	
	function optionLibrary:AddTab(tabtitle)
		local toggle = true
		
		local containerframe = Instance.new("Frame")
		containerframe.Name = "ContainerFrame"
		containerframe.Size = UDim2.new(0,170,1,0)
		containerframe.Position = UDim2.new(0,5 + (175 * tabcount),0,5)
		containerframe.BackgroundTransparency = 1
		containerframe.Parent = newgui
		
		local tabtitle = tabtitle or ("Tab"..tostring(tabcount))
		
		tabcount = tabcount + 1
		
		local mainlabel = RoundBox()
		mainlabel.ImageColor3 = libraryColours.Main
		mainlabel.Size = UDim2.new(1,0,0,40)
		mainlabel.Parent = containerframe
		
		local titlebar = Button(tabtitle)
		titlebar.Size = UDim2.new(1,0,0,40)
		titlebar.Font = Enum.Font.SourceSansBold
		titlebar.TextSize = 18
		titlebar.TextColor3 = libraryColours.White
		titlebar.Parent = mainlabel
		
		local contentframe = RoundBox()
		contentframe.Size = UDim2.new(1,0,0,0)
		contentframe.Position = UDim2.new(0,0,0,40)
		contentframe.ImageColor3 = libraryColours.Primary
		contentframe.ClipsDescendants = true
		contentframe.Parent = containerframe
		
		local togglebutton = Status()
		togglebutton.Position = UDim2.new(1,-22,0.5,-7)
		togglebutton.Rotation = 90
		togglebutton.Parent = titlebar
		
		local contentlist = List()
		contentlist.Parent = contentframe
		
		coroutine.wrap(function()
			local lastmx
			local lastmy
			
			titlebar.MouseButton1Down:Connect(function()
				lastmx = Mouse.X
				lastmy = Mouse.Y
				local move
				local kill
				move = Mouse.Move:Connect(function()
					local dx = Mouse.X - lastmx
					local dy = Mouse.Y - lastmy
					containerframe.Position = containerframe.Position + UDim2.new(0,dx,0,dy)
					lastmx = Mouse.X
					lastmy = Mouse.Y
				end)
				kill = InputService.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						move:Disconnect()
						kill:Disconnect()
					end
				end)
			end)
		end)()
		
		togglebutton.MouseButton1Click:Connect(function()
			toggle = not toggle
			if not toggle then
				contentframe:TweenSize(UDim2.new(1,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
				mainlabel:TweenSize(UDim2.new(1,0,0,40), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
				TweenService:Create(togglebutton, TweenInfo.new(0.1), {Rotation = -90}):Play()
			else
				mainlabel:TweenSize(UDim2.new(1,0,0,47+contentlist.AbsoluteContentSize.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
				contentframe:TweenSize(UDim2.new(1,0,0,7+contentlist.AbsoluteContentSize.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
				TweenService:Create(togglebutton, TweenInfo.new(0.1), {Rotation = 90}):Play()
			end
		end)
		
		contentlist:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			if toggle then
				mainlabel:TweenSize(UDim2.new(1,0,0,47+contentlist.AbsoluteContentSize.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
				contentframe:TweenSize(UDim2.new(1,0,0,7+contentlist.AbsoluteContentSize.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
			end
		end)
		
		local sectioncount = 0
		
		local tabLibrary = {}
		
		function tabLibrary:AddSection(title)
			local sectoggle = true
			local title = title or ("Section"..tostring(sectioncount))
			
			sectioncount = sectioncount + 1
			
			local sectionframe = Frame()
			sectionframe.BackgroundColor3 = libraryColours.Primary
			sectionframe.Size = UDim2.new(1,0,0,28)
			sectionframe.Parent = contentframe
			
			local sectiontitle = Label("  "..title)
			sectiontitle.Size = UDim2.new(1,0,0,28)
			sectiontitle.Font = Enum.Font.GothamBlack
			sectiontitle.TextColor3 = libraryColours.OffWhite
			sectiontitle.TextSize = 14
			sectiontitle.TextXAlignment = Left
			sectiontitle.Parent = sectionframe
			
			local sectioncontent = Frame()
			sectioncontent.Size = UDim2.new(1,0,0,0)
			sectioncontent.Position = UDim2.new(0,0,0,28)
			sectioncontent.BackgroundColor3 = libraryColours.Secondary
			sectioncontent.ClipsDescendants = true
			sectioncontent.Parent = sectionframe
			
			local sectioncontentlist = List()
			sectioncontentlist.Parent = sectioncontent
			
			local secstatus = Status()
			secstatus.Position = UDim2.new(1,-21,0,7)
			secstatus.Rotation = 90
			secstatus.Parent = sectiontitle
			
			sectioncontentlist:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				if sectoggle then
					sectioncontent:TweenSize(UDim2.new(1,0,0,sectioncontentlist.AbsoluteContentSize.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
					sectionframe:TweenSize(UDim2.new(1,0,0,28+sectioncontentlist.AbsoluteContentSize.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
				end
			end)
			
			secstatus.MouseButton1Click:Connect(function()
				sectoggle = not sectoggle
				if not sectoggle then
					sectioncontent:TweenSize(UDim2.new(1,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
					sectionframe:TweenSize(UDim2.new(1,0,0,28), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
					TweenService:Create(secstatus, TweenInfo.new(0.1), {Rotation = -90}):Play()
				else
					sectioncontent:TweenSize(UDim2.new(1,0,0,sectioncontentlist.AbsoluteContentSize.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
					sectionframe:TweenSize(UDim2.new(1,0,0,28+sectioncontentlist.AbsoluteContentSize.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
					TweenService:Create(secstatus, TweenInfo.new(0.1), {Rotation = 90}):Play()
				end
			end)
			
			local sectionLibrary = {}
			
			function sectionLibrary:AddButton(text, callback)
				local buttoncontainer = Frame()
				buttoncontainer.Size = UDim2.new(1,0,0,32)
				buttoncontainer.BackgroundColor3 = libraryColours.Secondary
				buttoncontainer.Parent = sectioncontent
				
				local imagebutton = RoundButton()
				imagebutton.ImageColor3 = libraryColours.Accents
				imagebutton.Size = UDim2.new(1,-10,1,-10)
				imagebutton.Position = UDim2.new(0,5,0,5)
				imagebutton.ClipsDescendants = true
				imagebutton.Parent = buttoncontainer
				
				local clickimage = Click()
				clickimage.Position = UDim2.new(0,4,0,4)
				clickimage.ImageColor3 = libraryColours.Black
				clickimage.Parent = imagebutton
				
				local buttonlabel = Label(text or "Button")
				buttonlabel.Size = UDim2.new(1,0,1,0)
				buttonlabel.Font = Enum.Font.SourceSansBold
				buttonlabel.Text = text or "Button"
				buttonlabel.TextColor3 = libraryColours.Black
				buttonlabel.TextSize = 18
				buttonlabel.Parent = imagebutton
				
				imagebutton.MouseButton1Click:Connect(function()
					callback()
					CircleAnim(imagebutton)
				end)
			end
			
			function sectionLibrary:AddSlider(text, default, callback)
				local min = default.min or default.Min or 16
				local max = default.max or default.Max or 64
				local def = default.def or default.Def or math.floor((min + max) / 2)
				local defsca = (def - min)/(max - min)
				
				local slidercontainer = Frame()
				slidercontainer.Size = UDim2.new(1,0,0,40)
				slidercontainer.BackgroundColor3 = libraryColours.Secondary
				slidercontainer.Parent = sectioncontent
				
				local slidertitle = Label(text)
				slidertitle.Size = UDim2.new(1,-30,0,28)
				slidertitle.Font = Enum.Font.SourceSansBold
				slidertitle.TextColor3 = libraryColours.Text
				slidertitle.Text = ("  ".. text)
				slidertitle.TextXAlignment = Left
				slidertitle.TextSize = 16
				slidertitle.Parent = slidercontainer
				
				local valuecontainer = RoundBox()
				valuecontainer.Size = UDim2.new(0,32,0,16)
				valuecontainer.Position = UDim2.new(1,-36,0,6)
				valuecontainer.ImageColor3 = libraryColours.Status
				valuecontainer.Parent = slidercontainer
				
				local valuelabel = Label(def)
				valuelabel.Size = UDim2.new(1,0,1,0)
				valuelabel.Font = Enum.Font.SourceSansBold
				valuelabel.TextSize = 13
				valuelabel.TextColor3 = libraryColours.Text
				valuelabel.Parent = valuecontainer
				
				local sliderframe = Frame()
				sliderframe.BackgroundTransparency = 1
				sliderframe.Position = UDim2.new(0,0,1,-12)
				sliderframe.Size = UDim2.new(1,0,0,12)
				sliderframe.Parent = slidercontainer
				
				local sliderbutton = RoundButton()
				sliderbutton.Position = UDim2.new(0,5,0,1)
				sliderbutton.Size = UDim2.new(1,-10,0,4)
				sliderbutton.ImageColor3 = libraryColours.Status
				sliderbutton.Parent = sliderframe
				
				local sliderfill = RoundBox()
				sliderfill.ImageColor3 = libraryColours.Accents
				sliderfill.Size = UDim2.new(defsca,0,1,0)
				sliderfill.Parent = sliderbutton
				
				local slidercircle = Circle()
				slidercircle.Position = UDim2.new(1,-10,0.5,-10)
				slidercircle.Size = UDim2.new(0,20,0,20)
				slidercircle.ImageColor3 = libraryColours.Accents
				slidercircle.ImageTransparency = 1
				slidercircle.Parent = sliderfill
				
				local circlefill = Circle()
				circlefill.ImageColor3 = libraryColours.White
				circlefill.Size = UDim2.new(0,12,0,12)
				circlefill.Position = UDim2.new(0.5,-6,0.5,-6)
				circlefill.ImageTransparency = 1
				circlefill.Parent = slidercircle
				
				sliderbutton.MouseButton1Down:Connect(function()
					local x,y,xscale,yscale = RelativeXY(sliderbutton)
					local value = math.floor(min + ((max - min) * xscale))
					valuelabel.Text = value
					sliderfill.Size = UDim2.new(xscale,0,1,0)
					callback(value)
					local move
					local kill
					TweenService:Create(slidercircle, TweenInfo.new(0.5), {ImageTransparency = 0.5}):Play()
					TweenService:Create(circlefill, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
					move = Mouse.Move:Connect(function()
						local x,y,xscale,yscale = RelativeXY(sliderbutton)
						local value = math.floor(min + ((max - min) * xscale))
						valuelabel.Text = value
						sliderfill.Size = UDim2.new(xscale,0,1,0)
						callback(value)
					end)
					kill = InputService.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							move:Disconnect()
							kill:Disconnect()
							TweenService:Create(slidercircle, TweenInfo.new(0.5), {ImageTransparency = 1}):Play()
							TweenService:Create(circlefill, TweenInfo.new(0.5), {ImageTransparency = 1}):Play()
						end
					end)
				end)
			end
			
			function sectionLibrary:AddKeybind(text, default, callback)
                local def = default
                local changing = false
				
				local keybindcontainer = Frame()
				keybindcontainer.BackgroundColor3 = libraryColours.Secondary
				keybindcontainer.Size = UDim2.new(1,0,0,28)
				keybindcontainer.Parent = sectioncontent
				
				local keybindlabel = Button("  "..text)
				keybindlabel.TextColor3 = libraryColours.Text
				keybindlabel.TextSize = 16
				keybindlabel.Font = Enum.Font.SourceSansBold
				keybindlabel.TextXAlignment = Left
				keybindlabel.Size = UDim2.new(1,-30,0,28)
				keybindlabel.Parent = keybindcontainer
				
				local valuecontainer = RoundBox()
				valuecontainer.Position = UDim2.new(1,-36,0,6)
				valuecontainer.Size = UDim2.new(0,32,0,16)
				valuecontainer.ImageColor3 = libraryColours.Status
				valuecontainer.Parent = keybindcontainer
				
				local valuelabel = Label(string.char(def.Value):upper() or "None")
				valuelabel.Size = UDim2.new(1,0,1,0)
				valuelabel.Font = Enum.Font.SourceSansBold
				valuelabel.TextColor3 = libraryColours.Text
				valuelabel.TextSize = 13
                valuelabel.Parent = valuecontainer
                
                InputService.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Keyboard then
                        if input.KeyCode.Value == def.Value then
                            if not changing then
                                callback()
                            end
                        end
                    end
                end)
				
				keybindlabel.MouseButton1Down:Connect(function()
					valuelabel.Text = "..."
					local detect
					detect = InputService.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.Keyboard then
							local key = input.KeyCode
							local keyasstring = string.char(key.Value)
							local control = string.find(keyasstring, "%c")
							if not control then
                                valuelabel.Text = keyasstring:upper()
                                changing = true
                                def = key
                                wait()
                                changing = false
							else
								valuelabel.Text = string.char(def.Value):upper()
							end
							detect:Disconnect()
						end
					end)
				end)
			end
			
			function sectionLibrary:AddToggle(text, default, callback)
				local thistoggle = default
				
				local togglecontainer = Frame()
				togglecontainer.Size = UDim2.new(1,0,0,28)
				togglecontainer.BackgroundColor3 = libraryColours.Secondary
				togglecontainer.Parent = sectioncontent
				
				local toggletracker = RoundBox()
				toggletracker.Size = UDim2.new(0,18,0,18)
				toggletracker.Position = UDim2.new(1,-23,0,5)
				toggletracker.ImageColor3 = libraryColours.Status
				toggletracker.Parent = togglecontainer
				
				local togglecolour = RoundBox()
				togglecolour.ImageColor3 = thistoggle and libraryColours.Accents or libraryColours.Secondary
				togglecolour.Size = thistoggle and UDim2.new(1,0,1,0) or UDim2.new(0,14,0,14)
				togglecolour.Position = thistoggle and UDim2.new(0,0,0,0) or UDim2.new(0,2,0,2)
				togglecolour.Parent = toggletracker
				
				local togglechecker = CheckBox()
				togglechecker.ImageTransparency = thistoggle and 0 or 1
				togglechecker.Parent = togglecolour
				
				local togglebutton = Button(text or "Toggle")
				togglebutton.Size = UDim2.new(1,-30,1,0)
				togglebutton.Font = Enum.Font.SourceSansBold
				togglebutton.Text = ("  "..text) or ("  Toggle")
				togglebutton.TextXAlignment = Left
				togglebutton.TextColor3 = libraryColours.Text
				togglebutton.TextSize = 16
				togglebutton.Parent = togglecontainer
				
				togglebutton.MouseButton1Click:Connect(function()
					thistoggle = not thistoggle
					if not thistoggle then
						togglecolour:TweenSizeAndPosition(UDim2.new(0,14,0,14), UDim2.new(0,2,0,2), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
						TweenService:Create(togglecolour, TweenInfo.new(0.1), {ImageColor3 = libraryColours.Secondary}):Play()
						TweenService:Create(togglechecker, TweenInfo.new(0.1), {ImageTransparency = 1}):Play()
					else
						togglecolour:TweenSizeAndPosition(UDim2.new(1,0,1,0), UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 0.1, true)
						TweenService:Create(togglecolour, TweenInfo.new(0.1), {ImageColor3 = libraryColours.Accents}):Play()
						TweenService:Create(togglechecker, TweenInfo.new(0.1), {ImageTransparency = 0}):Play()
					end
					callback(thistoggle)
				end)
			end
			
			return sectionLibrary
		end
		
		return tabLibrary
	end
	
	return optionLibrary
end

return library
