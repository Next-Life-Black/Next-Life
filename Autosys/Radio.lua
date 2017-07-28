--Script by Black-
setElementData(localPlayer, "SRadio", tostring("Ausgeschaltet"))
Radio = {
    button = {}
}
local screenW, screenH = guiGetScreenSize()
setElementData(localPlayer, "Volume", 100)


    function Radio_Designe()
        dxDrawLine((screenW * 0.2792) - 1, (screenH * 0.3489) - 1, (screenW * 0.2792) - 1, screenH * 0.5167, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.7160, (screenH * 0.3489) - 1, (screenW * 0.2792) - 1, (screenH * 0.3489) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.2792) - 1, screenH * 0.5167, screenW * 0.7160, screenH * 0.5167, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.7160, screenH * 0.5167, screenW * 0.7160, (screenH * 0.3489) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.2792, screenH * 0.3489, screenW * 0.4368, screenH * 0.1678, tocolor(31, 31, 31, 255), false)
        dxDrawLine((screenW * 0.3833) - 1, (screenH * 0.3911) - 1, (screenW * 0.3833) - 1, screenH * 0.4300, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6062, (screenH * 0.3911) - 1, (screenW * 0.3833) - 1, (screenH * 0.3911) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.3833) - 1, screenH * 0.4300, screenW * 0.6062, screenH * 0.4300, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6062, screenH * 0.4300, screenW * 0.6062, (screenH * 0.3911) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.3833, screenH * 0.3911, screenW * 0.2229, screenH * 0.0389, tocolor(179, 89, 2, 255), false)
        dxDrawText("Sie hoeren Grade: "..getElementData(localPlayer, "SRadio").."", (screenW * 0.4396) - 1, (screenH * 0.4022) - 1, (screenW * 0.6507) - 1, (screenH * 0.4378) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Sie hoeren Grade: "..getElementData(localPlayer, "SRadio").."", (screenW * 0.4396) + 1, (screenH * 0.4022) - 1, (screenW * 0.6507) + 1, (screenH * 0.4378) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Sie hoeren Grade: "..getElementData(localPlayer, "SRadio").."", (screenW * 0.4396) - 1, (screenH * 0.4022) + 1, (screenW * 0.6507) - 1, (screenH * 0.4378) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Sie hoeren Grade: "..getElementData(localPlayer, "SRadio").."", (screenW * 0.4396) + 1, (screenH * 0.4022) + 1, (screenW * 0.6507) + 1, (screenH * 0.4378) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Sie hoeren Grade: "..getElementData(localPlayer, "SRadio").."", screenW * 0.4396, screenH * 0.4022, screenW * 0.6507, screenH * 0.4378, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawLine((screenW * 0.5972) - 1, (screenH * 0.4767) - 1, (screenW * 0.5972) - 1, screenH * 0.5100, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6736, (screenH * 0.4767) - 1, (screenW * 0.5972) - 1, (screenH * 0.4767) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.5972) - 1, screenH * 0.5100, screenW * 0.6736, screenH * 0.5100, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.6736, screenH * 0.5100, screenW * 0.6736, (screenH * 0.4767) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.5972, screenH * 0.4767, screenW * 0.0764, screenH * 0.0333, tocolor(0, 0, 0, 255), false)
        dxDrawLine((screenW * 0.4556) - 1, (screenH * 0.4767) - 1, (screenW * 0.4556) - 1, screenH * 0.5100, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.5319, (screenH * 0.4767) - 1, (screenW * 0.4556) - 1, (screenH * 0.4767) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.4556) - 1, screenH * 0.5100, screenW * 0.5319, screenH * 0.5100, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.5319, screenH * 0.5100, screenW * 0.5319, (screenH * 0.4767) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.4556, screenH * 0.4767, screenW * 0.0764, screenH * 0.0333, tocolor(0, 0, 0, 255), false)
        dxDrawLine((screenW * 0.3285) - 1, (screenH * 0.4767) - 1, (screenW * 0.3285) - 1, screenH * 0.5100, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.4049, (screenH * 0.4767) - 1, (screenW * 0.3285) - 1, (screenH * 0.4767) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine((screenW * 0.3285) - 1, screenH * 0.5100, screenW * 0.4049, screenH * 0.5100, tocolor(0, 0, 0, 255), 1, false)
        dxDrawLine(screenW * 0.4049, screenH * 0.5100, screenW * 0.4049, (screenH * 0.4767) - 1, tocolor(0, 0, 0, 255), 1, false)
        dxDrawRectangle(screenW * 0.3285, screenH * 0.4767, screenW * 0.0764, screenH * 0.0333, tocolor(0, 0, 0, 255), false)
        dxDrawText("Lauter +", (screenW * 0.3479) - 1, (screenH * 0.4822) - 1, (screenW * 0.4188) - 1, (screenH * 0.5100) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Lauter +", (screenW * 0.3479) + 1, (screenH * 0.4822) - 1, (screenW * 0.4188) + 1, (screenH * 0.5100) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Lauter +", (screenW * 0.3479) - 1, (screenH * 0.4822) + 1, (screenW * 0.4188) - 1, (screenH * 0.5100) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Lauter +", (screenW * 0.3479) + 1, (screenH * 0.4822) + 1, (screenW * 0.4188) + 1, (screenH * 0.5100) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Lauter +", screenW * 0.3479, screenH * 0.4822, screenW * 0.4188, screenH * 0.5100, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Abschalten", screenW * 0.4681, screenH * 0.4822, screenW * 0.5389, screenH * 0.5100, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Leiser -", screenW * 0.6097, screenH * 0.4822, screenW * 0.6806, screenH * 0.5100, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
		setElementData(localPlayer, "rradio", 1)
    end
function ON_OFF()
 if getPedOccupiedVehicle(localPlayer) then
   if guiGetVisible(Radio.button[1])== true  then
    destroyElement(Radio.button[1])
    destroyElement(Radio.button[2])
    destroyElement(Radio.button[3])
    removeEventHandler("onClientRender",root, Radio_Designe)
	showCursor(false)
	setElementData(localPlayer, "rradio", 1)
   else
	SButtons()
	addEventHandler("onClientRender",root, Radio_Designe)
	showCursor(true)
	end	
  end
end  
bindKey("r", "down", ON_OFF)
    function SButtons()
        Radio.button[1] = guiCreateButton(0.32, 0.47, 0.08, 0.04, "lauter", true)
        guiSetAlpha(Radio.button[1], 0.00)


        Radio.button[2] = guiCreateButton(0.45, 0.47, 0.08, 0.04, "off", true)
        guiSetAlpha(Radio.button[2], 0.00)


        Radio.button[3] = guiCreateButton(0.60, 0.48, 0.08, 0.04, "Leiser", true)
        guiSetAlpha(Radio.button[3], 0.00)


        Radio.button[4] = guiCreateButton(0.38, 0.39, 0.24, 0.05, "Radiosender wechseln", true)
        guiSetAlpha(Radio.button[4], 0.00)    
		
		
addEventHandler ( "onClientGUIClick", Radio.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Radio.button[1]) then	
                     if getElementData(localPlayer, "Volume")== 100 then 
					  
					 else
					    Anzal= "+5"
					    setElementData(localPlayer, "Volume", Anzahl)
						setSoundVolume(Radio2, getElementData(localPlayer, "Volume"))
						RVolume= getElementData(localPlayer, "Volume")
						lauter()
					 end	
					end
				end
			end
			
		

)

addEventHandler ( "onClientGUIClick", Radio.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Radio.button[2]) then	
                    destroyElement(Radio2)
					three()
					end
				end
			end
			
		

)

