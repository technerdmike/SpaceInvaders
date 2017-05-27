
// Project: SpaceInvaders 
// Created: 2017-05-20
SetWindowSize(768,1024,0)
SetWindowAllowResize(5)
SetVirtualResolution(768,1024)
UseNewDefaultFonts(1)

playerx as float
playery as float
lazerx as float = -100
lazery as float
lazer_fired = 0

enemyx as float
enemyy as float
enemy_direction = 4
enemy_fired=0
gameover=1

score=0
hiscore=0

k=5
l=1
m=4

#include "Loader.agc"
#include "PlayerMove.agc"
#include "Player_shoots.agc"
#include "enemy_move.agc"
#include "sounds.agc"
#include "Collision.agc"
#include "Stars.agc"
#include "Text.agc"
#include "mainmenu.agc"

Gosub Make_stars
Gosub loader
Gosub Load_sounds
Gosub Make_text
do
	if gameover=1
		Gosub MainMenu
		score=0
	endif
	
	Gosub PlayerMove
	Gosub Player_shoots
	Gosub Enemy_move
	Gosub Enemy_Shoot
	Gosub Move_stars
	SetTextString(1,"Score: "+str(score))
	if score>hiscore
		hiscore=score
	endif
	SetTextString(3,"HiScore: "+str(hiscore))
	Gosub Collision
	Sync()
loop
	
