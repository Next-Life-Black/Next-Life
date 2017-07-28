---------------------------------------------------
------------------Variablen------------------------
------------Script by Black(C)2016-----------------

Servername = "Next-Life"
Version = "Pre-Alpha 0.1"
Inhaber = "[Next]Black"
local WAlpha= true --Setze auf true, um die whitelist zu aktivieren! Diese läuft über die Datenbank!
local WBeta= true
ScriptStartValid= false
---------------------------------------------------
Winter= false
Herbst= false
Fruehling=true
Sommer= false
----------------------Jahreszeit-------------------

---------------------------------------------------
Halloween=false
Weinachten= false
Ostern= false
AdminGebi= false
Fasching= false
----------------------Feiertage-------------------
Halloween_Activate= 20.10
Ostern_Activate= false



startskins = {
	[1] = 24,
	[2] = 25,
	[3] = 29,
	[4] = 23,
	[5] = 21,
	[6] = 101,
	[7] = 182,
	[8] = 181
}

skincount = math.random(1,8)
startgeld = 100000
State= "Buerger"
Rank= "0"
Fuehrerschein= "0"
Bank= "8000"
Motorad= "0"
Adminlvl= "0"
Fraktion= "0"
Auto= "0"
Handynummer= "0"




function RealZeit()
      time = getRealTime()
	  hours = time.hour
	  minutes = time.minute
	  setTime ( hours, minutes )
	 setMinuteDuration(60000)
end
addEventHandler("onResourceStart", getRootElement(), RealZeit )

	function AntiNickChange()
        outputChatBox("Du darfst dein Name nicht ändern!", source, 0, 255, 0)
        cancelEvent()
		outputDebugString("Der Spieler "..getPlayerName(source).." hat versucht sein namen zu ändern!")
    end
	addEventHandler("onPlayerChangeNick", getRootElement(), AntiNickChange)


	function resourceStart ( resource )
		
		if not handler and debugmode== false  then
			handler = dbConnect("mysql","dbname=ni597549_1_DB;host=127.0.0.1","ni597549_1_DB","cdDKhCNK")
			outputDebugString("Verbindung zu datenbank Fehlgeschlagen! Versuche neu zu Verbinden!")		
			if not handler then
				cancelEvent()
				outputDebugString("Script wurde gestoppt![Error 2003] [Datenbank Verbindung konnte nicht hergstellt werden!]")	
				outputDebugString("Bitte überprüfe das Script: "..Servername.."/settings/mysql.lua")	
			end	
		end
		if ScriptStartValid== true then 	
			cancelEvent()
			outputDebugString("Script start durch settings.lua verweigert! [Error 2004 ScriptStartValid= true!]")	
		elseif WAlpha== true or WBeta== true then
		   outputDebugString("Die Whitelist ist Aktiviert!")
		else   
		   outputDebugString("Die Whitelist ist Deaktiviert!")
	    			
		end
	end
addEventHandler ( "onResourceStart", getRootElement(), resourceStart )
	
	function Alpha_Beta()
		if WAlpha== true or WBeta== true then
			local WSerial= getPlayerSerial(source)
			local db = dbQuery(handler,"SELECT * FROM Whitelist WHERE Serial = '"..WSerial.."'")	
			local result,num_rows = dbPoll(db,-1)
			if num_rows == 1 then
			outputChatBox("Sie sind auf der Whitelist",source,0,125,0)
			outputDebugString("Spieler "..getPlayerName(source).." ist auf der Whitelist!")
			elseif num_rows== 0 then
				local reason= "Sie sind nicht auf der Whitelist! Es wurden jedoch Daten in di Datenbank gesetzt so weiß der Inhaber bescheid!"
				local WL= "WhitelistSys"
				dbExec(handler,"INSERT INTO WhitelistKicks (Name, Serial, IP) VALUES ( '"..getPlayerName(source).."', '"..WSerial.."', '"..getPlayerIP(source).."')")
				outputDebugString("Spieler "..getPlayerName(source).." ist NICHT auf der Whitelist!")
				kickPlayer ( source, WL, reason)
				

			end
		end
		if getPlayerPing(source) >= 500 then
			local reason= "Dein Ping ist nicht Zulässig!"
			kickPlayer ( source, reason)
			outputDebugString("Spieler "..getPlayerName(source).." hat kein Zulässigen Ping!")
		else
		outputDebugString("Spieler "..getPlayerName(source).." hat ein Zulässigen Ping!")
	    end	
	end	
