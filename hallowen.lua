local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Bendyshechka/SlapBattlesHallowen/refs/heads/main/Library')))()

local Window = OrionLib:MakeWindow({Name = "Slap Battles Hallowen🎃🎃🎃", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Информация😶‍🌫️",
	Icon = "rbxassetid://7734053426",
	PremiumOnly = false
})

Tab:AddParagraph("Имба","Здарова щеглы, это новый скрипт от зубаскала🎃🎃🎃")

local Tab2 = Window:MakeTab({
	Name = "Хелуин🎃🎃🎃",
	Icon = "rbxassetid://7733917120",
	PremiumOnly = false
})

Tab2:AddToggle({
	Name = "Собирать конфетки🍬🍬🍬",
	Default = false,
	Callback = function(Value)
	    CandyCornsFarm = Value
	    while CandyCornsFarm do
	        local allCollected = true
	        for _, item in pairs(candyCornsFolder:GetChildren()) do
	            if item:IsA("BasePart") then
	                item.CFrame = rootPart.CFrame -- Телепортируем объект к игроку
	                allCollected = false
	                task.wait(0.1) -- Добавляем небольшую задержку
	            end
	        end
	        
	        if allCollected then
	            -- Если все объекты собраны, подождём немного перед следующей проверкой
	            task.wait(1)
	        end
	    end
	end    
})


local GraveFarm = false
local player = game.Players.LocalPlayer

Tab2:AddToggle({
	Name = "Авто-нажимание могилы🎃🎃🎃",
	Default = false,
	Callback = function(Value)
		GraveFarm = Value
		-- Запускаем цикл, если тумблер включен
		while GraveFarm do
			local gravestone = workspace:FindFirstChild("Gravestone")
			if gravestone and gravestone:FindFirstChild("ClickDetector") then
				-- Имитируем клик
				gravestone.ClickDetector:FireClick(player)
			end
			wait(0.1)
		end
	end
})
