--Script by Bonus edit By [UR]Black--
local screenW, screenH = guiGetScreenSize()
addEvent ( "downloadFiles_Bonus", true )
local screenX, screenY = guiGetScreenSize()
local dx, dy= guiGetScreenSize()
local dxHalbe, dyHalbe= dx/2, dy/2
local sx, sy = screenX/1920, screenY/1080
local filepaths = {}
local fileamounts = 0
local downloadcounter = 1
local starttick = 0
local mstoplopout = 4000 
local BoAlpha= 0
local DoAlpha= 0
Musik= false
IntroGO= nil
local blurStrength = 9

function musicStartFunc() 
    if(not JoinSound) then
        JoinSound = playSound("Sounds/Download.mp3", true)
    end
end
musicStartFunc()

local function drawDownloadProgress ( )
	if IntroEnd == nil or IntroEnd == true then
		dxDrawImage(dx, dy, dx, dy, "images/bg.png", 0, 0, 0, tocolor(255,255,255, BoAlpha2))
		dxDrawImage(dxHalbe-500, dyHalbe-250, 1000, 500, "images/GUI3.png", 0, 0, 0, tocolor(255,255,255, BoAlpha))
		dxDrawRectangle(dxHalbe-310, dyHalbe+120, 600, 25, tocolor(0, 0, 0, DoAlpha ))
		dxDrawRectangle(dxHalbe-310, dyHalbe+120, 600*( downloadcounter / fileamounts ), 25, tocolor(0,205,0, DoAlpha ))
		dxDrawText ( "Lädt ("..downloadcounter.." von "..fileamounts.." Daten.)", dxHalbe-70, dyHalbe+120, dxHalbe+76, dyHalbe-120, tocolor ( 0, 0, 0, DoAlpha ), 1.5)
	end	
end


function FadeDownloadGUI()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
	DoAlpha = 0 + ( 200 * progress )					
	BoAlpha = 0 + ( 187 * progress )	
    BoAlpha2 = 0 + ( 255 * progress )
end

function FadeDownloadGUIOut()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
	DoAlpha = 200 - ( 200 * progress )					
	BoAlpha = 187 - ( 187 * progress )
	BoAlpha2 = 255 - ( 255 * progress )
	
end

function loadNextFile_Bonus ( fileName )

	if fileName == filepaths[downloadcounter] then
		if downloadcounter < fileamounts  then				
			downloadcounter = downloadcounter + 1
			downloadFile ( filepaths[downloadcounter] )
			
		else
				
				-- if IntroGo== nil then
					removeEventHandler ( "onClientFileDownloadComplete", root, loadNextFile_Bonus )
					removeEventHandler ( "onClientRender", root, FadeDownloadGUI )
					removeEventHandler ( "onClientRender", root, drawDownloadProgress  )
					
						Login_Register_Buttons()
						Deko_Fade()
						outputChatBox("Das login erscheint in kürze..", 155, 155, 155)
						
				-- end	
			end
		end
end


-- function IntroD()
	-- if  downloadcounter < fileamounts then
		-- destroyElement(JoinSound)
		-- outputChatBox("Lädt2")
		-- Intro()
		-- IntroGO= true
		-- removeEventHandler ( "onClientRender", root, FadeDownloadGUI )
		-- removeEventHandler ( "onClientRender", root, drawDownloadProgress  )
			 
	-- end		
-- end
-- addEventHandler ( "onPlayerJoin", getRootElement(), IntroD)
addEventHandler ( "downloadFiles_Bonus", root, function ( filepathsarray )
	
		fileamounts = #filepathsarray
		for i=1, fileamounts do
			filepaths[i] = filepathsarray[i]
		end
	

	addEventHandler ( "onClientFileDownloadComplete", root, loadNextFile_Bonus )
	addEventHandler ( "onClientRender", root, drawDownloadProgress )
	downloadFile ( filepaths[downloadcounter] )

	starttick = getTickCount()
	addEventHandler ( "onClientRender", root, FadeDownloadGUI )


end )
addEventHandler ( "onClientResourceStart", resourceRoot, function ( )
	triggerServerEvent ( "clientLoadedResource_Bonus", localPlayer )
	outputDebugString("Download Client wurde Erfolgreich Gestartet!")
end )

