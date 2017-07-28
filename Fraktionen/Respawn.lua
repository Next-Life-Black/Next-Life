function Fraki_Respawn(player)
    if getElementData(player, "Fraktion")== 1 then
       PD_Respawn()
	   outputChatBox("PD Autos wurden Respawnt!", player, 0, 255, 0)
    elseif getElementData(player, "Fraktion")== 2 then  
	elseif getElementData(player, "Fraktion")== 3 then
	elseif getElementData(player, "Fraktion")== 4 then
	elseif getElementData(player, "Fraktion")== 5 then
	elseif getElementData(player, "Fraktion")== 6 then
	elseif getElementData(player, "Fraktion")== 7 then
	elseif getElementData(player, "Fraktion")== 8 then
	elseif getElementData(player, "Fraktion")== 9 then
    end	
end
addCommandHandler("frespawn", Fraki_Respawn)	
	
