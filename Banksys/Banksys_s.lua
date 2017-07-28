	function CreateBank(Konto, Kennwort, Benutzer, Frage, player)
		if source ~= client then return end
		Serial= getPlayerSerial(source)
		local db2 = dbQuery(handler,"SELECT * FROM Bank WHERE Serial = ? ", Serial) -- Hier sollte er abragen ob die daten exestieren aber das geht nicht 
		local result, rows2 = dbPoll(db2,-1)  
			if rows2 == 0 then 
				Geld= 8000
				 dbExec(handler,"INSERT INTO Bank (Benutzer, Kontonr, Antwort, Kennwort, Serial, Geld) VALUES ( '"..Benutzer.."', '"..Konto.."', '"..Frage.."','"..Kennwort.."','"..Serial.."','"..Geld.."')")
				 db = dbQuery(handler,"SELECT * FROM Bank WHERE Kontonr = ? AND Kennwort = ?", Konto, Kennwort)
				 outputChatBox("Sie haben Erfolgreich ein Konto erstellt!", source, 50, 205, 50)
				 outputChatBox("Sie haben zur First konto Erstellung einen Guthaben von 8000$ Bekommen!", source, 50, 205, 50)
				 outputChatBox("Ihre Kontonummer lautet:"..Konto.." Sagen sie sie nimanden Weiter!", source, 50, 205, 50)
				 outputChatBox("Ihr kennwort lautet:"..Kennwort.." Sagen sie sie Nimanden weiter!", source, 50, 205, 50)
				 setElementData(source, "ZKonto", Konto)
			end
	end

addEvent("Create_Bank",true)
addEventHandler("Create_Bank",getRootElement(), CreateBank)	



	function Bank_Login(Konto, Kennwort, player)
		if source ~= client then return end
		local db = dbQuery(handler,"SELECT * FROM Bank WHERE Kontonr = ? AND Kennwort = ?", Konto, Kennwort) -- Hier sollte er abragen ob die daten exestieren aber das geht nicht 
		local result, rows = dbPoll(db,-1)   
                                                                     --Er nimmt immer else als antwort bzw. Das passwort ist falsch kommt im spiel :/
		if rows >= 1 then
			outputChatBox("Du bist erfolgreich Angemeldet worden von : ATM LS", source)
			triggerClientEvent(source, "LoginBank", source, Summe)
			local db2 = dbQuery(handler,"SELECT * FROM Bank WHERE Geld = ? ")
			setElementData(source, "ZKonto", Konto)     
		else
			dbFree(db)
			outputChatBox("Dein Kennwort/Kontonummer ist Falsch",source)
    end

	end
addEvent("Bank_Login",true)
addEventHandler("Bank_Login",getRootElement(), Bank_Login)	


    function Auszahlen_DB(ZSumme)
    	ZSumme= ZSumme
    	setElementData(source, "ZSumme", ZSumme)
    	Kontonummer= getElementData(source, "ZKonto")
    	dbQuery(Auszahlen, {source, ZSumme} , Cloud, "SELECT Geld FROM Bank WHERE Kontonr = ?", Kontonummer)

    end
    addEvent("Auszahlen",true)
    addEventHandler("Auszahlen",getRootElement(),Auszahlen_DB)
    function Auszahlen(Cloud, source, ZSumme)
    	ZSumme= ZSumme
    	result = dbPoll ( Cloud, 0 )  
    	if result and result[1] then
    		Geld = result[1]["Geld"] 
            end
    	if not tonumber(ZSumme) then
    		outputDebugString("Error(39BAT) wurde nicht übertragen!", source)
    	else 
    		ZSumme= ZSumme

    		if  tonumber(Geld) >= tonumber(ZSumme) then
					if tonumber(ZSumme)<= 0 then
					    outputChatBox("Du kannst Keine - beträge Auszahlen!", source, 255, 0, 0)
					else	
						givePlayerMoney ( source, tonumber(ZSumme)) 
						Abrechnung= tonumber(Geld) - tonumber(ZSumme)
						Konto= getElementData(source, "ZKonto")
						dbExec(handler, "UPDATE Bank SET Geld=? WHERE Kontonr =?;", Abrechnung, Konto )
						outputChatBox("Sie haben "..ZSumme.." $ Ausgezahlt!", source, 50, 205, 50) 
                        setElementData(source, "Geld", getPlayerMoney(source))						
                    end						
    		else
    			outputChatBox("Du hast nicht so viel Geld auf der Bank!", source,  255, 0, 0)  
    		end
    	end
    end

	
	
	    function Einzahlen_DB(ZSumme)
    	ZSumme= ZSumme
    	setElementData(source, "ZSumme", ZSumme)
    	Kontonummer= getElementData(source, "ZKonto")
    	dbQuery(Einzahlen, {source, ZSumme} , Cloud, "SELECT Geld FROM Bank WHERE Kontonr = ?", Kontonummer)
    end
    addEvent("Einzahlen",true)
    addEventHandler("Einzahlen",getRootElement(),Einzahlen_DB)
	
    function Einzahlen(Cloud, source, ZSumme)
    	ZSumme= ZSumme
    	result = dbPoll ( Cloud, 0 )  
    	if result and result[1] then
    		Geld = result[1]["Geld"] 
            end
    	if not tonumber(ZSumme) then
    		outputDebugString("Error(39BAT) wurde nicht übertragen!", source)
    	else 
    		ZSumme= ZSumme
    		if  tonumber(ZSumme) >= getPlayerMoney(source) or tonumber(ZSumme)<= 0 then
    			outputChatBox("Du hast nicht so viel Geld auf der Hand!", source, 255, 0, 0)  
			else		
			    HandM= getPlayerMoney(source) - tonumber(ZSumme)
				setPlayerMoney( source, HandM) 
    			Abrechnung= tonumber(Geld) + tonumber(ZSumme)
    			Konto= getElementData(source, "ZKonto")
    			dbExec(handler, "UPDATE Bank SET Geld=? WHERE Kontonr =?;", Abrechnung, Konto )	
				outputChatBox("Sie haben  "..ZSumme.." $ Eingezahlt!!", source, 50, 205, 50)
				setElementData(source, "Geld", getPlayerMoney(source))	
    		end
    	end
    end
