
--[[ Total time token: 
	- 3 hour
	- 1.5 hour
	________
	4.5 hours
]]



-- local mysqlhost1 = "37.10.121.119"
-- local mysqluser1 = "ni597549_1_DB"
-- local mysqlpassword1 = "zoWfwU3e"
-- local mysqldatabase1 = "ni597549_1_DB"



-- local mysqlhost2 = "109.230.249.122"
-- local mysqluser2 = "ni597549_1_DB"
-- local mysqlpassword2 = "Akjr0xby"
-- local mysqldatabase2 = "ni597549_1_DB"

-- local dbpTime = 500 

-- local max_player_houses = 2 
-- local sellhouse_value = 80 
-- local open_key = "F5" 



addEvent("onHouseSystemHouseCreate", true)
addEvent("onHouseSystemHouseLock", true)
addEvent("onHouseSystemHouseDeposit", true)
addEvent("onHouseSystemHouseWithdraw", true)
addEvent("onHouseSystemWeaponDeposit", true)
addEvent("onHouseSystemWeaponWithdraw", true)
addEvent("onHouseSystemRentableSwitch", true)
addEvent("onHouseSystemRentalprice", true)
addEvent("onHouseSystemTenandRemove", true)
addEvent("onHouseSystemInfoBuy", true)
addEvent("onHouseSystemInfoRent", true)
addEvent("onHouseSystemInfoEnter", true)

local handler 

local saveableValues = {
	["MONEY"] = "MONEY",
	["WEAP1"] = "WEAP1",
	["WEAP2"] = "WEAP2",
	["WEAP3"] = "WEAP3",
	["LOCKED"] = "LOCKED",
	["OWNER"] = "OWNER",
	["RENTABLE"] = "RENTABLE",
	["RENTALPRICE"] = "RENTALPRICE",
	["RENT1"] = "RENT1",
	["RENT2"] = "RENT2",
	["RENT3"] = "RENT3",
	["RENT4"] = "RENT4",
	["RENT5"] = "RENT5",
}


local created = false 
local houseid = 0

local house = {} 
local houseData = {} 
local houseInt = {} 
local houseIntData = {} -- 

local buildStartTick
local buildEndTick

local rentTimer



addEventHandler("onResourceStart", getResourceRootElement(), function()

		if not(handler) then
			outputServerLog("[HOUSESYSTEM]MySQL handler 2 not accepted! ")
		else
			outputServerLog("[HOUSESYSTEM]MySQL   accepted!")
			housesys_startup()
		end
	end
end)


addEventHandler("onResourceStop", getResourceRootElement(), function()
	for index, houses in pairs(house) do
		houses = nil
	end
	for index, houseDatas in pairs(houseData) do
		houseDatas = nil
	end
	for index, houseInts in pairs(houseInt) do
		houseInts = nil
	end
	for index, houseIntDatas in pairs(houseIntData) do
		houseIntDatas = nil
	end
	
	houseid = 0
	created = false
end)



addCommandHandler("unrent", function(thePlayer)
	if(getElementData(thePlayer, "house:lastvisit")) and (getElementData(thePlayer, "house:lastvisit") ~= false)  then
		local id = tonumber(getElementData(thePlayer, "house:lastvisit"))
		if(isPlayerRentedHouse(thePlayer, id) == false) then
			outputChatBox("You are not tenad of this house!", thePlayer, 255, 0, 0)
			return
		end
		local sucess = removeHouseTenand(id, thePlayer)
		if(sucess == true) then
			outputChatBox("You have sucessfull terminate the tenancy!", thePlayer, 0, 255, 0)
		else
			outputChatBox("An error occurred!", thePlayer, 255, 0, 0)
		end
	end
end)



addCommandHandler("rent", function(thePlayer)
	if(getElementData(thePlayer, "house:lastvisit")) and (getElementData(thePlayer, "house:lastvisit") ~= false)  then
		local id = tonumber(getElementData(thePlayer, "house:lastvisit"))
		if(houseData[id]["OWNER"] == getPlayerName(thePlayer)) then
			outputChatBox("You can't rent here! It's your house!", thePlayer, 255, 0, 0)
			return
		end
		if(tonumber(houseData[id]["RENTABLE"]) ~= 1) then
			outputChatBox("This house is not rentable!", thePlayer, 255, 0, 0)
			return
		end
		if(getPlayerRentedHouse(thePlayer) ~= false) then
			outputChatBox("You are allready a tenand in a house! Use /unrent first.", thePlayer, 255, 0, 0)
			return
		end
		local sucess = addHouseTenand(thePlayer, id)
		if(sucess == true) then
			outputChatBox("You are now tenand this house!", thePlayer, 0, 255, 0)
		else
			outputChatBox("You can't rent this house!", thePlayer, 255, 0, 0)
		end
	end
end)



