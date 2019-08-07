resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description ""

client_scripts {
	-- If writing to the DB.
	--'@async/async.lua',
	--'@mysql-async/lib/MySQL.lua',
	
	-- Default
	"@es_extended/locale.lua",	
	"config.lua",
	"client/client.lua",
	
	
	-- Locals
	"locales/en.lua"
}

server_scripts {
	-- If writing to the DB.
	--'@async/async.lua',
	--'@mysql-async/lib/MySQL.lua',
	
	-- Default
	"@es_extended/locale.lua",	
	"config.lua",
	"server/server.lua",
	
	
	-- Locals
	"locales/en.lua"
}

-- Client Side Exported Functions --
exports { 
}	

-- Server Side Exported Functions --	
server_exports {
}

-- Prequisites --
dependencies {
	"es_extended",
}