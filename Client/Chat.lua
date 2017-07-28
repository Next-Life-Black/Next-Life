


function sendMsgOnlyNearbyPlayers(message, messageType)
	local pName = getPlayerName(source)
	
	local x, y, z = getElementPosition(source)
	local chatSphere = createColSphere(x, y, z, 10)
	local nearbyPlayers = getElementsWithinColShape(chatSphere, "player")
	
	if not isPlayerMuted(source) then
			if (messageType == 0) then 
				for _, nearbyPlayer in ipairs(nearbyPlayers) do
					local x2, y2, z2 = getElementPosition(nearbyPlayer)
					local distance = getDistanceBetweenPoints3D(x,y,z,x2,y2,z2)
					local rgb = 15 * distance - 125
					local rgb = math.abs(rgb - 255) + 125
					if (getElementDimension(source) == getElementDimension(nearbyPlayer)) then
						outputChatBox(pName..": "..message, nearbyPlayer, rgb, rgb, rgb)
					end
				end
			elseif (messageType == 1) then 
				for _, nearbyPlayer in pairs(nearbyPlayers) do
					outputChatBox(pName.." "..message, nearbyPlayer, 200, 0, 200)
				end
			elseif (messageType == 2) then
				teamchat(source, message)
			end
		end
			
	destroyElement(chatSphere)
	
	cancelEvent()
	end
addEventHandler("onPlayerChat", root, sendMsgOnlyNearbyPlayers)