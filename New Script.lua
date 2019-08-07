-- 		 LosOceanic_ =  		--
--								--
--			By DK - 2019			...	Dont forget your Bananas!			--
------------------------------------------------------------------------------

--[[ Loading ESX Object Dependancies ]]--

ESX = nil

Citizen.CreateThread(function()
		while ESX == nil do
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
			Citizen.Wait(100)
		end
end)

--[[ ESX Loaded - Generate Code Below ]]--

------------------------------------------------------------------------------

