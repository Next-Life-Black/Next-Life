addEvent("wennRegi",true)
addEvent("wennLogin",true)
addEvent("wennEndeTut",true)




function wennLogin (Name, Pw)
if source ~= client then return end
	local schluesselen = md5(Pw)
	Seri = getPlayerSerial(source)
	local db = dbQuery(handler,"SELECT * FROM user_data WHERE Serial = '"..Seri.."' AND Passwort = '"..schluesselen.."' AND Username = '"..getPlayerName(source).."'")
	local result,num_rows = dbPoll(db,-1)
	if num_rows == 1 then
		setElementData ( source,"Gebannt", tonumber(result[1]['Gebannt']))
		if getElementData(source, "Gebannt")== 1 then
			outputChatBox("Du Bist Gebannt!!",source,255, 0, 0)
			triggerClientEvent (source, "BannWindow_L", source)
			PStatus2= "Gebannt!"
			setElementData ( source,"PStatus", PStatus2 )
			setElementData ( source,"Skin", tonumber(result[1]['Skin']))
			setElementData ( source,"Geld", tonumber(result[1]['Geld']))		
			setElementData ( source,"Fraktion", tonumber(result[1]['Fraktion']))
			setElementData ( source,"Adminrank", tonumber(result[1]['Adminrank']))
			setElementData ( source,"Playtime", tostring(result[1]['Spielzeit']))
			setElementData ( source,"PStatus", tostring(result[1]['PStatus']))
			setElementData ( source,"Fuehrerschein", tonumber(result[1]['Fuehrerschein']))
			setElementData ( source,"Premium", tonumber(result[1]['Premium']))
			setElementData ( source,"VRS", tonumber(result[1]['VRS']))
			setElementData ( source, "drin", true )	
			setElementData ( source,"Gebannt", tonumber(result[1]['Gebannt']))
			outputDebugString(""..getPlayerName(source).." wurde eingeloggt")
		else	
			setElementData ( source,"Skin", tonumber(result[1]['Skin']))
			setElementData ( source,"Geld", tonumber(result[1]['Geld']))		
			setElementData ( source,"Fraktion", tonumber(result[1]['Fraktion']))
			setElementData ( source,"Adminrank", tonumber(result[1]['Adminrank']))
			setElementData ( source,"PStatus", tostring(result[1]['PStatus']))
			setElementData ( source,"Fuehrerschein", tonumber(result[1]['Fuehrerschein']))
			setElementData ( source,"Bank", tonumber(result[1]['Bank']))
			setElementData ( source,"Rank", tonumber(result[1]['Rank']))
			setElementData ( source,"Motorrad", tonumber(result[1]['Motorad']))
			setElementData ( source,"Playtime", tostring(result[1]['Spielzeit']))
			setElementData ( source, "drin", true )	
			setElementData ( source,"Gebannt", tonumber(result[1]['Gebannt']))
			setElementData ( source,"VRS", tonumber(result[1]['VRS']))
			outputChatBox("Willkommen zurück",source,0,125,0)
			triggerClientEvent(source,"zuLogin",source)
			spawnPlayer(source, 1545.6999511719, -1675.5, 13.60, 90)
			fadeCamera(source, true)
			setCameraTarget(source, source)
			setElementModel ( source, tonumber(getElementData(source,"Skin")))
			setPlayerMoney (source, tonumber(getElementData(source,"Geld")))
			BindTheKey()
			outputDebugString(""..getPlayerName(source).." wurde eingeloggt")
			loadCars(player)
		end	
		
	else
		local schluesselen = md5(Pw)
		local db = dbQuery(handler,"SELECT * FROM user_data WHERE Username = '"..Name.."' AND Passwort = '"..schluesselen.."'")
		local result,num_rows = dbPoll(db,-1)
		if num_rows == 1 then	
			local db = dbQuery(handler,"SELECT * FROM user_data WHERE Serial = '"..Name.."' AND Serial = '"..schluesselen.."'")
			local result,num_rows = dbPoll(db,-1)
			if num_rows == 0 then
				outputChatBox("Dieser account gehört dir nicht!", source, 255, 0, 0)
				outputServerLog("Der Spieler "..Name.." hate versucht sich mit einem Fremden accout einzuloggen")
				outputDebugString("Der Spieler "..Name.." hate versucht sich mit einem Fremden accout einzuloggen")
			else	
					setElementData ( source,"Gebannt", tonumber(result[1]['Gebannt']))
				if getElementData(source, "Gebannt")== 1 then
					outputChatBox("Du Bist Gebannt!!",source,255, 0, 0)
					triggerClientEvent (source, "BannWindow_L", source)
					PStatus2= "Gebannt!"
					setElementData ( source,"PStatus", PStatus2 )
					setElementData ( source,"Skin", tonumber(result[1]['Skin']))
					setElementData ( source,"Geld", tonumber(result[1]['Geld']))		
					setElementData ( source,"Fraktion", tonumber(result[1]['Fraktion']))
					setElementData ( source,"Adminrank", tonumber(result[1]['Adminrank']))
					setElementData ( source,"PStatus", tostring(result[1]['PStatus']))
					setElementData ( source,"Fuehrerschein", tonumber(result[1]['Fuehrerschein']))
					setElementData ( source,"Premium", tonumber(result[1]['Premium']))
					setElementData ( source,"VRS", tonumber(result[1]['VRS']))
					setElementData ( source,"Playtime", tostring(result[1]['Spielzeit']))
					setElementData ( source, "drin", true )	
					setElementData ( source,"Gebannt", tonumber(result[1]['Gebannt']))
					outputDebugString(""..getPlayerName(source).." wurde eingeloggt")
				else
					setElementData ( source,"PStatus", tostring(result[1]['PStatus']) )
					setElementData ( source,"Skin", tonumber(result[1]['Skin']))
					setElementData ( source,"Geld", tonumber(result[1]['Geld']))		
					setElementData ( source,"Fraktion", tonumber(result[1]['Fraktion']))
					setElementData ( source,"Adminrank", tonumber(result[1]['Adminrank']))
					setElementData ( source,"PStatus", tostring(result[1]['PStatus']))
					setElementData ( source,"Fuehrerschein", tonumber(result[1]['Fuehrerschein']))
					setElementData ( source,"Premium", tonumber(result[1]['Premium']))
					setElementData ( source,"VRS", tonumber(result[1]['VRS']))
					setElementData ( source,"Playtime", tostring(result[1]['Spielzeit']))
					setElementData ( source, "drin", true )	
					setElementData ( source,"Gebannt", tonumber(result[1]['Gebannt']))
					outputChatBox("Willkommen zurück",source,0,125,0)
					triggerClientEvent(source,"zuLogin",source)
					spawnPlayer(source, 1545.6999511719, -1675.5, 13.60, 90)
					fadeCamera(source, true)
					setCameraTarget(source, source)
					setElementModel ( source, tonumber(getElementData(source,"Skin")))
					setPlayerMoney (source, tonumber(getElementData(source,"Geld")))
					BindTheKey()
					dbExec(handler, "UPDATE user_data SET Serial=? WHERE Username =?;", getPlayerSerial(source), getPlayerName(source))
					outputChatBox("Laut Computer hast du eine Andere Serial, Diese wurde Aktualisiert.",source,0,125,0)
					outputChatBox("Neue Serial: "..getPlayerSerial(source).."",source,0,125,0)		
					outputDebugString(""..getPlayerName(source).." wurde eingeloggt [Serial wurde geändert]")
					loadCars(player)
				end
             end
				
			 else

			 local db = dbQuery(handler,"SELECT * FROM user_data WHERE Serial = '"..Seri.."' AND Passwort = '"..schluesselen.."'")
			 local result,num_rows = dbPoll(db,-1)
			 if num_rows == 1 then
				outputChatBox("Es wurden Daten gefunden, jedoch Stimmt der Name nicht über ein!", source, 255, 0, 0)				
			 else
				outputChatBox("Deine angegebenen Daten sind falsch!", source, 255, 0, 0)
			 end
		 end		
	 end
 end
