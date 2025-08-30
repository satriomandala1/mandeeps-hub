if not game:IsLoaded() then return end
local CheatEngineMode = false
if (not getgenv) or (getgenv and type(getgenv) ~= "function") then CheatEngineMode = true end
if getgenv and not getgenv().shared then CheatEngineMode = true; getgenv().shared = {}; end
if getgenv and not getgenv().debug then CheatEngineMode = true; getgenv().debug = {traceback = function(string) return string end} end
if getgenv and not getgenv().require then CheatEngineMode = true; end
if getgenv and getgenv().require and type(getgenv().require) ~= "function" then CheatEngineMode = true end

shared.CheatEngineMode = shared.CheatEngineMode or CheatEngineMode

if game.PlaceId == 79546208627805 then
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "mandeeps | 99 Nights In The Forest",
            Text = "Go In Game for mandeeps to load :D [You are in lobby currently]",
            Duration = 10
        })
    end)
    return
end 

-- 🔥 Ambil script utama dari repo mandeeps
local url = "https://raw.githubusercontent.com/satriomandala1/mandeeps-hub/main/newnightsintheforest.lua"
loadstring(game:HttpGet(url, true))()
