﻿ sx, sy = guiGetScreenSize() -- Hier wird die Aufl�sung des Spielers abgefragt
 resX, resY = 1920, 1080 -- Die Aufl�sung in der du das GUI gemacht hast

function createDX()
	dxDrawRectangle( sx*(700/resX), sy*(500/resY), sx*(300/resX), sy*(400/resY))
end
