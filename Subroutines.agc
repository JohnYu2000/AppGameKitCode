#Include "legalmovechecklist.agc"
/*
I just put the actual movement of the pieces in here. Previously when I had to copy all the code 
here into each piece the main code was over 4000 lines long. All the code in here is independent of the piece
and only depended on the color of the piece. I did this to make the main code much, much cleaner. 

*/
soldierwhite:
	// West //
	gohere = 1
	if i - 1 >= 10
		if Mod(i - 1, 10) = Mod(i, 10) - 1 
			for z = 130 to 149
				if position[z, 1] = squarex[i - 1] and position[z, 2] = squarey[i - 1] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i - 1, 0)
					gohere = 0
					exit		
				endif
			next z
			if gohere = 1
				move = i - 1
				gosub runthroughwhitechecklist
			endif
		endif
	endif 
	// NorthWest //
	gohere = 1
	if i - 11 >= 10
		if Mod(i - 11, 10) = Mod(i, 10) - 1
			for z = 130 to 149
				if position[z, 1] = squarex[i - 11] and position[z, 2] = squarey[i - 11] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i - 11, 0)
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move = i - 11
				gosub runthroughwhitechecklist
			endif
		endif
	endif
	// North //
	gohere = 1
	if i - 10 >= 10
		for z = 130 to 149
			if position[z, 1] = squarex[i - 10] and position[z, 2] = squarey[i - 10] and GetSpriteColorAlpha(z) = 255
				SetSpriteColorAlpha(i - 10, 0)
				gohere = 0
				exit
			endif
		next z
		if gohere = 1
			move = i - 10
			gosub runthroughwhitechecklist
		endif
	endif
	// NorthEast //
	gohere = 1
	if i - 9 >= 10
		if Mod(i - 9, 10) = Mod(i, 10) + 1
			for z = 130 to 149
				if position[z, 1] = squarex[i - 9] and position[z, 2] = squarey[i - 9] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i - 9, 0)
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move = i - 9
				gosub runthroughwhitechecklist
			endif
		endif
	endif	
	// East //
	gohere = 1
	if i + 1 <= 109
		if Mod(i + 1, 10) = Mod(i, 10) + 1
			for z = 130 to 149
				if position[z, 1] = squarex[i + 1] and position[z, 2] = squarey[i + 1] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i + 1, 0)
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move = i + 1
				gosub runthroughwhitechecklist
			endif
		endif
	endif	
	// *North (2 Units) //
	if position[x, 2] = squarey[90]
		gohere = 1
		if i - 20 >= 10
			for z = 130 to 149
				if position[z, 1] = squarex[i - 20] and position[z, 2] = squarey[i - 20] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i - 20, 0)
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move = i - 20
				gosub runthroughwhitechecklist
			endif
		endif
	endif
return

soldierblack:
	// West //
	gohere = 1
	if i - 1 >= 10
		if Mod(i - 1, 10) = Mod(i, 10) - 1
			for z = 110 to 129
				if position[z, 1] = squarex[i - 1] and position[z, 2] = squarey[i - 1] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i - 1, 0)
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move = i - 1
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// SouthWest //
	gohere = 1
	if i + 9 <= 109
		if Mod(i + 9, 10) = Mod(i, 10) - 1
			for z = 110 to 129
				if position[z, 1] = squarex[i + 9] and position[z, 2] = squarey[i + 9] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i + 9, 0)
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move = i + 9
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// South //
	gohere = 1
	if i + 10 <= 109
		for z = 110 to 129
			if position[z, 1] = squarex[i + 10] and position[z, 2] = squarey[i + 10] and GetSpriteColorAlpha(z) = 255
				SetSpriteColorAlpha(i + 10, 0)
				gohere = 0
				exit
			endif
		next z
		if gohere = 1
			move = i + 10
			gosub runthroughblackchecklist
		endif
	endif
	// SouthEast //
	gohere = 1
	if i + 11 <= 109
		if Mod(i + 11, 10) = Mod(i, 10) + 1
			for z = 110 to 129
				if position[z, 1] = squarex[i + 11] and position[z, 2] = squarey[i + 11] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i + 11, 0)
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move = i + 11
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// East //
	gohere = 1
	if i + 1 <= 109
		if Mod(i + 1, 10) = Mod(i, 10) + 1
			for z = 110 to 129
				if position[z, 1] = squarex[i + 1] and position[z, 2] = squarey[i + 1] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i + 1, 0)
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move = i + 1
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// *South (2 units) //
	if position[x, 2] = squarey[20]
		gohere = 1
		if i + 20 <= 109
			for z = 110 to 129
				if position[z, 1] = squarex[i + 20] and position[z, 2] = squarey[i + 20] and GetSpriteColorAlpha(z) = 255
					SetSpriteColorAlpha(i + 20, 0)
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move = i + 20
				gosub runthroughblackchecklist
			endif
		endif
	endif
return

