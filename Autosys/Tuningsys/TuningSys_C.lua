---------------------------------
--------Script by Black----------
------------(C)2016--------------

-------------Variablen----------------
Tuning = {
    button = {}
}
local screenW, screenH = guiGetScreenSize()
Tuning_Garage= createMarker ( 855.29998779297, -1373.5999755859, 12.89999961853, "cylinder", 3.5, 0, 0, 255, 170)
Tuning_Blip= createBlip( 855.29998779297, -1373.5999755859, 12.89999961853, 63)
------------Functionen----------------
 
 function T_Buttons()
        Tuning.button[1] = guiCreateButton(0.03, 0.09, 0.08, 0.11, "Motor", true)
        guiSetAlpha(Tuning.button[1], 0.00)

        Tuning.button[2] = guiCreateButton(0.26, 0.09, 0.08, 0.11, "1", true)
        guiSetAlpha(Tuning.button[2], 0.00)

        Tuning.button[3] = guiCreateButton(0.45, 0.09, 0.08, 0.11, "2", true)
        guiSetAlpha(Tuning.button[3], 0.00)

        Tuning.button[4] = guiCreateButton(0.67, 0.09, 0.08, 0.11, "3", true)
        guiSetAlpha(Tuning.button[4], 0.00)

        Tuning.button[5] = guiCreateButton(0.90, 0.09, 0.08, 0.11, "Turbo Verbessern", true)
        guiSetAlpha(Tuning.button[5], 0.00)    
    end

	 function M_Buttons()
        Tuning.button[6] = guiCreateButton(0.03, 0.09, 0.08, 0.11, "Motor", true)
        guiSetAlpha(Tuning.button[6], 0.00)

        Tuning.button[7] = guiCreateButton(0.26, 0.09, 0.08, 0.11, "1", true)
        guiSetAlpha(Tuning.button[7], 0.00)

        Tuning.button[8] = guiCreateButton(0.45, 0.09, 0.08, 0.11, "2", true)
        guiSetAlpha(Tuning.button[8], 0.00)

        Tuning.button[9] = guiCreateButton(0.67, 0.09, 0.08, 0.11, "3", true)
        guiSetAlpha(Tuning.button[9], 0.00)

        Tuning.button[10] = guiCreateButton(0.90, 0.09, 0.08, 0.11, "Turbo Verbessern", true)
        guiSetAlpha(Tuning.button[10], 0.00)    
    end


	function In_Garage()
		veh = getPedOccupiedVehicle(localPlayer)
		if veh then 
		local components = { "weapon", "ammo", "health", "clock", "money", "breath", "armour", "wanted" }
			if source ~= Client then return end
			setElementData(localPlayer, "Tuning", 1)
			setElementPosition(veh, -1935.6999511719, 246.89999389648, 35.299999237061, true)
			setCameraMatrix(-1932.08, 242.28, 36.8, -1935.6999511719, 246.89999389648, 34.299999237061)
			setElementDimension(veh, 3)
			setElementDimension(localPlayer, 3)
			addEventHandler( "onClientRender", Tuning_Menue)
			Tuning_Song= playSound("Sounds/Tuningsys/CSR.mp3", true)
			addEventHandler( "onClientRender", root, Tuning_Menue)
			bindKey ( "Enter", "down", Leave_Garage )
			showChat(false)
			showCursor(true)
			bindKey("h", "down", Leave_Garage)
		else
			outputChatBox("Du musst ein Auto zum Tunen haben !")
		end
		
	end
		
	addCommandHandler("debugtuning", In_Garage)
	function Leave_Garage()
		veh = getPedOccupiedVehicle(localPlayer)
			if not veh then 
                outputChatBox("FehlerCode -BZGJ30-(Fahrzeug wurde nicht Gefunden!), Bitte Reconnecten! ")
			else	
				setElementPosition(veh, 855.20001220703, -1385.4000244141, 13.699999809265, 0, 0, 180.74920654297)	
				setElementDimension(veh, 0)
				unbindKey("Enter", "down", Leave_Garage)
				showChat(false)
			    showCursor(true)
			end	
	end


