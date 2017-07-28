--------------------------------
---------Script by Black--------
--------------------------------

function setFraktion(player)
   if getElementData(player, "Adminrank") == 1 then
       triggerClientEvent (player, "AdminFraktionsGui", player)

   elseif getElementData(player, "Adminrank") == 0 then
      
	   outputChatBox("Du bengel bist kein Admin! :D ", player)
	end
end
addCommandHandler("fraktion", setFraktion)

function inFraktion(Spieler, IFraktion)
local user= getPlayerFromName(Spieler)
    dbExec(handler, "UPDATE user_data SET Fraktion=? WHERE Username =?;", IFraktion, Spieler)
	outputChatBox("Du wurdest soeben in der Fraktion"..IFraktion.." Aufgenommen! Bitte Reconnecte damit alles Übernommen wird!", user)
	setElementData(user, "Fraktion", IFraktion)
end
addEvent("inFraktion2",true)
addEventHandler("inFraktion2",getRootElement(), inFraktion)	
	
function AdminPanel(player)
   if getElementData(player, "Adminrank") == 1 then
       triggerClientEvent (player, "AdminPanel", player)

   elseif getElementData(player, "Adminrank") == 0 then
      
	   outputChatBox("Du bengel bist kein Admin! :D ", player)
	end
end	

addCommandHandler("panel", AdminPanel)

function creater_EB_PW(Code, Admin, EBUser)
---Darf nicht gelöschtwerden!
Benutzt= 0
EBUser2= getPlayerFromName(EBUser)
dbExec(handler,"INSERT INTO EB_PW (Admin, Code, Benutzt) VALUES ( '"..Admin.."', '"..Code.."', '"..Benutzt.."')")
outputChatBox("Du hast nun ein Entbannungs code erhalten, Er lautet: "..Code.." Er ist nur einmal Gültig!")
end
addEvent("EB_PW_Starter",true)
addEventHandler("EB_PW_Starter",getRootElement(),  creater_EB_PW)	