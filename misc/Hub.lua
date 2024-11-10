local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("client",Color3.fromRGB(10, 10, 10), Enum.KeyCode.K)

local tab = win:Tab("player")

tab:Label("Humanoid")


tab:Textbox("WalkSpeed",true, function(t)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed =  t
end)    

tab:Textbox("JumpPower",true, function(t)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower =  t
end)   

tab:Button("Fly", function()
	lib:Notification("Notification", "An error occured.!", "*")
end)

tab:Label("Misc")


--tab:Toggle("Toggle",false, function(t)
--print(t)
--end)

--ab:Slider("Slider",0,100,30, function(t)
--print(t)
--end)

--tab:Dropdown("Dropdown",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(t)
--print(t)
--end)

--tab:Colorpicker("Colorpicker",Color3.fromRGB(255,0,0), function(t)
--print(t)
--end)


--tab:Bind("Bind",Enum.KeyCode.RightShift, function()
--print("Pressed!")
--end)

local changeclr = win:Tab("UI")

changeclr:Colorpicker("Change UI Color",Color3.fromRGB(10,10,10), function(t)
	lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)
