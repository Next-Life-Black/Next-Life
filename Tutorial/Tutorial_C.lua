---------------------------
----Script by Black--------


------Ich werde das Fertig machen.--

local dx, dy= guiGetScreenSize()
local dxHalbe, dyHalbe= dx/2, dy/2
function Tutorial_1()
    fadeCamera(false)
	showCursor(false)
	showChat ( false )
	destroyElement(JoinSound)
	destroyElement(Login.button[4])
	destroyElement(Login.button[3])
	Tutorial_Sound = playSound("Sounds/Tutorial.mp3")
	starttick = getTickCount()
	addEventHandler ( "onClientRender", root, Registerout )
	Dekoout()
    sound_end()
	Vorspann()
end
local WB= 800
local WH= 400
local WindowPosY= 250
local WindowPosX= 400
local starttick = 0
local mstoplopout = 2000 
addEvent ("onPlayerTutorial", true)
addEventHandler ("onPlayerTutorial", getRootElement(), Tutorial_1)
--------------------------------Fade System-----------------------------
function TexteFade_IN()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
    Text= 0	+ ( 255 * progress )
  

end

function TexteFade_Out()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
    Text2= 0	+ ( 255 * progress )
    SAM= 0  + ( 255 * progress )

end

function WindowMove()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
	WindowPosX= 400 + (800* progress)
	WindowPosY= 250  - ( 600* progress )
	WB= 800 +	( dx * progress )
	WH= 400 -	( 300 * progress )

end

function LogoMove()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
    X_X= 0	+ ( 255 * progress )
    X_Y= 0  + ( 255 * progress )
	LogoX= 0  + ( 255 * progress )
	LogoY= 0  + ( 255 * progress )

end
------------------------Tutorial System-------------------------
starttick = getTickCount()
addEventHandler ( "onClientRender", root, Registerout )
----Hier könnt ihr ein Tutorial machen :)
function Vorspann ()
Close_Blur()
Destroy_Register()
sound_end()
close_Dekos()
removeEventHandler("onClientRender", root, Deko)
end

function Vorspann2()


end

function Vorspann3()


end

function Vorspann4()


end

function DrawEffect ()


end

function Tutorial_beginn ()


end

function Tutorial ()


end

function Tutorial2 ()


end

function Tutorial3 ()


end

function Tutorial4 ()


end
function Tutorial5 ()


end

function Tutorial6 ()


end
----------------------------DX_System------------------------
function Fenster ()


end
function Fenster1 ()


end

function Logo ()


end
function Logo1 ()


end


function TSound_end ()

	        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.45)
        end, 1000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.40)
        end, 2000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.35)
        end, 3000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.30)
        end, 4000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.25)
        end, 5000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.20)
        end, 6000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.15)
        end, 7000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.10)
        end, 8000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.05)
        end, 9000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.04)
        end, 10000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.03)
			
        end, 11000, 1)
        setTimer(function()
			setSoundVolume( Tutorial_Sound, 0.02)
        end, 12000, 1)
        setTimer(function()
			destroyElement(Tutorial_Sound)
        end, 13000, 1)

end
--  X = Rechts/Links
--  Y = Oben/Unten
-- -X - = Links
-- -Y - = Unten
	
	function Pre_Alpha()
	
    dxDrawImage(dxHalbe- WindowPosX, dyHalbe- WindowPosY, WB, WH, "images/GUI4.png", 0, 0, 0, tocolor(255,255,255, 255))
    end
	-- addEventHandler ( "onClientRender", root, Pre_Alpha )
	
	
	function TestTUT()
	
	starttick = getTickCount()
	addEventHandler ( "onClientRender", root, WindowMove )
	
	
	end
	
	addCommandHandler("losg", TestTUT)