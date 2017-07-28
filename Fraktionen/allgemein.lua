function Fraktionen ()

 if  getElementData(player, "Fraktion") == 0 then
    Fraktion= "Zivilist"
 elseif  getElementData(player, "Fraktion") == 1 then	
    Fraktion= "LVPD"
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
   Fraktion= "Surenos" 
   r, g, b = 255, 48, 48 
 elseif  getElementData(player, "Fraktion") == 8 then 
   Fraktion= "Mechanicker" 
   r, g, b = 238, 238, 0
 elseif  getElementData(player, "Fraktion") == 9 then 
   Fraktion= "Yakuza" 
   r, g, b = 69, 139, 116 
   end
end   

function sagFraki (player)
	if getElementData(player, "Fraktion") == 0 then
	  outputChatBox("Du bist in keiner Fraktion!", source)
	elseif 	getElementData(player, "Fraktion") == 1 then
	  outputChatBox("Du bist im LVPD!", source)
	elseif 	getElementData(player, "Fraktion") == 2 then
	  outputChatBox("Du bist im FBI!", source)
	elseif 	getElementData(player, "Fraktion") == 3 then
	  outputChatBox("Du bist in der Army", source)
	elseif 	getElementData(player, "Fraktion") == 4 then
	  outputChatBox("Du bist Terrorist", source)
	elseif 	getElementData(player, "Fraktion") == 5 then
	  outputChatBox("Du bist in der Mafia", source)
	elseif 	getElementData(player, "Fraktion") == 6 then
	  outputChatBox("Du bist in der Medic Fraktion", source)
	elseif 	getElementData(player, "Fraktion") == 7 then
	  outputChatBox("Du bist in der Surenos Fraktion", source)
	elseif 	getElementData(player, "Fraktion") == 8 then
	  outputChatBox("Du bist bei den Mechanikern", source)
	elseif 	getElementData(player, "Fraktion") == 9 then
	  outputChatBox("Du bist bei der Yakuza", source)
	end
end
addCommandHandler("fraki", sagFraki)

PDICON = createPickup ( 1544.973, -1681.600, 13.5, 3, 1239, 50, 0 )

function PDINFO ( player )
outputChatBox("================================", player, 20, 225, 20)
outputChatBox("==Ultra Reallife Police Department==", player, 20, 225, 20)
outputChatBox("================================", player, 20, 225, 20)
outputChatBox("Willst du eine Karriere starten?", player, 20, 225, 20)
outputChatBox("Dann Bewirb dich auf Ultra-Reallife", player, 20, 255, 20)
end
addEventHandler ( "onPickupHit", PDICON, PDINFO )

