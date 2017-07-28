function set_Points()
  if getElementData(source, "FP")== 1 then
    setElementData(source, "FP", 2)
  elseif getElementData(source, "FP")== 2 then
    setElementData(source, "FP", 3) 
  elseif getElementData(source, "FP")== 3 then
    setElementData(source, "FP", 4) 
  else
    setElementData(source, "FP", 1) 
  end
end  
addEvent ("Set_FP", true)
addEventHandler ("Set_FP", getRootElement(), set_Points)

function Check_FP()
  if getElementData(source, "FP")== 3 or getElementData(source, "FP")== 4 then
   outputChatBox("[Fahrlehrer]Alles gute, du hast die Theorie Prüfung Bestanden mein Sohn ", source)
   triggerClientEvent(source, "Start_Praxis", getRootElement(source))
   else
   outputChatBox("[Fahrlehrer]Es tut mir leid mein Sohn, aber du hast es nicht durch die Theorie Prüfung Geschaft :(", source)
   end
end   
addEvent ("Check_Fahr_Points", true)
addEventHandler ("Check_Fahr_Points", getRootElement(), Check_FP)