addEventHandler ( "onClientGUIClick", Radio.button[3],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Radio.button[3]) then	
                      if getElementData(localPlayer, "Volume")== 0 then 
					  
					  else
					    Anzal= "-5"
					    setElementData(localPlayer, "Volume", Anzahl)
						setSoundVolume(Radio2, getElementData(localPlayer, "Volume"))
						RVolume= getElementData(localPlayer, "Volume")
						leiser()
					  end
					end
				end
			end
			
		

)

addEventHandler ( "onClientGUIClick", Radio.button[4],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Radio.button[4]) then	
                    Start_Stream()
					end
				end
			end
			
		

)
    end
	function leiser2()
	 if getElementData(localPlayer, "Volume")== 100 then
	   setElementData(localPlayer, "Volume", 90)
       RVolume= getElementData(localPlayer, "Volume")
       setSoundVolume(Radio2, 90)	   
     elseif getElementData(localPlayer, "Volume")== 90 then 	  
       setElementData(localPlayer, "Volume", 80) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 80)
     elseif getElementData(localPlayer, "Volume")== 80 then 
       setElementData(localPlayer, "Volume", 70) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 70)
     elseif getElementData(localPlayer, "Volume")== 70 then 
       setElementData(localPlayer, "Volume", 60) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 60)
     elseif getElementData(localPlayer, "Volume")== 60 then 
       setElementData(localPlayer, "Volume", 50) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 50)
     elseif getElementData(localPlayer, "Volume")== 50 then 
       setElementData(localPlayer, "Volume", 40)
       RVolume= getElementData(localPlayer, "Volume")
       setSoundVolume(Radio2, 40)	   
	 elseif getElementData(localPlayer, "Volume")== 40 then 	  
       setElementData(localPlayer, "Volume", 30) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 30)
     elseif getElementData(localPlayer, "Volume")== 30 then 
       setElementData(localPlayer, "Volume", 20) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 20)
     elseif getElementData(localPlayer, "Volume")== 20 then 
       setElementData(localPlayer, "Volume", 10) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 10)
     elseif getElementData(localPlayer, "Volume")== 10 then 
       setElementData(localPlayer, "Volume", 0) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 0)
     elseif getElementData(localPlayer, "Volume")== 0 then 	
     end
