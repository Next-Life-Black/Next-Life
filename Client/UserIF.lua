
UserIF = {
    button = {}
}
local screenW, screenH = guiGetScreenSize()
Button0= nil
    function UIButtons()
        UserIF.button[1] = guiCreateButton(0.23, 0.03, 0.08, 0.03, "Spielerdaten", true)
        guiSetAlpha(UserIF.button[1], 0.00)


        UserIF.button[2] = guiCreateButton(0.35, 0.03, 0.08, 0.03, "VRS System", true)
        guiSetAlpha(UserIF.button[2], 0.00)


        UserIF.button[3] = guiCreateButton(0.47, 0.03, 0.08, 0.03, "Fraktion", true)
        guiSetAlpha(UserIF.button[3], 0.00)


        UserIF.button[4] = guiCreateButton(0.61, 0.03, 0.08, 0.03, "Handy", true)
        guiSetAlpha(UserIF.button[4], 0.00)   


		addEventHandler ( "onClientGUIClick", UserIF.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == UserIF.button[2]) then	
					OpenVRS_UI()
					end
				end
			end
			
		)
		
    end


    function UIFDraw()
        dxDrawRectangle(screenW * 0.1951, screenH * 0.0000, screenW * 0.5458, screenH * 0.0867, tocolor(26, 24, 25, 255), false)
        dxDrawRectangle(screenW * 0.2083, screenH * 0.0100, screenW * 0.5181, screenH * 0.0611, tocolor(50, 46, 48, 255), false)
        dxDrawLine((screenW * 0.2319) - 1, (screenH * 0.0300) - 1, (screenW * 0.2319) - 1, screenH * 0.0600, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.3125, (screenH * 0.0300) - 1, (screenW * 0.2319) - 1, (screenH * 0.0300) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.2319) - 1, screenH * 0.0600, screenW * 0.3125, screenH * 0.0600, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.3125, screenH * 0.0600, screenW * 0.3125, (screenH * 0.0300) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.2319, screenH * 0.0300, screenW * 0.0806, screenH * 0.0300, tocolor(91, 84, 87, 255), false)
        dxDrawLine((screenW * 0.3479) - 1, (screenH * 0.0300) - 1, (screenW * 0.3479) - 1, screenH * 0.0600, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.4285, (screenH * 0.0300) - 1, (screenW * 0.3479) - 1, (screenH * 0.0300) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.3479) - 1, screenH * 0.0600, screenW * 0.4285, screenH * 0.0600, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.4285, screenH * 0.0600, screenW * 0.4285, (screenH * 0.0300) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.3479, screenH * 0.0300, screenW * 0.0806, screenH * 0.0300, tocolor(91, 84, 87, 255), false)
        dxDrawLine((screenW * 0.4715) - 1, (screenH * 0.0300) - 1, (screenW * 0.4715) - 1, screenH * 0.0600, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.5521, (screenH * 0.0300) - 1, (screenW * 0.4715) - 1, (screenH * 0.0300) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.4715) - 1, screenH * 0.0600, screenW * 0.5521, screenH * 0.0600, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.5521, screenH * 0.0600, screenW * 0.5521, (screenH * 0.0300) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.4715, screenH * 0.0300, screenW * 0.0806, screenH * 0.0300, tocolor(91, 84, 87, 255), false)
        dxDrawLine((screenW * 0.6062) - 1, (screenH * 0.0300) - 1, (screenW * 0.6062) - 1, screenH * 0.0600, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6868, (screenH * 0.0300) - 1, (screenW * 0.6062) - 1, (screenH * 0.0300) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.6062) - 1, screenH * 0.0600, screenW * 0.6868, screenH * 0.0600, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6868, screenH * 0.0600, screenW * 0.6868, (screenH * 0.0300) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.6062, screenH * 0.0300, screenW * 0.0806, screenH * 0.0300, tocolor(91, 84, 87, 255), false)
        dxDrawText("Spielerdaten", screenW * 0.2417, screenH * 0.0367, screenW * 0.3236, screenH * 0.0644, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("VRS ", screenW * 0.3750, screenH * 0.0367, screenW * 0.4569, screenH * 0.0644, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Fraktion", screenW * 0.4903, screenH * 0.0367, screenW * 0.5722, screenH * 0.0644, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Handy", screenW * 0.6285, screenH * 0.0367, screenW * 0.7104, screenH * 0.0644, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
    end


	
	function OpenUIF()
		if Button== true then
			closeUIF()
			Button= false
			showCursor(false)
		else
		    Button= true
			addEventHandler("onClientRender", root, UIFDraw)
			UIButtons()
			showCursor(true)
		end
	end	
	
		function closeUIF()
		removeEventHandler("onClientRender", root, UIFDraw)
		destroyElement(UserIF.button[1])
		destroyElement(UserIF.button[2])
		destroyElement(UserIF.button[3])
		destroyElement(UserIF.button[4])
	end
	addCommandHandler("me", OpenUIF)