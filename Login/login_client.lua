
----------Variablen----------
local sm = {}
sm.moov = 0
sm.object1,sm.object2 = nil,nil
Version= "0.1 Pre Alpha" 
local starttick = 0
local mstoplopout = 2000 
fadeCamera(true)
local screenW, screenH = guiGetScreenSize()
-------------------------Register/Login Systemschaltungen(NICHT ÄNDERN!!)-----------------
regi= false
RegisterW= false
LoginW=false
Login_W= false
Register_W= false
LCheck= false
------Deko Alphaund X/Y werte---------
DAlpha = 0 
DAlpha2 = 0 
DAlpha3 = 0
breite= 100
dxBreite= 40
TBreite= 175
THoehe= 902
THoehe2= 900
TRBreite= 165 
TLBreite= 70 
------Login Alphawerte--------
LAlpha = 150 
LAlpha2 = 255 
LAlpha3 = 200
------Register Alphawerte-----
Alpha= 200
Alpha2= 255
Alpha3 = 150
-------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
Login = {
    tab = {},
    tabpanel = {},
    edit = {},
    button = {},
    window = {},
    label = {},
	image = {}
}

BannGui= {
    button = {},
    window = {},
    staticimage = {},
    label = {}
}

Banview = {
    edit = {},
    button = {},
    window = {},
    label = {},
    memo = {}
}

PlayerSpawn = {
    button = {}
}
----------------------------------------------------------------------------------------------------------------------------------


local dx, dy= guiGetScreenSize()
local dxHalbe, dyHalbe= dx/2, dy/2


 
function Dekoin()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
    DAlpha = 0 + ( 180 * progress )
	DAlpha3 = 0 + ( 200 * progress )
end

function Dekosound()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
    DAlpha = 150 - ( 55 * progress )
	DAlpha3 = 200 - ( 55 * progress )
end
 

	function Deko()
		dxDrawRectangle(0, dy-100, dx, breite, tocolor(0, 0, 0, DAlpha))
		dxDrawRectangle(dx-200, dy-60, 160, dxBreite, tocolor(0, 0, 0, DAlpha))
		dxDrawRectangle(35, dy-60, 160, dxBreite, tocolor(0, 0, 0, DAlpha))
		dxDrawText("Login", TLBreite, dyHalbe+400, -70, dyHalbe-400,   tocolor(0, 139, 0, DAlpha), 1.80, "default-bold", "left", "top", false, false, false, false, false)
		dxDrawText("Register", dx-TRBreite, dyHalbe+400, dx+165, dyHalbe-400,   tocolor(0, 139, 0, DAlpha), 1.80, "default-bold", "left", "top", false, false, false, false, false)
		dxDrawText("Next-Life "..Version.."", dxHalbe- TBreite, dy-THoehe, dxHalbe+147, dy+902,   tocolor(0, 0, 0, DAlpha3), 2.50, "default-bold", "left", "top", false, false, false, false, false)
		dxDrawText("Next-Life "..Version.."", dxHalbe- TBreite, dy-THoehe2, dxHalbe+143, dy+900,   tocolor(255, 255, 255, DAlpha3), 2.50, "default-bold", "left", "top", false, false, false, false, false)
	end
addEventHandler("onClientRender", root, Deko)


function Dekoout()
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
    DAlpha = 180  - ( 180 * progress )
	DAlpha3 = 200 - ( 200 * progress )					
	breite = 100  - ( 100 * progress )
	dxBreite = 40 -	( 40 * progress )
	THoehe = 902  + ( 800 * progress )
	THoehe2 = 900 + ( 100 * progress )
	TRBreite= 165 - ( 165 * progress )
	TLBreite= 70  - ( 70 * progress )
	
end



	function Deko_Fade()          
			setTimer(function()
			starttick = getTickCount()
			addEventHandler ( "onClientRender", root, Dekoin )
			end, 1000, 1)
			
			setTimer(function()
			starttick = getTickCount()
			removeEventHandler ( "onClientRender", root, Dekoin )
			end, 6600, 1)		
		end		







