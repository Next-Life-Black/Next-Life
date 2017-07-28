function addKeyInBlinkers()
 if (not isKeyBound(source, ",")) and (not isKeyBound(source, ".")) then
  bindKey(source, ",", "down", leftBlinkersON_OFF)
  bindKey(source, ".", "down", rightBlinkersON_OFF)
  bindKey(source, "-", "down", A_BlinkersON_OFF)
 end
end
addEventHandler("onPlayerSpawn", getRootElement(), addKeyInBlinkers)

TABLE_posCarGaborites = {}
TABLE_posCarGaborites[402] = { {-1.2, 3.6, 0}, {-1.2, -4.1, 0}, {1.1, 3.6, 0}, {1.1, -4.1, 0} } 
TABLE_posCarGaborites[409] = { {-1.2, 3.6, 0}, {-1.2, -4.1, 0}, {1.1, 3.6, 0}, {1.1, -4.1, 0} }
TABLE_posCarGaborites[411] = { {-1.0, 2.5, -0.2}, {-1, -2.3, 0}, {1, 2.5, -0.2}, {1, -2.3, 0} }
TABLE_posCarGaborites[412] = { {-1.2, 2.7, 0}, {-1.2, -3.7, 0}, {1.1, 2.7, 0}, {1.1, -3.7, 0} }
TABLE_posCarGaborites[415] = { {-1.2, 2.7, 0}, { -1.2, -2.3, 0}, {1.1, 2.7, 0}, {1.1, -2.3, 0} }
TABLE_posCarGaborites[416] = { {-1.2, 3.1, 0}, {-0.4, -4.1, 1.5}, {1.2, 3.1, 0}, {0.4, -4.1, 1.5} } 
TABLE_posCarGaborites[421] = { {-1.2, 2.7, 0}, { -1.2, -2.3, 0}, {1.1, 2.7, 0}, {1.1, -2.3, 0} }
TABLE_posCarGaborites[422] = { {-1.0, 2.4, 0}, {-1.2, -2.5, 0}, {1.1, 2.4, 0}, {1.1, -2.5, 0} }
TABLE_posCarGaborites[427] = { {-1.1, -2.7, 0.2}, {-1.1, -4.1, 0.2}, {1.1, 2.7, 0.2}, {1.1, -4.1, 0.2} }
TABLE_posCarGaborites[424] = { {-0.7, 1.8, 0}, {-0.7, -1.7, 0}, {0.8, -1.7, 0}, {0.8, 1.8, 0} }
TABLE_posCarGaborites[429] = { {-1.2, 2.2, 0}, {-1.2, -2.5, 0}, {1.1, 2.2, 0}, {1.1, -2.5, 0} }
TABLE_posCarGaborites[439] = { {-1, 2.5, 0}, {-1, -2.6, 0}, {1.1, 2.5, 0}, {1.1, -2.6, 0} }
TABLE_posCarGaborites[475] = { {-1, 2.5, -0.3}, {-1, -2.8, -0.3}, {1.3, 2.2, -0.3}, {1.1, -2.6, -0.3} }
TABLE_posCarGaborites[477] = { {-1.1, 2.9, -0.1}, {-1.1, 2.9, 0}, {1.1, -2.9, 0}, {1.1, -2.9, -0.1} }
TABLE_posCarGaborites[480] = { {-1.1, 2, 0}, {-1, -2.5, 0}, {1.1, 2, 0}, {1, -2.5, 0} }
TABLE_posCarGaborites[506] = { {-1.1, 2.7, 0}, {-1.2, -2.8, 0.2}, {1.1, 2.7, 0}, {1.2, -2.8, 0.2} }
TABLE_posCarGaborites[516] = { {-1.2, 2.7, 0}, {-1.2, -2.8, 0}, {1.2, 2.7, 0}, {1.2, -2.8, 0} }
TABLE_posCarGaborites[533] = { {-1.1, 2.5, 0}, {-1.1, -2.6, 0}, {1.1, 2.5, 0}, {1.1, -2.6, 0} }
TABLE_posCarGaborites[535] = { {-1.1, 2.6, 0}, {-1.1, -2.8, 0}, {1.1, 2.6, 0}, {1.1, -2.8, 0} }
TABLE_posCarGaborites[541] = { {-1.1, 2.7, -0.1}, {-1.2, -2.8, -0.1}, {1.1, 2.7, -0.1}, {1.2, -2.8, -0.1} }
TABLE_posCarGaborites[555] = { {-1.1, 1.1, 0}, {-0.8, -2.5, -0.1}, {1.1, 1.1, 0}, {0.8, -2.5, -0.1} }
TABLE_posCarGaborites[558] = { {-1.1, 2.2, 0}, {-1.1, -2.5, 0.3}, {1.1, -2.5, 0.3}, {1.5, -2.5, 0} }
TABLE_posCarGaborites[559] = { {-1, 2.7, 0.2}, {-1.1, -2.5, 0.2}, {1, 2.7, 0.2}, {1.1, -2.5, 0.2} }
TABLE_posCarGaborites[560] = { {-1.1, 2.7, -0.2}, {-1.1, -2.3, 0.1}, {1.1, 2.7, -0.2}, {1.1, -2.3, 0.1} }
TABLE_posCarGaborites[561] = { {-1, 2.7, -0.1}, {-1.1, -2.7, 0}, {1, 2.7, -0.1}, {1.1, -2.7, 0} }
TABLE_posCarGaborites[562] = { {-1.0, 2.4, 0}, {-1.1, -2.3, 0.2}, {1.0, 2.4, 0}, {1.1, -2.3, 0.2} }
TABLE_posCarGaborites[565] = { {-1.0, 2.2, 0}, {-1.1, -2.1, 0.2}, {1.0, 2.2, 0}, {1.1, -2.1, 0.2} }
TABLE_posCarGaborites[587] = { {-1.1, 2.3, -0.1}, {-1.1, -2.7, 0}, {1.1, 2.3, -0.1}, {1.1, -2.7, 0} }
TABLE_posCarGaborites[596] = { {-1.1, 2.3, 0}, {-1.1, -2.8, 0}, {1.1, 2.3, 0}, {1.1, -2.8, 0} }
TABLE_posCarGaborites[599] = { {-1.3, 2.5, 0}, {-1.3, -2.8, 0.2}, {1.3, 2.5, 0}, {1.3, -2.8, 0.2} }





