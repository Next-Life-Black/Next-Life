--Script by Black--

root = getRootElement()
player = getLocalPlayer()
vehicle = nil

local screenWidth, screenHeight = guiGetScreenSize()
-- 'round value'
function roundValue(value)
    local var = math.floor((value) + 0.5)
    return var
end
VehS = false
local speedometerNeedleWhite = "images/RPMW.png"

setElementData(localPlayer, "SRadio", tostring("Abgeschaltet"))
setElementData(localPlayer, "Volume", tonumber(100))
Das_Radio= getElementData(localPlayer, "SRadio")
RVolume= getElementData(localPlayer, "Volume")
marker1 = createMarker(1943.6787109375,-1778.5,12.390598297119,"cylinder",2,150,255,150,150)
blip1 = createBlip(1943.6787109375,-1778.5,12.390598297119,42,2,0,0,0,0,0,200)
marker2 = createMarker(1943.9921875,-1771.1083984375,12.390598297119,"cylinder",2,150,255,150,150)
marker3 = createMarker(1939.2060546875,-1771.4345703125,12.3828125,"cylinder",2,150,255,150,150)
marker4 = createMarker(1939.3017578125,-1778.236328125,12.390598297119,"cylinder",2,150,255,150,150)
marker5 = createMarker(2120.9228515625,927.486328125,9.8203125,"cylinder",2,150,255,150,150)
blip5 = createBlip(2120.9228515625,927.486328125,9.8203125,42,2,0,0,0,0,0,200)
marker6 = createMarker(2114.7607421875,927.7734375,9.8203125,"cylinder",2,150,255,150,150)
marker7 = createMarker(2114.951171875,917.513671875,9.8203125,"cylinder",2,150,255,150,150)
marker8 = createMarker(70.021484375,1218.794921875,17.810596466064,"cylinder",2,150,255,150,150)
blip = createBlip(70.021484375,1218.794921875,17.810596466064,42,2,0,0,0,0,0,200)
marker9 = createMarker(-2029.5693359375,157.0537109375,27.8359375,"cylinder",2,150,255,150,150)
blip2 = createBlip(-2029.5693359375,157.0537109375,27.8359375,42,2,0,0,0,0,0,200)
marker10 = createMarker(-2023.94140625,156.91796875,27.8359375,"cylinder",2,150,255,150,150)
marker11 = createMarker(-2407.7900390625,981.638671875,44.296875,"cylinder",2,150,255,150,150)
blip3 = createBlip(-2407.7900390625,981.638671875,44.296875,42,2,0,0,0,0,0,200)
marker12 = createMarker(-2407.966796875,971.537109375,44.296875,"cylinder",2,150,255,150,150)
marker13 = createMarker(2205.5888671875,2469.7236328125,9.8203125,"cylinder",2,150,255,150,150)
blip3 = createBlip(2205.5888671875,2469.7236328125,9.8203125,42,2,0,0,0,0,0,200)
marker14 = createMarker(2205.7412109375,2480.01953125,9.8203125,"cylinder",2,150,255,150,150)
marker15 = createMarker(2194.095703125,2475.271484375,9.8203125,"cylinder",2,150,255,150,150)
marker16 = createMarker(2194.220703125,2470.84765625,9.8203125,"cylinder",2,150,255,150,150)
marker17 = createMarker(-1602.03125,-2710.5712890625,47.5390625,"cylinder",2,150,255,150,150)
blip6 = createBlip(-1602.03125,-2710.5712890625,47.5390625,42,2,0,0,0,0,0,200)
marker18 = createMarker(-1605.4091796875,-2714.3037109375,47.533473968506,"cylinder",2,150,255,150,150)
marker19 = createMarker(-1608.5830078125,-2718.638671875,47.5390625,"cylinder",2,150,255,150,150)
marker20 = createMarker(622.9189453125,1680.3486328125,5.9921875,"cylinder",2,150,255,150,150)
blip7 = createBlip(622.9189453125,1680.3486328125,5.9921875,42,2,0,0,0,0,0,200)
marker21 = createMarker(615.6982421875,1690.5673828125,5.9921875,"cylinder",2,150,255,150,150)
marker22 = createMarker(608.8447265625,1700.0146484375,5.9921875,"cylinder",2,150,255,150,150)
marker23 = createMarker(1008.3486328125,-939.84375,41.1796875,"cylinder",2,150,255,150,150)
blip8 = createBlip(1008.3486328125,-939.84375,41.1796875,42,2,0,0,0,0,0,200)
credits = "Willkommen auf Ultra-Reallife"
marker24 = createMarker(999.6259765625,-940.79296875,41.1796875,"cylinder",2,150,255,150,150)
marker25 = createMarker(-92.314453125,-1176.08984375,1.2067136764526,"cylinder",2,150,255,150,150)
blip9 = createBlip(-92.314453125,-1176.08984375,1.2067136764526,42,2,0,0,0,0,0,200)
marker26 = createMarker(-94.1083984375,-1161.775390625,1.2461423873901,"cylinder",2,150,255,150,150)
marker27 = createMarker(1873.2841796875,-2380.119140625,12.5546875,"cylinder",4,150,255,150,150)
blip10 = createBlip(1873.2841796875,-2380.119140625,12.5546875,42,2,0,0,0,0,0,200)
marker28 = createMarker(-1280.7412109375,-0.7314453125,13.1484375,"cylinder",4,150,255,150,150)
blip11 = createBlip(-1280.7412109375,-0.7314453125,13.1484375,42,2,0,0,0,0,0,200)
marker29 = createMarker(1574.8916015625,1449.80078125,9.8299560546875,"cylinder",4,150,255,150,150)
blip12 = createBlip(1574.8916015625,1449.80078125,9.8299560546875,42,2,0,0,0,0,0,200)
marker30 = createMarker(354.5390625,2538.3251953125,15.717609405518,"cylinder",4,150,255,150,150)
blip13 = createBlip(354.5390625,2538.3251953125,15.717609405518,42,2,0,0,0,0,0,200)
local NCTacho = {
    button = {}
}
local screenW, screenH = guiGetScreenSize()
MaxFuel = 150 
decreasing = 0.0005 
Partikelfilter = 0.0005
OEL = 0.0005
increasing = 0.35 
price = 3 
MaxOEL = 800
MAXPartikelfilter = 200

