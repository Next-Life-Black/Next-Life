---------------------
---Script by Black---
-------(C)2016-------


function BanWindow()
	
	BannGui= {
    button = {},
    window = {},
    staticimage = {},
    label = {}
}
	
        BannGui.window[1] = guiCreateWindow(0.32, 0.30, 0.34, 0.28, "Gebannt!", true)
        guiWindowSetSizable(BannGui.window[1], false)
        guiSetAlpha(BannGui.window[1], 0.94)
        guiSetProperty(BannGui.window[1], "CaptionColour", "FFB90000")

        BannGui.staticimage[1] = guiCreateStaticImage(0.02, 0.11, 0.96, 0.25, ":Ultra-Reallife/images/Logo.png", true, BannGui.window[1])
        BannGui.label[1] = guiCreateLabel(0.03, 0.41, 0.93, 0.52, "Lieber user, Sie wurden von einem Admin Gebannt!.", true, BannGui.window[1])

        BannGui.label[2] = guiCreateLabel(0.00, 0.13, 0.82, 0.19, "Gründe könnten sein : Beleidigung, SDM, Serverwerbung", true, BannGui.label[1])
        BannGui.label[3] = guiCreateLabel(0.00, 0.28, 0.71, 0.25, "Sollte keiner dieser Gründe auf sie zutreffen, so klicken sie auf den Admin button", true, BannGui.label[1])
        guiLabelSetHorizontalAlign(BannGui.label[3], "left", true)
        BannGui.button[1] = guiCreateButton(0.00, 0.83, 0.15, 0.17, "Entbannen", true, BannGui.label[1])
        BannGui.button[2] = guiCreateButton(0.85, 0.83, 0.15, 0.17, "Admin", true, BannGui.label[1])
        BannGui.button[3] = guiCreateButton(0.40, 0.83, 0.20, 0.17, "Server Verlassen", true, BannGui.label[1])    
    end

addEvent("BannWindow",true)
addEventHandler("BannWindow",getRootElement(), BanWindow)