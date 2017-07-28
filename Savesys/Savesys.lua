	function Loggoff_Save ()
		if getElementData ( source, "drin" ) then
			dbExec(handler, "UPDATE user_data SET Skin=? WHERE Username =?;", getElementData(source,"Skin"), getPlayerName(source))	
			dbExec(handler, "UPDATE user_data SET Geld=? WHERE Username =?;", getElementData(source,"Geld"), getPlayerName(source))	
			dbExec(handler, "UPDATE user_data SET Fraktion=? WHERE Username =?;", getElementData(source,"Fraktion"), getPlayerName(source))
			-- dbExec(handler, "UPDATE user_data SET Bank=? WHERE Username =?;", getElementData(source,"Bank"), getPlayerName(source))
			dbExec(handler, "UPDATE user_data SET Adminrank=? WHERE Username =?;", getElementData(source,"Adminrank"), getPlayerName(source))
			dbExec(handler, "UPDATE user_data SET PStatus=? WHERE Username =?;", getElementData(source,"PStatus"), getPlayerName(source))
			dbExec(handler, "UPDATE user_data SET Fuehrerschein=? WHERE Username =?;", getElementData(source,"Fuehrerschein"), getPlayerName(source))
			dbExec(handler, "UPDATE user_data SET Motorrad=? WHERE Username =?;", getElementData(source,"Motorrad"), getPlayerName(source))
			dbExec(handler, "UPDATE user_data SET Rank=? WHERE Username =?;", getElementData(source,"Rank"), getPlayerName(source))
			dbExec(handler, "UPDATE user_data SET Gebannt=? WHERE Username =?;", getElementData(source,"Gebannt"), getPlayerName(source))
			-- dbExec(handler, "UPDATE user_data SET Land=? WHERE Username =?;", getElementData(source,"Land"), getPlayerName(source))
			outputDebugString("Daten von: " ..getPlayerName(source).." Gespeichert![Logoff] ")
			outputServerLog("Daten wurden von " ..getPlayerName(source).." Gespeichert Grund: Ausloggen")
		end	
	end	
addEventHandler ("onPlayerQuit", getRootElement (), Loggoff_Save )


	function Self_Save (player)
	if getElementData ( player, "drin" ) then
	outputServerLog("Letzte Datenspeicherung von: ---------"..getPlayerName(player).."---------")
		dbExec(handler, "UPDATE user_data SET Skin=? WHERE Username =?;", getElementData(player,"Skin"), getPlayerName(player))	
		outputServerLog("Skin: "..getElementData(player,"Skin").." Sicher!")
		dbExec(handler, "UPDATE user_data SET Geld=? WHERE Username =?;", getElementData(player,"Geld"), getPlayerName(player))	
		outputServerLog("Geld: "..getElementData(player,"Geld").." Sicher!")
		dbExec(handler, "UPDATE user_data SET Fraktion=? WHERE Username =?;", getElementData(player,"Fraktion"), getPlayerName(player))
		outputServerLog("Fraktion: "..getElementData(player,"Fraktion").." Sicher!")
		-- dbExec(handler, "UPDATE user_data SET Bank=? WHERE Username =?;", getElementData(player,"Bank"), getPlayerName(player))
		dbExec(handler, "UPDATE user_data SET Adminrank=? WHERE Username =?;", getElementData(player,"Adminrank"), getPlayerName(player))
		outputServerLog("Adminrank: "..getElementData(player,"Adminrank").." Sicher!")
		dbExec(handler, "UPDATE user_data SET PStatus=? WHERE Username =?;", getElementData(player,"PStatus"), getPlayerName(player))
		outputServerLog("Status: "..getElementData(player,"PStatus").." Sicher!")
		dbExec(handler, "UPDATE user_data SET Fuehrerschein=? WHERE Username =?;", getElementData(player,"Fuehrerschein"), getPlayerName(player))
		outputServerLog("Fuehrerschein: "..getElementData(player,"Fuehrerschein").." Sicher!")
		dbExec(handler, "UPDATE user_data SET Motorrad=? WHERE Username =?;", getElementData(player,"Motorad"), getPlayerName(player))
		outputServerLog("Motorrad: "..getElementData(player,"Motorad").." Sicher!")
		dbExec(handler, "UPDATE user_data SET Rank=? WHERE Username =?;", getElementData(player,"Rank"), getPlayerName(player))
		outputServerLog("Rank: "..getElementData(player,"Rank").." Sicher!")
		dbExec(handler, "UPDATE user_data SET Gebannt=? WHERE Username =?;", getElementData(player,"Gebannt"), getPlayerName(player))
		outputServerLog("Gebannt: "..getElementData(player,"Gebannt").." Sicher!")
		-- dbExec(handler, "UPDATE user_data SET Land=? WHERE Username =?;", getElementData(player,"Land"), getPlayerName(player))
		Save= true
		if Save == true then
			outputChatBox("[INFO]:Daten Gespeichert!",player,0,125,0)
			setElementData(player, "saves", 0)
			outputDebugString("Der Spieler " ..getPlayerName(player).." hat seine Daten Gespeichert!")
			outputServerLog("Daten wurden von " ..getPlayerName(player).." Gespeichert Grund: Selbst Save")
		else
			outputChatBox("[INFO]: Fehlser beim Speichern von den Daten! Bitte Reconnecten!", player, 255,0,0)
		end	
	end	
end
addCommandHandler("saveme", Self_Save)




