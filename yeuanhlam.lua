-- Tạo ScreenGui trong PlayerGui
local player = game.Players.LocalPlayer
local pGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyTestUI"
screenGui.Parent = pGui

-- Khung chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 120)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = screenGui

-- Chữ ở giữa
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.6, 0)
label.Text = "Script Ngừng hoạt động vì bố đéo thích đăng nữa có script ở dưới m ấn copy là có script mới nha dog"
label.TextColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.Parent = frame

-- Nút Close
local close = Instance.new("TextButton")
close.Size = UDim2.new(0.4, 0, 0.3, 0)
close.Position = UDim2.new(0.1, 0, 0.6, 0)
close.Text = "Close"
close.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
close.Parent = frame

-- Nút Copy
local copy = Instance.new("TextButton")
copy.Size = UDim2.new(0.4, 0, 0.3, 0)
copy.Position = UDim2.new(0.5, 0, 0.6, 0)
copy.Text = "Copy"
copy.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
copy.Parent = frame

-- Sự kiện đóng
close.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Sự kiện Copy (Chỉ chạy trên bản hack/executor như Fluxus, Delta, Hydroxide...)
copy.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("Đéo có từ từ")
        copy.Text = "Xong rồi!"
    else
        copy.Text = "No Support"
    end
end)
