function PDAutos ()
PDCar1= createVehicle (596, 1600.8000488281, -1704, 5.6999998092651, 0, 0, 90) --Police LS
PDCar2= createVehicle (596, 1600.8000488281, -1700, 5.6999998092651, 0, 0, 90) --Police LS
 PDCar3= createVehicle (596, 1595.6999511719, -1710.6999511719, 5.6999998092651, 0, 0, 0) --Police LS
PDCar4= createVehicle (596, 1591.4000244141, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police LS
PDCar5= createVehicle (596, 1587.4000244141, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police LS
 PDCar6= createVehicle (596, 1583.2998046875, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police LS
 PDCar7= createVehicle (596, 1578.400390625, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police LS
 PDCar8= createVehicle (596, 1574.2001953125, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police LS
PDCar9= createVehicle (596, 1570.7001953125, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police LS
PDCar10= createVehicle (596, 1559.1999511719, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police LS
-- PDCar11= createVehicle (596, 1574.2001953125, -1710.7001953125, 5.6999998092651, 0, 0, 90) --Police LS

 PDCar12= createVehicle (599, 1600.8000488281, -1696.0999755859, 6.3000001907349, 0, 0, 90) --Police Rancher
 PDCar13= createVehicle (599, 1600.8000488281, -1692.0999755859, 6.3000001907349, 0, 0, 90) --Police Rancher

 PDCar14= createVehicle (523, 1600.8000488281, -1688, 5.6999998092651, 0, 0, 90) --Police HPV1000
PDCar15= createVehicle (523, 1600.8000488281, -1684.0999755859, 5.6999998092651, 0, 0, 90) --Police HPV1000

 -- PDCar19= createVehicle (427, 1566.5999755859, -1710, 6.0999999046326, 0, 0, 0) --Enforcer
 PDCar17= createVehicle (427, 1563.1999511719, -1710, 6.0999999046326, 0, 0, 0) --Enforcer


setElementData(PDCar1, "Zerstoert", 0)
setElementData(PDCar2, "Zerstoert", 0)
setElementData(PDCar3, "Zerstoert", 0)
setElementData(PDCar4, "Zerstoert", 0)
setElementData(PDCar5, "Zerstoert", 0)
setElementData(PDCar6, "Zerstoert", 0)
setElementData(PDCar7, "Zerstoert", 0)
setElementData(PDCar8, "Zerstoert", 0)
setElementData(PDCar9, "Zerstoert", 0)
setElementData(PDCar10, "Zerstoert", 0)
-- setElementData(PDCar11, "Zerstoert", 0)
setElementData(PDCar12, "Zerstoert", 0)
setElementData(PDCar13, "Zerstoert", 0)
setElementData(PDCar14, "Zerstoert", 0)
setElementData(PDCar15, "Zerstoert", 0)
-- setElementData(PDCar19, "Zerstoert", 0)
setElementData(PDCar17, "Zerstoert", 0)
end

PDAutos ()
-- TestAuto= createVehicle ( 555, 1523.72, -1680.41, 13.54, 0, 0)
function PD_Respawn()

	if getElementData(PDCar1, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 1 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar1)
		PDCar1= createVehicle (596, 1600.8000488281, -1704, 5.6999998092651, 0, 0, 90)
	end
	if getElementData(PDCar2, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 2 des PD's wurde Zerstört!")
		
	else	
		destroyElement(PDCar2)
		PDCar2= createVehicle (596, 1600.8000488281, -1700, 5.6999998092651, 0, 0, 90) --Police LS
	end
	if getElementData(PDCar3, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 3 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar3)
		PDCar3= createVehicle (596, 1595.6999511719, -1710.6999511719, 5.6999998092651, 0, 0, 0) --Police Rancher
	end
	if getElementData(PDCar4, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 4 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar4)
		PDCar4= createVehicle (596, 1591.4000244141, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police Rancher
	end
	if getElementData(PDCar5, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 5 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar5)
		PDCar5= createVehicle (596, 1587.4000244141, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police HPV1000
	end
	if getElementData(PDCar6, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 6 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar6)
		PDCar6= createVehicle (596, 1583.2998046875, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police HPV1000
	end
	if getElementData(PDCar7, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 7 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar7)
		PDCar7= createVehicle (596, 1578.400390625, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police HPV1000
	end
	if getElementData(PDCar8, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 8 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar8)
		PDCar8= createVehicle (596, 1574.2001953125, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police HPV1000
	end
	if getElementData(PDCar9, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 9 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar9)
		PDCar9= createVehicle (596, 1570.7001953125, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police HPV1000
	end
	if getElementData(PDCar10, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 10 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar10)
		PDCar10= createVehicle (596, 1559.1999511719, -1710.7001953125, 5.6999998092651, 0, 0, 0) --Police HPV1000
	end
	-- if getElementData(PDCar11, "Zerstoert") == 1 then
		-- outputChatBox("Fahrzeug Slot 11 des PD's wurde Zerstört!")
	-- else
		-- destroyElement(PDCar11)
		-- PDCar11= createVehicle (596, 1574.2001953125, -1710.7001953125, 5.6999998092651, 0, 0, 90) --Police HPV1000
	
	if getElementData(PDCar12, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 12 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar12)
		PDCar12= createVehicle(599, 1600.8000488281, -1696.0999755859, 6.3000001907349, 0, 0, 90) --Police HPV1000
	end
	if getElementData(PDCar13, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 13 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar13)
		PDCar13= createVehicle (599, 1600.8000488281, -1692.0999755859, 6.3000001907349, 0, 0, 90) --Police HPV1000
	end
	if getElementData(PDCar14, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 14 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar14)
		PDCar14= createVehicle (523, 1600.8000488281, -1688, 5.6999998092651, 0, 0, 90) --Police HPV1000
	end
	if getElementData(PDCar15, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 15 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar15)
		PDCar15= createVehicle (523, 1600.8000488281, -1684.0999755859, 5.6999998092651, 0, 0, 90) --Police HPV1000
	end
	-- if getElementData(PDCar19, "Zerstoert") == 1 then
		-- outputChatBox("Fahrzeug Slot 16 des PD's wurde Zerstört!")
	-- else
		-- destroyElement(PDCar19)
		-- PDCar19= createVehicle createVehicle (427, 1566.5999755859, -1710, 6.0999999046326, 0, 0, 0) --Police HPV1000
	-- end
	
    if getElementData(PDCar17, "Zerstoert") == 1 then
		outputChatBox("Fahrzeug Slot 17 des PD's wurde Zerstört!")
		
	else
		destroyElement(PDCar17)
		PDCar17= createVehicle (427, 1563.1999511719, -1710, 6.0999999046326, 0, 0, 0) --Police HPV1000
	end
end					



local function PD_Car_1()
 if isVehicleBlown(PDCar1)then
       setElementData(PDCar1, "Zerstoert", 1)
end
end    

function PD_Car_2()
    if isVehicleBlown(PDCar2)then
       setElementData(PDCar2, "Zerstoert", 1)
	   end
end	   
function PD_Car_3()	  
    if isVehicleBlown(PDCar3)then
       setElementData(PDCar3, "Zerstoert", 1)
	   end
 end	   
function PD_Car_4()	   
	if isVehicleBlown(PDCar4)then
       setElementData(PDCar4, "Zerstoert", 1)
	   end
end	   
function PD_Car_5()	   
    if isVehicleBlown(PDCar5)then
       setElementData(PDCar5, "Zerstoert", 1)
	   end
end	   
function PD_Car_6()	   
    if isVehicleBlown(PDCar6)then
       setElementData(PDCar6, "Zerstoert", 1)
	   end
end	   
function PD_Car_7()	   
    if isVehicleBlown(PDCar7)then
       setElementData(PDCar7, "Zerstoert", 1)
	   end
end	   
function PD_Car_8()	   
    if isVehicleBlown(PDCar8)then
       setElementData(PDCar8, "Zerstoert", 1)
	   end
end	   
function PD_Car_9()	   
    if isVehicleBlown(PDCar9)then
       setElementData(PDCar9, "Zerstoert", 1)
	   end
end	   
function PD_Car_10()	   
    if isVehicleBlown(PDCar10)then
       setElementData(PDCar10, "Zerstoert", 1)
	   end
 end	   
function PD_Car_16()	   
    if isVehicleBlown(PDCar12)then
       setElementData(PDCar12, "Zerstoert", 1)
	   end
end	   
function PD_Car_11()	   
    if isVehicleBlown(PDCar13)then
       setElementData(PDCar13, "Zerstoert", 1)
	   end
end	   
function PD_Car_12()   
    if isVehicleBlown(PDCar14)then
       setElementData(PDCar14, "Zerstoert", 1)
	   end
end	   
function PD_Car_13()	   
    if isVehicleBlown(PDCar15)then
       setElementData(PDCar15, "Zerstoert", 1)
end	   
end	   
-- function PD_Car_14()	   
    -- if isVehicleBlown(PDCar19)then
       -- setElementData(PDCar19, "Zerstoert", 1)
	   -- end
-- end	   
function PD_Car_15()	   
    if isVehicleBlown(PDCar17)then
       setElementData(PDCar17, "Zerstoert", 1)
	   
    end
  
end
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_1)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_2)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_3)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_4)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_5)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_6)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_7)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_8)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_9)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_10)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_11)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_12)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_13)
-- addEventHandler("onVehicleExplode", getRootElement(), PD_Car_14)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_15)
addEventHandler("onVehicleExplode", getRootElement(), PD_Car_16)
