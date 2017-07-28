 sx, sy = guiGetScreenSize() -- Hier wird die Auflösung des Spielers abgefragt
 resX, resY = 1920, 1080 -- Die Auflösung in der du das GUI gemacht hast

function createDX()
	dxDrawRectangle( sx*(700/resX), sy*(500/resY), sx*(300/resX), sy*(400/resY))
end
