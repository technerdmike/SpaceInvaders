//Check sprite collisions
Collision:

If GetSpriteCollision(2,3)=1
	playsound(explosion)
	score=score+10
	k=k+1
	l=l+1
	m=m+1
	enemyx=Random(1,GetVirtualWidth()-GetSpriteWidth(3)): enemyy=-50
	enemy_fired=0
	for j=0 to 4
		SetSpritePosition(110+j,-100,-100)
	next j
	lazer_fired=0
	lazerx=250: lazery=-150
endif

//Check to see if any of the enemy bullets have hit the player ship
for i=0 to 4
	if GetSpriteCollision((110+i),1) = 1
		PlaySound(explosion)
		gameover=1
		for j=0 to 4
			SetSpritePosition(110+j,-100,-100)
		next j
		enemyx=100: enemyy=-50
	endif
next i

If GetSpriteCollision(1,3)=1
	PlaySound(explosion)
	gameover=1
	for j=0 to 4
		SetSpritePosition(110+j,-100,-100)
	next j
	enemyx=100: enemyy=-50
endif
return

