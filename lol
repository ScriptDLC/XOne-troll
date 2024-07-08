local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "PREMIUM | XOne", HidePremium = false, SaveConfig = true, ConfigFolder = "Torrent"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

OrionLib:MakeNotification({
	Name = "Ты успешно купил чит",
	Content = "t.me/ScriptDLC",
	Image = "rbxassetid://4483345998",
	Time = 15
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]

local Section = Tab:AddSection({
	Name = "Версии и так далее"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddParagraph("Версия меню","Beta")

Tab:AddParagraph("Сделано из 223 строчек кода","Делал долго")

local Tab = Window:MakeTab({
	Name = "Legit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = enable
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

Tab:AddParagraph("LEGIT Бесплатный","Можете пользоваться")

Tab:AddButton({
	Name = "BunnyHop",
	Callback = function()
      	game.Players.LocalPlayer:Kick("Успешно! Ваш аккаунт успешно взломан. Ждите бана!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]


local Tab = Window:MakeTab({
	Name = "RAGE",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

Tab:AddParagraph("RAGE платный","ключ один и тот же по функциям")

Tab:AddButton({
	Name = "AimBot",
	Callback = function()
      		--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.4, 0)
frame.Position = UDim2.new(0.35, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
title.Text = "Купить легит"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBlack
title.TextSize = 24
title.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.8, 0, 0.2, 0)
textBox.Position = UDim2.new(0.1, 0, 0.3, 0)
textBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
textBox.Text = ""
textBox.TextColor3 = Color3.new(1, 1, 1)
textBox.Font = Enum.Font.GothamBlack
textBox.TextSize = 18
textBox.Parent = frame

local enterKeyButton = Instance.new("TextButton")
enterKeyButton.Size = UDim2.new(0.8, 0, 0.15, 0)
enterKeyButton.Position = UDim2.new(0.1, 0, 0.55, 0)
enterKeyButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
enterKeyButton.Text = "Отправить"
enterKeyButton.TextColor3 = Color3.new(1, 1, 1)
enterKeyButton.Font = Enum.Font.GothamBlack
enterKeyButton.TextSize = 18
enterKeyButton.Parent = frame

local getKeyButton = Instance.new("TextButton")
getKeyButton.Size = UDim2.new(0.8, 0, 0.15, 0)
getKeyButton.Position = UDim2.new(0.1, 0, 0.75, 0)
getKeyButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
getKeyButton.Text = "Купить ключ"
getKeyButton.TextColor3 = Color3.new(1, 1, 1)
getKeyButton.Font = Enum.Font.GothamBlack
getKeyButton.TextSize = 18
getKeyButton.Parent = frame

local function setClipboardWithURL()
    setclipboard("@ScriptDLC_Bot")
end

getKeyButton.MouseButton1Click:Connect(setClipboardWithURL)

local function sendNotification(title, text, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = duration;
    })
end

local function enterKey()
    local userInputKey = textBox.Text
    local correctKey = "Key-228338"

    if userInputKey == correctKey then
        local scriptURL = "scriptlink"
        local success, result = pcall(function()
            return loadstring(game:HttpGet('https://pastebin.com/raw/f3hkT5A1'))()
        end)

        if success then
            screenGui:Destroy()
        else
            sendNotification("Ошибка", "Еще раз", 10)
        end
    else
        sendNotification("Не правильный ключ", "КУПИ КЛЮЧ И НЕ МОРОЧЬСЯ", 10)
    end
end

enterKeyButton.MouseButton1Click:Connect(enterKey)

local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging, dragStart, startPos = true, input.Position, frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
