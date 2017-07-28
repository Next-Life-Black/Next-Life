ATM1= createObject ( 2942, 1808.3000488281, -1369.8000488281, 14.699999809265, 0, 0, 90.75)
ATM2= createObject ( 2942, 1551.1999511719, -1679.5, 13.199999809265, 0, 0, 0)
ATM3= createObject ( 2942, 1495.9000244141, -1750, 15.10000038147, 0, 0, 180.75)
ATM4= createObject ( 2942, 2043.8000488281, -1416.3000488281, 16.799999237061, 0, 0, 269.25)
ATM5= createObject ( 2943, 1894.0999755859, -1418.8000488281, 10.10000038147, 0,90, 0 )

BLogin = {
    button = {},
    window = {},
	 edit = {},
    label = {}
}









function Bank_window()
Bank = {
    button = {},
    window = {},
    edit = {},
    label = {}
}

if  getDistanceBetweenPoints3D ( 1808.3000488281, -1369.8000488281, 14.699999809265 ,getElementPosition (localPlayer) ) < 5 or getDistanceBetweenPoints3D ( 1551.1999511719, -1679.5, 13.199999809265 ,getElementPosition (localPlayer) ) < 5 or getDistanceBetweenPoints3D (1495.9000244141, -1750, 15.10000038147 ,getElementPosition (localPlayer) ) < 5 or getDistanceBetweenPoints3D ( 2043.8000488281, -1416.3000488281, 16.799999237061 ,getElementPosition (localPlayer) ) < 5 or getDistanceBetweenPoints3D ( 1894.0999755859, -1418.8000488281, 10.10000038147 ,getElementPosition (localPlayer) ) < 5 then
        guiSetVisible(Bank.window[1], false)
		Bank.window[1] = guiCreateWindow(0.35, 0.25, 0.30, 0.38, "Bank LS", true)
        guiWindowSetSizable(Bank.window[1], false)

        Bank.label[1] = guiCreateLabel(0.29, 0.06, 0.91, 0.20, "Willkommen auf der LS Bank", true, Bank.window[1])
        Bank.edit[1] = guiCreateEdit(0.30, 0.21, 0.51, 0.11, "", true, Bank.window[1])
        Bank.edit[2] = guiCreateEdit(0.30, 0.41, 0.51, 0.11, "", true, Bank.window[1])
        Bank.label[2] = guiCreateLabel(0.13, 0.22, 0.19, 0.07, "Kontonr.", true, Bank.window[1])
        Bank.label[3] = guiCreateLabel(0.11, 0.45, 0.15, 0.07, "Kennwort", true, Bank.window[1])
        Bank.button[1] = guiCreateButton(0.06, 0.74, 0.41, 0.17, "Anmelden", true, Bank.window[1])
        Bank.button[2] = guiCreateButton(0.54, 0.74, 0.41, 0.17, "Ich habe kein Konto!", true, Bank.window[1])    
		Bank.button[3] = guiCreateButton(0.02, 0.07, 0.08, 0.10, "X", true, Bank.window[1]) 
		 for i, player in ipairs(getElementsByType("player")) do		
		 i = i+1
		guiSetText(Bank.edit[1], getElementData(player, "Kontonr")) 
		showCursor(true)
					addEventHandler ( "onClientGUIClick", Bank.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Bank.button[1]) then
                    Kennwort= guiGetText(Bank.edit[1])
					Konto= guiGetText(Bank.edit[2]) 
					triggerServerEvent("Bank_Login",getLocalPlayer(),Kennwort, Konto) 
					
					
					end
				end
			end
		)
		
					addEventHandler ( "onClientGUIClick", Bank.button[3],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Bank.button[3]) then
                    guiSetVisible(Bank.window[1], false)
					showCursor(false)
					end
				end
			end
		)
					addEventHandler ( "onClientGUIClick", Bank.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Bank.button[2]) then
                    guiSetVisible(Bank.window[1], false)
					AGB()
					end
				end
			end
		)
	end	
    end