addCommandHandler("hauserstellen", function(thePlayer)
   
	if(hasObjectPermissionTo ( thePlayer, "function.kickPlayer", false ) ) then
		if(getElementInterior(thePlayer) ~= 0) then
			outputChatBox("Du bist nicht draußen!", thePlayer, 255, 0, 0)
			return
		end
		if(isPedInVehicle(thePlayer) == true) then
			outputChatBox("Bitte verlasse das Auto", thePlayer, 255, 0, 0)
			return
		end
		-- INSERT SECURITY OPTIONS LIKE ADMINLEVEL HERE( if(adminlevel > shit) then ...)
		triggerClientEvent(thePlayer, "onClientHouseSystemGUIStart", thePlayer)
	else
		outputChatBox("Du bist kein Admin!", thePlayer, 255, 0, 0)
	end
end)



addCommandHandler("rein", function(thePlayer)
	if(getElementData(thePlayer, "house:lastvisit")) and (getElementData(thePlayer, "house:lastvisit") ~= false)  then
		local house = getElementData(thePlayer, "house:lastvisit")
		if(house) then
			local id = tonumber(house)
			if(tonumber(houseData[id]["LOCKED"]) == 0) or (houseData[id]["OWNER"] == getPlayerName(thePlayer)) or (isPlayerRentedHouse(thePlayer, id) == true) then
				local int, intx, inty, intz, dim = houseIntData[id]["INT"], houseIntData[id]["X"], houseIntData[id]["Y"], houseIntData[id]["Z"], id
				setElementData(thePlayer, "house:in", true)
				setInPosition(thePlayer, intx, inty, intz, int, false, dim)
				unbindKey(thePlayer, open_key, "down", togglePlayerInfomenue, id)
				setElementData(thePlayer, "house:lastvisitINT", id)
				if(houseData[id]["OWNER"] == getPlayerName(thePlayer)) or (isPlayerRentedHouse(thePlayer, id) == true) then
					bindKey(thePlayer, open_key, "down", togglePlayerHousemenue, id)
				end
			else
				outputChatBox("Du hast keine schlüssel für dieses haus!", thePlayer, 255, 0, 0)
			end
		end
	end
end)

-- /out --

addCommandHandler("raus", function(thePlayer)
	if(getElementData(thePlayer, "house:lastvisitINT")) and (getElementData(thePlayer, "house:lastvisitINT") ~= false)  then
		local house = getElementData(thePlayer, "house:lastvisitINT")
		if(house) then
			local id = tonumber(house)
			local x, y, z = houseData[id]["X"], houseData[id]["Y"], houseData[id]["Z"]
			setElementData(thePlayer, "house:in", false)
			setInPosition(thePlayer, x, y, z, 0, false, 0)
		end
	end
end)

-- /buyhouse --

addCommandHandler("hkaufen", function(thePlayer)
	if(getElementData(thePlayer, "house:lastvisit")) and (getElementData(thePlayer, "house:lastvisit") ~= false)  then
		local house = getElementData(thePlayer, "house:lastvisit")
		if(house) then
			local id = house
			local owner = houseData[id]["OWNER"]
			if(owner ~= "no-one") then
				outputChatBox("Du kannst das haus nicht Kaufen!", thePlayer, 255, 0, 0)
			else
				local houses = 0
				for index, col in pairs(getElementsByType("colshape")) do
					if(getElementData(col, "house") == true) and (houseData[getElementData(col, "ID")]["OWNER"] == getPlayerName(thePlayer)) then
						houses = houses+1
						if(houses == max_player_houses) then
							outputChatBox("Du hast bereits: "..max_player_houses.." Häuser! Verkaufe eins davon!.", thePlayer, 255, 0, 0)
							return
						end
					end
				end
				local money = getPlayerMoney(thePlayer)
				local price = houseData[id]["PRICE"]
				if(money < price) then outputChatBox("Du hast nicht genug geld. Du brauchst:"..(price-money).."$ mehr!!", thePlayer, 255, 0, 0) return end
				setHouseData(id, "OWNER", getPlayerName(thePlayer))
				givePlayerMoney(thePlayer, -price)
				outputChatBox("Allesgute du hast das Haus gekauft!", thePlayer, 0, 255, 0)
				setElementModel(houseData[id]["PICKUP"], 1272)
				setElementModel(houseData[id]["BLIP"], 32)
			end
		end
	end
end)

