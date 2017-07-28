---------------------
---Script by Black---
---------------------

----Variablen----
Drive = {
    button = {},
    window = {},
    label = {}
}
local screenW, screenH = guiGetScreenSize()
  ---Sichtbare Marker---





  ---Unsichtbare Marker---
  
  -- UFMarker1= createMarker ( x + 2, y + 2, z, "cylinder", 1.5, 255, 255, 0, 170 )
  -- UFMarker2= createMarker ( x + 2, y + 2, z, "cylinder", 1.5, 255, 255, 0, 170 )
  -- UFMarker3= createMarker ( x + 2, y + 2, z, "cylinder", 1.5, 255, 255, 0, 170 )
  
---Functionen---
    function GUI()
        Drive.window[1] = guiCreateWindow(0.36, 0.36, 0.30, 0.35, "Fahrschul Informationen!", true)
        guiWindowSetSizable(Drive.window[1], false)

        Drive.label[1] = guiCreateLabel(0.02, 0.09, 0.96, 0.86, "Willkommen in der Praxis Prüfug!  Hier musst du zeigen ob du Fahren kannst!                                                                                                                                                                           Regeln: Du darfst nicht Über 80 KMH Fahren!  Wird das auto Beschädigt, ist die Prfung Gelaufen!!  Folge den Roten Markern, bis zum Ziel!  Versuche es ohne zu Lange zu Zögern, achte auf Ampeln und auf Fußgänger! Benutze /motor um den Motor zu Starten!", true, Drive.window[1])
        guiLabelSetHorizontalAlign(Drive.label[1], "left", true)

        Drive.button[1] = guiCreateButton(0.14, 0.63, 0.71, 0.27, "Ich bin bereit um möchte los fahren.", true, Drive.label[1])    
    end

	
	
	


    function DX_Rechts()
        dxDrawImage(screenW * 0.4521, screenH * 0.0156, screenW * 0.0917, screenH * 0.0789, ":Ultra-Reallife/images/Fahrschule/Arrow.png", 360, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("[Fahrlehrer]: Bitte bieg echts ein.", (screenW * 0.2875) - 1, (screenH * 0.0944) - 1, (screenW * 0.6604) - 1, (screenH * 0.1544) - 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Bitte bieg echts ein.", (screenW * 0.2875) + 1, (screenH * 0.0944) - 1, (screenW * 0.6604) + 1, (screenH * 0.1544) - 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Bitte bieg echts ein.", (screenW * 0.2875) - 1, (screenH * 0.0944) + 1, (screenW * 0.6604) - 1, (screenH * 0.1544) + 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Bitte bieg echts ein.", (screenW * 0.2875) + 1, (screenH * 0.0944) + 1, (screenW * 0.6604) + 1, (screenH * 0.1544) + 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Bitte bieg echts ein.", screenW * 0.2875, screenH * 0.0944, screenW * 0.6604, screenH * 0.1544, tocolor(255, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
    end


	
	


    function DX_nil()
        dxDrawImage(screenW * 0.4556, screenH * 0.0367, screenW * 0.0917, screenH * 0.0789, ":Ultra-Reallife/images/Fahrschule/Arrow.png", 270, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("[Fahrlehrer]: Fahre weiter gradeaus", (screenW * 0.2993) - 1, (screenH * 0.1489) - 1, (screenW * 0.6722) - 1, (screenH * 0.2089) - 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Fahre weiter gradeaus", (screenW * 0.2993) + 1, (screenH * 0.1489) - 1, (screenW * 0.6722) + 1, (screenH * 0.2089) - 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Fahre weiter gradeaus", (screenW * 0.2993) - 1, (screenH * 0.1489) + 1, (screenW * 0.6722) - 1, (screenH * 0.2089) + 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Fahre weiter gradeaus", (screenW * 0.2993) + 1, (screenH * 0.1489) + 1, (screenW * 0.6722) + 1, (screenH * 0.2089) + 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Fahre weiter gradeaus", screenW * 0.2993, screenH * 0.1489, screenW * 0.6722, screenH * 0.2089, tocolor(255, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
    end

	
	function Ampel_Rot()
    setTrafficLightState(2)
   
end
function Ampel_Gruen()

    setTrafficLightState(5)
   
end


    function DX_Links()
        dxDrawImage(screenW * 0.4556, screenH * 0.0367, screenW * 0.0917, screenH * 0.0789, ":Ultra-Reallife/images/Fahrschule/Arrow.png", 180, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("[Fahrlehrer]: Biege nun links ein achte auf den Blinker!", (screenW * 0.2813) - 1, (screenH * 0.1156) - 1, (screenW * 0.6542) - 1, (screenH * 0.1756) - 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Biege nun links ein achte auf den Blinker!", (screenW * 0.2813) + 1, (screenH * 0.1156) - 1, (screenW * 0.6542) + 1, (screenH * 0.1756) - 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Biege nun links ein achte auf den Blinker!", (screenW * 0.2813) - 1, (screenH * 0.1156) + 1, (screenW * 0.6542) - 1, (screenH * 0.1756) + 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Biege nun links ein achte auf den Blinker!", (screenW * 0.2813) + 1, (screenH * 0.1156) + 1, (screenW * 0.6542) + 1, (screenH * 0.1756) + 1, tocolor(0, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("[Fahrlehrer]: Biege nun links ein achte auf den Blinker!", screenW * 0.2813, screenH * 0.1156, screenW * 0.6542, screenH * 0.1756, tocolor(255, 0, 0, 255), 2.00, "default-bold", "left", "top", false, false, false, false, false)
    end

function Start_School()
Fahrlehrer= createPed(71, 1477.9000244141, -1739, 13.5)
Fahrschul_Auto= createVehicle (427, 1474.5999755859, 1735.4000244141, 13.300000190735, 0, 0, 268.40521240234)
setElementDimension(localPlayer, 1)
setElementDimension(Fahrlehrer, 1)
setElementDimension(Fahrschul_Auto, 1)
warpPedIntoVehicle(Fahrlehrer, Fahrschul_Auto)
Position_01()
end	
addEvent ("Start_Praxis", true)
addEventHandler ("Start_Praxis", getRootElement(), Start_School)
function Position_01()
FMarker1= createMarker ( 1494, -1734.4000244141, 12.39999961853, "cylinder", 3.5, 0, 0, 255, 170 )
addEventHandler( "onMarkerHit", FMarker1, Position_02 )
setElementDimension(FMarker1, 1)
end

function Position_02()
destroyElement(FMarker1)
FMarker2= createMarker ( 1531.6999511719, -1717.1999511719, 12.39999961853, "cylinder", 3.5, 0, 0, 255, 170 )
addEventHandler( "onMarkerHit", FMarker2, Position_03 )
setElementDimension(FMarker2, 1)
end

function Position_03()
destroyElement(FMarker2)
FMarker3= createMarker ( 1557.5, -1594.6999511719, 12.39999961853, "cylinder", 3.5, 0, 0, 255, 170  )
addEventHandler( "onMarkerHit", FMarker3, Position_04 )
setElementDimension(FMarker3, 1)
end

function Position_04()
destroyElement(FMarker3)
FMarker4= createMarker ( 1660.3000488281, -1509.5999755859, 12.39999961853, "cylinder", 3.5, 0, 0, 255, 170  )
addEventHandler( "onMarkerHit", FMarker4, Position_05 )
setElementDimension(FMarker4, 1)
end

function Position_05()
destroyElement(FMarker4)
FMarker5= createMarker ( 1691.9000244141, -1482.4000244141, 12.39999961853, "cylinder", 3.5, 0, 0, 255, 170  )
addEventHandler( "onMarkerHit", FMarker5, Position_06 )
setElementDimension(FMarker5, 1)
end

function Position_06()
destroyElement(FMarker5)
FMarker6= createMarker ( 1686, -1545.5, 12.39999961853, "cylinder", 3.5, 0, 0, 255, 170  )
addEventHandler( "onMarkerHit", FMarker6, End_of_School )
setElementDimension(FMarker6, 1)
end

function End_of_School()
destroyElement(FMarker6)
end