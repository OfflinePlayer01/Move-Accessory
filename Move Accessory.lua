--[[
Made By Offlineplayer
]]

		    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "〰 Script By _offlineplayer_ 〰";
        Text = "〰 Roblox : 917Dream 〰";
        Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 3;

		    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "〰 Move Accessory 〰";
        Text = "〰 Enjoy :) 〰";
        Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 3;

player = game:GetService("Players").LocalPlayer
camera = workspace.CurrentCamera
character = player.Character
mouse = player:GetMouse()

for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
	v:Destroy()
end

temp = Instance.new("Folder",workspace)

stuff = Instance.new("Folder",temp)

camera.CameraType = Enum.CameraType.Scriptable
camera.FieldOfView = 1

cenoff = 1000

camera.CFrame = CFrame.new(-5,cenoff,-1500) * CFrame.Angles(0,math.rad(180),0)

background = Instance.new("Part",temp)
background.Anchored = true
background.Size = Vector3.new(100,100,0.1)
background.Position = Vector3.new(0,cenoff,0)
background.Color = Color3.new(0.0941176, 0.952941, 1)

hipheight = 0

ground = Instance.new("Part",temp)
ground.Anchored = true
ground.Size = Vector3.new(100,100,0.11)
ground.Position = Vector3.new(0,cenoff-53,0)
ground.Color = Color3.new(0.105882, 0.576471, 0.0705882)

referance = game:GetObjects("rbxassetid://13540732616")[1]
referance.Parent = temp
referance.HumanoidRootPart.CFrame = CFrame.new(0,cenoff,0)

SG = Instance.new("ScreenGui",player.PlayerGui)
SG.IgnoreGuiInset = true

uiback = Instance.new("Frame",SG)
uiback.AnchorPoint = Vector2.new(1,0)
uiback.Position = UDim2.new(1)
uiback.Size = UDim2.new(0.25,0,1)
uiback.BorderMode = Enum.BorderMode.Inset
uiback.BorderSizePixel = 10
uiback.BorderColor3 = Color3.new(0,0,0)
uiback.BackgroundColor3 = Color3.new(0.290196, 0.290196, 0.290196)

hatname = Instance.new("TextLabel",uiback)
hatname.AnchorPoint = Vector2.new(.5,.5)
hatname.Position = UDim2.new(.5,0,.1)
hatname.Size = UDim2.new(.95,0,.1)
hatname.TextScaled = true
hatname.BackgroundTransparency = 1
hatname.TextColor3 = Color3.new(0,0,0)
hatname.Text = "Hat Name"

button = Instance.new("TextButton")
button.Size = UDim2.new(1,0,.1)
button.TextScaled = true
button.BorderMode = Enum.BorderMode.Inset
button.TextColor3 = Color3.new(0,0,0)
button.BorderSizePixel = 10
button.BorderColor3 = Color3.new(0,0,0)
button.BackgroundColor3 = Color3.new(0.380392, 0.380392, 0.380392)
Instance.new("UIStroke",button)

buttons = {}

buttons.RA = button:Clone()
buttons.RA.Text = "Right Arm"
buttons.RA.Parent = uiback
buttons.RA.Position = UDim2.new(0,0,0.2)
buttons.RA.TextColor3 = Color3.fromRGB(237, 234, 234)

buttons.RL = button:Clone()
buttons.RL.Text = "Right Leg"
buttons.RL.Parent = uiback
buttons.RL.Position = UDim2.new(0,0,0.3)
buttons.RL.TextColor3 = Color3.fromRGB(170, 85, 0)

buttons.LA = button:Clone()
buttons.LA.Text = "Left Arm"
buttons.LA.Parent = uiback
buttons.LA.Position = UDim2.new(0,0,0.4)
buttons.LA.TextColor3 = Color3.fromRGB(255, 0, 0)

buttons.LL = button:Clone()
buttons.LL.Text = "Left Leg"
buttons.LL.Parent = uiback
buttons.LL.Position = UDim2.new(0,0,0.5)
buttons.LL.TextColor3 = Color3.fromRGB(255, 255, 0)

buttons.HD = button:Clone()
buttons.HD.Text = "Head"
buttons.HD.Parent = uiback
buttons.HD.Position = UDim2.new(0,0,0.6)
buttons.HD.TextColor3 = Color3.fromRGB(0, 255, 0)

buttons.TS = button:Clone()
buttons.TS.Text = "Torso"
buttons.TS.Parent = uiback
buttons.TS.Position = UDim2.new(0,0,0.7)
buttons.TS.TextColor3 = Color3.fromRGB(255, 0, 191)

buttons.RP = button:Clone()
buttons.RP.Text = "Root Part"
buttons.RP.Parent = uiback
buttons.RP.Position = UDim2.new(0,0,0.8)

Create = button:Clone()
Create.Text = "Create"
Create.Parent = uiback
Create.Position = UDim2.new(0,0,0.9)
Create.BackgroundColor3 = Color3.new(0.133333, 1, 0)

credote = Instance.new("TextLabel",SG)
credote.AnchorPoint = Vector2.new(0,1)
credote.Position = UDim2.new(0,0,1)
credote.Size = UDim2.new(.3,0,.075)
credote.Text = "Made by Rouxhaver"
credote.TextScaled = true
credote.BackgroundTransparency = 1
credote.TextColor3 = Color3.new(0,0,0)

outline = Instance.new("Highlight",nil)
outline.OutlineColor = Color3.new(1, 0.623529, 0.0941176)

selhat = nil

handles = {}

