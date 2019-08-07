-- 		 LosOceanic_ =  		--
--								--
--			By DK - 2019			...	Dont forget your Bananas!			--
------------------------------------------------------------------------------

--[[ Loading ESX Object Dependancies ]]--

ESX = nil

Citizen.CreateThread(function()
		while ESX == nil do
			TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
			Citizen.Wait(250)
		end
end)

--[[ ESX Loaded - Generate Code Below ]]--

------------------------------------------------------------------------------
--	Script Locals Variables													--
------------------------------------------------------------------------------

Option 1
mysql> SELECT TO_BASE64('base64 encoded string');
mysql> SELECT FROM_BASE64('YmFzZTY0IGVuY29kZWQgc3RyaW5n');

Option 2
Convert to string and upload string to db, then encode and decode during read/write from db.

------------------------------------------------------------------------------
--	Functions																--
------------------------------------------------------------------------------

local retval --[[ boolean ]] =
	IsPedheadshotReady(
		handle --[[ integer ]]
	)
local retval --[[ boolean ]] =
	IsPedheadshotValid(
		handle --[[ integer ]]
	)
local retval --[[ integer ]] =
	RegisterPedheadshot(GetPlayerPed-1)
	
UnregisterPedheadshot(
	handle --[[ integer ]]
)
local retval --[[ string ]] =
	GetPedheadshotTxdString(
		handle --[[ integer ]]
)



function Mugshot(str)
	local iPlayer = RegisterPedheadshot(GetPlayerPed-1)
	if IsPedheadshotReady(iPlayer) then
		if IsPedheadshotValid(iPlayer) then
			local ImageStr = GetPedheadshotTxdString(iplayer)
		else
			UnregisterPedheadshot(iPlayer)
		end
	else
		UnregisterPedheadshot(iPlayer)
	end
	UnregisterPedheadshot(iPlayer)
end return ImageStr


-- Server Side --
function MugToDB(cb)
	local ImageStr = Mugshot(str)
	if ImageStr ~= nil then
		MySQL.Async.insert("UPDATE characters SET MugShot = @MugShot WHERE identifier = @identifier", {
			['@MugShot'] = ImageStr,
			['@identifier'] = identifier
		}, function ()
			cb(ImageStr)
		end)
	end
end

------------------------------------------------------------------------------
--	Threads																	--
------------------------------------------------------------------------------



------------------------------------------------------------------------------