TABLE_MarkersInVehicle = {}
TABLE_timer = { {}, {}, {} } --//[1] - Левый паварот, [2] - правый паварот, [3] - аварийка.

function EnterVehicle(thePlayer, seat, jacked)
 if (seat == 0) then
   if (getElementData(source, "blinkers") == false) then
   setElementData(source, "blinkers", true)
   TABLE_MarkersInVehicle[source] = {}
   TABLE_MarkersInVehicle[source][1] = createMarker(0, 0, 0, "corona", 0.3, 255, 102, 0, 0)
   TABLE_MarkersInVehicle[source][2] = createMarker(0, 0, 0, "corona", 0.3, 255, 102, 0, 0)
   TABLE_MarkersInVehicle[source][3] = createMarker(0, 0, 0, "corona", 0.3, 255, 102, 0, 0)
   TABLE_MarkersInVehicle[source][4] = createMarker(0, 0, 0, "corona", 0.3, 255, 102, 0, 0)
   local vehicleID = getElementModel(source)
   attachElements(TABLE_MarkersInVehicle[source][1], source, TABLE_posCarGaborites[vehicleID][1][1], TABLE_posCarGaborites[vehicleID][1][2], TABLE_posCarGaborites[vehicleID][1][3])
   attachElements(TABLE_MarkersInVehicle[source][2], source, TABLE_posCarGaborites[vehicleID][2][1], TABLE_posCarGaborites[vehicleID][2][2], TABLE_posCarGaborites[vehicleID][2][3])
   attachElements(TABLE_MarkersInVehicle[source][3], source, TABLE_posCarGaborites[vehicleID][3][1], TABLE_posCarGaborites[vehicleID][3][2], TABLE_posCarGaborites[vehicleID][3][3])
   attachElements(TABLE_MarkersInVehicle[source][4], source, TABLE_posCarGaborites[vehicleID][4][1], TABLE_posCarGaborites[vehicleID][4][2], TABLE_posCarGaborites[vehicleID][4][3])   
   end
 end