for i,hat in pairs(character:GetChildren()) do
	if hat:IsA("Accessory") then
		local part = hat.Handle:Clone()
		table.insert(handles, part)
		part.Parent = stuff
		part.Anchored = true
		part.AccessoryWeld:Destroy()
		part.CFrame = CFrame.new(math.random(-100,100)/10,cenoff+math.random(-100,100)/10,-10)

		local limb = Instance.new("StringValue",part)
		limb.Value = "RP"
		limb.Name = "limb"

		local pos = Instance.new("Vector3Value",part)
		pos.Name = "pos"
		pos.Value = part.Position

		local hatval = Instance.new("ObjectValue",part)
		hatval.Name = "hatval"
		hatval.Value = hat

		local rot = Instance.new("Vector3Value",part)
		rot.Name = "rot"
		rot.Value = Vector3.new()
	end
end

dragging = false

function clearcolor()
	for i,v in pairs(buttons) do
		v.BackgroundColor3 = Color3.new(0.380392, 0.380392, 0.380392)
	end
end

mouse.Button1Down:Connect(function()
	if mouse.Target and mouse.Target.Parent == stuff then
		clearcolor()
		selhat = mouse.Target
		outline.Parent = selhat
		hatname.Text = selhat.hatval.Value.Name
		dragging = true
		mouse.TargetFilter = stuff
		buttons[selhat.limb.Value].BackgroundColor3 = Color3.new(0.94902, 1, 0)
		while dragging == true do
			selhat.Position = mouse.Hit.p + Vector3.new(0,0,-10)
			task.wait()
		end
		selhat.pos.Value = mouse.Hit.p
	end
	if mouse.Target == ground then
		dragging = true
		while dragging == true do
			ground.Position = Vector3.new(0,mouse.Hit.Y-50,0)
			hipheight = cenoff - mouse.Hit.Y - 3
			task.wait()
		end
	end
end)

mouse.Button1Up:Connect(function()
	dragging = false
	mouse.TargetFilter = nil
end)

for i,v in pairs(buttons) do
	v.MouseButton1Up:Connect(function()
		if selhat ~= nil then
			clearcolor()
			selhat.limb.Value = tostring(i)
			v.BackgroundColor3 = Color3.new(0.94902, 1, 0)
		end
	end)
end

usimp = game:GetService("UserInputService")

usimp.InputBegan:Connect(function(key)
	if selhat ~= nil then
		if key.KeyCode == Enum.KeyCode.R then
			selhat.Orientation += Vector3.new(0,10,0)
			selhat.rot.Value = selhat.Orientation
		end
		if key.KeyCode == Enum.KeyCode.T then
			selhat.Orientation += Vector3.new(0,0,10)
			selhat.rot.Value = selhat.Orientation
		end
	end
end)

ts = game:GetService("TweenService")

function createtween(part, cframe,ttime)
	local tweeninfo = TweenInfo.new(ttime)
	local tween = ts:Create(part, tweeninfo, {CFrame = cframe})
	tween:Play()
end

Create.MouseButton1Up:Connect(function()
	SG:Destroy()
	local newchar = referance:Clone()
	local hrp = newchar.HumanoidRootPart
	hrp.Anchored = false
	hrp.CFrame = character.HumanoidRootPart.CFrame
	newchar.Parent = workspace
	newchar.Humanoid.HipHeight = hipheight

	player.Character = newchar

	local animate = character.Animate:Clone()
	animate.Parent = newchar

	camera.CameraType = Enum.CameraType.Custom
	camera.CameraSubject = newchar.Humanoid
	camera.FieldOfView = 70

	wait(game:GetService("Players").RespawnTime+.3)

	character.Humanoid.Health = 0

	for i,v in pairs(newchar:GetChildren()) do
		if v:IsA("BasePart") then
			v.Transparency = 1
		end
	end
	
	newchar.Head.face:Destroy()

	for i,handle in pairs(handles) do
		local hat = handle.hatval.Value.Handle
		local limb = nil
		local pos = nil
		local rot = handle.rot.Value
		if handle.limb.Value == "RA" then
			limb = newchar["Right Arm"]
			pos = handle.pos.Value - referance["Right Arm"].Position
		end
		if handle.limb.Value == "LA" then
			limb = newchar["Left Arm"]
			pos = handle.pos.Value - referance["Left Arm"].Position
		end
		if handle.limb.Value == "RL" then
			limb = newchar["Right Leg"]
			pos = handle.pos.Value - referance["Right Leg"].Position
		end
		if handle.limb.Value == "LL" then
			limb = newchar["Left Leg"]
			pos = handle.pos.Value - referance["Left Leg"].Position
		end
		if handle.limb.Value == "TS" then
			limb = newchar["Torso"]
			pos = handle.pos.Value - referance["Torso"].Position
		end
		if handle.limb.Value == "RP" then
			limb = newchar["HumanoidRootPart"]
			pos = handle.pos.Value - referance["HumanoidRootPart"].Position
		end
		if handle.limb.Value == "HD" then
			limb = newchar["Head"]
			pos = handle.pos.Value - referance["Head"].Position
		end
		coroutine.wrap(function()
			while true do
				local thecframe = (limb.CFrame + (limb.CFrame.RightVector * pos.X) + (limb.CFrame.UpVector * pos.Y)) * CFrame.Angles(0,math.rad(rot.Y),math.rad(rot.Z))
				createtween(hat, thecframe, 0)
				hat.AssemblyLinearVelocity = Vector3.new(0,30,0)
				task.wait()
			end
		end)()
	end
	temp:Destroy()
	selhat = nil
	while task.wait() do
		if newchar.Humanoid.Health == 0 then
			player.Character = character
		end
	end
end)
