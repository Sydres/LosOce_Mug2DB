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

Option 3
Save PNG file to Server then Send to DB as Blob.



TODO

Server on event trigger

Server > Tells Client to take PedMugShot as Callback.

Client < Takes Mugshotas callback.

Either:
A) Draw the sprite and screenshot the image from client side like JS4.

B) Take the PedMugshot String and Convert the 

Server > Sends the CB data to the DB under Character Table in Longtext collumn OR as Json file as Steam:Identifier/



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



function Mugshot()
	local iPlayer = RegisterPedheadshot(GetPlayerPed-1)
	
	while not IsPedheadshotReady(iPlayer) do
		Wait(0)
	end
	
	if IsPedheadshotValid(iPlayer) then
		local ImageStr = GetPedheadshotTxdString(iplayer)
	else
		UnregisterPedheadshot(iPlayer)
	end

	UnregisterPedheadshot(iPlayer)
end return ImageStr

------------------------------------------------------------------------------
--	Events																	--
------------------------------------------------------------------------------

RegisterServerEvent('Mugshot:SendMug')
AddEventHandler('Mugshot:SendMug', function(cb)
	cb = Mugshot()
end)

------------------------------------------------------------------------------
--	Threads																	--
------------------------------------------------------------------------------



------------------------------------------------------------------------------