function BanWindow_Login()	
        BannGui.window[1] = guiCreateWindow(0.32, 0.30, 0.34, 0.28, "Gebannt!", true)
        guiWindowSetSizable(BannGui.window[1], false)
        guiSetAlpha(BannGui.window[1], 0.94)
        guiSetProperty(BannGui.window[1], "CaptionColour", "FFB90000")

        BannGui.staticimage[1] = guiCreateStaticImage(0.02, 0.11, 0.96, 0.25, "images/Logo.png", true, BannGui.window[1])
        BannGui.label[1] = guiCreateLabel(0.03, 0.41, 0.93, 0.52, "Lieber user, Sie wurden von einem Admin Gebannt!.", true, BannGui.window[1])

        BannGui.label[2] = guiCreateLabel(0.00, 0.13, 0.82, 0.19, "Gründe könnten sein : Beleidigung, SDM, Serverwerbung, etc", true, BannGui.label[1])
        BannGui.label[3] = guiCreateLabel(0.00, 0.28, 0.71, 0.25, "Sollte keiner dieser Gründe auf sie zutreffen, so klicken sie auf den Admin button", true, BannGui.label[1])
        guiLabelSetHorizontalAlign(BannGui.label[3], "left", true)
        BannGui.button[1] = guiCreateButton(0.00, 0.83, 0.15, 0.17, "Entbannen", true, BannGui.label[1])
        BannGui.button[2] = guiCreateButton(0.85, 0.83, 0.15, 0.17, "Admin", true, BannGui.label[1])
        BannGui.button[3] = guiCreateButton(0.40, 0.83, 0.20, 0.17, "Server Verlassen", true, BannGui.label[1])   
		StartBann()
		guiSetVisible(Login.button[1], false)
		guiSetVisible(Login.edit[1], false)
		guiSetVisible(Login.edit[2], false)
		destroyElement(Login.button[4])
		destroyElement(Login.button[3])
					addEventHandler ( "onClientGUIClick", BannGui.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == BannGui.button[1]) then
		 			Unbann_Self()		
					end
				end
			end
		)
							addEventHandler ( "onClientGUIClick", BannGui.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == BannGui.button[2]) then
		 			Banview_W()
					end
				end
			end
		)
		
    end
addEvent("BannWindow_L",true)
addEventHandler("BannWindow_L",getRootElement(), BanWindow_Login)

function CloseBann()
destroyElement(BannGui.window[1])
destroyElement(Unbann.window[1])
sound_end()
showCursor(false)
setPlayerHudComponentVisible ( "all", true )
end
addEvent("zuBann",true)
addEventHandler("zuBann",getRootElement(), CloseBann)

function close_Dekos()
destroyElement(Login.button[4])
destroyElement(Login.button[3])
end

function Login_Register_Buttons()    
		Login.button[4] = guiCreateButton(0.01, 0.92, 0.15, 0.07, "Einloggen", true)
        guiSetAlpha(Login.button[4], 0.00)


        Login.button[3] = guiCreateButton(0.84, 0.92, 0.15, 0.07, "Registrieren", true)
        guiSetAlpha(Login.button[3], 0.00) 
		
  
			
			
			addEventHandler ( "onClientGUIClick", Login.button[3],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Login.button[3]) and RegisterW== false then
					LoginW= false
					RegisterW= true
					Face_screen2()
					
			 						
					end
				end
			end
		)
			addEventHandler ( "onClientGUIClick", Login.button[4],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Login.button[4]) and LoginW==false then
		 			LoginW= true
                    RegisterW= false
					Face_screen()		
					end
				end
			end
		)		
    end

	


	
	

Unbann = {
    button = {},
    window = {},
    staticimage = {},
	edit = {},
    label = {}
}

    function Unbann_Self()
        Unbann.window[1] = guiCreateWindow(0.16, 0.30, 0.16, 0.28, "EBPW", true)
        guiWindowSetSizable(Unbann.window[1], false)
        guiSetAlpha(Unbann.window[1], 0.97)

        Unbann.button[1] = guiCreateButton(0.15, 0.73, 0.64, 0.17, "Einlösen", true, Unbann.window[1])
        Unbann.label[1] = guiCreateLabel(0.04, 0.12, 0.92, 0.14, "Gebe unten den code ein, den sie von einem Admin bekommen haben", true, Unbann.window[1])
        guiLabelSetHorizontalAlign(Unbann.label[1], "left", true)
        Unbann.edit[1] = guiCreateEdit(0.06, 0.37, 0.79, 0.10, "Zb. Bhggt oder sowas", true, Unbann.window[1])   
							addEventHandler ( "onClientGUIClick", Unbann.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source == Unbann.button[1]) then
		 			EBPW_Code= guiGetText(Unbann.edit[1])
					triggerServerEvent("EBPW_End",getLocalPlayer(), EBPW_Code)
					end
				end
			end
		)		
    end



setCameraMatrix( 1666.0859375, -1390.9892578125,  76.318634033203 , 1649.130859375, -1362.3818359375,  117.84437561035)