addEventHandler("wennLogin",getRootElement(), wennLogin)

function tut_end(player)
spawnPlayer(player, 1545.6999511719, -1675.5, 13.60, 90, getElementData(player,"Skin"))
setCameraTarget(player)
showChat(source, true)
Chek_VRS_AC()
end
addEventHandler("wennEndeTut", getRootElement(), tut_end)

function wennRegi (Name, Pw)
 if source ~= client then return end
  Seri = getPlayerSerial(source)
  local db = dbQuery(handler,"SELECT * FROM user_data WHERE Serial = '"..Seri.."'")	
  local result,num_rows = dbPoll(db,-1)
  if num_rows == 0 then
    local db2 = dbQuery(handler,"SELECT * FROM user_data WHERE Username = '"..getPlayerName(source).."'")	
    local result,num_rows2 = dbPoll(db2,-1)
	 if num_rows2 == 0 then
		schluesselen = md5(Pw)
		triggerClientEvent(source,"onPlayerTutorial",source)
		Gebannt= 0
		State_R= tostring("Buerger")
		dbExec(handler,"INSERT INTO user_data (Username, Serial, Passwort, Skin, Geld, Fraktion, Adminrank, PStatus, Fuehrerschein, Gebannt, Motorrad, Rank) VALUES ( '"..Name.."', '"..Seri.."', '"..schluesselen.."','"..startskins[skincount].."','"..startgeld.."', '"..Fraktion.."', '"..Adminlvl.."','"..State.."','"..Fuehrerschein.."', '"..Gebannt.."', '"..Motorad.."','"..Rank.."')")
		setElementData ( source,"Skin", skincount)
		setElementData ( source,"Geld", 10000)		
		setElementData ( source,"Fraktion", 0)
		setElementData ( source,"Adminrank", 0)
		setElementData ( source,"PStatus", State_R)
		setElementData ( source,"Fuehrerschein", 0)
		setElementData ( source,"Rank", 0)
		setElementData ( source,"Motorrad", 0)
		setElementData ( source,"VRS", 0)
		setElementData ( source, "drin", true )	
		outputChatBox("Willkommen auf Ultra Rallife",source,0,125,0)
		outputDebugString("Daten für den Spieler"..getPlayerName(source).." wurden Erstellt")
		setCameraTarget(source, source)
		setElementModel ( source, tonumber(getElementData(source,"Skin")))
		setPlayerMoney (source, tonumber(getElementData(source,"Geld")))
	  else
	   outputChatBox("Ein anderer User Verwendet bereits diesen Namen!", soruce, 255,0,0)
	  end
       	  
	    
    elseif num_rows == 2 then 
	 if source ~= client then return end
		outputChatBox("Sie haben ein Multiaccout und wurden vom Anti-Cheat system Gebannt!", soruce, 255,0,0)
		setElementData(source, "Gebannt", 1)
		dbExec(handler, "UPDATE user_data SET Gebannt=? WHERE Username =?;", getElementData(source,"Gebannt"), getPlayerName(source))		
	else
	 if source ~= client then return end
    	outputChatBox("Sie haben bereits ein Accout auf diesem Server!", player, 255,0,0)
	end
