local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
        Title = 'Starlight - Linora',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local dhlock = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/DH-Lua-Lock/refs/heads/main/Main.lua"))()

local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Aim Settings')

LeftGroupBox:AddToggle('Aimbot', {
    Text = 'Aim Lock To Players Head',
    Default = false, -- Default value (true / false)
    Tooltip = 'Need to hold Mouse2 to work', -- Information shown when you hover over the toggle

    Callback = function(Value)
    tog = Value
       getgenv().dhlock.enabled = tog
    end
})

LeftGroupBox:AddToggle('Aimbot', {
    Text = 'Show The Aimbot FOV',
    Default = false, -- Default value (true / false)
    Tooltip = 'Cool asf', -- Information shown when you hover over the toggle

    Callback = function(Value)
    tog = Value
       getgenv().dhlock.showfov = tog
    end
})

LeftGroupBox:AddSlider('MySlider', {
    Text = 'Aimbot Fov',
    Default = 50,
    Min = 50,
    Max = 500,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        getgenv().dhlock.fov = Value
    end
})

LeftGroupBox:AddToggle('No Hold Aimbot', {
    Text = 'Make The Aimbot No Hold',
    Default = false, -- Default value (true / false)
    Tooltip = 'Cool asf', -- Information shown when you hover over the toggle

    Callback = function(Value)
    tog = Value
       getgenv().dhlock.toggle = tog
    end
})

LeftGroupBox:AddLabel('Aimbot Keybind'):AddKeyPicker('KeyPicker', {

    Default = 'MB2', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
    SyncToggleState = false,

    Text = 'Aim Key', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu

    -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
    ChangedCallback = function(New)
        getgenv().dhlock.keybind = New
    end
})