function setVehicleFuelOnRespawn()
	for k,v in ipairs(getElementsByType("vehicle"))do
		if getElementData(v,"fuel") == false then
			setElementData(v,"fuel",MaxFuel)
			setElementData(v,"Oil",MaxOEL)
			setElementData(v,"Filter",MAXPartikelfilter)
		end
	end
end
addEventHandler("onClientRender",root,setVehicleFuelOnRespawn)

function getElementSpeed(element,unit)
	if (unit == nil) then unit = 0 end
	if (isElement(element)) then
		local x,y,z = getElementVelocity(element)
		if (unit=="mph" or unit==1 or unit =='1') then
			return (x^2 + y^2 + z^2) ^ 0.5 * 100
		else
			return (x^2 + y^2 + z^2) ^ 0.5 * 1.64 * 100
		end
	else
		outputDebugString("Not an element. Can't get speed")
		return false
	end
end


function setFuelDecreasing()
if getPedOccupiedVehicle(localPlayer) then
for f,v in ipairs(getElementsByType("vehicle"))do
	local fuel = getElementData(v,"fuel")
	local Oil_D = getElementData(v, "Oil")
	local Filter_D = getElementData(v, "Filter") 
		if getVehicleEngineState(v) == true and (not getElementData(v,"fuel") == false) then
			setElementData(v,"fuel",fuel - getElementSpeed(v,"kph")*0.00002 - decreasing)
			setElementData(v,"Oil",Oil_D  - getElementSpeed(v,"kph")*0.00001 - OEL  )
			setElementData(v,"Filter",Filter_D  - getElementSpeed(v,"kph")*0.000001 - Partikelfilter )
		end
	end
