MainMenu:

CreateText(2,"Simple Shooter")
SetTextSize(2, 100)
SetTextPosition(2, (768-GetTextTotalWidth(2))/2, 180)
CreateText(3,"High Score: ")
SetTextSize(3, 60)
SetTextPosition(3, 768-GetTextTotalWidth(3), 0)

if GetKeyboardExists()=1
	CreateText(4,"Use W A S D to move the ship")
	CreateText(5,"Press Enter to start game")
else
	CreateText(4,"Tilt device to move the ship")
	CreateText(5,"Tap Screen to start game")
endif

SetTextSize(4, 40)
SetTextPosition(4, (768-GetTextTotalWidth(4))/2, 850)

SetTextSize(5, 60)
SetTextPosition(5, (768-GetTextTotalWidth(5))/2, 900)

gosub Hidegamesprites
gosub showmenutext

if GetKeyboardExists()=1
	repeat
		sync()
	until GetRawKeyState(13)=1
else
	repeat
		sync()
	until GetPointerPressed()=1
endif

gameover=0
gosub loader
gosub Showgamesprites
gosub Hidemenutext

k=5
l=1
m=4

Return

/*
Player Ship =1
Player Lazer = 2
Enemy Ship = 3
Starts = 5 to 104
Enemy Bullets = 110 to 114
*/

Hidegamesprites:
for i=1 to 4
	SetSpriteVisible(i,0)
next i

for i=110 to 114
	SetSpriteVisible(i,0)
next i

Return

Showgamesprites:
for i=1 to 114
	SetSpriteVisible(i,1)
next i
Return

Showmenutext:
SetTextVisible(2,1)
SetTextVisible(4,1)
SetTextVisible(5,1)
Return

Hidemenutext:
SetTextVisible(2,0)
SetTextVisible(4,0)
SetTextVisible(5,0)
Return