cavalrywhite:
	// 2 Units Up, 1 Unit Left //
	gohere = 1
	if i - 21 >= 10
		if Mod(i - 21, 10) = Mod(i, 10) - 1
			for x = 130 to 149
				if position[x, 1] = squarex[i - 21] and position[x, 2] = squarey[i - 21] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 21, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - 21
				gosub runthroughwhitechecklist
			endif
		endif
	endif
	// 2 Units Up, 1 Unit Right //
	gohere = 1
	if i - 19 >= 10
		if Mod(i - 19, 10) = Mod(i, 10) + 1
			for x = 130 to 149
				if position[x, 1] = squarex[i - 19] and position[x, 2] = squarey[i - 19] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 19, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - 19
				gosub runthroughwhitechecklist
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Right //
	gohere = 1
	if i - 8 >= 10
		if Mod(i - 8, 10) = Mod(i, 10) + 2
			for x = 130 to 149
				if position[x, 1] = squarex[i - 8] and position[x, 2] = squarey[i - 8] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 8, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - 8
				gosub runthroughwhitechecklist
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Right //
	gohere = 1
	if i + 12 <= 109
		if Mod(i + 12, 10) = Mod(i, 10) + 2
			for x = 130 to 149
				if position[x, 1] = squarex[i + 12] and position[x, 2] = squarey[i + 12] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 12, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + 12
				gosub runthroughwhitechecklist
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Right //
	gohere = 1
	if i + 21 <= 109
		if Mod(i + 21, 10) = Mod(i, 10) + 1
			for x = 130 to 149
				if position[x, 1] = squarex[i + 21] and position[x, 2] = squarey[i + 21] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 21, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + 21
				gosub runthroughwhitechecklist
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Left //
	gohere = 1
	if i + 19 <= 109
		if Mod(i + 19, 10) = Mod(i, 10) - 1
			for x = 130 to 149
				if position[x, 1] = squarex[i + 19] and position[x, 2] = squarey[i + 19] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 19, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + 19
				gosub runthroughwhitechecklist
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Left //
	gohere = 1
	if i + 8 <= 109
		if Mod(i + 8, 10) = Mod(i, 10) - 2
			for x = 130 to 149
				if position[x, 1] = squarex[i + 8] and position[x, 2] = squarey[i + 8] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 8, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + 8
				gosub runthroughwhitechecklist
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Left //
	gohere = 1
	if i - 12 >= 10
		if Mod(i - 12, 10) = Mod(i, 10) - 2
			for x = 130 to 149
				if position[x, 1] = squarex[i - 12] and position[x, 2] = squarey[i - 12] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 12, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - 12
				gosub runthroughwhitechecklist
			endif
		endif
	endif
return

cavalryblack:
	// 2 Units Up, 1 Unit Left //
	gohere = 1
	if i - 21 >= 10
		if Mod(i - 21, 10) = Mod(i, 10) - 1
			for x = 110 to 129
				if position[x, 1] = squarex[i - 21] and position[x, 2] = squarey[i - 21] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 21, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - 21
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// 2 Units Up, 1 Unit Right //
	gohere = 1
	if i - 19 >= 10
		if Mod(i - 19, 10) = Mod(i, 10) + 1
			for x = 110 to 129
				if position[x, 1] = squarex[i - 19] and position[x, 2] = squarey[i - 19] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 19, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - 19
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Right //
	gohere = 1
	if i - 8 >= 10
		if Mod(i - 8, 10) = Mod(i, 10) + 2
			for x = 110 to 129
				if position[x, 1] = squarex[i - 8] and position[x, 2] = squarey[i - 8] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 8, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - 8
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Right //
	gohere = 1
	if i + 12 <= 109
		if Mod(i + 12, 10) = Mod(i, 10) + 2
			for x = 110 to 129
				if position[x, 1] = squarex[i + 12] and position[x, 2] = squarey[i + 12] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 12, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + 12
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Right //
	gohere = 1
	if i + 21 <= 109
		if Mod(i + 21, 10) = Mod(i, 10) + 1
			for x = 110 to 129
				if position[x, 1] = squarex[i + 21] and position[x, 2] = squarey[i + 21] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 21, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + 21
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Left //
	gohere = 1
	if i + 19 <= 109
		if Mod(i + 19, 10) = Mod(i, 10) - 1
			for x = 110 to 129
				if position[x, 1] = squarex[i + 19] and position[x, 2] = squarey[i + 19] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 19, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + 19
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Left //
	gohere = 1
	if i + 8 <= 109
		if Mod(i + 8, 10) = Mod(i, 10) - 2
			for x = 110 to 129
				if position[x, 1] = squarex[i + 8] and position[x, 2] = squarey[i + 8] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 8, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + 8
				gosub runthroughblackchecklist
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Left //
	gohere = 1
	if i - 12 >= 10
		if Mod(i - 12, 10) = Mod(i, 10) - 2
			for x = 110 to 129
				if position[x, 1] = squarex[i - 12] and position[x, 2] = squarey[i - 12] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 12, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - 12
				gosub runthroughblackchecklist
			endif
		endif
	endif
return