function PS_Test()
veh = getPedOccupiedVehicle(localPlayer)
setElementdata(veh, "PS", 387)
end


    function Tuning_Menue()
        dxDrawImage(screenW * 0.0028, screenH * 0.0833, screenW * 1.0000, screenH * 0.1622, "images/Tuningsys/BR.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.0139, screenH * 0.2811, screenW * 0.0299, screenH * 0.0111, tocolor(55, 251, 3, 255), false)
        dxDrawImage(screenW * 0.0028, screenH * 0.0833, screenW * 1.0000, screenH * 0.1622, "images/Tuningsys/BR.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.0465, screenH * 0.2811, screenW * 0.0299, screenH * 0.0111, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.0799, screenH * 0.2811, screenW * 0.0299, screenH * 0.0111, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.1132, screenH * 0.2811, screenW * 0.0299, screenH * 0.0111, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.0465, screenH * 0.2811, screenW * 0.0299, screenH * 0.0111, tocolor(38, 177, 2, 255), false)
        dxDrawRectangle(screenW * 0.0799, screenH * 0.2811, screenW * 0.0299, screenH * 0.0111, tocolor(129, 161, 0, 255), false)
        dxDrawRectangle(screenW * 0.1132, screenH * 0.2811, screenW * 0.0299, screenH * 0.0111, tocolor(160, 30, 0, 255), false)
        dxDrawText("PS: 300", screenW * 0.0125, screenH * 0.2600, screenW * 0.1201, screenH * 0.2811, tocolor(0, 0, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawRectangle(screenW * 0.0132, screenH * 0.3344, screenW * 0.1299, screenH * 0.0111, tocolor(0, 0, 73, 255), false)
        dxDrawRectangle(screenW * 0.0132, screenH * 0.3344, screenW * 0.1299, screenH * 0.0111, tocolor(0, 0, 185, 255), false)
        dxDrawText("Grip: 389", screenW * 0.0125, screenH * 0.3089, screenW * 0.1201, screenH * 0.3300, tocolor(0, 0, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawRectangle(screenW * 0.0132, screenH * 0.3800, screenW * 0.1299, screenH * 0.0111, tocolor(121, 125, 0, 255), false)
        dxDrawRectangle(screenW * 0.0132, screenH * 0.3800, screenW * 0.1299, screenH * 0.0111, tocolor(212, 219, 0, 255), false)
        dxDrawText("Gewicht: 898", screenW * 0.0125, screenH * 0.3567, screenW * 0.1201, screenH * 0.3778, tocolor(0, 0, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawImage(screenW * 0.2521, screenH * 0.0944, screenW * 0.0924, screenH * 0.1122, "images/Tuningsys/Turbo-1.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(screenW * 0.4146, screenH * 0.0611, screenW * 0.1326, screenH * 0.1567, "images/Tuningsys/Turbo-2.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(screenW * 0.6472, screenH * 0.0833, screenW * 0.1194, screenH * 0.1400, "images/Tuningsys/Turbo-3.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("--> ", screenW * 0.2521, screenH * 0.1956, screenW * 0.3597, screenH * 0.2167, tocolor(217, 0, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("69000$", screenW * 0.2757, screenH * 0.2178, screenW * 0.3833, screenH * 0.2389, tocolor(36, 218, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Beta", screenW * 0.4326, screenH * 0.1967, screenW * 0.5403, screenH * 0.2178, tocolor(216, 91, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Gekauft & Eingebaut", screenW * 0.4215, screenH * 0.2167, screenW * 0.5292, screenH * 0.2378, tocolor(36, 218, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Beta", screenW * 0.6521, screenH * 0.1967, screenW * 0.7597, screenH * 0.2178, tocolor(5, 214, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("99000$", screenW * 0.6833, screenH * 0.2178, screenW * 0.7910, screenH * 0.2389, tocolor(0, 215, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawImage(screenW * 0.0292, screenH * 0.0878, screenW * 0.0806, screenH * 0.1122, "images/Tuningsys/Motor.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("Motor Verbessern", screenW * 0.0194, screenH * 0.2133, screenW * 0.1271, screenH * 0.2344, tocolor(213, 85, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawImage(screenW * 0.8875, screenH * 0.0833, screenW * 0.0938, screenH * 0.1222, "images/Tuningsys/Turbo.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("Turbo Verbessern", screenW * 0.8806, screenH * 0.2167, screenW * 0.9882, screenH * 0.2378, tocolor(45, 212, 0, 255), 1.50, "default-bold", "left", "top", false, false, false, false, false)
    end

