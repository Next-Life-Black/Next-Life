function setEngineState(player)
veh = getPedOccupiedVehicle(player)
 if veh then
   if getVehicleEngineState(veh)== true then
	triggerClientEvent(player, "Car_Boot2", player)
	setVehicleEngineState(veh, false) 
   elseif getVehicleEngineState(veh)== false then
	
	setVehicleEngineState(veh, true) 
	triggerClientEvent(player, "Car_Boot1", player)
   end
 end
end 

	function setEngineStateWhenEnter(player)
		veh = getPedOccupiedVehicle(player)
		setTimer(function()
			if veh then
				if getVehicleEngineState(veh)== true then
					triggerClientEvent(player, "Car_Boot1", player)
				elseif getVehicleEngineState(veh)== false then
					triggerClientEvent(player, "Car_Boot2", player)
				end
			end
		end, 700, 1)
	end		

addEventHandler ( "onVehicleEnter", getRootElement(), setEngineStateWhenEnter)

function Stop_Car(player)
veh2 = getPedOccupiedVehicle(player)
if veh2 then
  setVehicleEngineState ( veh2, false )
	end
 end
  
  Buttons= false
 function Buttons(player)
	setPlayerHudComponentVisible ( player, "radar", false )
	veh = getPedOccupiedVehicle(player)
	 if Buttons== true then
			Buttons= false
			setVehicleEngineState(veh, false) 
			triggerClientEvent(player, "ButtonsR", player)
		else
			setVehicleEngineState(veh, false) 
			Buttons= true
			triggerClientEvent(player, "Buttons", player)
		end	
	end
  
addEventHandler ( "onVehicleEnter", getRootElement(), Buttons)
addEventHandler ( "onVehicleExit", getRootElement(), Buttons)
function Leave(player)
triggerClientEvent(player, "StopRadio", player)
triggerClientEvent(player, "StopSound_T", player)
end
addEventHandler ( "onVehicleExit", getRootElement(), Leave)
function command(player,cmd,amount)
local vehicle = getPedOccupiedVehicle(player)
local fuel = getElementData(vehicle,"fuel")
local account = getPlayerAccount(player)
local name = getAccountName(account)
if isObjectInACLGroup("user."..name,aclGetGroup("Admin")) then
if vehicle and tonumber(amount) and (tonumber(fuel) + tonumber(amount)) <= 100 then
setElementData(vehicle,"fuel",tonumber(amount) + tonumber(fuel))
outputChatBox("Dein Fahrzeug wurde getankt!("..(amount).."%)",player)
else
outputChatBox("Wähle eine Summe damit das auto genau 100% Tank hat!.",player)
end
else
outputChatBox("Nicht erlaubt!",255,255,0)
end
end
addCommandHandler("Tanken",command)
 
 function BindTheKey()
 bindKey (source, "x", "down",  setEngineState )
 bindKey (source, "l", "down",  Lights )
 end
 
  function Lights ( player )

 car = getPedOccupiedVehicle ( player ) 
  if ( car ) then 
    if  getElementData(car, "Lightss")== 2 then 
     setVehicleOverrideLights ( car, 2 ) 
	 setElementData(car, "Lightss", 1)
    else 
     setVehicleOverrideLights ( car, 1 ) 
	 setElementData(car, "Lightss", 2)
    end 
  end 
end 