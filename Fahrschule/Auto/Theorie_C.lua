

Theorie = {
    button = {},
    window = {},
    label = {}
}

Frage_1 = {
   staticimage= {},
    button = {},
    window = {},
    label = {}
}
Frage_2 = {
   staticimage= {},
    button = {},
    window = {},
    label = {}
}
Frage_3 = {
   staticimage= {},
    button = {},
    window = {},
    label = {}
}

ZFrage_1 = {
    button = {},
    window = {},
    label = {}
}

    function Read_Th()
        Theorie.window[1] = guiCreateWindow(0.34, 0.33, 0.28, 0.34, "Theorie Prüfung", true)
        guiWindowSetSizable(Theorie.window[1], false)

        Theorie.label[1] = guiCreateLabel(0.02, 0.07, 0.96, 0.25, "Lesen!!!!!!!  Um auf alle Fragen eine richtige Antwort geben zu können, Lesen sie diesen Beitrag.   Es gilt grundsätzlich Rechts vor Links.  In Fußgänger zonen wird nicht Schneller als 10 KMH Gefahren!  STVO heißt Straßen Verkehrs Ordnung!  Bei Rot bleibst du Stehen bei grün Darfst du Gas geben!", true, Theorie.window[1])
        guiLabelSetHorizontalAlign(Theorie.label[1], "left", true)
        Theorie.button[1] = guiCreateButton(0.20, 0.74, 0.61, 0.17, "Ich habe alles gelesen und bin Bereit!", true, Theorie.window[1])    
   
			addEventHandler ( "onClientGUIClick", Theorie.button[1] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Theorie.button[1] ) then
                    
                    ZFrage1()
			 						
					end
				end
			end
		)
   end