end
bindKey("h", "Down", Bank_window)


    function AGB()
	
	Neu_Bank = {
    button = {},
    window = {},
    label = {}
}
	    guiSetVisible(Neu_Bank.window[1], false)
        Neu_Bank.window[1] = guiCreateWindow(0.35, 0.25, 0.30, 0.38, "Bank LS", true)
        guiWindowSetSizable(Neu_Bank.window[1], false)

        Neu_Bank.label[1] = guiCreateLabel(0.05, 0.08, 0.91, 0.20, "Hallo und Willkommen auf der Bank von LS! Hier kannst du dir dein eigenen Bank Konto einrichten und Arbeitslosengeld oder Jobs einzahlen Lassen!  Denke daran Das Kennwort darf nur aus Zahlen Bestehen!", true, Neu_Bank.window[1])
        guiLabelSetHorizontalAlign(Neu_Bank.label[1], "left", true)
        Neu_Bank.button[1] = guiCreateButton(0.25, 0.42, 0.50, 0.18, "Akzeptieren ", true, Neu_Bank.window[1])
        Neu_Bank.button[2] = guiCreateButton(0.25, 0.70, 0.50, 0.17, "Ablehnen", true, Neu_Bank.window[1])
        
					addEventHandler ( "onClientGUIClick", Neu_Bank.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Neu_Bank.button[1]) then
                    guiSetVisible(Neu_Bank.window[1], false)
					Register_Bank()
					
					end
				end
			end
		)
					addEventHandler ( "onClientGUIClick", Neu_Bank.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Neu_Bank.button[2]) then
                     guiSetVisible(Neu_Bank.window[1], false) 
					 outputChatBox("Registrierung Fehlgeschlagen!")
					end
				end
			end
		)
		


   end


function BLogin_Window()

BLogin = {
    button = {},
    window = {},
	 edit = {},
    label = {}
}
		
		Summe2= "Client Error"
        guiSetVisible(Bank.window[1], false)
        guiSetVisible(BLogin.window[1], false)		
   		 
		BLogin.window[1] = guiCreateWindow(0.36, 0.31, 0.31, 0.29, "Bank", true)
        guiWindowSetSizable(BLogin.window[1], false)
        guiSetAlpha(BLogin.window[1], 1.00)

        BLogin.button[1] = guiCreateButton(0.02, 0.09, 0.08, 0.13, "X", true, BLogin.window[1])
        BLogin.label[1] = guiCreateLabel(0.31, 0.09, 0.65, 0.18, "Daten wurden Geladen!", true, BLogin.window[1])
        BLogin.label[2] = guiCreateLabel(0.02, 0.25, 0.77, 0.11, "Geld auf dem Konto: "..Summe2.."", true, BLogin.window[1])
        guiSetFont(BLogin.label[2], "default-bold-small")
        guiLabelSetColor(BLogin.label[2], 31, 252, 2)
        BLogin.button[2] = guiCreateButton(0.54, 0.74, 0.42, 0.20, "Einzahlen", true, BLogin.window[1])
        BLogin.button[3] = guiCreateButton(0.02, 0.74, 0.42, 0.20, "Auszahlen", true, BLogin.window[1])
        BLogin.button[4] = guiCreateButton(0.78, 0.31, 0.20, 0.12, "Überweisen", true, BLogin.window[1])
        BLogin.button[5] = guiCreateButton(0.78, 0.11, 0.20, 0.12, "Übersicht", true, BLogin.window[1])
        BLogin.edit[1] = guiCreateEdit(0.18, 0.46, 0.60, 0.13, "Summe", true, BLogin.window[1]) 
        		
	
		addEventHandler ( "onClientGUIClick", BLogin.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == BLogin.button[1]) then
					if guiGetVisible(BLogin.window[1])== true then
					 guiSetVisible(BLogin.window[1], false)
                     showCursor(false)
					end 
					end
				end
			end
		)
		
				addEventHandler ( "onClientGUIClick", BLogin.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == BLogin.button[2]) then
                      ZSumme= guiGetText(BLogin.edit[1])
					  triggerServerEvent("Einzahlen",getLocalPlayer(),ZSumme )
					end
				end
			end
		)
		
				addEventHandler ( "onClientGUIClick", BLogin.button[3],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == BLogin.button[3]) then
					  ZSumme= guiGetText(BLogin.edit[1])
					  triggerServerEvent("Auszahlen",getLocalPlayer(),ZSumme )

					end
				end
			end
		)
    end
