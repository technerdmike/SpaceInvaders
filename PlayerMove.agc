PlayerMove:

//Move the ship in the X direction using GetDirectionX()
/*
//This method is using the computers accelerometer, not the keyboard
playerx=playerx+GetDirectionX()*12
*/
If GetKeyboardExists()=1
//*** Read keyboard ***
//** If its the A key, move left ***
	if GetRawKeyState(65) = 1
		playerx = playerx-12
	endif
//** If its the S key, move down **
	if GetRawKeyState(83) = 1
		playery = playery+12
	endif
//** If its the D key, move right **
	if GetRawKeyState(68)
		playerx = playerx+12
	endif
//** If its the W key, move up **
	if GetRawKeyState(87) = 1
		playery = playery-12
	endif
else
	playerx=playerx+GetDirectionX()*12
endif

//Check if the player ship is at the edge of the left side
if playerx<0
	playerx=0
endif

//Check if the player ship is at the edge of the right side
if playerx>GetVirtualWidth()-GetSpriteWidth(1)
	playerx=GetVirtualWidth()-GetSpriteWidth(1)
endif

//Check if the player ship is at the edge of the top side
if playery<0
	playery=0
endif

//Check if the player ship is at the bottom edge
if playery>GetVirtualHeight()-GetSpriteHeight(1)
	playery=GetVirtualHeight()-GetSpriteHeight(1)
endif

//Set the player ship's position
SetSpritePosition(1, playerx, playery)

/*
//*** Rotate Sprite *** Try to add this. 
if GetRawKeyState(74) = 1
	
*/
Return