-- /sellhouse --

addCommandHandler("hverkaufen", function(thePlayer)
	if(getElementData(thePlayer, "house:lastvisit")) and (getElementData(thePlayer, "house:lastvisit") ~= false)  then
		local house = getElementData(thePlayer, "house:lastvisit")
		if(house) then
			local id = house
			local owner = houseData[id]["OWNER"]
			if(owner ~= getPlayerName(thePlayer)) then
				outputChatBox("Du kannst das Haus nicht Verkaufen!", thePlayer, 255, 0, 0)
			else
				local price = houseData[id]["PRICE"]
				setHouseData(id, "OWNER", "no-one")
				setHouseData(id, "RENTABLE", 0)
				setHouseData(id, "RENTALPRICE", 0)
				for i = 1, 5, 1 do
					setHouseData(id, "RENT"..i, "no-one")
				end
				givePlayerMoney(thePlayer, math.floor(price/100*sellhouse_value))
				outputChatBox("Du hast das Haus erfolgreich Verkauft:  $"..math.floor(price/100*sellhouse_value).." back!", thePlayer, 0, 255, 0)
				setElementModel(houseData[id]["PICKUP"], 1273)
				setElementModel(houseData[id]["BLIP"], 31)
			end
		end
	end
end)

-- /deletehouse --

addCommandHandler("hloeschen", function(thePlayer, cmd, id)
	if(hasObjectPermissionTo ( thePlayer, "function.kickPlayer", false ) ) then
		id = tonumber(id)
		if not(id) then return end
		if not(house[id]) then
			outputChatBox(" kein Haus mit dieser ID!"..id.."!", thePlayer, 255, 0, 0)
			return
		end
		local query = dbQuery(handler, "DELETE FROM houses WHERE ID = '"..id.."';")
		local result = dbPoll(query, dbpTime)
		if(result) then
			destroyElement(houseData[id]["BLIP"])
			destroyElement(houseData[id]["PICKUP"])
			destroyElement(houseIntData[id]["PICKUP"])
			houseData[id] = nil
			houseIntData[id] = nil
			destroyElement(house[id])
			destroyElement(houseInt[id])
			outputChatBox("House "..id.." destroyed sucessfully!", thePlayer, 0, 255, 0)
			house[id] = false
		else
			error("House ID "..id.." has been created Ingame, but House is not in the database! WTF")
		end
	else
		outputChatBox("You are not an admin!", thePlayer, 255, 0, 0)
	end
end)

-- /househelp --

addCommandHandler("haushilfe", function(thePlayer)
	outputChatBox("/hkaufen, /hverkaufen, /rent", thePlayer, 0, 255, 255)
	outputChatBox("/unrent, /rein, /raus", thePlayer, 0, 255, 255)
end)

-- INSERT INTO dbs_housesystem.houses (X, Y, Z, INTERIOR, INTX, INTY, INTZ, MONEY, WEAP1, WEAP2, WEAP3) values("0.1", "0.1", "0.1", "5", "0.2", "0.2", "0.2", "2000", "46,1", "22,200", "25, 200")

--------------------
-- BIND FUNCTIONS --
--------------------

function togglePlayerInfomenue(thePlayer, key, state, id)
	if(id) then
		local locked = houseData[id]["LOCKED"]
		local rentable = houseData[id]["RENTABLE"]
		local rentalprice = houseData[id]["RENTALPRICE"]
		local owner = houseData[id]["OWNER"]
		local price = houseData[id]["PRICE"]
		local x, y, z = getElementPosition(house[id])
		local house = getPlayerRentedHouse(thePlayer)
		if(house ~= false) then house = true end
		local isrentedin = isPlayerRentedHouse(thePlayer, id)
		triggerClientEvent(thePlayer, "onClientHouseSystemInfoMenueOpen", thePlayer, owner, x, y, z, price, locked, rentable, rentalprice, id, house, isrentedin)
	end
end

