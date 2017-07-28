--Infos zum Anti Cheat System: Das system ist einfach Aufgebaut dennoch Sicher!
-------------------
--Script by Black--
-------------------
--Zweit Verbingung Sicherheits Verbingung-- Momentan Deaktiviert, kann aber Aktiviert werden!


-- Security_Connect = dbConnect("mysql","dbname=ni597549_1_DB;host=127.0.0.1","ni597549_1_DB","QVSTQV4B")

	-- function Starter(player)
	-- if  Security_Connect then 
	    -- setTimer(function()
        -- Geld_DB()
        -- end,90000, 1)
	-- else
    -- outputChatBox("Security Verbindung Fehgeschlagen Login/Register nicht Möglich!", player, 255, 0, 0)
	-- outputChatBox("Dies liegt nicht an dir, sondern an den Server Bitte Warten....", player, 255, 0, 0)
	-- end
-- end

	-- function Starter2(player)

	    -- setTimer(function()
        -- Geld_DB()
        -- end,90000, 1)

-- end
-- function CheckConnection()

	-- if Security_Connect then

		-- outputServerLog("***********************************************************")
		-- outputServerLog("              Sicherheits Verbindung Hergestellt")
		-- outputServerLog("***********************************************************")
		-- outputDebugString("***********************************************************")
		-- outputDebugString("              Sicherheits Verbindung Hergestellt")
		-- outputDebugString("***********************************************************")
		-- outputDebugString("AntiCheat System wurde Gestartet !")
		-- Starter2()
	-- else

		-- outputServerLog("[Selfmade] Verbindung zum Bankserver Fehlgeschlagen! ")
		-- outputDebugString("[Selfmade] Verbindung zum Bankserver Fehlgeschlagen! ")
		-- outputDebugString("Die Sicherheits Verbindung des Anticheatsystems ist Fehlgeschlagen!")
		-- outputDebugString("Bitte Überprüffen bevor das Script Startet")
		-- outputDebugString("Daten werden nicht mehr Angenommen!")
		-- destroyElement(handler)
		-- destroyElement(Cloud)
	-- end
-- end
-- CheckConnection()
----------------------System---------------------
	    -- function Geld_DB()
			-- Name= getPlayerName(player)

			-- dbQuery(Check_Money, {player} , Security_Connect, "SELECT Geld FROM user_data WHERE Name = ?", Name )
			-- outputDebugString("MoneyCheck System wurde Gestartet!")
			-- Starter2()
		-- end
    -- addEvent("GeldCheck",true)
    -- addEventHandler("GeldCheck",getRootElement(),Geld_DB)

	-- function Check_Money(Security_Connect, player) 
		-- Geld2= getElementData(player, "Geld")
		-- if Geld2== getPlayerMoney(player) then 
			-- outputDebugString("Der Spieler "..getPlayerName(player).." ist Sauber!")
		-- else 	
			-- outputDebugString("Daten Vom Spielr "..getPlayerName(player).." Stimmen nicht über ein!")
			-- outputDebugString("DB check wird durchgeführt!")
			-- result = dbPoll ( Security_Connect, 0 )  
			-- if result and result[1] then
				-- Geld = result[1]["Geld"] 
				-- if tonumber(Geld)== getPlayerMoney(player) then
					-- setElementData(player, "Geld", Geld)
					-- outputDebugString("Daten des Spieler's "..getPlayerName(player)"Stimmen mit der DB ein!")
                    -- setPlayerMoney(player, Geld)								
				-- else
					-- Acheat= "Anticheat_SyS"
					-- reason= "Geld Cheat!"
					-- setElementdata(player, "Gebannt", 1)
					-- setElementdata(player, "Geld", 0)
					-- kickPlayer(player, Acheat, reason )						
					-- dbExec(Security_Connect, "UPDATE user_data SET Geld=? WHERE Username =?;", getElementData(player,"Geld"), getPlayerName(player))	
					-- dbExec(Security_Connect, "UPDATE user_data SET Gebannt=? WHERE Username =?;", getElementData(player,"Gebannt"), getPlayerName(player))	
				-- end   
			-- end	
		-- end
	
	-- end
	-- addEventHandler ( "onPlayerJoin", getRootElement(), Starter )