function Login_Window()
        Login_W= true
        Register_W= true
        -- playSound("Sounds/register_login/Button_Click.mp3")
		Login.button[1] = guiCreateButton(0.37, 0.56, 0.26, 0.04, "", true)
        guiSetAlpha(Login.button[1], 0.00)
        Login.edit[1] = guiCreateEdit(0.43, 0.47, 0.18, 0.03, ""..getPlayerName(localPlayer).."", true) 
        guiEditSetReadOnly(Login.edit[1], true)
        Login.edit[2] =guiCreateEdit(0.43, 0.52, 0.18, 0.03, "", true)
        guiEditSetMasked(Login.edit[2], true)
		guiSetAlpha(Login.edit[2], 0)
		guiSetAlpha(Login.edit[1], 0.0)
		addEventHandler("onClientGUIClick", Login.button[1], Face_screen3, false)
		guiEditSetReadOnly(Login.edit[1], true)
		setCameraMatrix(1528.615234375, -1429.029296875,  356.83587646484 , 1505.431640625, -1355.5771484375,  315.95687866211)
		addEventHandler("onClientRender", root, Login_WindowD)


end

function Loginout()
 if Register_WO== true then
    local progress = ( getTickCount() - starttick ) / mstoplopout
    progress = progress > 1 and 1 or progress
    LAlpha = 150 - ( 150 * progress )
    LAlpha2 = 255 - ( 255 * progress )
	LAlpha3 = 200 - ( 200 * progress )	
 end	
end

    function Login_WindowD()
		local Login2= guiGetText(Login.edit[2])
		local Loginw= guiGetText(Login.edit[1])		
		 dxDrawImage(dxHalbe-200, dyHalbe-100, 400, 200, "images/GUI.png", 0, 0, 0, tocolor(255,255,255, LAlpha3))
		 dxDrawRectangle(dxHalbe-185, dyHalbe+60, 370 , 30, tocolor(0, 0, 0, LAlpha))
		 dxDrawRectangle(dxHalbe-97, dyHalbe-22, 230, 25, tocolor(0, 0, 0, LAlpha))
		 dxDrawRectangle(dxHalbe-97, dyHalbe+18, 230, 25, tocolor(0, 0, 0,LAlpha))
		 dxDrawText(""..Loginw.."", dxHalbe-90, dyHalbe-17, dxHalbe+90, dyHalbe+17,   tocolor(255, 255, 200, LAlpha2), 1, "default-bold", "left", "top", false, false, false, false, false)
		 dxDrawText(""..Login2.."", dxHalbe-90, dyHalbe+20, dxHalbe+90, dyHalbe-20,   tocolor(255, 255, 200, LAlpha2), 1, "default-bold", "left", "top", false, false, false, false, false)
		 dxDrawText("Login", dxHalbe-35, dyHalbe+60, dxHalbe+35, dyHalbe-60, tocolor(255, 255, 200, LAlpha2), 1.80, "default-bold", "left", "top", false, false, false, false, false)	 
    end

	addEvent("zuLogin",true)
	addEventHandler("zuLogin",getRootElement(),function ()
		if regi== false then	
			starttick = getTickCount()
			addEventHandler ( "onClientRender", root, Loginout )
			starttick = getTickCount()
			addEventHandler ( "onClientRender", root, Dekoout )
	        showCursor(false)
			setPlayerHudComponentVisible ( "all", true )
			showChat ( true )
			sound_end()
            close_Dekos()
			Close_Blur()
			guiSetVisible(Login.button[1], false)
			guiSetVisible(Login.edit[1], false)
			guiSetVisible(Login.edit[2], false)
			setTimer(function()
				removeEventHandler("onClientRender", root, Deko)
				removeEventHandler("onClientRender", root, Login_CButton)
				removeEventHandler("onClientRender", root, Loginout)
				removeEventHandler("onClientRender", root, Dekoout)
			end, 2300, 1)
		else
			Destroy_Register()
			sound_end()
			close_Dekos()
			removeEventHandler("onClientRender", root, Deko)
		end	
	end)


function Close_Blur()
		destroyElement(blurShader)
		blurShader = nil
	end




showCursor(true)	


Banview = {
    edit = {},
    button = {},
    window = {},
    label = {},
    memo = {}
}

    function Banview_W()
        Banview.window[1] = guiCreateWindow(0.32, 0.58, 0.34, 0.20, "Eine entschuldigung kommt immer gut ;)", true)
        guiWindowSetSizable(Banview.window[1], false)
        guiSetAlpha(Banview.window[1], 0.94)

        Banview.label[1] = guiCreateLabel(0.05, 0.15, 0.92, 0.16, "Hier kannst du eine Narchricht an die Admins Schreiben. Beleidigst du bekommst du ein Offline Ban!", true, Banview.window[1])
        guiLabelSetHorizontalAlign(Banview.label[1], "left", true)
        Banview.memo[1] = guiCreateMemo(0.05, 0.46, 0.50, 0.23, "Deine Nachricht", true, Banview.window[1])
        Banview.button[1] = guiCreateButton(0.59, 0.46, 0.37, 0.47, "Senden --->>>", true, Banview.window[1])
        Banview.edit[1] = guiCreateEdit(0.05, 0.74, 0.50, 0.21, "Name vom Admin", true, Banview.window[1])    
    end

	
	
	
	------------------ Erstes Login von Xseam -----------------------------
	