function togglePlayerHousemenue(thePlayer, key, state, id)
	if(id) then
		if(getElementInterior(thePlayer) ~= 0) then
			local locked = houseData[id]["LOCKED"]
			local money = houseData[id]["MONEY"]
			local weap1 = houseData[id]["WEAPONS"][1]
			local weap2 = houseData[id]["WEAPONS"][2]
			local weap3 = houseData[id]["WEAPONS"][3]
			local rentable = houseData[id]["RENTABLE"]
			local rent = houseData[id]["RENTALPRICE"]
			local tenands = getHouseTenands(id)
			local owner = false
			if(getPlayerName(thePlayer) == houseData[id]["OWNER"]) then
				owner = true
			end
			local canadd = canAddHouseTenand(id)
			triggerClientEvent(thePlayer, "onClientHouseSystemMenueOpen", thePlayer, owner, locked, money, weap1, weap2, weap3, id, rentable, rent, tenands, canadd)
		end
	else
		triggerClientEvent(thePlayer, "onClientHouseSystemMenueOpen", thePlayer )
	end
end

-------------------------------
-- HOUSE CREATION ON STARTUP --
-------------------------------

-- BUILDHOUSE FUNCTION --

local function buildHouse(id, x, y, z, interior, intx, inty, intz, money, weapons, locked, price, owner, rentable, rentalprice, rent1, rent2, rent3, rent4, rent5)
	if(id) and (x) and(y) and (z) and (interior) and (intx) and (inty) and (intz) and (money) and (weapons) then
		houseid = id
		house[id] = createColSphere(x, y, z, 1.5) -- This is the house, hell yeah
		houseData[id] = {} 
		local house = house[id] -- I'm too lazy...
		setElementData(house, "house", true) -- Just for client code only 
		
		local houseIntPickup = createPickup(intx, inty, intz, 3, 1318, 100)
		setElementInterior(houseIntPickup, interior)
		setElementDimension(houseIntPickup, id)
		
		houseInt[id] = createColSphere(intx, inty, intz, 1.5) -- And this is the Exit
		setElementInterior(houseInt[id], interior)
		setElementDimension(houseInt[id], id) -- The House Dimension is the house ID
		setElementData(houseInt[id], "house", false)
		--------------------
		-- EVENT HANDLERS --
		--------------------
	
		-- IN --
		addEventHandler("onColShapeHit", house, function(hitElement)
			if(getElementType(hitElement) == "player") then
				setElementData(hitElement, "house:lastvisit", id)
				bindKey(hitElement, open_key, "down", togglePlayerInfomenue, id)
				outputChatBox("Benutze "..open_key.." Zum öffnen des Haus Info Gui's", hitElement, 0, 255, 255) 
			end
		end)
		
		addEventHandler("onColShapeLeave", house, function(hitElement)
			if(getElementType(hitElement) == "player") then
				setElementData(hitElement, "house:lastvisit", false)
				unbindKey(hitElement, open_key, "down", togglePlayerInfomenue, id)
				--outputChatBox(id)
			end
		end)
		
		-- OUT --
		
		addEventHandler("onColShapeHit", houseInt[id], function(hitElement, dim)
			if(dim == true) then
				if(getElementType(hitElement) == "player") then
					unbindKey(hitElement, open_key, "down", togglePlayerInfomenue, id)
					setElementData(hitElement, "house:lastvisitINT", id)
					if(houseData[id]["OWNER"] == getPlayerName(hitElement)) or (isPlayerRentedHouse(hitElement, id) == true) then
						bindKey(hitElement, open_key, "down", togglePlayerHousemenue, id)
					end
					--outputChatBox(id)
				end
			end
		end)
		
		addEventHandler("onColShapeLeave", houseInt[id], function(hitElement, dim)
			if(dim == true) then
				if(getElementType(hitElement) == "player") then
					setElementData(hitElement, "house:lastvisitINT", false)
					if(houseData[id]["OWNER"] == getPlayerName(hitElement)) or (isPlayerRentedHouse(hitElement, id) == true) then
						unbindKey(hitElement, open_key, "down", togglePlayerHousemenue, id)
					end
					--outputChatBox(id)
				end
			end
		end)
		
		-- Set data for HOUSE --
		houseData[id]["HOUSE"] = house
		houseData[id]["DIM"] = id
		houseData[id]["MONEY"] = money
		houseData[id]["WEAPONS"] = weapons
		houseData[id]["INTHOUSE"] = houseInt[id]
		houseData[id]["LOCKED"] = locked
		houseData[id]["PRICE"] = price
		houseData[id]["OWNER"] = owner
		houseData[id]["X"] = x
		houseData[id]["Y"] = y
		houseData[id]["Z"] = z
		houseData[id]["RENTABLE"] = rentable
		houseData[id]["RENTALPRICE"] = rentalprice
		houseData[id]["RENT1"] = rent1
		houseData[id]["RENT2"] = rent2
		houseData[id]["RENT3"] = rent3
		houseData[id]["RENT4"] = rent4
		houseData[id]["RENT5"] = rent5
		-- HOUSE PICKUP --
		local housePickup
		if(owner ~= "no-one") then
			housePickup = createPickup(x, y, z-0.5, 3, 1272, 100)
		else
			housePickup = createPickup(x, y, z-0.5, 3, 1273, 100)
		end
		-- HOUSE BLIP --
		local houseBlip
		if(owner ~= "no-one") then
			houseBlip = createBlip(x, y, z, 32, 2, 255, 0, 0, 255, 0, 50)
		else
			houseBlip = createBlip(x, y, z, 31, 2, 255, 0, 0, 255, 0, 50)
		end
		-- SET THE DATA --
		houseData[id]["PICKUP"] = housePickup
		houseData[id]["BLIP"] = houseBlip
		
		setElementData(house, "PRICE", price)
		setElementData(house, "OWNER", owner)
		setElementData(house, "LOCKED", locked)
		setElementData(house, "ID", id)
		setElementData(house, "RENTABLE", rentable)
		setElementData(house, "RENTALPRICE", rentalprice)
		
		-- SET DATA FOR HOUSEINTERIOR --
		houseIntData[id] = {}
		houseIntData[id]["OUTHOUSE"] = houseData[id]["HOUSE"]
		houseIntData[id]["INT"] = interior
		houseIntData[id]["X"] = intx
		houseIntData[id]["Y"] = inty
		houseIntData[id]["Z"] = intz
		houseIntData[id]["PICKUP"] = houseIntPickup
		outputServerLog("House with ID "..id.." created sucessfully!")
		buildEndTick = getTickCount()
		-- TRIGGER TO ALL CLIENTS THAT THE HOUSE HAS BEEN CREATEEEEEEEEEEEEEEEEEEEEEEED --
		setTimer(triggerClientEvent, 1000, 1, "onClientHouseSystemColshapeAdd", getRootElement(), house)
	else
		if not(id) then
			error("Arguments @buildHouse not valid! There is no Houseid!")
		else
			error("Arguments @buildHouse not valid! Houseid = "..id)
		end
	end	
