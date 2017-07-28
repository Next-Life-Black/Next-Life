
Tuning = {
    button = {}
}
local screenW, screenH = guiGetScreenSize()
function Motor_B()
        Tuning.button[1] = guiCreateButton(0.26, 0.69, 0.10, 0.12, "Motor 1", true)
        guiSetAlpha(Tuning.button[1], 0.00)


        Tuning.button[2] = guiCreateButton(0.42, 0.69, 0.10, 0.12, "Motor 2", true)
        guiSetAlpha(Tuning.button[2], 0.00)

       Tuning.button[3] = guiCreateButton(0.57, 0.70, 0.10, 0.12, "Motor 3", true)
        guiSetAlpha(Tuning.button[3], 0.00)
 

		end
		function Turbo_B()
		        Tuning.button[1] = guiCreateButton(0.26, 0.69, 0.10, 0.12, "Motor 1", true)
        guiSetAlpha(Tuning.button[1], 0.00)


        Tuning.button[2] = guiCreateButton(0.42, 0.69, 0.10, 0.12, "Motor 2", true)
        guiSetAlpha(Tuning.button[2], 0.00)


        Tuning.button[3] = guiCreateButton(0.57, 0.70, 0.10, 0.12, "Motor 3", true)
        guiSetAlpha(Tuning.button[3], 0.00)
		end
function Starter()

        Tuning.button[4] = guiCreateButton(0.29, 0.37, 0.10, 0.12, "Turbo", true)
        guiSetAlpha(Tuning.button[4], 0.00)

        setElementData(localPlayer, "Tune", 1)
        Tuning.button[5] = guiCreateButton(0.52, 0.38, 0.10, 0.12, "Motor", true)
        guiSetAlpha(Tuning.button[5], 0.00)  
		addEventHandler ( "onClientRender", root, Tuning_Menue )
		
			addEventHandler ( "onClientGUIClick", Tuning.button[4],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Tuning.button[4]) then
					removeEventHandler ( "onClientRender", root, Motor )
	                addEventHandler ( "onClientRender", root, Turbo )
					end
				end
			end
		)
		
					addEventHandler ( "onClientGUIClick", Tuning.button[5],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Tuning.button[5]) then
	                removeEventHandler ( "onClientRender", root, Turbo )
					addEventHandler ( "onClientRender", root, Motor )
					end
				end
			end
		)
   end		