end	
addEventHandler("wennRegi",getRootElement(), wennRegi)

function EBPW_End2(EBPW_Code)
  if source ~= client then return end 
	local db = dbQuery(handler,"SELECT * FROM EB_PW WHERE Code = '"..EBPW_Code.."'")	
	local result,num_rows = dbPoll(db,-1)
	if num_rows == 1 then
      Benutzt= 1
	  local db3 = dbQuery(handler,"SELECT * FROM EB_PW WHERE Code = '"..EBPW_Code.."' AND Benutzt = '"..Benutzt.."'")
	  local result,num_rows3 = dbPoll(db3,-1)
	  if num_rows3 == 1 then
	   outputChatBox("Der Code "..EBPW_Code.." wurde bereits Benutzt! Bitte fordere ein unbenutzten Code an!", source, 255, 0, 0)
	  else
	    if source ~= client then return end 
        setElementData(source, "Gebannt", 0)
		dbExec(handler, "UPDATE user_data SET Gebannt=? WHERE Username =?;", getElementData(source,"Gebannt"), getPlayerName(source))
	    dbExec(handler, "UPDATE EB_PW SET Benutzt=? WHERE Code =?;", Benutzt, EBPW_Code)	   
	    local Status= "Buerger"
	    setElementData(source, "PStatus", Status )
	    setCameraTarget(source)
	    outputChatBox("Erfolgreich Entbannt!  Benimm dich in Zukunft", source,0,125,0)
		spawnPlayer(source, 1545.6999511719, -1675.5, 13.60, 90, getElementData(source,"Skin"))
		triggerClientEvent(source,"zuBann",source)
		setElementData ( source, "drin", true )	
	   end
	else
     outputChatBox("Code Falsch! Bitte überprüfe deine Eingabe!", source)
	end
end
addEvent("EBPW_End",true)
addEventHandler("EBPW_End",getRootElement(),  EBPW_End2)	
function Respawn_Player ()
	spawnPlayer(source, 1545.6999511719, -1675.5, 13.60, 90, getElementData(source,"Skin"))
	setCameraTarget(source)
end
addEvent("onPlayerReLive",true)
addEventHandler("onPlayerReLive",getRootElement(), Respawn_Player)
	
	function CheckPlayerDead()
		if getElementData ( source, "drin")== true then 
			triggerClientEvent (source, "PlayerSpawn_Start", source)	
		end
    end		
addEventHandler("onPlayerWasted",getRootElement(), CheckPlayerDead)

function Tutorial_SetData()
		spawnPlayer(source, 1545.6999511719, -1675.5, 13.60, 90, getElementData(source,"Skin"))
		setCameraTarget(source)
		setElementData ( source, "drin", true )	
		BindTheKey()
		setPlayerMoney (source, getElementData(source,"Geld"))
		loadCars(player)
		end
addEvent("onTutorialSetData",true)
addEventHandler("onTutorialSetData",getRootElement(), Tutorial_SetData)


-- function Handynummer_Creator()

--Ich hoffe ihnen gefällt das beispiel.
---Arbeit: 2 tage