end
addEventHandler("onVehicleEnter", getRootElement(), EnterVehicle)


function leftBlinkersON_OFF(keyPresser, key, keyState)
local theVehicle = getPedOccupiedVehicle(keyPresser)
 if theVehicle and getVehicleController(theVehicle) == keyPresser then --//Есле игрок в авто,и он вадила.
  if getElementData(theVehicle, "blinkers_r") == true then
  killTimer(TABLE_timer[2][theVehicle])
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 0)
  setElementData(theVehicle, "blinkers_r", false)
  elseif getElementData(theVehicle, "blinkers_a") == true then
  killTimer(TABLE_timer[3][theVehicle])
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 0)
  setElementData(theVehicle, "blinkers_a", false)
  end
  
  if getElementData(theVehicle, "blinkers_l") == false then --//Есле включон левый паварот, выключаем его.
   setElementData(theVehicle, "blinkers_l", true)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 255)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 255)
   TABLE_timer[1][theVehicle] = setTimer(onLeftRigtsBlinkers, 1000, 0, theVehicle, 1, 2)
  elseif getElementData(theVehicle, "blinkers_l") == true then--//Есле врублена аварийка её атрубаем.
   setElementData(theVehicle, "blinkers_l", false)
   killTimer(TABLE_timer[1][theVehicle])
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 0)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 0)
  end
  end
end

function rightBlinkersON_OFF(keyPresser, key, keyState)
local theVehicle = getPedOccupiedVehicle(keyPresser)
 if theVehicle and getVehicleController(theVehicle) == keyPresser then --//Есле игрок в авто,и он вадила.
  if getElementData(theVehicle, "blinkers_l") == true then
  killTimer(TABLE_timer[1][theVehicle])
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 0)
  setElementData(theVehicle, "blinkers_l", false)
  elseif getElementData(theVehicle, "blinkers_a") == true then
  killTimer(TABLE_timer[3][theVehicle])
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 0)
  setElementData(theVehicle, "blinkers_a", false)
  end

  if getElementData(theVehicle, "blinkers_r") == false then --//Есле включон правый паварот, выключаем его.
   setElementData(theVehicle, "blinkers_r", true)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 255)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 255)
   TABLE_timer[2][theVehicle] = setTimer(onLeftRigtsBlinkers, 1000, 0, theVehicle, 3, 4)
  elseif getElementData(theVehicle, "blinkers_r") == true then--//Есле врублена аварийка её атрубаем.
   setElementData(theVehicle, "blinkers_r", false)
   killTimer(TABLE_timer[2][theVehicle])
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 0)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 0)
  end
 end
end