tankwhite:
	// North //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i >= 10 + factor*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x = 130 to 149 // Checks White Pieces //
				// Checks if square is occupied by an ally piece //
				if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - factor*10, 0)
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - factor*10
				gosub runthroughwhitechecklist
			endif
			// Check if spot is occupied by enemy piece //
			for x = 110 to 129
				if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					move = i - factor*10
					gosub runthroughwhitechecklist
					exitprogram = 1
					exit
				endif
			next x
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// East //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i < 10*Floor(i/10 + 1) - factor // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x = 130 to 149 // Checks White Pieces //
				// Checks if square is occupied by an ally piece //
				if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + factor, 0)
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + factor
				gosub runthroughwhitechecklist
			endif
			// Check if spot is occupied by enemy piece //
			for x = 110 to 129
				if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					move = i + factor
					gosub runthroughwhitechecklist
					exitprogram = 1
					exit
				endif
			next x
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// South //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i <= 109 - factor*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x = 130 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + factor*10, 0)
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + factor*10
				gosub runthroughwhitechecklist
			endif
			// Check if spot is occupied by enemy piece //
			for x = 110 to 129
				if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					move = i + factor*10
					gosub runthroughwhitechecklist
					exitprogram = 1
					exit
				endif
			next x
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// West //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i >= 10*Floor(i/10) + factor // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x = 130 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - factor, 0)
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - factor
				gosub runthroughwhitechecklist
			endif
			// Check if spot is occupied by enemy piece //
			for x = 110 to 129
				if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					move = i - factor
					gosub runthroughwhitechecklist
					exitprogram = 1
					exit
				endif
			next x
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
return

tankblack:
	// North //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i >= 10 + factor*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 129 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - factor*10, 0)
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - factor*10
				gosub runthroughblackchecklist
			endif
			// Check if spot is occupied by enemy piece //
			for x = 130 to 149
				if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					move = i - factor*10
					gosub runthroughblackchecklist
					exitprogram = 1
					exit
				endif
			next x
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// East //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i < 10*Floor(i/10 + 1) - factor // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 129 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + factor, 0)
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + factor
				gosub runthroughblackchecklist
			endif
			// Check if spot is occupied by enemy piece //
			for x = 130 to 149
				if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					move = i + factor
					gosub runthroughblackchecklist
					exitprogram = 1
					exit
				endif
			next x
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// South //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i <= 109 - factor*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 129 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + factor*10, 0)
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i + factor*10
				gosub runthroughblackchecklist
			endif
			// Check if spot is occupied by enemy piece //
			for x = 130 to 149
				if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					move = i + factor*10
					gosub runthroughblackchecklist
					exitprogram = 1
					exit
				endif
			next x
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// West //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i >= 10*Floor(i/10) + factor // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 129 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - factor, 0)
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				move = i - factor
				gosub runthroughblackchecklist
			endif
			// Check if spot is occupied by enemy piece //
			for x = 130 to 149
				if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					move = i - factor
					gosub runthroughblackchecklist
					exitprogram = 1
					exit
				endif
			next x
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
return

