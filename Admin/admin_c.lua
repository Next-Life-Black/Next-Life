
Admin = {
    button = {},
    window = {},
    label = {},
    edit = {}
}

EB_PW = {
    window = {},
    edit = {},
    label = {}
}

function Admin_Window()
        guiSetVisible(Admin.window[1], false)
		Admin.window[1] = guiCreateWindow(0.25, 0.11, 0.51, 0.27, "AdminPanel", true)
        guiWindowSetSizable(Admin.window[1], false)

        Admin.edit[1] = guiCreateEdit(0.56, 0.15, 0.37, 0.15, "", true, Admin.window[1])
        Admin.edit[2] = guiCreateEdit(0.56, 0.35, 0.37, 0.15, "", true, Admin.window[1])
        Admin.edit[3] = guiCreateEdit(0.82, 0.55, 0.10, 0.15, "", true, Admin.window[1])
        Admin.label[1] = guiCreateLabel(0.46, 0.20, 0.26, 0.10, "Spielername", true, Admin.window[1])
        Admin.label[2] = guiCreateLabel(0.46, 0.36, 0.26, 0.10, "Grund", true, Admin.window[1])
        Admin.label[3] = guiCreateLabel(0.69, 0.57, 0.10, 0.11, "Banzeit", true, Admin.window[1])
        Admin.button[1] = guiCreateButton(0.04, 0.14, 0.20, 0.16, "Bannen", true, Admin.window[1])
        Admin.button[2] = guiCreateButton(0.04, 0.42, 0.20, 0.16, "Kicken", true, Admin.window[1])
        Admin.button[3] = guiCreateButton(0.04, 0.77, 0.20, 0.16, "Spectaten", true, Admin.window[1])
        Admin.button[4] = guiCreateButton(0.30, 0.77, 0.20, 0.16, "Warnen", true, Admin.window[1])
        Admin.edit[4] = guiCreateEdit(0.56, 0.77, 0.37, 0.15, "Warntext", true, Admin.window[1])    
		 Admin.button[5] = guiCreateButton(0.94, 0.08, 0.04, 0.16, "X", true, Admin.window[1]) 
		 showCursor(true)
		
			addEventHandler ( "onClientGUIClick", Admin.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Admin.button[1]) then
		 			Grund= guiGetText(Admin.edit[2])	
					user= guiGetText(Admin.edit[1])
					admin= getPlayerName(localPlayer)
					triggerServerEvent("Bann",getLocalPlayer(), tostring(user), tostring(Grund), tostring(admin))
					end
				end
			end
		)
			addEventHandler ( "onClientGUIClick", Admin.button[5],
			function ( button, state )
				if (button == "left" and state == "up") then
				   if (source == Admin.button[5]) then
				   guiSetVisible(Admin.window[1], false)
                   showCursor(false)				   

					end
				end
			end
		)
			addEventHandler ( "onClientGUIClick", Fraktion.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Login.button[4]) then

					end
				end
			end
		)
			addEventHandler ( "onClientGUIClick", Fraktion.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Login.button[4]) then

					end
				end
			end
		)		
end
addEvent("AdminPanel",true)
addEventHandler("AdminPanel",getRootElement(), Admin_Window)	






EB_PW = {
    button = {},
    window = {},
    edit = {},
    label = {}
}

    function EB_PW_Creator()
        EB_PW.window[1] = guiCreateWindow(0.36, 0.28, 0.26, 0.31, "EB_PW", true)
        guiWindowSetSizable(EB_PW.window[1], false)

        EB_PW.label[1] = guiCreateLabel(0.09, 0.14, 0.83, 0.15, "Hier kannst du für ein gebannten user, Ein code erstellen, um ihn zu Entbannen. Den code müssen sie den user Sagen bzw Geben!", true, EB_PW.window[1])
        guiLabelSetHorizontalAlign(EB_PW.label[1], "left", true)
        EB_PW.edit[1] = guiCreateEdit(0.21, 0.44, 0.43, 0.10, "", true, EB_PW.window[1])
        EB_PW.edit[2] = guiCreateEdit(0.21, 0.58, 0.43, 0.10, "", true, EB_PW.window[1])
        EB_PW.label[2] = guiCreateLabel(0.02, 0.46, 0.17, 0.09, "EB Code", true, EB_PW.window[1])
        EB_PW.label[3] = guiCreateLabel(0.03, 0.59, 0.20, 0.10, "Name des Empfängers", true, EB_PW.window[1])
        guiLabelSetHorizontalAlign(EB_PW.label[3], "left", true)
        EB_PW.button[1] = guiCreateButton(0.28, 0.77, 0.40, 0.15, "Erstellen", true, EB_PW.window[1])
        EB_PW.button[2] = guiCreateButton(0.91, 0.07, 0.06, 0.07, "X", true, EB_PW.window[1])    
		
					addEventHandler ( "onClientGUIClick", EB_PW.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == EB_PW.button[1]) then
		 			Code= guiGetText(EB_PW.edit[1])
					EBUser= guiGetText(EB_PW.edit[2])
					Admin= getPlayerName(localPlayer)
					triggerServerEvent("EB_PW_Starter",getLocalPlayer(),Code, Admin, EBUser) 
					end
				end
			end
		)
		
					addEventHandler ( "onClientGUIClick", EB_PW.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == EB_PW.button[2]) then
		 			destroyElement(EB_PW.window[1])		
					end
				end
			end
		)
    end
addCommandHandler("EBPW", EB_PW_Creator )


