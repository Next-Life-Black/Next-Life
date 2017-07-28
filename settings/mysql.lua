debugmode= false
handler = dbConnect("mysql","dbname=ni597549_1_DB;host=37.10.121.119","ni597549_1_DB","zoWfwU3e")
local Servername= "Next-Life"	
if handler then
	outputServerLog("**************************************************")
	outputServerLog("["..Servername.."] meldet: Verbindung erfolgreich!")
	outputServerLog("**************************************************")
	outputDebugString("**************************************************")
	outputDebugString("["..Servername.."] meldet: Verbindung erfolgreich!")
	outputDebugString("**************************************************")
else
	outputServerLog("["..Servername.."] meldet: Verbindung konnte nicht hergestellt werden!")
end

--------------------------------------------------------------------------
-- Mysql Update Data
--------------------------------------------------------------------------
function MysqlUpdate(handler, ... )
	UpdateData = dbExec(handler, handler, ... )
	if UpdateData then
		return true
	else
		return false
	end
end
--------------------------------------------------------------------------
-- Mysql GetData
--------------------------------------------------------------------------
function MysqlGetData(handler, ...)
	GetData = dbQuery(handler, handler, ...)
	Result, num_affected_rows = dbPoll(GetData, -1)
	if Result then
		return Result
	end
end


