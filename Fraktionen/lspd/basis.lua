tor_move = createObject(980 , 1588, -1637.9000244141 , 15.199999809265, 0 ,0 ,0)
tor_s_move = "zu"


addCommandHandler("move", function (player) 
local x, y, z = getElementPosition ( player )

   if getDistanceBetweenPoints3D (x, y, z, 1588, -1637.9000244141 , 15.199999809265) < 15 and getElementData(player, "Fraktion")== 1 then

        if tor_s_move == "zu" then
          moveObject(tor_move, 2000, 1588 , -1637.9000244141 , 8)
          tor_s_move = "auf"
        else
          moveObject(tor_move, 2000, 1588 , -1637.9000244141 , 15.199999809265)
          tor_s_move = "zu"
	    end
   end
end)