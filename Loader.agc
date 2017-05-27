loader:
LoadImage(1,"ship.png")
LoadImage(2,"lazer.png")
LoadImage(3,"enemy.png")
LoadImage(4,"enemy_lazer.png")


// Create ship and place at bottom of screen
CreateSprite(1,1)
playerx=GetVirtualWidth()/2 - GetSpriteWidth(1)/2
playery=GetVirtualHeight()- GetSpriteHeight(1)

SetSpritePosition(1, playerx, playery)

CreateSprite(2,2)
SetSpritePosition(2,-100,-100)

CreateSprite(3,3)
SetSpritePosition(3,100,20)

//Create 5 Enemy bullets
For i=0 to 4
	CreateSprite(110+i,4)
next i
return