-- screenW, screenH = guiGetScreenSize()


-- Login = {
    -- tab = {},
    -- tabpanel = {},
    -- edit = {},
    -- button = {},
    -- window = {},
    -- label = {},
	-- image = {}
-- }
-- addEventHandler("onClientResourceStart", resourceRoot,
    -- function()
        -- Login.window[1] = guiCreateWindow((screenW - 368) / 2, (screenH - 212) / 2, 368, 212, "Login/Register", false)
        -- guiWindowSetSizable(Login.window[1], false)
        -- guiSetAlpha(Login.window[1], 1.00)


        -- Login.tabpanel[1] = guiCreateTabPanel(10, 31, 348, 171, false, Login.window[1])
		
		--Login
		
        -- Login.tab[1] = guiCreateTab("Login", Login.tabpanel[1])

        -- Login.label[1] = guiCreateLabel(14, 10, 110, 19, "Username", false, Login.tab[1])
        -- Login.edit[1] = guiCreateEdit(10, 29, 156, 27, "", false, Login.tab[1])
        -- Login.label[2] = guiCreateLabel(14, 82, 110, 19, "Passwort", false, Login.tab[1])
        -- Login.edit[2] = guiCreateEdit(10, 101, 156, 27, "", false, Login.tab[1])
        -- guiEditSetMasked(Login.edit[2], true)
        -- Login.button[1] = guiCreateButton(210, 30, 99, 98, "Login", false, Login.tab[1])
        -- guiSetProperty(Login.button[1], "NormalTextColour", "FFAAAAAA")
		-- addEventHandler("onClientGUIClick", Login.button[1], wennLogin, false)

		--Register
		
        -- Login.tab[2] = guiCreateTab("Register", Login.tabpanel[1])
		
		-- Login.label[3] = guiCreateLabel(14, 10, 110, 19, "Username", false, Login.tab[2])
        -- Login.edit[3] = guiCreateEdit(10, 29, 156, 27, "", false, Login.tab[2])
        -- Login.label[4] = guiCreateLabel(14, 82, 110, 19, "Passwort", false, Login.tab[2])
        -- Login.edit[4] = guiCreateEdit(10, 101, 156, 27, "", false, Login.tab[2])
        -- guiEditSetMasked(Login.edit[4], true)
        -- Login.button[2] = guiCreateButton(210, 30, 99, 98, "Register", false, Login.tab[2])
        -- guiSetProperty(Login.button[1], "NormalTextColour", "FFAAAAAA")
		-- addEventHandler("onClientGUIClick", Login.button[2], wennRegi, false)
		-- setCameraMatrix( 1488.20, -1632.20, 47.80, 1543.30, -1669.90,20.30)
		-- fadeCamera(true)
	
    -- end
-- )
---------------------------------------------------------------------------
function Register_Window()
		Login_W= true
        Register_W= true
        addEventHandler("onClientRender", root, Register_WindowD)  
		Login.edit[3] = guiCreateEdit(0.35, 0.37, 0.67, 0.03, ""..getPlayerName(localPlayer).."", true)  
		Login.edit[4] = guiCreateEdit(0.35, 0.50, 0.67, 0.03, "", true)
        Login.edit[5] = guiCreateEdit(0.35, 0.44, 0.67, 0.03, "", true)
		Login.edit[6] = guiCreateEdit(0.35, 0.56, 0.67, 0.03, "", true)    
		Login.button[2] = guiCreateButton(0.62, 0.59, 0.08, 0.05, "", true)
   
        guiSetAlpha(Login.button[2], 0.00)
		guiSetAlpha(Login.edit[5], 0.00)
		guiSetAlpha(Login.edit[6], 0.00)
		guiSetAlpha(Login.edit[3], 0.00)
		guiSetAlpha(Login.edit[4], 0.00)
		guiEditSetReadOnly(Login.edit[3], true)        
		addEventHandler("onClientGUIClick", Login.button[2], wennRegi, false)
		setCameraMatrix( 1805.333984375, -1519.2568359375,  147.13995361328, 1694.1474609375, -1424.73046875,  155.88154602051)
		fadeCamera(true)		
    end