end

-- TAKE PLAYER RENT --

local function takePlayerRent()
	for index, player in pairs(getElementsByType("player")) do
		if(getPlayerRentedHouse(player) ~= false) then
			local id = getPlayerRentedHouse(player)
			local owner = houseData[id]["OWNER"]
			local rentable = tonumber(houseData[id]["RENTABLE"])
			if(rentable == 1) then
				local rentprice = tonumber(houseData[id]["RENTALPRICE"])
				takePlayerMoney(player, rentprice) -- Takes the player money for the rent
				outputChatBox("Du hast $"..rentprice.." Mietpreis!", player, 255, 255, 0)
				if(getPlayerFromName(owner)) then
					givePlayerMoney(getPlayerFromName(owner), rentprice) -- Gives the owner the rentalprice
					outputChatBox("du has Bekommen $"..rentprice.." von einen deiner mieter!", getPlayerFromName(owner), 255, 255, 0)
				end
			end
		end
	end
end

-- HOUSE DATABASE EXECUTION --

function housesys_startup()
	if(created == true) then
		error("Häuser wurden bereits Erstellt!")
		return
	end
	buildStartTick = getTickCount()
	local query = dbQuery(handler, "SELECT * FROM houses;" )
	local result, numrows = dbPoll(query, dbpTime)
	if (result and numrows > 0) then
			nohaus= false
			outputDebugString("Es wurden Häuser gefunde, sie werden nun Geladen...")
		for index, row in pairs(result) do
			local id = row['ID']
			local x, y, z = row['X'], row['Y'], row['Z']
			local int, intx, inty, intz = row['INTERIOR'], row['INTX'], row['INTY'], row['INTZ']
			local money, weap1, weap2, weap3 = row['MONEY'], row['WEAP1'], row['WEAP2'], row['WEAP3']
			local locked = row['LOCKED']
			local price = row['PRICE']
			local owner = row['OWNER']
			local rentable = row['RENTABLE']
			local rentalprice = row['RENTALPRICE']
			local rent1, rent2, rent3, rent4, rent5 = row['RENT1'],row['RENT2'], row['RENT3'], row['RENT4'], row['RENT5']
			local weapontable = {}
			weapontable[1] = weap1
			weapontable[2] = weap2
			weapontable[3] = weap3
			buildHouse(id, x, y, z, int, intx, inty, intz, money, weapontable, locked, price, owner, rentable, rentalprice, rent1, rent2, rent3, rent4, rent5)
		end
		dbFree(query)
	else
		outputDebugString("Es sind keine Häuser in der Datenbank vorhanden!")
		nohaus= true
	end
	created = true
	setTimer(function()
		if nohaus== false then
			local elapsed = (buildEndTick-buildStartTick)
			outputDebugString("Alle Häuser wurden Geladen!")
			outputServerLog("Es dauerte "..(elapsed/1000).." Sekunden zum erstellen aller Häuser!")
			outputDebugString("Es dauerte: "..(elapsed/1000).." Sekunden zum erstellen aller Häuser!")
		end	
	end, 1000, 1)
	rentTimer = setTimer(takePlayerRent, 60*60*1000, -1)