addEventHandler ( "onPlayerJoin", getRootElement(), Alpha_Beta)		
				



	function Start_Tester(source)
		if getPlayerName(source)== "Black" and WAlpha== false or getPlayerName(source)== "Black" and WBeta== false then
			WAlpha= true
			WBeta= true
			outputChatBox("Sie haben die Whitelist Aktiviert!",source,0,125,0)
			outputDebugString(""..getPlayerName(source).." hat die Whitelist Aktiviert!")
		elseif getPlayerName(source)== "Black" and WAlpha== true or getPlayerName(source)== "Black" and WBeta== true then
			WAlpha= false
			WBeta= false
			outputChatBox("Sie haben die Whitelist Deaktiviert!",source,0,125,0)
			outputDebugString(""..getPlayerName(source).." hat die Whitelist Deaktiviert!")
		end
		
	end	
	addCommandHandler("beta", Start_Tester, source)
			
	
		function AntiScriptRestart()	
			local time = getRealTime()
			local hours = time.hour
			local minutes = time.minute
			outputDebugString("Datenbank Spion wurde gestartet um: "..hours..":"..minutes.."")
			setTimer(function()
				if handler then
					outputDebugString("Verbindung wurde Nicht verloren um: "..hours..":"..minutes.."")
				elseif not handler then	
					handler = dbConnect("mysql","dbname=ni597549_1_DB;host=127.0.0.1","ni597549_1_DB","QVSTQV4B")
					outputDebugString("Verbindung zu datenbank Verloren! Versuche neu zu Verbinden!")	
					if not handler then
						outputDebugString("Script wurde gestoppt grund: Verbindung während betrieb Verloren!")
						local resurce= "Ultra-Reallife"
						stopResource(resource)
					elseif handler then
						outputDebugString("Verbindung wurde wieder Hergestellt um: "..hours..":"..minutes.." ")
					end
				end
				AntiScriptRestart()	
			end, 18000000, 1)
		end		
AntiScriptRestart()				 
			 
		
	function Jahreszeite_Setting()
		if Winter == true and Sommer == true then
			outputDebugString("Fehler: settings.lua[12 und 15] Sommer und Winter sind True!")
			cancelEvent()
		elseif Winter== true and Herbst== true then
			outputDebugString("Fehler: settings.lua[12 und 13] Herbst und Winter sind True!")
			cancelEvent()	
		elseif Sommer== true and Herbst== true then
			outputDebugString("Fehler: settings.lua[13 und 15] Herbst und Sommer sind True!")
			cancelEvent()
		elseif Sommer== true and Frueling== true then 	
			outputDebugString("Fehler: settings.lua[15 und 14] Sommer und Frueling sind True!")
			cancelEvent()
		elseif Winter== true and Fruehling== true then 
			outputDebugString("Fehler: settings.lua[12 und 14] Winter und Frueling sind True!")
			cancelEvent()
		elseif Herbst== true and Fruehling==true then	
			outputDebugString("Fehler: settings.lua[13 und 14] Herbst und Frueling sind True!")
			cancelEvent()
		elseif Herbst== false and Winter== false and Fruehling== false and Sommer== false then
			outputDebugString("Bitte wähle die Jahreszeit unter: Settings/setting.lua Zeile [12] bis [15]!")
			cancelEvent()
		else
			if Winter== true then
				setGravity (4)
				outputDebugString("Jahreszeit: Winter!")	
				setCloudsEnabled ( true )
				outputDebugString("Gravity=4 Schnee Aktiviert Schneeschaufler Job Aktiviert!")
				triggerClientEvent (source, "onPlayerStartShader", source)	
				triggerClientEvent (source, "onPlayerGetSnow", source)
			elseif Herbst== true then
				setGravity (7)
				outputDebugString("Jahreszeit: Herbst")
				setCloudsEnabled ( true )
				outputDebugString("Gravity=7 Blätter fallen von den Bäumen! ")
			elseif Frueling== true then 
				setGravity (8.5)
				outputDebugString("Jahreszeit: Frueling")
				outputDebugString("Gravity=8.5")
				setCloudsEnabled ( false )
			elseif Sommer == true then 
				setGravity (10)
				outputDebugString("Jahreszeit: Sommer")
				outputDebugString("Gravity=10 Schwimmbad Aktiviert!")
				setCloudsEnabled ( false )
			end	
		end	
	end	
	addEventHandler ( "onResourceStart", getRootElement(), Jahreszeite_Setting)	
		
		
		
	function update_play_time_func()
		setTimer(update_play_time_func,60000,1)
		for theKey,thePlayer in ipairs(getElementsByType ( "player" ) ) do
			if getElementData(thePlayer, "drin" ) and getElementData(player, "AFK" )== 0  then
				setElementData(thePlayer, "Playtime",(getElementData(thePlayer,"Playtime")+1))
				dbExec(handler, "UPDATE user_data SET Spielzeit=? WHERE Username =?;", getElementData(thePlayer, "Playtime" ), getPlayerName(thePlayer))
				
			elseif getElementData(thePlayer, "AFKtime" )== 1 then 
				setElementData(thePlayer, "AFKtime",(getElementData(thePlayer,"AFKtime")+1))
				dbExec(handler, "UPDATE user_data SET Spielzeit=? WHERE Username =?;", getElementData(thePlayer, "AFKtime" ), getPlayerName(thePlayer))
				outputChatBox("Sie haben nun " ..getElementData(thePlayer, "AFKtime" ).. " AFK Zeit!", player, 255, 0, 0)
			end
			
		end
		outputDebugString("Spieltime zähler: Aktiv!")
	end
addEventHandler("onResourceStart",getRootElement(),update_play_time_func)




	function Script_Stop_By_Owner()
		if getPlayerName(source)== "Black" then
			outputDebugString("Das Script wurde von Black Gestoppt")
		else
			cancelEvent()
			error("Das Script, kann nur durch herunterfahren des Servers, oder durch den Owner gestoppt werden!!! Owner= Black ")
			
			
			
		end
	end
addEventHandler("onResourceStop",getRootElement(), Script_Stop_By_Owner)
	