diagonalwhite:
	// NorthWest //
	factor = 1
	exitprogram = 0
	repeat	
		if Mod(i - factor*11, 10) > 0 // Checks the ones digit other than 0 //
			gohere = 1
			if Mod(i - 11, 10) = Mod(i, 10) - 1
				if i - factor*11 >= 10 // Checks if the move is valid //
					for x = 130 to 149
						if squarex[i - factor*11] = position[x, 1] and squarey[i - factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							SetSpriteColorAlpha(i - factor*11, 0)
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x
					if gohere = 1
						move = i - factor*11
						gosub runthroughwhitechecklist
					endif
					for x = 110 to 129
						if squarex[i - factor*11] = position[x, 1] and squarey[i - factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							move = i - factor*11
							gosub runthroughwhitechecklist
							exitprogram = 1
							exit
						endif
					next x
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif
		endif
		if Mod(i - factor*11, 10) = 0 // When the ones digit is 0 
			gohere = 1
			// Checks if the move is valid //
			if i - factor*11 >= 10
				for x = 130 to 149
					if squarex[i - factor*11] = position[x, 1] and squarey[i - factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						SetSpriteColorAlpha(i - factor*11, 0)
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x
				if gohere = 1
					move = i - factor*11
					gosub runthroughwhitechecklist
				endif
				for x = 110 to 129
					if squarex[i - factor*11] = position[x, 1] and squarey[i - factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						move = i - factor*11
						gosub runthroughwhitechecklist
						exitprogram = 1
						exit
					endif
				next x
				exitprogram = 1
			endif						
		endif
		factor = factor + 1
	until exitprogram = 1				
	// NorthEast //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i - factor*9, 10) < 9 // Checks the ones digit other than 9 //
			gohere = 1
			if Mod(i - 9, 10) = Mod(i, 10) + 1
				if i - factor*9 >= 10 // Checks if the move is valid //
					for x = 130 to 149
						if squarex[i - factor*9] = position[x, 1] and squarey[i - factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							SetSpriteColorAlpha(i - factor*9, 0)
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x
					if gohere = 1
						move = i - factor*9
						gosub runthroughwhitechecklist
					endif
					for x = 110 to 129
						if squarex[i - factor*9] = position[x, 1] and squarey[i - factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							move = i - factor*9
							gosub runthroughwhitechecklist
							exitprogram = 1
							exit
						endif
					next x
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i - factor*9, 10) = 9 // When the ones digit is 9
			gohere = 1
			// Checks if the move is valid //
			if i - factor*9 >= 10
				for x = 130 to 149
					if squarex[i - factor*9] = position[x, 1] and squarey[i - factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						SetSpriteColorAlpha(i - factor*9, 0)
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x
				if gohere = 1
					move = i - factor*9
					gosub runthroughwhitechecklist
				endif
				for x = 110 to 129
					if squarex[i - factor*9] = position[x, 1] and squarey[i - factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						move = i - factor*9
						gosub runthroughwhitechecklist
						exit
					endif
				next x
				exitprogram = 1
			endif						
		endif
		factor = factor + 1
	until exitprogram = 1				
	// SouthEast //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i + factor*11, 10) < 9 // Checks the ones digit other than 9 //
			gohere = 1
			if Mod(i + 11, 10) = Mod(i, 10) + 1
				if i + factor*11 <= 109 // Checks if the move is valid //
					for x = 130 to 149
						if squarex[i + factor*11] = position[x, 1] and squarey[i + factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							SetSpriteColorAlpha(i + factor*11, 0)
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x
					if gohere = 1
						move = i + factor*11
						gosub runthroughwhitechecklist
					endif
					for x = 110 to 129
						if squarex[i + factor*11] = position[x, 1] and squarey[i + factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							move = i + factor*11
							gosub runthroughwhitechecklist
							exitprogram = 1
							exit
						endif
					next x
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i + factor*11, 10) = 9 // When the ones digit is 9
			gohere = 1
			// Checks if the move is valid //
			if i + factor*11 <= 109
				for x = 130 to 149
					if squarex[i + factor*11] = position[x, 1] and squarey[i + factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						SetSpriteColorAlpha(i + factor*11, 0)
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x
				if gohere = 1
					move = i + factor*11
					gosub runthroughwhitechecklist
				endif
				for x = 110 to 129
					if squarex[i + factor*11] = position[x, 1] and squarey[i + factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						move = i + factor*11
						gosub runthroughwhitechecklist
						exitprogram = 1
						exit
					endif
				next x
				exitprogram = 1
			endif
		endif
		factor = factor + 1
	until exitprogram = 1			
	// SouthWest //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i + factor*9, 10) > 0 // Checks the ones digit other than 0 //
			gohere = 1
			if Mod(i + 9, 10) = Mod(i, 10) - 1
				if i + factor*9 <= 109 // Checks if the move is valid //
					for x = 130 to 149
						if squarex[i + factor*9] = position[x, 1] and squarey[i + factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							SetSpriteColorAlpha(i + factor*9, 0)
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x
					if gohere = 1
						move = i + factor*9
						gosub runthroughwhitechecklist
					endif
					for x = 110 to 129
						if squarex[i + factor*9] = position[x, 1] and squarey[i + factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							move = i + factor*9
							gosub runthroughwhitechecklist
							exitprogram = 1
							exit
						endif
					next x
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i + factor*9, 10) = 0 // When the ones digit is 0 
			gohere = 1
			// Checks if the move is valid //
			if i + factor*9 <= 109
				for x = 130 to 149
					if squarex[i + factor*9] = position[x, 1] and squarey[i + factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						SetSpriteColorAlpha(i + factor*9, 0)
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x
				if gohere = 1
					move = i + factor*9
					gosub runthroughwhitechecklist
				endif
				for x = 110 to 129
					if squarex[i + factor*9] = position[x, 1] and squarey[i + factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						move = i + factor*9
						gosub runthroughwhitechecklist
						exitprogram = 1
						exit
					endif
				next x
				exitprogram = 1
			endif
		endif
		factor = factor + 1
	until exitprogram = 1
return

diagonalblack:
	// NorthWest //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i - factor*11, 10) > 0 // Checks the ones digit other than 0 //
			gohere = 1
			if Mod(i - 11, 10) = Mod(i, 10) - 1
				if i - factor*11 >= 10 // Checks if the move is valid //
					for x = 110 to 129
						if squarex[i - factor*11] = position[x, 1] and squarey[i - factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							SetSpriteColorAlpha(i - factor*11, 0)
							exitprogram = 1
							gohere = 0 
							exit
						endif
					next x
					if gohere = 1
						move = i - factor*11
						gosub runthroughblackchecklist
					endif
					for x = 130 to 149
						if squarex[i - factor*11] = position[x, 1] and squarey[i - factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							move = i - factor*11
							gosub runthroughblackchecklist
							exitprogram = 1
							exit
						endif
					next x
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif
		endif
		if Mod(i - factor*11, 10) = 0 // When the ones digit is 0 
			gohere = 1
			// Checks if the move is valid //
			if i - factor*11 >= 10
				for x = 110 to 129
					if squarex[i - factor*11] = position[x, 1] and squarey[i - factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						SetSpriteColorAlpha(i - factor*11, 0)
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x
				if gohere = 1
					move = i - factor*11
					gosub runthroughblackchecklist
				endif
				for x = 130 to 149
					if squarex[i - factor*11] = position[x, 1] and squarey[i - factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						move = i - factor*11
						gosub runthroughblackchecklist
						exitprogram = 1
						exit
					endif
				next x
				exitprogram = 1
			endif						
		endif
		factor = factor + 1
	until exitprogram = 1
	
	// NorthEast //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i - factor*9, 10) < 9 // Checks the ones digit other than 9 //
			gohere = 1
			if Mod(i - 9, 10) = Mod(i, 10) + 1
				if i - factor*9 >= 10 // Checks if the move is valid //
					for x = 110 to 129
						if squarex[i - factor*9] = position[x, 1] and squarey[i - factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							SetSpriteColorAlpha(i - factor*9, 0)
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x
					if gohere = 1
						move = i - factor*9
						gosub runthroughblackchecklist
					endif
					for x = 130 to 149
						if squarex[i - factor*9] = position[x, 1] and squarey[i - factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							move = i - factor*9
							gosub runthroughblackchecklist
							exitprogram = 1
							exit
						endif
					next x
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i - factor*9, 10) = 9 // When the ones digit is 9
			gohere = 1
			// Checks if the move is valid //
			if i - factor*9 >= 10
				for x = 110 to 129
					if squarex[i - factor*9] = position[x, 1] and squarey[i - factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						SetSpriteColorAlpha(i - factor*9, 0)
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x
				if gohere = 1
					move = i - factor*9
					gosub runthroughblackchecklist
				endif
				for x = 130 to 149
					if squarex[i - factor*9] = position[x, 1] and squarey[i - factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						move = i - factor*9
						gosub runthroughblackchecklist
						exitprogram = 1
						exit
					endif
				next x
				exitprogram = 1
			endif						
		endif
		factor = factor + 1
	until exitprogram = 1
	
	// SouthEast //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i + factor*11, 10) < 9 // Checks the ones digit other than 9 //
			gohere = 1
			if Mod(i + 11, 10) = Mod(i, 10) + 1
				if i + factor*11 <= 109 // Checks if the move is valid //
					for x = 110 to 129
						if squarex[i + factor*11] = position[x, 1] and squarey[i + factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							SetSpriteColorAlpha(i + factor*11, 0)
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x
					if gohere = 1
						move = i + factor*11
						gosub runthroughblackchecklist
					endif
					for x = 130 to 149
						if squarex[i + factor*11] = position[x, 1] and squarey[i + factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							move = i + factor*11
							gosub runthroughblackchecklist
							exitprogram = 1
							exit
						endif
					next x
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i + factor*11, 10) = 9 // When the ones digit is 9
			gohere = 1
			// Checks if the move is valid //
			if i + factor*11 <= 109
				for x = 110 to 129
					if squarex[i + factor*11] = position[x, 1] and squarey[i + factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						SetSpriteColorAlpha(i + factor*11, 0)
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x
				if gohere = 1
					move = i + factor*11
					gosub runthroughblackchecklist
				endif
				for x = 130 to 149
					if squarex[i + factor*11] = position[x, 1] and squarey[i + factor*11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						move = i + factor*11
						gosub runthroughblackchecklist
						exitprogram = 1
						exit
					endif
				next x
				exitprogram = 1
			endif
		endif
		factor = factor + 1
	until exitprogram = 1
	
	// SouthWest //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i + factor*9, 10) > 0 // Checks the ones digit other than 0 //
			gohere = 1
			if Mod(i + 9, 10) = Mod(i, 10) - 1
				if i + factor*9 <= 109 // Checks if the move is valid //
					for x = 110 to 129
						if squarex[i + factor*9] = position[x, 1] and squarey[i + factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							SetSpriteColorAlpha(i + factor*9, 0)
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x
					if gohere = 1
						move = i + factor*9
						gosub runthroughblackchecklist
					endif
					for x = 130 to 149
						if squarex[i + factor*9] = position[x, 1] and squarey[i + factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
							move = i + factor*9
							gosub runthroughblackchecklist
							exitprogram = 1
							exit
						endif
					next x
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i + factor*9, 10) = 0 // When the ones digit is 0 
			gohere = 1
			// Checks if the move is valid //
			if i + factor*9 <= 109
				for x = 110 to 129
					if squarex[i + factor*9] = position[x, 1] and squarey[i + factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						SetSpriteColorAlpha(i + factor*9, 0)
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x
				if gohere = 1
					move = i + factor*9
					gosub runthroughblackchecklist
				endif
				for x = 130 to 149
					if squarex[i + factor*9] = position[x, 1] and squarey[i + factor*9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
						move = i + factor*9
						gosub runthroughblackchecklist
						exitprogram = 1
						exit
					endif
				next x
				exitprogram = 1
			endif
		endif
		factor = factor + 1
	until exitprogram = 1
return

artillerywhite:
	// North //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i >= 10 + factor*10 // Checks if it is a valid square //
			gohere = 1
			for x = 110 to 149 // Check All Sprites //
				// Checks if square is occupied by a piece //
				if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - factor*10, 0)
					exitprogram = 1	
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i >= 10 + factor*10
							// When an ally piece is found //
							for x = 130 to 149
								if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
									allyfound = 1
									exit
								endif
							next x
							if allyfound = 0
								for x = 110 to 129
									// When an enemy piece is found //
									if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
										move = i - factor*10
										gosub runthroughwhitechecklist
										enemyfound = 1
										exit
									endif
								next x
							endif
						else
							exit
						endif
					until enemyfound = 1								
					exit
				endif
			next x
			if gohere = 1
				move = i - factor*10
				gosub runthroughwhitechecklist
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// East //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i < 10*Floor(i/10 + 1) - factor // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 149 // Checks All Pieces //
				// Checks if square is occupied by a piece //
				if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + factor, 0)
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i < 10*Floor(i/10 + 1) - factor
							// When an ally piece is found //
							for x = 130 to 149
								if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
									allyfound = 1
									exit
								endif
							next x
							if allyfound = 0
								for x = 110 to 129
									// When an enemy piece is found //
									if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
										move = i + factor
										gosub runthroughwhitechecklist
										enemyfound = 1
										exit
									endif
								next x
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x
			if gohere = 1
				move = i + factor
				gosub runthroughwhitechecklist
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// South //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i <= 109 - factor*10 // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + factor*10, 0)
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i <= 109 - factor*10
							// When an ally piece is found //
							for x = 130 to 149
								if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
									allyfound = 1
									exit
								endif
							next x
							if allyfound = 0
								for x = 110 to 129
									// When an enemy piece is found //
									if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
										move = i + factor*10
										gosub runthroughwhitechecklist
										enemyfound = 1
										exit
									endif
								next x
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x
			if gohere = 1
				move = i + factor*10
				gosub runthroughwhitechecklist
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// West //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i >= 10*Floor(i/10) + factor // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - factor, 0)
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i >= 10*Floor(i/10) + factor
							// When an ally piece is found //
							for x = 130 to 149
								if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
									allyfound = 1
									exit
								endif
							next x
							if allyfound = 0
								for x = 110 to 129
									// When an enemy piece is found //
									if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
										move = i - factor
										gosub runthroughwhitechecklist
										enemyfound = 1
										exit
									endif
								next x
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x
			if gohere = 1
				move = i - factor
				gosub runthroughwhitechecklist
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
return

artilleryblack:
	// North //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i >= 10 + factor*10 // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 149 // Checks All Pieces //
				// Checks if square is occupied by a color piece //
				if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - factor*10, 0)
					exitprogram = 1	
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i >= 10 + factor*10
							// When an ally piece is found //
							for x = 110 to 129
								if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
									allyfound = 1
									exit
								endif
							next x
							if allyfound = 0
								for x = 130 to 149
									// When an enemy piece is found //
									if squarex[i - factor*10] = position[x, 1] and squarey[i - factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
										move = i - factor*10
										gosub runthroughblackchecklist
										enemyfound = 1
										exit
									endif
								next x
							endif
						else
							exit
						endif
					until enemyfound = 1								
					exit
				endif
			next x
			if gohere = 1
				move = i - factor*10
				gosub runthroughblackchecklist
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// East //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i < 10*Floor(i/10 + 1) - factor // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + factor, 0)
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i < 10*Floor(i/10 + 1) - factor
							// When an ally piece is found //
							for x = 110 to 129
								if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
									allyfound = 1
									exit
								endif
							next x
							if allyfound = 0
								for x = 130 to 149
									// When an enemy piece is found //
									if squarex[i + factor] = position[x, 1] and squarey[i + factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
										move = i + factor
										gosub runthroughblackchecklist
										enemyfound = 1
										exit
									endif
								next x
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x
			if gohere = 1
				move = i + factor
				gosub runthroughblackchecklist
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// South //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i <= 109 - factor*10 // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 149 // Checks All Pieces //
				// Checks if square is occupied by a a piece //
				if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + factor*10, 0)
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i <= 109 - factor*10
							// When an ally piece is found //
							for x = 110 to 129
								if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
									allyfound = 1
									exit
								endif
							next x
							if allyfound = 0
								for x = 130 to 149
									// When an enemy piece is found //
									if squarex[i + factor*10] = position[x, 1] and squarey[i + factor*10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
										move = i + factor*10
										gosub runthroughblackchecklist
										enemyfound = 1
										exit
									endif
								next x
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x
			if gohere = 1
				move = i + factor*10
				gosub runthroughblackchecklist
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
	// West //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i >= 10*Floor(i/10) + factor // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x = 110 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - factor, 0)
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i >= 10*Floor(i/10) + factor
							// When an ally piece is found //
							for x = 110 to 129
								if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
									allyfound = 1
									exit
								endif
							next x
							if allyfound = 0
								for x = 130 to 149
									// When an enemy piece is found //
									if squarex[i - factor] = position[x, 1] and squarey[i - factor] = position[x, 2] and GetSpriteColorAlpha(x) = 255
										move = i - factor
										gosub runthroughblackchecklist
										enemyfound = 1
										exit
									endif
								next x
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x
			if gohere = 1
				move = i - factor
				gosub runthroughblackchecklist
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
return

kingwhite:
	if i - 10 >= 10
		gohere = 1
		for x = 130 to 149
			if squarex[i - 10] = position[x, 1] and squarey[i - 10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
				SetSpriteColorAlpha(i - 10, 0)
				gohere = 0
				exit
			endif		
		next x
		if gohere = 1
			kingmove = -10
			gosub runthroughwhitechecklistkingvariation
		endif
	endif
	if i - 9 >= 10
		if Mod(i - 9, 10) = Mod(i, 10) + 1
			gohere = 1
			for x = 130 to 149
				if squarex[i - 9] = position[x, 1] and squarey[i - 9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 9, 0)
					gohere = 0
					exit
				endif			
			next x
			if gohere = 1
				kingmove = -9
				gosub runthroughwhitechecklistkingvariation
			endif
		endif
	endif
	if i + 1 <= 109
		if Mod(i + 1, 10) = Mod(i, 10) + 1
			gohere = 1
			for x = 130 to 149
				if squarex[i + 1] = position[x, 1] and squarey[i + 1] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 1, 0)
					gohere = 0
					exit
				endif				
			next x
			if gohere = 1
				kingmove = 1
				gosub runthroughwhitechecklistkingvariation
			endif
		endif
	endif
	if i + 11 <= 109
		if Mod(i + 11, 10) = Mod(i, 10) + 1
			gohere = 1
			for x = 130 to 149
				if squarex[i + 11] = position[x, 1] and squarey[i + 11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 11, 0)
					gohere = 0
					exit
				endif			
			next x
			if gohere = 1
				kingmove = 11
				gosub runthroughwhitechecklistkingvariation
			endif
		endif
	endif
	if i + 10 <= 109
		gohere = 1
		for x = 130 to 149
			if squarex[i + 10] = position[x, 1] and squarey[i + 10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
				SetSpriteColorAlpha(i + 10, 0)
				gohere = 0
				exit
			endif			
		next x
		if gohere = 1
			kingmove = 10
			gosub runthroughwhitechecklistkingvariation
		endif
	endif
	if i + 9 <= 109
		if Mod(i + 9, 10) = Mod(i, 10) - 1
			gohere = 1
			for x = 130 to 149
				if squarex[i + 9] = position[x, 1] and squarey[i + 9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 9, 0)
					gohere = 0
					exit
				endif				
			next x
			if gohere = 1
				kingmove = 9
				gosub runthroughwhitechecklistkingvariation
			endif
		endif
	endif
	if i - 1 >= 10
		if Mod(i - 1, 10) = Mod(i, 10) - 1
			gohere = 1
			for x = 130 to 149
				if squarex[i - 1] = position[x, 1] and squarey[i - 1] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 1, 0)
					gohere = 0
					exit
				endif			
			next x
			if gohere = 1
				kingmove = -1
				gosub runthroughwhitechecklistkingvariation
			endif
		endif
	endif
	if i - 11 >= 10
		if Mod(i - 11, 10) = Mod(i, 10) - 1
			gohere = 1
			for x = 130 to 149
				if squarex[i - 11] = position[x, 1] and squarey[i - 11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 11, 0)
					gohere = 0
					exit
				endif			
			next x
			if gohere = 1
				kingmove = -11
				gosub runthroughwhitechecklistkingvariation
			endif
		endif
	endif
return

kingblack:
	if i - 10 >= 10
		gohere = 1
		for x = 110 to 129
			if squarex[i - 10] = position[x, 1] and squarey[i - 10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
				SetSpriteColorAlpha(i - 10, 0)
				gohere = 0
				exit
			endif
		next x
		if gohere = 1
			kingmove = -10
			gosub runthroughblackchecklistkingvariation
		endif
	endif
	if i - 9 >= 10
		if Mod(i - 9, 10) = Mod(i, 10) + 1
			gohere = 1
			for x = 110 to 129
				if squarex[i - 9] = position[x, 1] and squarey[i - 9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 9, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				kingmove = -9
				gosub runthroughblackchecklistkingvariation
			endif
		endif
	endif
	if i + 1 <= 109
		if Mod(i + 1, 10) = Mod(i, 10) + 1
			gohere = 1
			for x = 110 to 129
				if squarex[i + 1] = position[x, 1] and squarey[i + 1] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 1, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				kingmove = 1
				gosub runthroughblackchecklistkingvariation
			endif
		endif
	endif
	if i + 11 <= 109
		if Mod(i + 11, 10) = Mod(i, 10) + 1
			gohere = 1
			for x = 110 to 129
				if squarex[i + 11] = position[x, 1] and squarey[i + 11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 11, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				kingmove = 11
				gosub runthroughblackchecklistkingvariation
			endif
		endif
	endif
	if i + 10 <= 109
		gohere = 1
		for x = 110 to 129
			if squarex[i + 10] = position[x, 1] and squarey[i + 10] = position[x, 2] and GetSpriteColorAlpha(x) = 255
				SetSpriteColorAlpha(i + 10, 0)
				gohere = 0
				exit
			endif
		next x
		if gohere = 1
			kingmove = 10
			gosub runthroughblackchecklistkingvariation
		endif
	endif
	if i + 9 <= 109
		if Mod(i + 9, 10) = Mod(i, 10) - 1
			gohere = 1
			for x = 110 to 129
				if squarex[i + 9] = position[x, 1] and squarey[i + 9] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i + 9, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				kingmove = 9
				gosub runthroughblackchecklistkingvariation
			endif
		endif
	endif
	if i - 1 >= 10
		if Mod(i - 1, 10) = Mod(i, 10) - 1
			gohere = 1
			for x = 110 to 129
				if squarex[i - 1] = position[x, 1] and squarey[i - 1] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 1, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				kingmove = -1
				gosub runthroughblackchecklistkingvariation
			endif
		endif
	endif
	if i - 11 >= 10
		if Mod(i - 11, 10) = Mod(i, 10) - 1
			gohere = 1
			for x = 110 to 129
				if squarex[i - 11] = position[x, 1] and squarey[i - 11] = position[x, 2] and GetSpriteColorAlpha(x) = 255
					SetSpriteColorAlpha(i - 11, 0)
					gohere = 0
					exit
				endif
			next x
			if gohere = 1
				kingmove = -11
				gosub runthroughblackchecklistkingvariation
			endif
		endif
	endif
return

changeturns:
	// White Turn //
	if playerturn = 1
		SetTextString(turn, "White Turn")
		SetTextColorAlpha(turn, 255)
		turnx = GetVirtualWidth()/2 - GetTextTotalWidth(turn)/2
		turny = GetVirtualHeight()/2 - GetTextTotalHeight(turn)/2
		SetTextPosition(turn, turnx, turny) 
		turnchangetime = Timer()
	endif
	// Black Turn //
	if playerturn = 2
		SetTextString(turn, "Black Turn")
		SetTextColorAlpha(turn, 255)
		turnx = GetVirtualWidth()/2 - GetTextTotalWidth(turn)/2
		turny = GetVirtualHeight()/2 - GetTextTotalHeight(turn)/2
		SetTextPosition(turn, turnx, turny) 
		turnchangetime = Timer()
	endif
return

turnoffchangeturns:
	if Timer() >= turnchangetime + 1
		SetTextColorAlpha(turn, 0)
	endif
return

runthroughwhitechecklist:
	undo = 0
	gosub resetblackpiecepositions
	gosub resetwhitepiecepositions
	legalmovechecklist[i, 4] = 0
	legalmovechecklist[move, 4] = 1
	if legalmovechecklist[move, 4] = legalmovechecklist[move, 1]
		undo = 1
		legalmovechecklist[move, 1] = 0
	endif
	gosub resetblackattacks
	gosub updateblackattacks
	for j = 10 to 109
		if position[146, 1] = squarex[j] and position[146, 2] = squarey[j]
			if legalmovechecklist[j, 2] = 1
				SetSpriteColorAlpha(move, 0)
				exit
			else
				SetSpriteColorAlpha(move, 150)
				exit
			endif
		endif
	next j
	if undo = 1
		legalmovechecklist[move, 1] = 1
	endif
	legalmovechecklist[j, 2] = 0
	legalmovechecklist[i, 4] = 1
	legalmovechecklist[move, 4] = 0
return

runthroughblackchecklist:
	undo = 0
	gosub resetblackpiecepositions
	gosub resetwhitepiecepositions
	legalmovechecklist[i, 1] = 0
	legalmovechecklist[move, 1] = 1
	if legalmovechecklist[move, 1] = legalmovechecklist[move, 4] 
		undo = 1
		legalmovechecklist[move, 4] = 0
	endif
	gosub resetwhiteattacks	
	gosub updatewhiteattacks
	for j = 10 to 109
		if position[126, 1] = squarex[j] and position[126, 2] = squarey[j]
			if legalmovechecklist[j, 5] = 1
				SetSpriteColorAlpha(move, 0)
				exit
			else
				SetSpriteColorAlpha(move, 150)
				exit
			endif
		endif
	next j
	if undo = 1
		legalmovechecklist[move, 4] = 1
	endif
	legalmovechecklist[j, 5] = 0
	legalmovechecklist[i, 1] = 1
	legalmovechecklist[move, 1] = 0
return

runthroughwhitechecklistkingvariation:
	gosub resetblackpiecepositions
	gosub resetwhitepiecepositions
	legalmovechecklist[i, 4] = 0
	legalmovechecklist[i + kingmove, 4] = 1
	if legalmovechecklist[i + kingmove, 4] = legalmovechecklist[i + kingmove, 1] 
		legalmovechecklist[i + kingmove, 1] = 0
	endif
	gosub resetblackattacks
	gosub updateblackattacks
	for j = 10 to 109
		if position[146, 1] = squarex[j] and position[146, 2] = squarey[j]
			if legalmovechecklist[j + kingmove, 2] = 1
				SetSpriteColorAlpha(i + kingmove, 0)
				exit
			else
				SetSpriteColorAlpha(i + kingmove, 150)
				exit
			endif
		endif
	next j
	legalmovechecklist[j, 2] = 0
	legalmovechecklist[i, 4] = 1
	legalmovechecklist[i + kingmove, 4] = 0
return

runthroughblackchecklistkingvariation:
	gosub resetblackpiecepositions
	gosub resetwhitepiecepositions
	legalmovechecklist[i, 1] = 0
	legalmovechecklist[i + kingmove, 1] = 1
	if legalmovechecklist[i + kingmove, 1] = legalmovechecklist[i + kingmove, 4] 
		legalmovechecklist[i + kingmove, 4] = 0
	endif
	gosub resetwhiteattacks
	gosub updatewhiteattacks
	for j = 10 to 109
		if position[126, 1] = squarex[j] and position[126, 2] = squarey[j]
			if legalmovechecklist[j + kingmove, 5] = 1
				SetSpriteColorAlpha(i + kingmove, 0)
				exit
			else
				SetSpriteColorAlpha(i + kingmove, 150)
				exit
			endif
		endif
	next j
	legalmovechecklist[j, 5] = 0
	legalmovechecklist[i, 1] = 1
	legalmovechecklist[i + kingmove, 1] = 0
return