end

-- House Data array set --

function setHouseData(ID, typ, value)
	-- Security array -- 
	houseData[ID][typ] = value
	setElementData(house[ID], typ, value)
	if(saveableValues[typ]) then
		local query = dbQuery(handler, "UPDATE houses SET "..saveableValues[typ].." = '"..value.."' WHERE ID = '"..ID.."';" )
		local result = dbPoll(query, dbpTime)
		if(result) then
			dbFree(query)
		else
			error("Can't save Data: "..typ.." with the value: "..value.." for house ID "..ID.."!")
		end
	end
end


--------------------
-- EVENT HANDLERS --
--------------------

-- INFO RENT -

addEventHandler("onHouseSystemInfoRent", getRootElement(), function(id, value)
	if(houseData[id]) then
		if(value == true) then
			executeCommandHandler("rent", source)
		else
			executeCommandHandler("unrent", source)
		end
	end
end)


-- INFO ENTER --

addEventHandler("onHouseSystemInfoEnter", getRootElement(), function(id)
	if(houseData[id]) then
		executeCommandHandler("in", source)
	end
end)

-- INFO BUY --
addEventHandler("onHouseSystemInfoBuy", getRootElement(), function(id, value)
	if(houseData[id]) then
		if(value == true) then
			executeCommandHandler("buyhouse", source)
		else
			executeCommandHandler("sellhouse", source)
		end
	end
end)


-- TENAND REMOVE --

addEventHandler("onHouseSystemTenandRemove", getRootElement(), function(id, value)
	if(houseData[id]) then
		local sucess = removeHouseTenand(id, value)
		if(sucess == true) then
			outputChatBox("You sucessfull removed the tenand "..value.."!", source, 0, 255, 0)
			triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "TENANDS", getHouseTenands(id))
		end
	end
end)

-- SET RENTALPRICE --

addEventHandler("onHouseSystemRentalprice", getRootElement(), function(id, value)
	if(houseData[id]) then
		local oldvalue = tonumber(houseData[id]["RENTALPRICE"])
		if(oldvalue < value) then
			local tenands = getHouseTenands(id)
			local users = {}
			for i = 1, 5, 1 do
				if(tenands[i] ~= "no-one") then
					users[i] = tenands[i]
				end
			end
			if(#users > 0) then
				outputChatBox("You can't change the rentalprice to a highter value because there are tenands in your house!", source, 255, 0, 0)
				return
			end
		end
		setHouseData(id, "RENTALPRICE", value)
		outputChatBox("You sucessfull set the rentalprice to $"..value.."!", source, 0, 255, 0)
		triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "RENTALPRICE", value)
	end
end)

-- RENTABLE SWITCH --
addEventHandler("onHouseSystemRentableSwitch", getRootElement(), function(id)
	if(houseData[id]) then
		local state = tonumber(houseData[id]["RENTABLE"])
		if(state == 0) then
			setHouseData(id, "RENTABLE", 1)
			triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "RENTABLE", true)
			outputChatBox("Das haus ist nun Vermietbar!", source, 0, 255, 0)
		else
			setHouseData(id, "RENTABLE", 0)
			triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "RENTABLE", false)
			outputChatBox("Das haus ist nicht länger Vermietbar!", source, 0, 255, 0)
		end
	end
