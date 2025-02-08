local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Splix"))()
local window = library:new({textsize = 13.5,font = Enum.Font.RobotoMono,name = "SkibidiToilet sccript yipeeee",color = Color3.fromRGB(255,255,255)})

local dhlock = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/DH-Lua-Lock/refs/heads/main/Main.lua"))()

local aimtab = window:page({name = "Aim Features"})

local section1 = aimtab:section({name = "Aim Settings",side = "left",size = 250})
section1:toggle({name = "Aimbot",def = false,callback = function(value)
  tog = value
  getgenv().dhlock.enabled = tog
end})

section1:toggle({name = "Show FOV",def = false,callback = function(value)
  tog = value
  getgenv().dhlock.showfov = tog
end})

section1:slider({name = "Fov Slider",def = 50, max = 500,min = 50,rounding = true,ticking = false,measuring = "FOV",callback = function(value)
   getgenv().dhlock.fov = value
end})

section1:toggle({name = "Alive Check",def = false,callback = function(value)
  tog = value
  getgenv().dhlock.alivecheck = tog
end})

section1:toggle({name = "No Hold Aimbot",def = false,callback = function(value)
  tog = value
  getgenv().dhlock.toggle = tog
end})

local picker = section1:colorpicker({name = "Aimbot FOV Color",cpname = nil,def = Color3.fromRGB(255,255,255),callback = function(value)
   getgenv().dhlock.fovcolorunlocked = value
end})

section1:keybind({name = "Aimbot Keybind",def = nil,callback = function(key)
   getgenv().dhlock.keybind = key
end})
