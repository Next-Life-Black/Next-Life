function Player_Ban (user, Grund, admin)
if getPlayerFromName(user) then 
 local Spieler= getPlayerFromName(user)
 local AdminS= getPlayerFromName(admin)
 SPlayer= getPlayerSerial(Spieler)
 GrundZS= "Gebannt Grund:"..Grund..""
 outputChatBox("Der Spieler " ..user.. "Wurde wegen " ..Grund.. " vom Admin, " ..admin.. "Gebannt!",Server, 255, 0, 0 )
 Grund= Grund
 setElementData(Spieler, "Gebannt", 1)
 kickPlayer ( Spieler, AdminS, GrundZS )
 
else
 outputChatBox("Der User ist nicht Online", player, 255, 0, 0   )
end 
end
addEvent("Bann",true)
addEventHandler("Bann",getRootElement(), Player_Ban)