end)


-- CREATE HOUSE --

addEventHandler("onHouseSystemHouseCreate", getRootElement(), function(x, y, z, int, intx, inty, intz, price)
	local query = dbQuery(handler, "INSERT INTO houses (X, Y, Z, INTERIOR, INTX, INTY, INTZ, PRICE) values ('"..x.."', '"..y.."', '"..z.."', '"..int.."', '"..intx.."', '"..inty.."', '"..intz.."', '"..price.."');")
	local result, numrows = dbPoll(query, dbpTime)
	if(result) then
		
			local newid = houseid+1
			outputChatBox("House "..newid.." created sucessfully!", source, 0, 255, 0)
			local weapontable = {}
			weapontable[1] = 0
			weapontable[2] = 0
			weapontable[3] = 0
			buildHouse(newid, x, y, z, int, intx, inty, intz, 0, weapontable, 0, price, "no-one", 0, 0, "no-one", "no-one", "no-one", "no-one", "no-one")

	else
			outputChatBox("Fehler beim Erstellen vom Haus!", source, 255, 0, 0)
			error("Haus: "..(houseid+1).." Fehler in der Cloud!")
	end
end)

-- WITHDRAW WEAPON --

addEventHandler("onHouseSystemWeaponWithdraw", getRootElement(), function(id, value)
	local weapons = houseData[id]["WEAPONS"]
	if(gettok(weapons[value], 1, ",")) then
		local weapon, ammo = gettok(weapons[value], 1, ","), gettok(weapons[value], 2, ",")
		giveWeapon(source, weapon, ammo, true)
		outputChatBox("Du hast dein Slot geleert! "..value.."!", source, 0, 255, 0)
		weapons[value] = 0
		setHouseData(id, "WEAPONS", weapons)
		setHouseData(id, "WEAP1", weapons[1])
		setHouseData(id, "WEAP2", weapons[2])
		setHouseData(id, "WEAP3", weapons[3])
		triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "WEAPON", value, 0)
	end
end)

-- DEPOSIT WEAPON --


addEventHandler("onHouseSystemWeaponDeposit", getRootElement(), function(id, value)
	local weapons = houseData[id]["WEAPONS"]
	if(tonumber(weapons[value]) == 0) then
		local weapon = getPedWeapon(source)
		local ammo = getPedTotalAmmo(source)
		if(weapon) and (ammo) and(weapon ~= 0) and (ammo ~= 0) then 
			weapons[value] = weapon..", "..ammo
			takeWeapon(source, weapon)
			outputChatBox("You sucessfull deposit your weapon "..getWeaponNameFromID(weapon).." into your weaponbox!", source, 0, 255, 0)
			setHouseData(id, "WEAPONS", weapons)
			setHouseData(id, "WEAP1", weapons[1])
			setHouseData(id, "WEAP2", weapons[2])
			setHouseData(id, "WEAP3", weapons[3])
			triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "WEAPON", value, weapons[value])
		else
			outputChatBox("Du hast keine Waffen!", source, 255, 0, 0)
		end
	else
		outputChatBox("Du hast bereits waffen in diesen Slot", source, 255, 0, 0)
	end
end)

-- LOCK HOUSE --

addEventHandler("onHouseSystemHouseLock", getRootElement(), function(id)
	local state = tonumber(houseData[id]["LOCKED"])
	if(state == 1) then
		setHouseData(id, "LOCKED", 0)
		outputChatBox("Das haus wurde Aufgeschlossen!", source, 0, 255, 0)
		triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "LOCKED", 0)
	else
		setHouseData(id, "LOCKED", 1)
		outputChatBox("Das haus wurde Verschlossen!", source, 0, 255, 255)
		triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "LOCKED", 1)
	end
end)

-- DEPOSIT MONEY --

addEventHandler("onHouseSystemHouseDeposit", getRootElement(), function(id, value)
	if(value > getPlayerMoney(source)-1) then return end
	setHouseData(id, "MONEY", tonumber(houseData[id]["MONEY"])+value)
	outputChatBox("Du hast erfolgreich "..value.."$ in deiner Hausbank reingelegt!", source, 0, 255, 0)
	triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "MONEY", tonumber(houseData[id]["MONEY"]))
	givePlayerMoney(source, -value)
end)

-- WITHDRAW MONEY --