end	 
 	 
	function lauter2 ()
	 if getElementData(localPlayer, "Volume")== 0 then
	   setElementData(localPlayer, "Volume", 10)
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 20)	   
     elseif getElementData(localPlayer, "Volume")== 10 then 	  
       setElementData(localPlayer, "Volume", 20) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 30)
     elseif getElementData(localPlayer, "Volume")== 20 then 
       setElementData(localPlayer, "Volume", 30) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 40)
     elseif getElementData(localPlayer, "Volume")== 30 then 
       setElementData(localPlayer, "Volume", 40) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 50)
     elseif getElementData(localPlayer, "Volume")== 40 then 
       setElementData(localPlayer, "Volume", 50)
       RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 60)	   
     elseif getElementData(localPlayer, "Volume")== 50 then 
         setElementData(localPlayer, "Volume", 60)
	    RVolume= getElementData(localPlayer, "Volume")
	    setSoundVolume(Radio2, 70)		 
	 elseif getElementData(localPlayer, "Volume")== 60 then 	  
       setElementData(localPlayer, "Volume", 70)
       RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 80)	   
     elseif getElementData(localPlayer, "Volume")== 70 then 
       setElementData(localPlayer, "Volume", 80) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 90)
     elseif getElementData(localPlayer, "Volume")== 80 then 
       setElementData(localPlayer, "Volume", 90) 
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, 100)
     elseif getElementData(localPlayer, "Volume")== 90 then 
       setElementData(localPlayer, "Volume", 100)
	   RVolume= getElementData(localPlayer, "Volume")
	   setSoundVolume(Radio2, RVolume)	   
     elseif getElementData(localPlayer, "Volume")== 100 then 	 
     end
end	 
function Start_Stream()
local Randomnummer = math.random ( 1, 4)
	if Randomnummer == 1 then
	    one()
		destroyElement(Radio2)
	    Radio2= playSound("http://streams.ffh.de/radioffh/mp3/hqlivestream.m3u", true)
        SRadio= tostring("Hitradio FFH")
	    setElementData(localPlayer, "SRadio", SRadio )
		
	elseif Randomnummer == 2 then
	    two()
		destroyElement(Radio2)
	    Radio2= playSound("http://217.151.152.245/bigfm-mp3-96", true)
		SRadio= tostring("BIG FM")
	    setElementData(localPlayer, "SRadio", SRadio )
		
	elseif Randomnummer == 3 then
	    four()
		destroyElement(Radio2)
	    Radio2= playSound("http://listen.technobase.fm/dsl.asx", true)
		SRadio= tostring("Techno Base")
	    setElementData(localPlayer, "SRadio", SRadio )
		
	elseif Randomnummer == 4 then
	    five()
		destroyElement(Radio2)
	    Radio2= playSound("http://metafiles.gl-systemhaus.de/hr/youfm_2.m3u", true)
		SRadio= tostring("Your FM")
	    setElementData(localPlayer, "SRadio", SRadio )
	
	end	

end

function LeavCar_StopRadio()
if getElementData(localPlayer, "SRadio")== tostring("Abgeschaltet") then
else
destroyElement(Radio2)
three()
setElementData(localPlayer, "SRadio", tostring("Abgeschaltet"))
end
end
addEvent("StopRadio",true)
addEventHandler("StopRadio",getRootElement(), LeavCar_StopRadio)