addEvent("LoginBank",true)
addEventHandler("LoginBank",getRootElement(), BLogin_Window)

 
	  



    function Register_Bank()
	
	Create_Bank = {
    button = {},
    window = {},
    label = {},
    edit = {}
}
	     local Kontonr= math.random(10000000, 99999999)
        Create_Bank.window[1] = guiCreateWindow(0.35, 0.25, 0.30, 0.38, "Bank LS", true)
        guiWindowSetSizable(Create_Bank.window[1], false)

        Create_Bank.button[1] = guiCreateButton(0.26, 0.79, 0.50, 0.18, "Konto Erstellen", true, Create_Bank.window[1])
        Create_Bank.edit[1] = guiCreateEdit(0.37, 0.21, 0.60, 0.11, "Konto", true, Create_Bank.window[1])
        Create_Bank.edit[2] = guiCreateEdit(0.37, 0.34, 0.60, 0.12, "Nur Zahlen!", true, Create_Bank.window[1])
        Create_Bank.edit[3] = guiCreateEdit(0.37, 0.49, 0.60, 0.12, "Wie war der name Ihrer Mutter", true, Create_Bank.window[1])
        Create_Bank.edit[4] = guiCreateEdit(0.38, 0.64, 0.60, 0.12, "", true, Create_Bank.window[1])
		guiEditSetReadOnly(Create_Bank.edit[3], true)
		guiEditSetReadOnly(Create_Bank.edit[1], true)
		
        Create_Bank.label[1] = guiCreateLabel(0.08, 0.24, 0.24, 0.05, "Kontonr", true, Create_Bank.window[1])
        Create_Bank.label[2] = guiCreateLabel(0.08, 0.37, 0.30, 0.04, "Kennwort(Nur Zahlen!)", true, Create_Bank.window[1])
        Create_Bank.label[3] = guiCreateLabel(0.08, 0.52, 0.30, 0.04, "Sicherheitsfrage", true, Create_Bank.window[1])
        Create_Bank.label[4] = guiCreateLabel(0.08, 0.66, 0.30, 0.04, "Antwort", true, Create_Bank.window[1])  
        guiSetText(Create_Bank.edit[1], Kontonr)	
       			
		
					addEventHandler ( "onClientGUIClick", Create_Bank.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Create_Bank.button[1]) then
					Konto = guiGetText((Create_Bank.edit[1]))	
					Kennwort = guiGetText((Create_Bank.edit[2]))
					Benutzer= getPlayerName(localPlayer)
					Frage= guiGetText(Create_Bank.edit[4])
					triggerServerEvent("Create_Bank",getLocalPlayer(),Konto, Kennwort, Benutzer, Frage )
					destroyElement(Create_Bank.window[1])
					guiSetVisible(Create_Bank.button[1], false)
					

					end
				end
			end
		)
		
    end
-----------------------Bank GUI Und System Sicherheits/Design Update 28.1.2017--------------------
----
----
----
----
---------------------------
--Script by Black (C)2017--
---------------------------


function GUI_One
end



	function Deko()
		dxDrawRectangle(0, dy-100, dx, breite, tocolor(0, 0, 0, DAlpha))
		dxDrawRectangle(dx-200, dy-60, 160, dxBreite, tocolor(0, 0, 0, DAlpha))
		dxDrawRectangle(35, dy-60, 160, dxBreite, tocolor(0, 0, 0, DAlpha))
		dxDrawText("Login", TLBreite, dyHalbe+400, -70, dyHalbe-400,   tocolor(255, 255, 255, DAlpha), 1.80, "default-bold", "left", "top", false, false, false, false, false)
		dxDrawText("Register", dx-TRBreite, dyHalbe+400, dx+165, dyHalbe-400,   tocolor(255, 255, 255, DAlpha), 1.80, "default-bold", "left", "top", false, false, false, false, false)
		dxDrawText("Ultra-Reallife "..Version.."", dxHalbe- TBreite, dy-THoehe, dxHalbe+147, dy+902,   tocolor(0, 0, 0, DAlpha3), 2.50, "default-bold", "left", "top", false, false, false, false, false)
		dxDrawText("Ultra-Reallife "..Version.."", dxHalbe- TBreite, dy-THoehe2, dxHalbe+145, dy+900,   tocolor(255, 255, 255, DAlpha3), 2.50, "default-bold", "left", "top", false, false, false, false, false)
	end
	