function Destroy_Register()	
destroyElement(Login.edit[5])
destroyElement(Login.edit[4])
destroyElement(Login.edit[3])
destroyElement(Login.edit[6])
destroyElement(Login.button[2])
Alpha= 200
Alpha2= 255
Alpha3 = 150
removeEventHandler("onClientRender", root, Register_WindowD)  
removeEventHandler ( "onClientRender", root, Registerout )

end

function CloseBann()
end

function Registerout()
    if Register_WO== true then
		local progress = ( getTickCount() - starttick ) / mstoplopout
		progress = progress > 1 and 1 or progress
		Alpha = 200 - ( 200 * progress )
		Alpha2 = 255 - ( 255 * progress )
		Alpha3 = 150 - ( 150 * progress )
	end	
end

    function Register_WindowD()
dxDrawImage(dxHalbe-400, dyHalbe-250, 800, 400, "images/GUI2.png", 0, 0, 0, tocolor(255,255,255, Alpha))
dxDrawRectangle(dxHalbe-210, dyHalbe-116, 400, 25, tocolor(0, 0, 0, Alpha3 ))
dxDrawRectangle(dxHalbe-210, dyHalbe-53, 400, 25, tocolor(0, 0, 0, Alpha3 ))
dxDrawRectangle(dxHalbe-210, dyHalbe+2, 400, 25, tocolor(0, 0, 0, Alpha3 ))
dxDrawRectangle(dxHalbe-210, dyHalbe+55, 400, 25, tocolor(0, 0, 0, Alpha3 ))
dxDrawText(guiGetText(Login.edit[3]), dxHalbe-209, dyHalbe-113, dxHalbe+212, dyHalbe-113,   tocolor(255, 255, 200, Alpha2), 1, "default-bold", "left", "top", false, false, false, false, false)
dxDrawText(guiGetText(Login.edit[5]), dxHalbe-209, dyHalbe-51, dxHalbe+212, dyHalbe-51,   tocolor(255, 255, 200, Alpha2), 1, "default-bold", "left", "top", false, false, false, false, false)
dxDrawText(guiGetText(Login.edit[4]), dxHalbe-209, dyHalbe+4, dxHalbe+212, dyHalbe-4,   tocolor(255, 255, 200, Alpha2), 1, "default-bold", "left", "top", false, false, false, false, false)
dxDrawText(guiGetText(Login.edit[6]), dxHalbe-209, dyHalbe+56, dxHalbe+212, dyHalbe-56,   tocolor(255, 255, 200, Alpha2), 1, "default-bold", "left", "top", false, false, false, false, false)
dxDrawRectangle(dxHalbe+245, dyHalbe+100, 130, 35, tocolor(0, 0, 0, Alpha3))
dxDrawText("Registrieren", dxHalbe+275, dyHalbe+110, dxHalbe-275, dyHalbe-110,   tocolor(255, 255, 200, Alpha2), 1, "default-bold", "left", "top", false, false, false, false, false)
    end






	function wennRegi()
		PWC= guiGetText(Login.edit[4])
		if guiGetText(Login.edit[5])== PWC then
			local Name = guiGetText(Login.edit[3])
			local Pw = guiGetText(Login.edit[4])
			if Pw:len() >= 5 then
				triggerServerEvent("wennRegi",getLocalPlayer(),Name, Pw)
				Destroy_Register()
				regi= true
		
			elseif Pw:len()== 0 then
				outputChatBox("Bitte gebe ein Passwort ein",255,0,0)
			else
				outputChatBox("Dein Passwort muss mindestens 5 Zeichen haben",255,0,0)
			end	
		else
			outputChatBox("Die Passwörter stimmen nicht über ein!",255,0,0)
		end
  
end
 

function wennLogin()
	local Name = guiGetText(Login.edit[1])
	local Pw = guiGetText(Login.edit[2])
	triggerServerEvent("wennLogin",getLocalPlayer(),Name, Pw)
end
showCursor(true)
setPlayerHudComponentVisible ( "all", false )
showChat ( true )




	function Face_screen()
	
		if Login_W== true then	
		    Register_WO= true
			starttick = getTickCount()
			addEventHandler ( "onClientRender", root, Registerout )
			removeEventHandler("onClientRender", root, Register_WindowD) 
			setTimer(function()
				fadeCamera(false)
				Destroy_Register()
			end, 2300, 1)
			setTimer(function() 	 
				fadeCamera(true)
				setCameraMatrix(1528.615234375, -1429.029296875,  356.83587646484 , 1505.431640625, -1355.5771484375,  315.95687866211)
				Login_Window()
			end, 4000, 1)
		else
			setTimer(function()
			fadeCamera(false)
			end, 200, 1)
			setTimer(function()		 	 
				fadeCamera(true)
				setCameraMatrix(1528.615234375, -1429.029296875,  356.83587646484 , 1505.431640625, -1355.5771484375,  315.95687866211)
				Login_Window()
			end, 1600, 1)
		end	
	end		
	

