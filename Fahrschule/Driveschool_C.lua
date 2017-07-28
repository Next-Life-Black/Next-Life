
Fahrschule = {
    button = {},
    window = {},
    label = {}
}
addEventHandler("onClientResourceStart", resourceRoot,
    function()
        Fahrschule.window[1] = guiCreateWindow(0.35, 0.31, 0.30, 0.41, "Führerschein", true)
        guiWindowSetSizable(Fahrschule.window[1], false)

        Fahrschule.label[1] = guiCreateLabel(0.05, 0.11, 0.89, 0.18, "Willkommen in der Nationalen Fahrschule!  Hier kannst du alle nötigen scheine machen die du Brauchst!", true, Fahrschule.window[1])
        guiLabelSetHorizontalAlign(Fahrschule.label[1], "left", true)
        Fahrschule.button[1] = guiCreateButton(0.05, 0.35, 0.36, 0.12, "Führerschein: 1500$", true, Fahrschule.window[1])
        Fahrschule.button[2] = guiCreateButton(0.05, 0.50, 0.36, 0.12, "Motoradschein 2100$", true, Fahrschule.window[1])
        Fahrschule.button[3] = guiCreateButton(0.05, 0.64, 0.36, 0.12, "Motorbootschein 4000$", true, Fahrschule.window[1])
        Fahrschule.button[4] = guiCreateButton(0.05, 0.78, 0.36, 0.12, "Kleinflugschein 8000$", true, Fahrschule.window[1])
        Fahrschule.button[5] = guiCreateButton(0.58, 0.35, 0.36, 0.12, "Mittelflugschein 13000$", true, Fahrschule.window[1])
        Fahrschule.button[6] = guiCreateButton(0.58, 0.50, 0.36, 0.12, "Schwerflugschein 20000$", true, Fahrschule.window[1])
        Fahrschule.button[7] = guiCreateButton(0.58, 0.64, 0.36, 0.12, "LKW/Schwerlast Fahrer 2800$", true, Fahrschule.window[1])
        Fahrschule.button[8] = guiCreateButton(0.58, 0.78, 0.36, 0.12, "Personalausweis/Perso 70$", true, Fahrschule.window[1])
        Fahrschule.button[9] = guiCreateButton(0.92, 0.05, 0.06, 0.06, "X", true, Fahrschule.window[1])    
    end
)