function A_BlinkersON_OFF(keyPresser, key, keyState)
local theVehicle = getPedOccupiedVehicle(keyPresser)
 if theVehicle and getVehicleController(theVehicle) == keyPresser then --//Есле игрок в авто,и он вадила.
  if getElementData(theVehicle, "blinkers_l") == true then
  killTimer(TABLE_timer[1][theVehicle])
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 0)
  setElementData(theVehicle, "blinkers_l", false)
  elseif getElementData(theVehicle, "blinkers_r") == true then
  killTimer(TABLE_timer[2][theVehicle])
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 0)
  setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 0)
  setElementData(theVehicle, "blinkers_r", false)
  end

  if getElementData(theVehicle, "blinkers_a") == false then --//Есле включон правый паварот, выключаем его.
   setElementData(theVehicle, "blinkers_a", true)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 255)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 255)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 255)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 255)
   TABLE_timer[3][theVehicle] = setTimer(onA_Blinkers, 1000, 0, theVehicle)
  elseif getElementData(theVehicle, "blinkers_a") == true then--//Есле врублена аварийка её атрубаем.
   setElementData(theVehicle, "blinkers_a", false)
   killTimer(TABLE_timer[3][theVehicle])
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 0)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 0)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 0)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 0)
  end
 end
end

function onLeftRigtsBlinkers(theVehicle, num1, num2)
 local r,g,b,a = getMarkerColor(TABLE_MarkersInVehicle[theVehicle][num1])
  if (a == 50) then
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][num1], 255, 102, 0, 255)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][num2], 255, 102, 0, 255)
  else
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][num1], 255, 102, 0, 50)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][num2], 255, 102, 0, 50)
  end
end

function onA_Blinkers(theVehicle)
 local r,g,b,a = getMarkerColor(TABLE_MarkersInVehicle[theVehicle][1])
  if (a == 50) then
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 255)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 255)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 255)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 255)
  else
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][1], 255, 102, 0, 50)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][2], 255, 102, 0, 50)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][3], 255, 102, 0, 50)
   setMarkerColor(TABLE_MarkersInVehicle[theVehicle][4], 255, 102, 0, 50)
  end
end

function destroyVehicle()
 if getElementType(source) == "vehicle" then
  if getElementData(source, "blinkers_l") == true then
  killTimer(TABLE_timer[1][source])
  destroyElement(TABLE_MarkersInVehicle[source][1])
  destroyElement(TABLE_MarkersInVehicle[source][2])
  elseif getElementData(source, "blinkers_l") == true then
  killTimer(TABLE_timer[2][source])
  destroyElement(TABLE_MarkersInVehicle[source][3])
  destroyElement(TABLE_MarkersInVehicle[source][4])
  elseif getElementData(source, "blinkers_a") == true then
  killTimer(TABLE_timer[3][source])
  destroyElement(TABLE_MarkersInVehicle[source][1])
  destroyElement(TABLE_MarkersInVehicle[source][2])
  destroyElement(TABLE_MarkersInVehicle[source][3])
  destroyElement(TABLE_MarkersInVehicle[source][4])
  end
 end
end
addEventHandler("onElementDestroy", getRootElement(), destroyVehicle)

function explodeVehicle()
if getElementData(source, "blinkers_l") == true then
 killTimer(TABLE_timer[1][source])
 setMarkerColor(TABLE_MarkersInVehicle[source][1], 255, 102, 0, 0)
 setMarkerColor(TABLE_MarkersInVehicle[source][2], 255, 102, 0, 0)
elseif getElementData(source, "blinkers_r") == true then
 killTimer(TABLE_timer[2][source])
 setMarkerColor(TABLE_MarkersInVehicle[source][3], 255, 102, 0, 0)
 setMarkerColor(TABLE_MarkersInVehicle[source][4], 255, 102, 0, 0)
elseif getElementData(source, "blinkers_a") == true then
 killTimer(TABLE_timer[3][source])
 setMarkerColor(TABLE_MarkersInVehicle[source][1], 255, 102, 0, 0)
 setMarkerColor(TABLE_MarkersInVehicle[source][2], 255, 102, 0, 0)
 setMarkerColor(TABLE_MarkersInVehicle[source][3], 255, 102, 0, 0)
 setMarkerColor(TABLE_MarkersInVehicle[source][4], 255, 102, 0, 0)
end
end
addEventHandler("onVehicleExplode", getRootElement(), explodeVehicle)