function Face_screen3()    	
	   if LCheck== false then
			LCheck= true
			setTimer(function()
				fadeCamera(false)
			end, 300, 1)
			setTimer(function()
				fadeCamera(true)
				wennLogin()
			end, 1600, 1)
			
			setTimer(function()
			LCheck= false
			end, 2000, 1)
		end
	end	

	function destroyLogin()
		guiSetVisible(Login.button[1], false)
		guiSetVisible(Login.edit[1], false)
		guiSetVisible(Login.edit[2], false)
		removeEventHandler("onClientRender", root, Login_WindowD)
		removeEventHandler ( "onClientRender", root, Loginout )
		LAlpha = 150 
		LAlpha2 = 255 
		LAlpha3 = 200
	end

	function Face_screen2()
		if Register_W== true then	
			Login_WO= true
			starttick = getTickCount()
			addEventHandler ( "onClientRender", root, Loginout )
			removeEventHandler("onClientRender", root, Login_WindowD)
			setTimer(function()
				fadeCamera(false) 
				destroyLogin()
			end, 2300, 1)
			setTimer(function()
						
				fadeCamera(true)
				setCameraMatrix( 1805.333984375, -1519.2568359375,  147.13995361328, 1694.1474609375, -1424.73046875,  155.88154602051)
				Register_Window()
					
			end, 4000, 1)
				
				
		else
			addEventHandler ( "onClientRender", root, Loginout )
			setTimer(function()
				fadeCamera(false) 
			end, 200, 1)
			setTimer(function()
						
			fadeCamera(true)
			setCameraMatrix( 1805.333984375, -1519.2568359375,  147.13995361328, 1694.1474609375, -1424.73046875,  155.88154602051)
			Register_Window()				
			end, 1600, 1)
		end		
	end		

function sound_end()

	        setTimer(function()
			setSoundVolume( JoinSound, 0.45)
        end, 1000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.40)
        end, 2000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.35)
        end, 3000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.30)
        end, 4000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.25)
        end, 5000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.20)
        end, 6000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.15)
        end, 7000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.10)
        end, 8000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.05)
        end, 9000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.04)
        end, 10000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.03)
        end, 11000, 1)
        setTimer(function()
			setSoundVolume( JoinSound, 0.02)
        end, 12000, 1)
        setTimer(function()
			destroyElement(JoinSound)
        end, 13000, 1)

end

	function StartBann()
		local Login = {
			tab = {},
			tabpanel = {},
			edit = {},
			button = {},
			window = {},
			label = {},
			image = {}
		}
		starttick = getTickCount()
		addEventHandler ( "onClientRender", root, Loginout )
		starttick = getTickCount()
		addEventHandler ( "onClientRender", root, Dekoout )
	end


addEvent("StartBann_SYS",true)
addEventHandler("StartBann_SYS",getRootElement(), StartBann)




 

