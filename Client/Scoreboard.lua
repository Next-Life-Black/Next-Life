-------- Dave S -------
------Next-Life/Lite---
--------(C) 2017-------

local sx, sy = guiGetScreenSize()

local width = 900
local screenW, screenH = guiGetScreenSize()
SAA= 0
SAM= 0
local starttick = 0
local mstoplopout = 1500 
function drawScoreboard()
	local x = sx/2-width/2
	local y = 150
	dxDrawRectangle(x, y, width, 20, tocolor(0, 205, 0, SAA))
	dxDrawRectangle(x, y+20, width, 20, tocolor(0, 0, 0,SAM))
	
	




       


	
	dxDrawText("German Next Life 0.1 Pre Alpha", x, y, x+width, y+20, tocolor(0, 0, 0, SAA), 1, "default-bold", "center", "center")	
	




	
	local namex = x+5
	local fraktionx = x+300
	local moneyx = x+600
	local pingx = x+width-100
	

	
	dxDrawText("Name", namex, y+20, namex, y+20, tocolor(255, 255, 255, SAA), 1, "default-bold")
	dxDrawText("Fraktion", fraktionx, y+20, fraktionx, y+20, tocolor(255, 255, 255, SAA), 1, "default-bold")
	dxDrawText("Status", moneyx, y+20, moneyx, y+20, tocolor(255, 255, 255, SAA), 1, "default-bold")
	dxDrawText("Spielzeit", pingx, y+20, pingx, y+20, tocolor(255, 255, 255, SAA), 1, "default-bold")
	
	

	for i, player in ipairs(getElementsByType("player")) do		
		i = i+1
    if getElementData(player, "drin") then 

   

 if  getElementData(player, "Fraktion") == 0 then
    Fraktion= "Zivilist"
 elseif  getElementData(player, "Fraktion") == 1 then	
    Fraktion= "LSPD"
	r, g, b = 0, 0, 255 
 elseif  getElementData(player, "Fraktion") == 2 then
    Fraktion= "FBI" 
	r, g, b = 0, 0, 0 
 elseif  getElementData(player, "Fraktion") == 3 then 
   Fraktion= "Army" 
   r, g, b = 0, 100, 0 
 elseif  getElementData(player, "Fraktion") == 4 then 
   Fraktion= "Terrorist" 
   r, g, b = 255, 0, 0 
 elseif  getElementData(player, "Fraktion") == 5 then 
   Fraktion= "Mafia" 
   r, g, b = 89, 89, 89 
 elseif  getElementData(player, "Fraktion") == 6 then 
   Fraktion= "Medic" 
   r, g, b = 124, 252, 0
 elseif  getElementData(player, "Fraktion") == 7 then 
   Fraktion= "Surrenos" 
   r, g, b = 255, 48, 48 
 elseif  getElementData(player, "Fraktion") == 8 then 
   Fraktion= "Mechaniker" 
   r, g, b = 238, 238, 0
 elseif  getElementData(player, "Fraktion") == 9 then 
   Fraktion= "Yakuza" 
   r, g, b = 69, 139, 116 
   end
   


		dxDrawRectangle(x, y+i*20, width, 20, tocolor(0, 0, 0, SAM))
		dxDrawText(getPlayerName(player), namex, y+i*20, namex, y+i*20, tocolor(255, 255, 255, SAM), 1, "default-bold")
		dxDrawText(Fraktion, fraktionx, y+i*20, fraktionx, y+i*20, tocolor(r, g, b, SAM), 1, "default-bold")
		dxDrawText(getElementData(player,"PStatus"), moneyx, y+i*20, moneyx, y+i*20, tocolor(255, 255, 255, SAM), 1, "default-bold")
		dxDrawText(tostring(getElementData(player, "Playtime")) , pingx, y+i*20, pingx, y+i*20, tocolor(255, 255, 255, SAM), 1, "default-bold")
	elseif getElementData(player, "Tutotial") == 1 then 	
	
		dxDrawRectangle(x, y+i*20, width, 20, tocolor(0, 0, 0, SAM))
		dxDrawText(getPlayerName(player), namex, y+i*20, namex, y+i*20,  tocolor(0, 255, 0, SAA), 1, "default-bold")
		dxDrawText("Im Tutorial...", fraktionx, y+i*20, tocolor(r, g, b), 1, "default-bold")
		dxDrawText("Nicht Zugewiesen!", fraktionx, y+i*20, fraktionx, y+i*20, tocolor(0, 255, 0, SAM), 1, "default-bold")
		dxDrawText("Im Tutorial...", moneyx, y+i*20, moneyx, y+i*20,  tocolor(0, 255, 0, SAA), 1, "default-bold")
		dxDrawText("Im Tutorial..." , pingx, y+i*20, pingx, y+i*20, tocolor(255, 255, 0, SAA), 1, "default-bold" )
	else
		dxDrawRectangle(x, y+i*20, width, 20, tocolor(0, 0, 0, SAM))
		dxDrawText(getPlayerName(player), namex, y+i*20, namex, y+i*20,  tocolor(255, 0, 0, SAA), 1, "default-bold")
		dxDrawText("Verbindet...", fraktionx, y+i*20, tocolor(r, g, b), 1, "default-bold")
		dxDrawText("Nicht Zugewiesen!", fraktionx, y+i*20, fraktionx, y+i*20, tocolor(255, 0, 0, SAM), 1, "default-bold")
		dxDrawText("Verbindet...", moneyx, y+i*20, moneyx, y+i*20,  tocolor(255, 0, 0, SAA), 1, "default-bold")
		dxDrawText("Verbindet..." , pingx, y+i*20, pingx, y+i*20, tocolor(255, 0, 0, SAA), 1, "default-bold" )
		
		
	end	
  end
end

function Sout()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
    SAA= 255  - ( 255 * progress )
    SAM= 183  - ( 183 * progress )
end

function Sin()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
    SAA= 0	+ ( 255 * progress )
    SAM= 0  + ( 183 * progress )

end

			starttick = getTickCount()
			addEventHandler ( "onClientRender", root, Registerout )

bindKey("tab", "both", function(key, state)
	if state == "down" then
		starttick = getTickCount()
		removeEventHandler ( "onClientRender", root, Sout )
		addEventHandler ( "onClientRender", root, Sin )
		addEventHandler("onClientRender", getRootElement(), drawScoreboard)
	elseif state == "up" then
	    starttick = getTickCount()
		removeEventHandler ( "onClientRender", root, Sin ) 
		addEventHandler ( "onClientRender", root, Sout )
		

	end
end)


