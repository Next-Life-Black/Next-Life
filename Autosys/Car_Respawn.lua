---------------------
---Script by Black---
------(C)2016--------

function loadCars(player)
     loaded = false
	-- SELECT * FROM user_vehicle AS uv LEFT JOIN user_data AS ud ON ud.id = uv.userid WHERE ud.Username = '"..getPlayerName(player).."'
	local db = dbQuery(handler,"SELECT * FROM user_vehicle AS uv LEFT JOIN user_data AS ud ON ud.id = uv.userid WHERE ud.Username = '"..getPlayerName(source).."'")
	local result,num_rows = dbPoll(db,-1)
	
	for k, v in pairs(result) do
		local veh = createVehicle(v.model, v.x, v.y, v.z, v.rx, v.ry, v.rz)
		setElementID(veh,"user_vehicle");
		setElementData(veh,"vehid", v.id); 
		if v.reifen == 1 and Frueling== true then
			setVehicleHandling(veh, "tractionMultiplier", 1.1)
			
		elseif v.reifen == 1 and Winter== true then
			setVehicleHandling(veh, "tractionMultiplier", 0.3)
			outputChatBox("dfg")
			
		elseif v.reifen == 1 and Sommer== true then
			setVehicleHandling(veh, "tractionMultiplier", 1.2)
			
		elseif v.reifen == 1 and Herbst== true then
			setVehicleHandling(veh, "tractionMultiplier", 1.1)
		--------------------------------2------------------------------------------	
		elseif v.reifen == 2 and Winter== true then
			setVehicleHandling(veh, "tractionMultiplier", 1.1)
			
		elseif v.reifen == 2 and Sommer== true then
			setVehicleHandling(veh, "tractionMultiplier", 0.9)
			
		elseif v.reifen == 2 and Herbst== true then
			setVehicleHandling(veh, "tractionMultiplier", 0.9)
			
		elseif v.reifen == 2 and Frueling == true then
			setVehicleHandling(veh, "tractionMultiplier", 0.9)
		--------------------------------3------------------------------------------	
		elseif v.reifen == 3 and Sommer== true then
			setVehicleHandling(veh, "tractionMultiplier", 1.1)
			
		elseif v.reifen == 3 and Herbst== true then
			setVehicleHandling(veh, "tractionMultiplier", 1.1)
			
		elseif v.reifen == 3 and Winter== true then
			setVehicleHandling(veh, "tractionMultiplier", 1.1)
			
		elseif v.reifen == 3 and Frueling == true then
			setVehicleHandling(veh, "tractionMultiplier", 1.1)
		end	
		if v.turbo == 1 then
			setVehicleHandling(veh, "maxVelocity", 500)
			setVehicleHandling(veh, "engineAcceleration", 13)
			PSResult= v.ps + 50
			setElementData(veh, "ps", PSResult) 
		elseif v.turbo == 2 then	
			setVehicleHandling(veh, "maxVelocity", 550)
			setVehicleHandling(veh, "engineAcceleration", 15)
			PSResult= v.ps + 80
			setElementData(veh, "ps", PSResult) 
		elseif v.turbo == 3 then
			if v.uebersetzung == 1 then
				setVehicleHandling(veh, "maxVelocity", 550)
				setVehicleHandling(veh, "engineAcceleration", 20)
				PSResult= v.ps + 120
				setElementData(veh, "ps", PSResult) 
			elseif  v.uebersetzung == 2 then
				setVehicleHandling(veh, "maxVelocity", 550)
				setVehicleHandling(veh, "engineAcceleration", 15)
				PSResult= v.ps + 120
				setElementData(veh, "ps", PSResult) 
			elseif v.uebersetzung == 3 then
				setVehicleHandling(veh, "maxVelocity", 550)
				setVehicleHandling(veh, "engineAcceleration", 13)
				PSResult= v.ps + 120
				setElementData(veh, "ps", PSResult) 
			else
				setVehicleHandling(veh, "maxVelocity", 550)
				setVehicleHandling(veh, "engineAcceleration", 18)
				PSResult= v.ps + 120
				setElementData(veh, "ps", PSResult) 
			end	
			
		else
			setVehicleHandling(veh, "maxVelocity", 300)
			setVehicleHandling(veh, "engineAcceleration", 13)	
		end
		--------------------------------1------------------------------------------	

		loaded = true
		--------------------------------4------------------------------------------	
     if loaded == true then		
		outputDebugString("Das Fahrzeug von: "..getPlayerName(source).." Wurde geladen.")	
		outputDebugString("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-Werte-_-_-_-_-_-_-_-_-_-_-_-_-_")	
		outputDebugString("		Das Fahrzeug hat: "..getElementData(veh, "ps").." "	)	
		outputDebugString("		Übersetzung: "..v.uebersetzung.." "	)	
		outputDebugString("		Turbo: "..v.turbo.." "	)	
		outputDebugString("		Reifen: "..v.reifen.." "	)
		outputDebugString("-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_")
	else
		outputChatBox("Es gabe fehler beim laden deines Fahrzeuges! Melde dich bei einem Admin!", source, 255, 0, 0)
		outputDebugString("Das Fahrzeug von "..getPlayerName(source).." konnte nicht geladen werden!")
	end	
		
	end
end	

function getElementsByID(id)
    local i = 0;
    local elems = {};
    while (true) do
        local elem = getElementByID(id, i);
        if (elem == false) then
            break;
        end
		table.insert(elems,elem);
        i = i + 1;
    end
    return elems;
end

function getCar(vehid)
	local vehicles = getElementsByID('user_vehicle');
	for k,v in pairs(vehicles) do
		local _vehid = getElementData(v,'vehid');
		if(_vehid ~= nil and vehid == _vehid)then
			return v;
		end
	end
	return nil;
end

function setCar()

end

--FERTIG!
function outputVehicleID(player)
	local veh = getPedOccupiedVehicle(player);
	if(veh ~= nil and veh ~= false)then
		outputChatBox("Ihre Fahrzeug ID lautet: '"..tostring(getElementData(veh,'vehid')).."'",player);
	else
		outputChatBox("ERROR: Du musst in einem Fahrzeug sein!",player,255,0,0);
	end
end
addCommandHandler("vehid", outputVehicleID)
