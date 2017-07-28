


    function Admin_Fraktion()
	
	Fraktion = {
    button = {},
    window = {},
    label = {},
    edit = {}
}

        Fraktion.window[1] = guiCreateWindow(0.32, 0.34, 0.34, 0.43, "Admin Fraktions Panel", true)
        guiWindowSetSizable(Fraktion.window[1], false)

        Fraktion.button[1] = guiCreateButton(0.56, 0.82, 0.39, 0.12, "Inviten", true, Fraktion.window[1])
        Fraktion.edit[1] = guiCreateEdit(0.08, 0.10, 0.48, 0.09, "", true, Fraktion.window[1])
        Fraktion.edit[2] = guiCreateEdit(0.45, 0.36, 0.11, 0.11, "", true, Fraktion.window[1])
        Fraktion.label[1] = guiCreateLabel(0.62, 0.11, 0.34, 0.07, "Spielername", true, Fraktion.window[1])
        Fraktion.label[2] = guiCreateLabel(0.61, 0.38, 0.34, 0.07, "Gültige Fraktion", true, Fraktion.window[1])
        Fraktion.label[3] = guiCreateLabel(0.04, 0.22, 0.39, 0.55, "Fraktion 1 = SFPD                               Fraktion 2 = FBI                                 Fraktion 3 = Army                    Fraktion 4 = Terrorist                         Fraktion 5 = Mafia                                  Fraktion 6 = Medic                      Fraktion 7 = Mechanicker                      Fraktion 8 = Surenos                      Fraktion 9 = Yakuza", true, Fraktion.window[1])
        guiLabelSetHorizontalAlign(Fraktion.label[3], "left", true)
        Fraktion.button[2] = guiCreateButton(0.04, 0.82, 0.39, 0.12, "Unnviten", true, Fraktion.window[1])  
		Fraktion.button[3] = guiCreateButton(0.82, 0.07, 0.13, 0.09, "Close", true, Fraktion.window[1])
		showCursor(true)

			addEventHandler ( "onClientGUIClick", Fraktion.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Fraktion.button[1]) then
		 			Spieler = guiGetText(Fraktion.edit[2])	
					IFraktion = guiGetText(Fraktion.edit[1])
					triggerServerEvent("inFraktion2",getLocalPlayer(),IFraktion, Spieler)
					end
				end
			end
		)

			addEventHandler ( "onClientGUIClick", Fraktion.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Fraktion.button[2]) then
					USpieler = guiGetText(Fraktion.edit[1])
		 				
					end
				end
			end
		)

			addEventHandler ( "onClientGUIClick", Fraktion.button[3],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Fraktion.button[3]) then
					guiSetVisible(Fraktion.window[1], false)
					showCursor(false)
		 				
					end
				end
			end
		)			
    end
addEvent ("AdminFraktionsGui", true)
addEventHandler ("AdminFraktionsGui", getRootElement(), Admin_Fraktion )