addEventHandler("onHouseSystemHouseWithdraw", getRootElement(), function(id, value)
	local money = tonumber(houseData[id]["MONEY"])
	if(money < value) then
		outputChatBox("Du hast nicht so viel geld in deiner Hausbank", source, 255, 0, 0)
		return
	end
	setHouseData(id, "MONEY", tonumber(houseData[id]["MONEY"])-value)
	outputChatBox("Du hast"..value.."$ von der Hausbank entnomen!", source, 0, 255, 0)
	triggerClientEvent(source, "onClientHouseSystemMenueUpdate", source, "MONEY", money-value)
	givePlayerMoney(source, value)
end)


----------------------------
-- SETTINGS AND FUNCTIONS --
----------------------------


-- FADE PLAYERS POSITION --
local fadeP = {}
function setInPosition(thePlayer, x, y, z, interior, typ, dim)
	if not(thePlayer) then return end
	if (getElementType(thePlayer) == "vehicle") then return end
	if(isPedInVehicle(thePlayer)) then return end
	if not(x) or not(y) or not(z) then return end
	if not(interior) then interior = 0 end
	if(fadeP[thePlayer] == 1) then return end
	fadeP[thePlayer] = 1
	fadeCamera(thePlayer, false)
	setElementFrozen(thePlayer, true)
	setTimer(
		function()
		fadeP[thePlayer] = 0
		setElementPosition(thePlayer, x, y, z)
		setElementInterior(thePlayer, interior)
		if(dim) then setElementDimension(thePlayer, dim) end
		fadeCamera(thePlayer, true)
		if not(typ) then
			setElementFrozen(thePlayer, false)
		else
			if(typ == true)  then
				setTimer(setElementFrozen, 1000, 1, thePlayer, false)
			end
		end
	end, 1000, 1)
end


-- canAddHouseTenand
-- Checks if there is a free slot in the house

function canAddHouseTenand(id)
	if not(houseData[id]) then return false end
	for i = 1, 5, 1 do
		local name = houseData[id]["RENT"..i]
		if(name == "no-one") then
			return true, i
		end
	end
	return false;
end

-- addHouseTenand
-- Adds a player to a house as tenand

function addHouseTenand(player, id)
	if not(houseData[id]) then return false end
	for i = 1, 5, 1 do
		local name = houseData[id]["RENT"..i]
		if(name == "no-one") then
			setHouseData(id,"RENT"..i, getPlayerName(player))
			return true, i
		end
	end
	return false;
end

-- removeHouseTenand
-- Removes a player from a house

function removeHouseTenand(id, player)
	if not(houseData[id]) then return false end
	if(type(player) == "string") then
		for i = 1, 5, 1 do
			local name = houseData[id]["RENT"..i]
			if(name == player) then
				setHouseData(id,"RENT"..i,"no-one")
				return true
			end
		end
	else
		for i = 1, 5, 1 do
			local name = houseData[id]["RENT"..i]
			if(name == getPlayerName(player)) then
				setHouseData(id,"RENT"..i,"no-one")
				return true
			end
		end
	end
	return false;
end

-- getHouseTenands(houseid)
-- Returns a table within all tenands in this house 

function getHouseTenands(id)
	if not(houseData[id]) then return false end
	local rent = {}
	for i = 1, 5, 1 do
		rent[i] = houseData[id]["RENT"..i]
	end
	return rent;
end

-- getPlayerRentedHouse
-- Gets the House where a player is rented in --

function getPlayerRentedHouse(thePlayer)
	for index, house in pairs(getElementsByType("colshape")) do
		if(getElementData(house, "house") == true) and (getElementData(house, "ID")) then
			local id = tonumber(getElementData(house, "ID"))
			if not(id) then return false end
			local rent = {}
			for i = 1, 5, 1 do
				rent[i] = houseData[id]["RENT"..i]
			end
			for index, player in pairs(rent) do
				if(player == getPlayerName(thePlayer)) then
					return id;
				end
			end
		end
	end
	return false;
end

-- isPlayerRentedHouse
-- Checks if a player is rented in a specific house

function isPlayerRentedHouse(thePlayer, id)
	if not(houseData[id]) then return false end
	local rent = {}
	for i = 1, 5, 1 do
		rent[i] = houseData[id]["RENT"..i]
	end
	for index, player in pairs(rent) do
		if(player == getPlayerName(thePlayer)) then
			return true;
		end
	end
	return false;
end