end
end
addEventHandler("onClientRender",root,setFuelDecreasing)


local screenW, screenH = guiGetScreenSize()
x,y = guiGetScreenSize()
-- function drawTheImages()
-- if getPedOccupiedVehicle(localPlayer) then
-- dxDrawImage (x*0.62, y*0.78,226, 223,"images/fuelcircle.png", 0, 0, 0, tocolor(3, 3, 3, 255),)
-- dxDrawImage (x*0.62, y*0.8,226, 223,"images/fuelarrow.png",getElementData(veh,"fuel") + 210,0,0)
-- dxDrawImage (x*0.77,y*0.63,300,300,"images/speedcircle.png", 0, 0, 0, tocolor(3, 3, 3, 255))
-- dxDrawImage (x*0.77,y*0.63,300,300,"images/speedarrow.png",getElementSpeed(veh,"mph")*0.84 - 10,0,0)
-- end
-- end










function one()
setElementData(localPlayer, "SRadio", tostring("FFH Hessen"))
Das_Radio= getElementData(localPlayer, "SRadio")
-- FFH()
end
function two()
setElementData(localPlayer, "SRadio", tostring("Big FM"))
Das_Radio= getElementData(localPlayer, "SRadio")
end
function three()
setElementData(localPlayer, "SRadio", tostring("Abgeschaltet"))
Das_Radio= getElementData(localPlayer, "SRadio")
end

function four()
setElementData(localPlayer, "SRadio", tostring("Technobase"))
Das_Radio= getElementData(localPlayer, "SRadio")
end

function five()
setElementData(localPlayer, "SRadio", tostring("Your FM"))
Das_Radio= getElementData(localPlayer, "SRadio")
end

				


