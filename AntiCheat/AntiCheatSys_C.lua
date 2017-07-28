local screenW, screenH = guiGetScreenSize()


    function Infotext()
        dxDrawText("Script ist Nicht Funktionsfähig: Fehler bei der Anticheat Verbindung Warten auf Reaktion des Inhabers...  Dies kann eine weile Dauern das UR System.", (screenW * 0.0250) + 1, (screenH * 0.3833) + 1, (screenW * 1.0222) + 1, (screenH * 0.5478) + 1, tocolor(121, 0, 0, 255), 2.80, "default-bold", "left", "top", false, true, false, false, false)
        dxDrawText("Script ist Nicht Funktionsfähig: Fehler bei der Anticheat Verbindung Warten auf Reaktion des Inhabers...  Dies kann eine weile Dauern das UR System.", screenW * 0.0250, screenH * 0.3833, screenW * 1.0222, screenH * 0.5478, tocolor(215, 0, 0, 255), 2.80, "default-bold", "left", "top", false, true, false, false, false)
    end

function Falue_F()
addEventHandler("onClientRender", root, Infotext)
end
addEvent("Falue",true)
addEventHandler("Falue",getRootElement(), Falue_F)