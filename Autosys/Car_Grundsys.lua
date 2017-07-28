

bindKey("x", function()
  if getVehicleEngineState (theVehicle) == false then
   setVehicleEngineState ( theVehicle, true )
  else
   setVehicleEngineState ( theVehicle, false )
  end
end 
)