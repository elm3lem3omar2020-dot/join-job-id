local player = game.Players.LocalPlayer
local TeleportService = game:GetService("TeleportService")

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "JoinServerGui"
gui.Parent = player:WaitForChild("PlayerGui")

-- Frame
local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0, 400, 0, 150)
frame.Position = UDim2.new(0.5, -200, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

-- Label
local label = Instance.new("TextLabel")
label.Parent = frame
label.Size = UDim2.new(1, 0, 0, 40)
label.Position = UDim2.new(0, 0, 0, 10)
label.Text = "Enter Job Id:"
label.TextColor3 = Color3.fromRGB(255,255,255)
label.BackgroundTransparency = 1
label.Font = Enum.Font.GothamMedium
label.TextSize = 24
label.TextXAlignment = Enum.TextXAlignment.Center

-- TextBox
local textbox = Instance.new("TextBox")
textbox.Parent = frame
textbox.Size = UDim2.new(0.7, 0, 0, 40)
textbox.Position = UDim2.new(0.15, 0, 0, 60)
textbox.PlaceholderText = "Job Id هنا"
textbox.TextColor3 = Color3.fromRGB(0,0,0)
textbox.BackgroundColor3 = Color3.fromRGB(255,255,255)
textbox.Font = Enum.Font.Gotham
textbox.TextSize = 20
textbox.ClearTextOnFocus = false

-- Button
local button = Instance.new("TextButton")
button.Parent = frame
button.Size = UDim2.new(0.3, -10, 0, 40)
button.Position = UDim2.new(0.7, 5, 0, 60)
button.Text = "Join"
button.TextColor3 = Color3.fromRGB(255,255,255)
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
button.Font = Enum.Font.GothamBold
button.TextSize = 22
local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = button

-- زرار Join يعمل التليبور
button.MouseButton1Click:Connect(function()
    local jobId = textbox.Text
    if jobId and jobId ~= "" then
        TeleportService:TeleportToPlaceInstance(game.PlaceId, jobId, player)
    else
        label.Text = "الرجاء إدخال JobId صالح!"
        label.TextColor3 = Color3.fromRGB(255,0,0)
    end
end)
