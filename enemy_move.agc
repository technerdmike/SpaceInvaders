Enemy_move:

// Move enemy down the screen at same rate
enemyy=enemyy+l

//Move the enemy left or right
If enemy_direction>0 and enemyx>GetVirtualWidth()-GetSpriteWidth(3)
	enemy_direction=-m
endif
//enemyx=enemyx+enemy_direction

If enemy_direction<0 and enemyx<0
	enemy_direction=m
endif
enemyx=enemyx+enemy_direction

SetSpritePosition(3,enemyx,enemyy)

If enemyy>(GetVirtualHeight()-GetSpriteHeight(3))
	gameover=1
	for j=0 to 4
		SetSpritePosition(110+j,-100,-100)
	next j
	enemyx=100: enemyy=-50
endif

return



Enemy_Shoot:
if enemy_fired=0
	if Random(1,80)=5
		enemy_fired=1
		for i=0 to 4
			SetSpritePosition(110+i,GetSpriteX(3)+GetSpriteWidth(3)/2, GetSpriteY(3)+GetSpriteHeight(3))
		next i
	endif
endif

if enemy_fired=1
	SetSpritePosition(110, GetSpriteX(110)-3, GetSpriteY(110)+k)
	SetSpritePosition(111, GetSpriteX(111)-1, GetSpriteY(111)+k)
	SetSpritePosition(112, GetSpriteX(112), GetSpriteY(112)+k)
	SetSpritePosition(113, GetSpriteX(113)+1, GetSpriteY(113)+k)
	SetSpritePosition(114, GetSpriteX(114)+3, GetSpriteY(114)+k)
endif

if GetSpriteY(110)>1024
	enemy_fired=0
endif
Return	
