-- Protected Script

local _a=string.char
local _b=string.byte
local _c=game:GetService(_a(80,108,97,121,101,114,115))
local _d=game:GetService(_a(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101))
local _e=_c.LocalPlayer

local function _f(s)
    local t=""
    for i=1,#s do
        t=t.._a(_b(s,i))
    end
    return t
end

local _g=Instance.new(_f("ScreenGui"))
_g.Name=_f("JoinServerGui")
_g.Parent=_e:WaitForChild(_f("PlayerGui"))

local _h=Instance.new(_f("Frame"))
_h.Parent=_g
_h.Size=UDim2.new(0,400,0,150)
_h.Position=UDim2.new(0.5,-200,0.5,-75)
_h.BackgroundColor3=Color3.fromRGB(30,30,30)

local _i=Instance.new(_f("UICorner"))
_i.CornerRadius=UDim.new(0,12)
_i.Parent=_h

local _j=Instance.new(_f("TextLabel"))
_j.Parent=_h
_j.Size=UDim2.new(1,0,0,40)
_j.Position=UDim2.new(0,0,0,10)
_j.Text=_f("Enter Job Id:")
_j.TextColor3=Color3.fromRGB(255,255,255)
_j.BackgroundTransparency=1
_j.Font=Enum.Font.GothamMedium
_j.TextSize=24
_j.TextXAlignment=Enum.TextXAlignment.Center

local _k=Instance.new(_f("TextBox"))
_k.Parent=_h
_k.Size=UDim2.new(0.7,0,0,40)
_k.Position=UDim2.new(0.15,0,0,60)
_k.PlaceholderText=_f("Job Id هنا")
_k.TextColor3=Color3.fromRGB(0,0,0)
_k.BackgroundColor3=Color3.fromRGB(255,255,255)
_k.Font=Enum.Font.Gotham
_k.TextSize=20
_k.ClearTextOnFocus=false

local _l=Instance.new(_f("TextButton"))
_l.Parent=_h
_l.Size=UDim2.new(0.3,-10,0,40)
_l.Position=UDim2.new(0.7,5,0,60)
_l.Text=_f("Join")
_l.TextColor3=Color3.fromRGB(255,255,255)
_l.BackgroundColor3=Color3.fromRGB(0,170,255)
_l.Font=Enum.Font.GothamBold
_l.TextSize=22

local _m=Instance.new(_f("UICorner"))
_m.CornerRadius=UDim.new(0,8)
_m.Parent=_l

_l.MouseButton1Click:Connect(function()
    local _n=_k.Text
    if _n and _n~="" then
        _d:TeleportToPlaceInstance(game.PlaceId,_n,_e)
    else
        _j.Text=_f("الرجاء إدخال JobId صالح!")
        _j.TextColor3=Color3.fromRGB(255,0,0)
    end
end)
