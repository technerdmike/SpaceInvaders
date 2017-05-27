Make_stars:
	CreateImageColor(5,255,255,255,255)
	For i=1 to 100
		CreateSprite(i+5,5)
		SetSpriteSize(1+5,2,2)
		SetSpritePosition(i+5,Random(1,768),Random(1,1024))
	next i
return

Move_stars:
For i=1 to 100
	StarY=GetSpriteY(5+i)+1
	If StarY>1024
		StarY=0
	EndIf
	SetSpritePosition(i+5,GetSpriteX(i+5),StarY)
next i
Return
