-- 		 LosOceanic_ =  		--
--								--
--			By DK - 2019			...	Dont forget your Bananas!			--
------------------------------------------------------------------------------

--[[ Loading ESX Object Dependancies ]]--

ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--[[ ESX Loaded - Generate Code Below ]]--

------------------------------------------------------------------------------
--	Script Locals Variables													--
------------------------------------------------------------------------------



------------------------------------------------------------------------------
--	Functions																--
------------------------------------------------------------------------------



------------------------------------------------------------------------------
--	Events																	--
------------------------------------------------------------------------------

RegisterServerEvent('Mugshot:AskClient')
AddEventHandler('Mugshot:AskClient', function(source, cb)
	local MugShot = {}
		TriggerEvent('Mugshot:SendMug', function(cb)
	cb(MugShot)

	if cb ~= nil then
		print('	^0[^5Debug^0] Event : Mugshot:AskClient |^5 '..cb..'^0. | Mugshot:AskClient : Event ^0[^5Debug^0] ')
	else
		print('	^0[^3Error^0] Event : Mugshot:AskClient |^5 Call back failed^0. | Mugshot:AskClient : Event ^0[^3Error^0] ')
	end
	
	do 
		MySQLAsyncExecute("INSERT INTO `characters` (`steamid`, `charid`) VALUES('"..GetPlayerIdentifiers(source)[1].."', 1)")
	end
end)

------------------------------------------------------------------------------
--	Threads																	--
------------------------------------------------------------------------------



------------------------------------------------------------------------------