RPMST= false
	
	function NCTachoF()
	
	if getPedOccupiedVehicle(localPlayer) and VehS== true then --and driving then 
		

        dxDrawImage(screenW * 0.1849, screenH * 0.7278, screenW * 0.6167, screenH * 0.2722, "images/speedcircle.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
		sx, sy, sz = getElementVelocity (getPedOccupiedVehicle(localPlayer))
		kmhs = math.floor(((sx^2 + sy^2 + sz^2)^(0.5))*180) --Calculate speed
        dxDrawText(tostring(kmhs), screenW * 0.2615, screenH * 0.8509, screenW * 0.3323, screenH * 0.8889, tocolor(1, 0, 0, 255), 3.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawRectangle(screenW * 0.2453, screenH * 0.9324, screenW * 0.0609, screenH * 0.0120, tocolor(1, 0, 0, 255), false)
		dxDrawImage(screenW * 0.3438, screenH * 0.7519, screenW * 0.3005, screenH * 0.2287, "images/fuelarrow.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
		if kmhs < 1 and RPMST== false then 	

		dxDrawText("1000", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		dxDrawText("N", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 25 then
		 dxDrawText("4500", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("1", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 46 then
		 dxDrawText("6300", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("1", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 57 then
		 dxDrawText("6895", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("1", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs <58 then
		 dxDrawText("3745", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("2", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 74 then
		 dxDrawText("4500", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("2", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 87 then
		 dxDrawText("6300", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("2", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 93 then
		 dxDrawText("6895", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("2", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		 
		 
		elseif kmhs < 110 then 
		 dxDrawText("4680", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("3", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 140 then
		 dxDrawText("5789", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("3", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 165 then 
		 dxDrawText("6708", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("3", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 185 then
		 dxDrawText("5680", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("4", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 190 then
		 dxDrawText("5780", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("4", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 210 then
		 dxDrawText("6578", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("4", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 223 then
		 dxDrawText("6895", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("4", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		 
		elseif kmhs < 244 then
		 dxDrawText("6000", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("5", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 257 then
		 dxDrawText("6470", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("5", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs < 267 then
		 dxDrawText("6899", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		 dxDrawText("5", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		elseif kmhs == 0 then  
		dxDrawText("1000", screenW * 0.7063, screenH * 0.8500, screenW * 0.7802, screenH * 0.8750, tocolor(0, 0, 0, 255), 3.00, "default", "left", "top", false, false, true, false, false)
		dxDrawText("N", screenW * 0.7135, screenH * 0.8963, screenW * 0.7693, screenH * 0.9519, tocolor(1, 0, 0, 255), 4.00, "default-bold", "left", "top", false, false, true, false, false)
		end 
	end	
		
         
    end
addEventHandler("onClientRender",root, NCTachoF)

	function VEHSDX()
		if VehS== false and getPedOccupiedVehicle(localPlayer) then
			dxDrawImage(screenW * 0.1849, screenH * 0.7278, screenW * 0.6167, screenH * 0.2722, "images/speedcircle.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
		end
	end
addEventHandler("onClientRender",root, VEHSDX)


function getRPMRoation()
 
    if (getVehicleRPM()) and (getVehicleRPM() >= 0) then
    local rpmRotation = math.floor(((270/9800)* getVehicleRPM()) + 0.5)
        
        if (smoothedRPMRotation < rpmRotation) then
            smoothedRPMRotation = smoothedRPMRotation + 2
        end
        
        if (smoothedRPMRotation > rpmRotation) then
            smoothedRPMRotation = smoothedRPMRotation - 2
        end
        
        return tonumber(smoothedRPMRotation)
    else
        return 0
    end   
end


function getFormattedRpmRotation()
    local rpm = getRPMRoation()
    local rpm1 = rpm
    local rpm2 = rpm
    local rpm3 = rpm
    local rpm4 = rpm
    
    if (rpm1 >= 90) then
        rpm1 = 90
    elseif (rpm1 < 0) then
        rpm1 = 0
    end
    
    if (rpm2 >= 180) then
        rpm2 = 180
    elseif (rpm2 < 0) then
        rpm2 = 0
    end
    
    if (rpm3 >= 219) then
        rpm3 = 219
    elseif (rpm3 < 0) then
        rpm3 = 0
    end
        
    if (rpm4 >= 360) then
        rpm4 = 360
    elseif (rpm4 < 0) then
        rpm4 = 0
    end
    
    return rpm1, rpm2, rpm3, rpm4
end






    function MenueButtons()
        NCTacho.button[1] = guiCreateButton(0.42, 0.81, 0.03, 0.07, "Musik", true)
        guiSetAlpha(NCTacho.button[1], 0.00)


        NCTacho.button[2] = guiCreateButton(0.47, 0.81, 0.05, 0.07, "Navigation", true)
        guiSetAlpha(NCTacho.button[2], 0.00)
			addEventHandler ( "onClientGUIClick", NCTacho.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == NCTacho.button[2]) then
		 			        addEventHandler("onClientRender",root,map)
							
							
							NCTacho.button[4] = guiCreateButton(0.61, 0.76, 0.02, 0.03, "", true)
							guiSetAlpha(NCTacho.button[4], 0.00)  
							addEventHandler ( "onClientGUIClick", NCTacho.button[4],
							function ( button, state )
								if (button == "left" and state == "up") then
									if (source == NCTacho.button[4]) then
									
										removeEventHandler("onClientRender",root,map)
									end
								end
							end
							)



							
					end
				end
			end
		)

        NCTacho.button[3] = guiCreateButton(0.53, 0.81, 0.06, 0.07, "Settings", true)
        guiSetAlpha(NCTacho.button[3], 0.00)    
    end
addEvent("Buttons",true)
addEventHandler("Buttons",getRootElement(), MenueButtons)
	
	









function boot_Screen()
        

end
function BootTheCar1()
VehS= true
	
 setTimer(function()
  		
  end, 1700, 1)
end

function BootTheCar2()
VehS= false
	
 setTimer(function()
  		
  end, 1700, 1)
end
addEvent("Car_Boot1",true)
addEventHandler("Car_Boot1",getRootElement(), BootTheCar1)

addEvent("Car_Boot2",true)
addEventHandler("Car_Boot2",getRootElement(), BootTheCar2)	


function showTheGuiAndDx()
veh = getPedOccupiedVehicle(source)
setElementData(source,"refuelling",true)
outputChatBox("Bitte Motor abschalten mit X",0,255,0)
    function showDx()
        dxDrawRectangle(x*0.452, y*0.290, x*0.396, y*0.2, tocolor(0, 0, 0, 175), false)
        dxDrawRectangle(x*0.452, y*0.290, x*0.396, y*0.25, tocolor(0, 0, 0, 254), false)
        dxDrawText("Tankstelle", x*0.546, y*0.295, x*0.760, y*0.325, tocolor(255, 255, 255, 254), 1.00, "bankgothic", "center", "center", false, false, true, false, false)
        dxDrawText("Dein Tank : "..math.floor(getElementData(veh,"fuel")*1000)/1000, x*0.457, y*0.332, x*0.842, y*0.371, tocolor(255, 255, 255, 255), 1.10, "sans", "left", "center", false, false, true, false, false)
        if (MaxFuel - getElementData(veh,"fuel")) < 1 then
		dxDrawText("Benötigt : "..(MaxFuel) - math.floor(getElementData(veh,"fuel")), x*0.457, y*0.371, x*0.842, y*0.410, tocolor(255, 255, 255, 255), 1.10, "sans", "left", "center", false, false, true, false, false)
        else
		dxDrawText("Benötigt : "..(MaxFuel) - (math.floor(getElementData(veh,"fuel")*1000)/1000), x*0.457, y*0.371, x*0.842, y*0.410, tocolor(255, 255, 255, 255), 1.10, "sans", "left", "center", false, false, true, false, false)
		end
		dxDrawText("Liter Preis : $"..price, x*0.457, y*0.410, x*0.842, y*0.449, tocolor(255, 255, 255, 255), 1.10, "sans", "left", "center", false, false, true, false, false)
       dxDrawText("Total Preis : "..math.floor(getElementData(localPlayer,"price")*100)/100, x*0.457, y*0.449, x*0.842, y*0.488, tocolor(255, 255, 255, 255), 1.10, "sans", "left", "center", false, false, true, false, false)
        if getVehicleEngineState(veh) == true then
		dxDrawText("Motor Auschalten!", x*0.457, y*0.488, x*0.842, y*0.527, tocolor(255, 255, 255, 255), 1.10, "sans", "center", "center", false, false, true, false, false)
		else
		dxDrawText("Starte dein Motor(X) um das Tanken zu stoppen", x*0.457, y*0.488, x*0.842, y*0.527, tocolor(255, 255, 255, 255), 1.10, "sans", "center", "center", false, false, true, false, false)
		end
	end
addEventHandler("onClientRender", root,showDx)
end
addEvent("onClientWantToRefuel",true)
addEventHandler("onClientWantToRefuel",getLocalPlayer(),showTheGuiAndDx)

function showFuelSystem(hitElement) 
triggerEvent("onClientWantToRefuel",hitElement)
setElementData(hitElement,"price",0)
end
addEventHandler("onClientMarkerHit",marker1,showFuelSystem)
addEventHandler("onClientMarkerHit",marker2,showFuelSystem)
addEventHandler("onClientMarkerHit",marker3,showFuelSystem)
addEventHandler("onClientMarkerHit",marker4,showFuelSystem)
addEventHandler("onClientMarkerHit",marker5,showFuelSystem)
addEventHandler("onClientMarkerHit",marker6,showFuelSystem)
addEventHandler("onClientMarkerHit",marker7,showFuelSystem)
addEventHandler("onClientMarkerHit",marker8,showFuelSystem)
addEventHandler("onClientMarkerHit",marker9,showFuelSystem)
addEventHandler("onClientMarkerHit",marker10,showFuelSystem)
addEventHandler("onClientMarkerHit",marker11,showFuelSystem)
addEventHandler("onClientMarkerHit",marker12,showFuelSystem)
addEventHandler("onClientMarkerHit",marker13,showFuelSystem)
addEventHandler("onClientMarkerHit",marker14,showFuelSystem)
addEventHandler("onClientMarkerHit",marker15,showFuelSystem)
addEventHandler("onClientMarkerHit",marker16,showFuelSystem)
addEventHandler("onClientMarkerHit",marker17,showFuelSystem)
addEventHandler("onClientMarkerHit",marker18,showFuelSystem)
addEventHandler("onClientMarkerHit",marker19,showFuelSystem)
addEventHandler("onClientMarkerHit",marker20,showFuelSystem)
addEventHandler("onClientMarkerHit",marker21,showFuelSystem)
addEventHandler("onClientMarkerHit",marker22,showFuelSystem)
addEventHandler("onClientMarkerHit",marker23,showFuelSystem)
addEventHandler("onClientMarkerHit",marker24,showFuelSystem)
addEventHandler("onClientMarkerHit",marker25,showFuelSystem)
addEventHandler("onClientMarkerHit",marker26,showFuelSystem)
addEventHandler("onClientMarkerHit",marker27,showFuelSystem)
addEventHandler("onClientMarkerHit",marker28,showFuelSystem)
addEventHandler("onClientMarkerHit",marker29,showFuelSystem)
addEventHandler("onClientMarkerHit",marker30,showFuelSystem)


function hideTheFuelSystem(hitElement)
removeEventHandler("onClientRender",root,showDx)
setElementData(hitElement,"refuelling",false)
setElementData(hitElement,"price",3)
end
addEventHandler("onClientMarkerLeave",marker1,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker2,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker3,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker4,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker5,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker6,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker7,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker8,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker9,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker10,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker11,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker12,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker13,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker14,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker15,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker16,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker17,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker18,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker19,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker20,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker21,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker22,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker23,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker24,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker25,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker26,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker27,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker28,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker29,hideTheFuelSystem)
addEventHandler("onClientMarkerLeave",marker30,hideTheFuelSystem)

function startRefulling()
local veh = getPedOccupiedVehicle(localPlayer)
	if veh then
		local fuel = getElementData(veh,"fuel")
		local prices = getElementData(localPlayer,"price")
			if getVehicleEngineState(veh) == false and (not getElementData(veh,"fuel") == false) and getElementData(veh,"fuel") <= MaxFuel and getPlayerMoney(localPlayer) > 1.5 and getElementData(localPlayer,"refuelling") == true then
				setElementData(veh,"fuel",fuel + increasing)
				setElementData(localPlayer,"price",prices + increasing * price)
				takePlayerMoney(increasing * price)
				setElementData(localPlayer, "Tank_Ring", 0)
			end
	end
end
addEventHandler("onClientRender",root,startRefulling)

function onClientResourceStart()
	for k,v in ipairs(getElementsByType("vehicle"))do
		setElementData(v,"fuel",MaxFuel)
	end
end
addEventHandler("onClientResourceStart",resourceRoot,onClientResourceStart)


function setVehicleFuelToZero()
if getPedOccupiedVehicle(localPlayer) then
veh = getPedOccupiedVehicle(localPlayer)

if getElementData(veh, "Oil") <= 0 then
    setVehicleEngineState(veh,false)
    setElementData(veh,"Oil",0)
    setElementData(veh, "Motorschaden", 1)	
	end
	if veh and (not getElementData(veh,"fuel") == false ) and getElementData(veh,"fuel") <= 0 then
		setElementData(veh,"fuel",0)
		setElementData(veh,"run.of.fuel",true)
		setVehicleEngineState(veh,false)

		
	end
end
end
addEventHandler("onClientRender",root,setVehicleFuelToZero)
MapC= true
	function map()
		if getPedOccupiedVehicle(localPlayer) and VehS== true and MapC== true  then
			local screenW, screenH = guiGetScreenSize()
			local  x,y,z= getElementPosition(localPlayer)
			local mx,my= hud_radar_getRadarPositionFromWorldPosition(x,y,z)
			MAlpha= "100"
			dxDrawImageSection(screenW * 0.3432, screenH * 0.7500, screenW * 0.3010, screenH * 0.2343, mx-((screenW*0.3010)/2), my-((screenH*0.2343)/2),screenW*0.3010,screenH*0.2343, "Map.png", 0, 0, tocolor(0, 0, 0, Malpha) )
			dxDrawImage(screenW * 0.4891, screenH * 0.8602, screenW * 0.0104, screenH * 0.0194, "PX.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
			dxDrawImage(screenW * 0.3365, screenH * 0.7444, screenW * 0.3130, screenH * 0.2463, "PXR.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
			dxDrawImage(screenW * 0.6099, screenH * 0.7611, screenW * 0.0229, screenH * 0.0333, "Downloader/X.png", 0, 0, 0, tocolor(255, 255, 255, 155), true)
			
		elseif getPedOccupiedVehicle(localPlayer) and VehS== true and MapK== true  then
			local screenW, screenH = guiGetScreenSize()
			local  x,y,z= getElementPosition(localPlayer)
			local mx,my= hud_radar_getRadarPositionFromWorldPosition2(x,y,z)
			MAlpha= "100"
			dxDrawImageSection(screenW * 0.3432, screenH * 0.7500, screenW * 0.3010, screenH * 0.2343, mx-((screenW*0.3010)/2), my-((screenH*0.2343)/2),screenW*0.3010,screenH*0.2343, "MapK.png", 0, 0, tocolor(0, 0, 0, Malpha) )
			 dxDrawImage(screenW * 0.4818, screenH * 0.8306, screenW * 0.0245, screenH * 0.0481, ":Next-Life/PX.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
			dxDrawImage(screenW * 0.3365, screenH * 0.7444, screenW * 0.3130, screenH * 0.2463, "PXR.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
			dxDrawImage(screenW * 0.6099, screenH * 0.7611, screenW * 0.0229, screenH * 0.0333, "Downloader/X.png", 0, 0, 0, tocolor(255, 255, 255, 155), true)
		end
	end 
	function ChangeMap()
		if MapC== true then
			MapC = false 
			MapK = true
		else 	
			MapC = true 
			MapK = false
	end
end	
addCommandHandler("mapc", ChangeMap)
-- addEventHandler("onClientRender",root,map)
function hud_radar_getRadarPositionFromWorldPosition(x,y,z)
    
	local mapsizex,mapsizey= 2048,2048
	local nx,ny = x +3000,6000-(y+3000);
    local px = (mapsizex/6000)*nx;
    local py = (mapsizey/6000)*ny;
    return px,py;
end

function hud_radar_getRadarPositionFromWorldPosition2(x,y,z)
    
	local mapsizex,mapsizey= 3000,3000
	local nx,ny = x +3000,6000-(y+3000);
    local px = (mapsizex/6000)*nx;
    local py = (mapsizey/6000)*ny;
    return px,py;
end

function setPriceTo0()
	if getElementData(localPlayer,"price") == false then
		setElementData(localPlayer,"price",3)
	end
end
addEventHandler("onClientRender",root,setPriceTo0)

function LeavCar_StopSoundT()
destroyElement(Tank_S)
end
addEvent("StopSound_T",true)
addEventHandler("StopSound_T",getRootElement(), LeavCar_StopSoundT)