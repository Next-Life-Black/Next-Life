function CreateBank(Konto, Kennwort, Benutzer, Frage, player)
if source ~= client then return end
if getElementData(source, "Konto_Anzahl")== 3 then 
outputChatBox("Du hast die Maximale User, Konto anzahl!", source) 

elseif getElementData(source, "Konto_Anzahl")== <0 then 

    local Summe3= 0
	dbExec(handler, "INSERT INTO Bank VALUES (?, ?, ?, ?, ?)", 
			Benutzer,
			Konto,
			Kennwort,
			Summe3,
			Frage
			)
	outputChatBox("dein neues Bankkonto wurde Angelegt Passwort: " ..Kennwort.." Kontonr" ..Konto.."", source)
	if getElementData(source, "Konto_Anzahl")== 1 then
	outputChatBox("Das ist dein 2. Konto du kannst nurnoch 1 Konto Erstellen!!", source)
	   setElementData(source, "Konto2Money" 0 )
	   setElementData(source, "Kontonr2", Konto)
	elseif getElementData(source, "Konto_Anzahl")== 2 then
	outputChatBox("Das ist dein 3. Konto du kannst Keine Kontos mehr Erstellen!", source)
       setElementData(source, "Kontonr2", Konto)
	end   
 else
 local Konto= Konto
    local user= getPlayerFromName(Benutzer)
	dbExec(handler, "INSERT INTO Bank VALUES (?, ?, ?, ?, ?)", 
			Benutzer,
			Konto,
			Kennwort,
			Summe,
			Frage
			)
	outputChatBox("Das Bankonto wurde Angelegt Passwort: " ..Kennwort.." Kontonr" ..Konto.."", source)
	outputChatBox("Du kannst dir eine Bankkarte kaufen um dein Passwort oder Kontonr nicht zu Vergessen. ", source)
	outputChatBox("Bank Bonus! du hast 8000$ für das Erstellen eines Kontos von der Bank bekommen.", source)
	
setElementData(source, "Kontonr1", Konto)
	end

	end
addEvent("Create_Bank",true)
addEventHandler("Create_Bank",getRootElement(), CreateBank)	

function reset_all(player)

end	

function Bank_Login(Konto, Kennwort, player)
if source ~= client then return end
local db = dbQuery(handler,"SELECT * FROM Bank WHERE Kontonr = ? AND Kennwort = ?", Konto, Kennwort) -- Hier sollte er abragen ob die daten exestieren aber das geht nicht 
local result, rows = dbPoll(db,-1)   
    Summe= 8000                                                                       --Er nimmt immer else als antwort bzw. Das passwort ist falsch kommt im spiel :/
    if rows >= 1 then
        outputChatBox("Du bist erfolgreich Angemeldet worden von : ATM LS", source)
        triggerClientEvent(source, "LoginBank", source, Summe)
		setElementData(source, "Bank", Summe)
    else
       dbFree(db)
	   
       outputChatBox("Dein Kennwort ist Falsch!",source)
    end

end
addEvent("Bank_Login",true)
addEventHandler("Bank_Login",getRootElement(), Bank_Login)	




function Auszahlen(ZSumme, Konto, Kennwort)

if source ~= client then return end
 if not tonumber(ZSumme) then
  outputDebugString("Error(39BAT) Summe wurde nicht übertragen!", source)
 else
   if  getElementData(source, "Bank")>= tonumber(ZSumme) then
    givePlayerMoney ( source, ZSumme )
	setElementData(source, "Bank", getElementData(source, "Bank")-tonumber(ZSumme))
	outputChatBox("Du hast " ..tonumber(ZSumme).."$ Ausgezahlt", source) 
    dbExec(handler, "UPDATE user_data SET Bank=? WHERE Username =?;", getElementData(source,"Bank"), getPlayerName(source))	 
   else
    outputChatBox("Du hast nicht so viel Geld auf der Bank!", source)  
   end
 end
end
addEvent("Auszahlen",true)
addEventHandler("Auszahlen",getRootElement(),Auszahlen)