addCommandHandler("TShop", Starter)



    function Tuning_Menue()
        dxDrawImage(screenW * 0.0000, screenH * 0.0000, screenW * 1.0000, screenH * 1.0000, "images/Tuningsys/BR.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(screenW * 0.0000, screenH * 0.0000, screenW * 1.0000, screenH * 1.0000, "images/Tuningsys/BR.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(screenW * 0.0000, screenH * 0.0000, screenW * 1.0000, screenH * 1.0000, "images/Tuningsys/BR.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(screenW * 0.0000, screenH * 0.0000, screenW * 1.0000, screenH * 1.0000, "images/Tuningsys/BR.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        
        dxDrawImage(screenW * 0.2938, screenH * 0.3633, screenW * 0.1049, screenH * 0.1411, "images/Tuningsys/Turbo.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(749, 327, 145, 129, "images/Tuningsys/Motor.png", 0, 0, 0, tocolor(26, 26, 26, 255), false)
        
   end



function Motor()
        dxDrawImage(screenW * 0.2646, screenH * 0.6922, screenW * 0.0951, screenH * 0.1233, "images/Tuningsys/Motor-1.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(screenW * 0.4250, screenH * 0.6878, screenW * 0.0951, screenH * 0.1233, "images/Tuningsys/Motor-2.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(screenW * 0.5799, screenH * 0.6922, screenW * 0.0951, screenH * 0.1233, "images/Tuningsys/Motor-3.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(" 400 --> 359", screenW * 0.2715, screenH * 0.6722, screenW * 0.3340, screenH * 0.6922, tocolor(203, 0, 0, 255), 0.50, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText(" 400 --> 387", screenW * 0.4375, screenH * 0.6722, screenW * 0.5000, screenH * 0.6922, tocolor(203, 0, 0, 255), 0.50, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText(" 400 --> 400", screenW * 0.5924, screenH * 0.6722, screenW * 0.6549, screenH * 0.6922, tocolor(0, 203, 9, 255), 0.50, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText("Gekauft ", screenW * 0.2813, screenH * 0.8156, screenW * 0.3438, screenH * 0.8356, tocolor(19, 203, 0, 255), 0.50, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText("Kaufen: 350000 $", screenW * 0.4250, screenH * 0.8111, screenW * 0.4875, screenH * 0.8311, tocolor(195, 203, 0, 255), 0.50, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText("Gekauft", screenW * 0.5965, screenH * 0.8111, screenW * 0.6590, screenH * 0.8311, tocolor(19, 203, 0, 255), 0.50, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText("Eingebaut", screenW * 0.5965, screenH * 0.8311, screenW * 0.6590, screenH * 0.8511, tocolor(19, 203, 0, 255), 0.50, "bankgothic", "left", "top", false, false, false, false, false)
		dxDrawRectangle(screenW * 0.0674, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.0875, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.1076, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.1278, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.1479, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
        dxDrawRectangle(screenW * 0.0875, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
        dxDrawRectangle(screenW * 0.1076, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
        dxDrawRectangle(screenW * 0.1278, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
        dxDrawRectangle(screenW * 0.1479, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
        dxDrawText("PS: 400", screenW * 0.0674, screenH * 0.5967, screenW * 0.1042, screenH * 0.6111, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawLine((screenW * 0.0674) - 1, (screenH * 0.6600) - 1, (screenW * 0.0674) - 1, screenH * 0.6700, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, (screenH * 0.6600) - 1, (screenW * 0.0674) - 1, (screenH * 0.6600) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.0674) - 1, screenH * 0.6700, screenW * 0.1667, screenH * 0.6700, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, screenH * 0.6700, screenW * 0.1667, (screenH * 0.6600) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.6600, screenW * 0.0993, screenH * 0.0100, tocolor(255, 255, 255, 255), false)
        dxDrawLine((screenW * 0.0674) - 1, (screenH * 0.6611) - 1, (screenW * 0.0674) - 1, screenH * 0.6711, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, (screenH * 0.6611) - 1, (screenW * 0.0674) - 1, (screenH * 0.6611) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.0674) - 1, screenH * 0.6711, screenW * 0.1667, screenH * 0.6711, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, screenH * 0.6711, screenW * 0.1667, (screenH * 0.6611) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.6611, screenW * 0.0993, screenH * 0.0100, tocolor(0, 17, 150, 255), false)
        dxDrawText("Grip: 256", screenW * 0.0674, screenH * 0.6422, screenW * 0.1076, screenH * 0.6544, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawLine((screenW * 0.0674) - 1, (screenH * 0.7100) - 1, (screenW * 0.0674) - 1, screenH * 0.7200, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, (screenH * 0.7100) - 1, (screenW * 0.0674) - 1, (screenH * 0.7100) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.0674) - 1, screenH * 0.7200, screenW * 0.1667, screenH * 0.7200, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, screenH * 0.7200, screenW * 0.1667, (screenH * 0.7100) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.7100, screenW * 0.0993, screenH * 0.0100, tocolor(254, 254, 255, 255), false)
        dxDrawLine((screenW * 0.0674) - 1, (screenH * 0.7100) - 1, (screenW * 0.0674) - 1, screenH * 0.7200, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, (screenH * 0.7100) - 1, (screenW * 0.0674) - 1, (screenH * 0.7100) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.0674) - 1, screenH * 0.7200, screenW * 0.1667, screenH * 0.7200, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, screenH * 0.7200, screenW * 0.1667, (screenH * 0.7100) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.7100, screenW * 0.0993, screenH * 0.0100, tocolor(103, 0, 0, 255), false)
        dxDrawText("Gewicht: 980 Kilo", screenW * 0.0674, screenH * 0.6911, screenW * 0.1104, screenH * 0.7033, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
end

function Turbo()
        dxDrawImage(screenW * 0.2576, screenH * 0.6967, screenW * 0.1035, screenH * 0.1144, "images/Tuningsys/Turbo-1.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(screenW * 0.4167, screenH * 0.6967, screenW * 0.1035, screenH * 0.1144, "images/Tuningsys/Turbo-2.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(screenW * 0.5729, screenH * 0.6967, screenW * 0.1035, screenH * 0.1144, "images/Tuningsys/Turbo-3.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.0875, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.1076, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.1278, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.1479, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(255, 255, 255, 255), false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
        dxDrawRectangle(screenW * 0.0875, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
        dxDrawRectangle(screenW * 0.1076, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
        dxDrawRectangle(screenW * 0.1278, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
        dxDrawRectangle(screenW * 0.1479, screenH * 0.6133, screenW * 0.0181, screenH * 0.0089, tocolor(0, 151, 14, 255), false)
		dxDrawText("PS: 400", screenW * 0.0674, screenH * 0.5967, screenW * 0.1042, screenH * 0.6111, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawLine((screenW * 0.0674) - 1, (screenH * 0.6600) - 1, (screenW * 0.0674) - 1, screenH * 0.6700, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, (screenH * 0.6600) - 1, (screenW * 0.0674) - 1, (screenH * 0.6600) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.0674) - 1, screenH * 0.6700, screenW * 0.1667, screenH * 0.6700, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, screenH * 0.6700, screenW * 0.1667, (screenH * 0.6600) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.6600, screenW * 0.0993, screenH * 0.0100, tocolor(255, 255, 255, 255), false)
        dxDrawLine((screenW * 0.0674) - 1, (screenH * 0.6611) - 1, (screenW * 0.0674) - 1, screenH * 0.6711, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, (screenH * 0.6611) - 1, (screenW * 0.0674) - 1, (screenH * 0.6611) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.0674) - 1, screenH * 0.6711, screenW * 0.1667, screenH * 0.6711, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, screenH * 0.6711, screenW * 0.1667, (screenH * 0.6611) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.6611, screenW * 0.0993, screenH * 0.0100, tocolor(0, 17, 150, 255), false)
        dxDrawText("Grip: 256", screenW * 0.0674, screenH * 0.6422, screenW * 0.1076, screenH * 0.6544, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawLine((screenW * 0.0674) - 1, (screenH * 0.7100) - 1, (screenW * 0.0674) - 1, screenH * 0.7200, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, (screenH * 0.7100) - 1, (screenW * 0.0674) - 1, (screenH * 0.7100) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.0674) - 1, screenH * 0.7200, screenW * 0.1667, screenH * 0.7200, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, screenH * 0.7200, screenW * 0.1667, (screenH * 0.7100) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.7100, screenW * 0.0993, screenH * 0.0100, tocolor(254, 254, 255, 255), false)
        dxDrawLine((screenW * 0.0674) - 1, (screenH * 0.7100) - 1, (screenW * 0.0674) - 1, screenH * 0.7200, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, (screenH * 0.7100) - 1, (screenW * 0.0674) - 1, (screenH * 0.7100) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.0674) - 1, screenH * 0.7200, screenW * 0.1667, screenH * 0.7200, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.1667, screenH * 0.7200, screenW * 0.1667, (screenH * 0.7100) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.0674, screenH * 0.7100, screenW * 0.0993, screenH * 0.0100, tocolor(103, 0, 0, 255), false)
        dxDrawText("Gewicht: 980 Kilo", screenW * 0.0674, screenH * 0.6911, screenW * 0.1104, screenH * 0.7033, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
		end
		
		