-- main variables
local root = getRootElement()
local resourceRoot = getResourceRootElement(getThisResource())
local screenWidth, screenHeight = guiGetScreenSize()

-- settings

local blurStrength = 9

-- functional variables
local myScreenSource = dxCreateScreenSource(screenWidth, screenHeight)


addEventHandler("onClientResourceStart", resourceRoot,
function()
    if getVersion ().sortable < "1.3.1" then
        
        return
	else
		blurShader, blurTec = dxCreateShader("shaders/BlurShader.fx")
		
        if (not blurShader) then

		else

        end
    end
end)



function Blur()
    if (blurShader) then
        dxUpdateScreenSource(myScreenSource)
        dxSetShaderValue(blurShader, "ScreenSource", myScreenSource);
        dxSetShaderValue(blurShader, "BlurStrength", blurStrength);
		dxSetShaderValue(blurShader, "UVSize", screenWidth, screenHeight);

        dxDrawImage(0, 0, screenWidth, screenHeight, blurShader)
    end
end
addEventHandler("onClientPreRender", root, Blur)


	function Intro()
		fadeCamera(false)
		playSound("Sounds/Download.mp3", true)
		setTimer(function()
		Text= "Willkomen und Viel Spaß.(Die Daten werden runtergeladen)"		
		addEventHandler("onClientRender", root, DXTextI)	
		IntroGO= true
		end, 2000, 1)	
		
		setTimer(function()
			Text= "Ein Script von Black"			
		end, 6000, 1)
		
		setTimer(function()
			Text= "Von den machern von Infinity Reallife"			
		end, 11000, 1)
		
		setTimer(function()
			Text= "Sefmade Geboren am: 22.1.2016"			
		end, 16000, 1)
		setTimer(function()
			Text= "Hier erlebst du Spaß ohne ende!"			
		end, 21000, 1)
		setTimer(function()
			Text= "Ein Script, das Realer nicht sein kann."			
		end, 26000, 1)
		setTimer(function()
			Text= "Ein Internationales Projetk mit 4 Sprachen!"			
		end, 31000, 1)
		setTimer(function()
			Text= "In leitung von: Black, (Andere Teamitglieder)"			
		end, 36000, 1)
		setTimer(function()
		Text= "Darf ich vorstellen:"
		fadeCamera(true)
		end, 39000, 1)
		setTimer(function()
		addEventHandler("onClientRender", root, Next)
		removeEventHandler("onClientRender", root, DXTextI)			
		end, 42000, 1)
		setTimer(function()
		addEventHandler("onClientRender", root, Life)				
		end, 43500, 1)
		setTimer(function()
		addEventHandler("onClientRender", root, X)					
		end, 45000, 1)
		
end

function DXTextI()
	dxDrawText ( Text, dxHalbe-175, dyHalbe, dxHalbe+147, dyHalbe, tocolor ( 255, 255, 255, DXA ), 2)
end
addCommandHandler("debug", Intro)




function FadeDownloadGUIOut()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
	DXA = 255 - ( 255 * progress )					
end



function Next()
dxDrawImage(screenW * 0.4094, screenH * 0.4602, screenW * 0.1000, screenH * 0.0880, "Downloader/Next.png", 0, 0, 0, tocolor(0, 0, 0, 255), false)
end
function Life()
dxDrawImage(screenW * 0.5245, screenH * 0.4602, screenW * 0.0719, screenH * 0.0880, "Downloader/Life.png", 0, 0, 0, tocolor(0, 0, 0, 255), false)
end 
function X()
 dxDrawImage(screenW * 0.4505, screenH * 0.4694, screenW * 0.0458, screenH * 0.0731, "Downloader/X.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
end