---------------------------------------------------------------------------------PlayerSpawn System---------------------------------------------------------------------------------------------




    function PlayerSpawn_Buttons()
		PlayerSpawnn = {
			button = {}
		}
        PlayerSpawnn.button[1] = guiCreateButton(0.35, 0.55, 0.11, 0.04, "bigFM", true)
        guiSetAlpha(PlayerSpawnn.button[1], 0.00)


        PlayerSpawnn.button[2] = guiCreateButton(0.54, 0.55, 0.11, 0.04, "Your FM", true)
        guiSetAlpha(PlayerSpawnn.button[2], 0.00)    
		
		addEventHandler ( "onClientGUIClick",  PlayerSpawnn.button[1],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source ==  PlayerSpawnn.button[1]) then
				    destroyElement(DeathRadio)
					DeathRadio= playSound("http://217.151.152.245/bigfm-mp3-96")
					end
				end
			end
		)
		
		addEventHandler ( "onClientGUIClick",  PlayerSpawnn.button[2],
			function ( button, state )
				if (button == "left" and state == "up") then
					if (source ==  PlayerSpawnn.button[2]) then
					destroyElement(DeathRadio)
					DeathRadio= playSound("http://metafiles.gl-systemhaus.de/hr/youfm_2.m3u")
					end
				end
			end
		)
    end




    function PlayerSpawn()
        dxDrawRectangle(screenW * 0.3076, screenH * 0.3600, screenW * 0.3889, screenH * 0.2800, tocolor(0, 0, 0, 255), false)
        dxDrawRectangle(screenW * 0.3257, screenH * 0.3900, screenW * 0.3514, screenH * 0.2222, tocolor(21, 21, 21, 255), false)
        dxDrawText("Du bist Gestorben!", (screenW * 0.3875) - 1, (screenH * 0.3900) - 1, (screenW * 0.6840) - 1, (screenH * 0.4389) - 1, tocolor(0, 0, 0, 255), 1.00, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText("Du bist Gestorben!", (screenW * 0.3875) + 1, (screenH * 0.3900) - 1, (screenW * 0.6840) + 1, (screenH * 0.4389) - 1, tocolor(0, 0, 0, 255), 1.00, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText("Du bist Gestorben!", (screenW * 0.3875) - 1, (screenH * 0.3900) + 1, (screenW * 0.6840) - 1, (screenH * 0.4389) + 1, tocolor(0, 0, 0, 255), 1.00, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText("Du bist Gestorben!", (screenW * 0.3875) + 1, (screenH * 0.3900) + 1, (screenW * 0.6840) + 1, (screenH * 0.4389) + 1, tocolor(0, 0, 0, 255), 1.00, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText("Du bist Gestorben!", screenW * 0.3875, screenH * 0.3900, screenW * 0.6840, screenH * 0.4389, tocolor(229, 0, 0, 255), 1.00, "bankgothic", "left", "top", false, false, false, false, false)
        dxDrawText("Falls du ohne grund getötet wurdes, schreibe ein Ticket mit der begründung.  Falls du Screens hast, schreibe eine Beschwerde im Forum. Die Screens, kannst du dan hochladen direkt im Forum. Es dauert etwas bist du wiederbelebt wirst. Du kannst etwas Radio hören, damit dir nicht Langweillig wird", (screenW * 0.3326) - 1, (screenH * 0.4467) - 1, (screenW * 0.6701) - 1, (screenH * 0.5456) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, true, false, false, false)
        dxDrawText("Falls du ohne grund getötet wurdes, schreibe ein Ticket mit der begründung.  Falls du Screens hast, schreibe eine Beschwerde im Forum. Die Screens, kannst du dan hochladen direkt im Forum. Es dauert etwas bist du wiederbelebt wirst. Du kannst etwas Radio hören, damit dir nicht Langweillig wird", (screenW * 0.3326) + 1, (screenH * 0.4467) - 1, (screenW * 0.6701) + 1, (screenH * 0.5456) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, true, false, false, false)
        dxDrawText("Falls du ohne grund getötet wurdes, schreibe ein Ticket mit der begründung.  Falls du Screens hast, schreibe eine Beschwerde im Forum. Die Screens, kannst du dan hochladen direkt im Forum. Es dauert etwas bist du wiederbelebt wirst. Du kannst etwas Radio hören, damit dir nicht Langweillig wird", (screenW * 0.3326) - 1, (screenH * 0.4467) + 1, (screenW * 0.6701) - 1, (screenH * 0.5456) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, true, false, false, false)
        dxDrawText("Falls du ohne grund getötet wurdes, schreibe ein Ticket mit der begründung.  Falls du Screens hast, schreibe eine Beschwerde im Forum. Die Screens, kannst du dan hochladen direkt im Forum. Es dauert etwas bist du wiederbelebt wirst. Du kannst etwas Radio hören, damit dir nicht Langweillig wird", (screenW * 0.3326) + 1, (screenH * 0.4467) + 1, (screenW * 0.6701) + 1, (screenH * 0.5456) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, true, false, false, false)
        dxDrawText("Falls du ohne grund getötet wurdes, schreibe ein Ticket mit der begründung.  Falls du Screens hast, schreibe eine Beschwerde im Forum. Die Screens, kannst du dan hochladen direkt im Forum. Es dauert etwas bist du wiederbelebt wirst. Du kannst etwas Radio hören, damit dir nicht Langweillig wird", screenW * 0.3326, screenH * 0.4467, screenW * 0.6701, screenH * 0.5456, tocolor(254, 254, 254, 255), 1.00, "default-bold", "left", "top", false, true, false, false, false)
        dxDrawRectangle(screenW * 0.3507, screenH * 0.5522, screenW * 0.1111, screenH * 0.0333, tocolor(68, 68, 68, 255), false)
        dxDrawRectangle(screenW * 0.5354, screenH * 0.5522, screenW * 0.1111, screenH * 0.0333, tocolor(68, 68, 68, 255), false)
        dxDrawText("Big FM", screenW * 0.3694, screenH * 0.5522, screenW * 0.4722, screenH * 0.5756, tocolor(0, 0, 0, 255), 1.00, "pricedown", "left", "top", false, false, false, false, false)
        dxDrawText("Your FM", screenW * 0.5563, screenH * 0.5522, screenW * 0.6590, screenH * 0.5756, tocolor(0, 0, 0, 255), 1.00, "pricedown", "left", "top", false, false, false, false, false)
        dxDrawText("Fortschritt: "..Fortschritt.."", (screenW * 0.3854) - 1, (screenH * 0.5967) - 1, (screenW * 0.4583) - 1, (screenH * 0.6189) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Fortschritt: "..Fortschritt.."", (screenW * 0.3854) + 1, (screenH * 0.5967) - 1, (screenW * 0.4583) + 1, (screenH * 0.6189) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Fortschritt: "..Fortschritt.."", (screenW * 0.3854) - 1, (screenH * 0.5967) + 1, (screenW * 0.4583) - 1, (screenH * 0.6189) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Fortschritt: "..Fortschritt.."", (screenW * 0.3854) + 1, (screenH * 0.5967) + 1, (screenW * 0.4583) + 1, (screenH * 0.6189) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText("Fortschritt: "..Fortschritt.."", screenW * 0.3854, screenH * 0.5967, screenW * 0.4583, screenH * 0.6189, tocolor(254, 254, 254, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText(""..Fortschritt_Text.."", (screenW * 0.4653) - 1, (screenH * 0.5967) - 1, (screenW * 0.6701) - 1, (screenH * 0.6122) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText(""..Fortschritt_Text.."", (screenW * 0.4653) + 1, (screenH * 0.5967) - 1, (screenW * 0.6701) + 1, (screenH * 0.6122) - 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText(""..Fortschritt_Text.."", (screenW * 0.4653) - 1, (screenH * 0.5967) + 1, (screenW * 0.6701) - 1, (screenH * 0.6122) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText(""..Fortschritt_Text.."", (screenW * 0.4653) + 1, (screenH * 0.5967) + 1, (screenW * 0.6701) + 1, (screenH * 0.6122) + 1, tocolor(0, 0, 0, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
        dxDrawText(""..Fortschritt_Text.."", screenW * 0.4653, screenH * 0.5967, screenW * 0.6701, screenH * 0.6122, tocolor(254, 254, 254, 255), 1.00, "default-bold", "left", "top", false, false, false, false, false)
    end

	function CloseAll_D()
	removeEventHandler("onClientRender", root, PlayerSpawn )  
	destroyElement(PlayerSpawnn.button[1])
	destroyElement(PlayerSpawnn.button[2])
	end
function PlayerRespawn()
Fortschritt_Text= "Starte Behandlung"
Fortschritt= tostring("0%")
addEventHandler("onClientRender", root, PlayerSpawn) 
PlayerSpawn_Buttons()
showCursor(true)
	        setTimer(function()
			Fortschritt_Text= tostring("Ped wird Zussamen geflickt..")
			Fortschritt= tostring("10")
        end, 3000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Wunden werden geheilt...")
			Fortschritt= tostring("19")
        end, 6000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Nahte werden gezogen")
			Fortschritt= tostring("30")
        end, 9000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Neues Herz wird eingesetzt")
			Fortschritt= tostring("42")
        end, 12000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Ärtzte Trinken Kaffe...")
			Fortschritt= tostring("63")
        end, 15000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Doktor ist Scheißen...")
			Fortschritt= tostring("64")
        end, 21000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Ärtzte machen Selfeis mit dem Ped...")
			Fortschritt= tostring("71")
        end, 26000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Gehirn wird eingesetzt...")
			Fortschritt= tostring("75")
        end, 30000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Der Dokor knallt die Schwester...")
			Fortschritt= tostring("80")
        end, 36000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Ped wird Spieler zugewiesen...")
			Fortschritt= tostring("82")
        end, 40000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Ped wird zum Ausgangspunkt gebracht")
			Fortschritt= tostring("90")
        end, 43000, 1)
        setTimer(function()
			Fortschritt_Text= tostring("Ped wirt aus dem Auto geschmissen...")
			Fortschritt= tostring("99%")
        end, 49000, 1)
        setTimer(function()
			destroyElement(DeathRadio)
			CloseAll_D()
            triggerServerEvent("onPlayerReLive",getLocalPlayer())	
            showCursor(false)			
        end, 55000, 1)

end
addEvent("PlayerSpawn_Start",true)
addEventHandler("PlayerSpawn_Start",getRootElement(), PlayerRespawn)