addCommandHandler("ftest", Read_Th)



    function ZFrage1()
         destroyElement(Theorie.window[1])	
        ZFrage_1.window[1] = guiCreateWindow(0.35, 0.40, 0.28, 0.24, "Frage2", true)
        guiWindowSetSizable(ZFrage_1.window[1], false)

        ZFrage_1.label[1] = guiCreateLabel(0.19, 0.20, 0.89, 0.29, "Was machst du, wenn du ein unfall hast? ", true, ZFrage_1.window[1])
        guiLabelSetColor(ZFrage_1.label[1], 255, 0, 0)
        ZFrage_1.button[1] = guiCreateButton(0.05, 0.61, 0.33, 0.27, "Anhalten und die Polizeirufen ", true, ZFrage_1.window[1])
        ZFrage_1.button[2] = guiCreateButton(0.61, 0.61, 0.33, 0.27, "Anhalten und die Sach mit dem Teilnehmer klären ggf. Die polizei rufen", true, ZFrage_1.window[1])  
			
			addEventHandler ( "onClientGUIClick", ZFrage_1.button[2] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == ZFrage_1.button[2] ) then
                    triggerServerEvent("Set_FP",getLocalPlayer()) 
                    Frage1()
			 						
					end
				end
			end
		)

			addEventHandler ( "onClientGUIClick", ZFrage_1.button[2] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == ZFrage_1.button[2] ) then
                    Frage1()

			 						
					end
				end
			end
		)			
    end



    function Frage1()
        Frage_1.window[1] = guiCreateWindow(0.35, 0.33, 0.30, 0.42, "Frage 1", true)
        guiWindowSetSizable(Frage_1.window[1], false)
           destroyElement(ZFrage_1.window[1] )
        Frage_1.staticimage[1] = guiCreateStaticImage(0.02, 0.14, 0.96, 0.54, "images/Fahrschule/Situation1.png", true, Frage_1.window[1])
        Frage_1.label[1] = guiCreateLabel(0.26, 0.07, 0.61, 0.06, "Was machst du bei Dieser Situation?", true, Frage_1.window[1])
        guiSetFont(Frage_1.label[1], "default-bold-small")
        guiLabelSetColor(Frage_1.label[1], 255, 0, 0)
        Frage_1.button[1] = guiCreateButton(0.07, 0.74, 0.34, 0.09, "Anhalten und warten bis Grün ist", true, Frage_1.window[1])
        Frage_1.button[2] = guiCreateButton(0.07, 0.86, 0.34, 0.09, "Nicht auf die Ampel achten und Vollgas", true, Frage_1.window[1])
        Frage_1.button[3] = guiCreateButton(0.62, 0.71, 0.34, 0.12, "Es wird bald grün Trozdem warte ich bis der Man drüben ist", true, Frage_1.window[1])
        Frage_1.button[4] = guiCreateButton(0.62, 0.86, 0.34, 0.12, "Ich Hupe und gebe Vollgas im Leerlauf um den Mann abzuschrecken", true, Frage_1.window[1])    
    
	
				addEventHandler ( "onClientGUIClick", Frage_1.button[3] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_1.button[3] ) then
                    Frage2()
					triggerServerEvent("Set_FP",getLocalPlayer()) 
                     destroyElement(ZFrage_1.window[1] )
			 						
					end
				end
			end
		)
				addEventHandler ( "onClientGUIClick", Frage_1.button[1] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_1.button[1] ) then
                    Frage2()
                     
			 						
					end
				end
			end
		)
					addEventHandler ( "onClientGUIClick", Frage_1.button[2] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_1.button[2] ) then
                    
					Frage2()
                    
			 						
					end
				end
			end
		)
					addEventHandler ( "onClientGUIClick", Frage_1.button[4] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_1.button[4] ) then
                    Frage2()
                     
			 						
					end
				end
			end
		)
	
	end







    function Frage2()
        Frage_2.window[1] = guiCreateWindow(0.35, 0.33, 0.30, 0.42, "Frage 1", true)
        guiWindowSetSizable(Frage_2.window[1], false)
         destroyElement(Frage_1.window[1] )
        Frage_2.staticimage[1] = guiCreateStaticImage(0.02, 0.14, 0.96, 0.54, "images/Fahrschule/Situation3.png", true, Frage_2.window[1])
        Frage_2.label[1] = guiCreateLabel(0.26, 0.07, 0.61, 0.06, "Was machst du bei Dieser Situation?", true, Frage_2.window[1])
        guiSetFont(Frage_2.label[1], "default-bold-small")
        guiLabelSetColor(Frage_2.label[1], 255, 0, 0)
        Frage_2.button[1] = guiCreateButton(0.07, 0.74, 0.34, 0.09, "Anhalten und warten", true, Frage_2.window[1])
        Frage_2.button[2] = guiCreateButton(0.07, 0.86, 0.34, 0.09, "Vollgas geben, und  um den Man herum", true, Frage_2.window[1])
        Frage_2.button[3] = guiCreateButton(0.62, 0.71, 0.34, 0.12, "Ich halte an und Lasse den Pasanten durch", true, Frage_2.window[1])
        Frage_2.button[4] = guiCreateButton(0.62, 0.86, 0.34, 0.12, "Ich überfahre den man und lach kramfhaft", true, Frage_2.window[1])

					addEventHandler ( "onClientGUIClick", Frage_2.button[3] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_2.button[3] ) then
                    triggerServerEvent("Set_FP",getLocalPlayer()) 
					Frage3()
                     
			 						
					end
				end
			end
		)

					addEventHandler ( "onClientGUIClick", Frage_2.button[2] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_2.button[2] ) then
                    Frage3()
                   
			 						
					end
				end
			end
		)

					addEventHandler ( "onClientGUIClick", Frage_2.button[1] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_2.button[1] ) then
                    Frage3()
                   
			 						
					end
				end
			end
		)

					addEventHandler ( "onClientGUIClick", Frage2.button[4] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_2.button[4] ) then
                    Frage3()
                   
			 						
					end
				end
			end
		)		
    end







    function Frage3()
        Frage_3.window[1] = guiCreateWindow(0.35, 0.33, 0.30, 0.42, "Frage 1", true)
        guiWindowSetSizable(Frage_3.window[1], false)
         destroyElement(Frage_2.window[1] )
        Frage_3.staticimage[1] = guiCreateStaticImage(0.02, 0.14, 0.96, 0.54, "images/Fahrschule/Situation2.png", true, Frage_3.window[1])
        Frage_3.label[1] = guiCreateLabel(0.26, 0.07, 0.61, 0.06, "Was machst du bei Dieser Situation?", true, Frage_3.window[1])
        guiSetFont(Frage_3.label[1], "default-bold-small")
        guiLabelSetColor(Frage_3.label[1], 255, 0, 0)
        Frage_3.button[1] = guiCreateButton(0.07, 0.74, 0.34, 0.09, "Ich Fahre einfach los", true, Frage_3.window[1])
        Frage_3.button[2] = guiCreateButton(0.07, 0.86, 0.34, 0.09, "Nichts Besonderes", true, Frage_3.window[1])
        Frage_3.button[3] = guiCreateButton(0.62, 0.71, 0.34, 0.12, "Wir spielen Roulett wer als erstes durch ist Gewinnt", true, Frage_3.window[1])
        Frage_3.button[4] = guiCreateButton(0.62, 0.86, 0.34, 0.12, "Ich warte bis das Blaue auto durchgefahren ist(Rechts vor Links) ", true, Frage_3.window[1])    

					addEventHandler ( "onClientGUIClick", Frage_3.button[4] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_3.button[4] ) then
					triggerServerEvent("Set_FP",getLocalPlayer()) 
                    destroyElement(Frage_3.window[1] )
					triggerServerEvent("Check_Fahr_Points",getLocalPlayer())
			 						
					end
				end
			end
		)

					addEventHandler ( "onClientGUIClick", Frage3.button[4] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_3.button[4] ) then
                    triggerServerEvent("Check_Fahr_Points",getLocalPlayer())

			 						
					end
				end
			end
		)

					addEventHandler ( "onClientGUIClick", Frage_2.button[4] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_3.button[4] ) then
                    triggerServerEvent("Check_Fahr_Points",getLocalPlayer())

			 						
					end
				end
			end
		)

					addEventHandler ( "onClientGUIClick", Frage_2.button[4] ,
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Frage_3.button[4] ) then
                    triggerServerEvent("Check_Fahr_Points",getLocalPlayer())

			 						
					end
				end
			end
		)		

   end

