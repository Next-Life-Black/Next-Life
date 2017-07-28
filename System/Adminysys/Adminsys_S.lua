function admin()
  if getElementData(player, "Adminrank") == 0 then
   outputChatBox("Du bist kein Admin", player)
  elseif getElementData(player, "Adminrank") == 1 then 
   outputChatBox("Du bist Supporter", player)
  elseif getElementData(player, "Adminrank") == 2 then 
  outputChatBox("Du bist Moderator", player)
  elseif getElementData(player, "Adminrank") == 3 then 
  outputChatBox("Du bist  Administrator", player)
  elseif getElementData(player, "Adminrank") == 4 then 
  outputChatBox("Du bist Co-Inhaber", player)
  elseif getElementData(player, "Adminrank") == 5 then 
  outputChatBox("Alter dein ernst?? du weißt das du Inhaber bist -_-", player)
  elseif getElementData(player, "Adminrank") == 6 then 
  outputChatBox("Du bist Scripter", player)
  elseif getElementData(player, "Adminrank") == 7 then 
  outputChatBox("Du bist Mapper", player)
  end
end  
 addCommandHandler("rank", admin)
 
 