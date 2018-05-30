#Include "Subroutines.agc"
#Include "legalmovechecklist.agc"

// This gives the computer a list of all the possible squares that the player can go to. This information is used to determine if the player
// is checkmated or stalemated. 
updatepossiblemoves:
	for i3 = 10 to 109
		legalmovechecklist[i3, 3] = 0
		legalmovechecklist[i3, 6] = 0	
	next i3
	gosub soldiermovedisplay2
	gosub kingmovedisplay2
	gosub tankmovedisplay2
	gosub cavalrymovedisplay2
	gosub chancellormovedisplay2
	gosub generalmovedisplay2
	gosub presidentmovedisplay2
	gosub artillerymovedisplay2
return

soldiermovedisplay2:
// Soldiers //
	// White //
	if playerturn = 1
		for x2 = 130 to 139
			if GetSpriteColorAlpha(x2) = 255
				for i2 = 10 to 109
					if squarex[i2] = position[x2, 1] and squarey[i2] = position[x2, 2]
						gosub soldierwhite2
					endif
				next i2
			endif	
		next x2
	endif
	
	// Black //
	if playerturn = 2
		for x2 = 110 to 119
			if GetSpriteColorAlpha(x2) = 255
				for i2 = 10 to 109
					if squarex[i2] = position[x2, 1] and squarey[i2] = position[x2, 2]
						gosub soldierblack2
					endif
				next i2
			endif
		next x2
	endif
return

kingmovedisplay2:
// King //
	// White //
	if playerturn = 1
		if GetSpriteColorAlpha(146) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[146, 1] and squarey[i2] = position[146, 2] // Looks for the King
					gosub kingwhite2
				endif
			next i2 
		endif
	endif
	// Black //
	if playerturn = 2
		if GetSpriteColorAlpha(126) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[126, 1] and squarey[i2] = position[126, 2]
					gosub kingblack2
				endif
			next i2 
		endif
	endif
return

tankmovedisplay2:
// Tank //
	// White //
		// Starts on Square 100 //
	if playerturn = 1
		if GetSpriteColorAlpha(148) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[148, 1] and squarey[i2] = position[148, 2]
					gosub tankwhite2
				endif
			next i2 
		endif
	endif
		// Starts on Square 109 //
	if playerturn = 1
		if GetSpriteColorAlpha(149) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[149, 1] and squarey[i2] = position[149, 2]
					gosub tankwhite2
				endif
			next i2 
		endif
	endif
	// Black //
		// Starts on Square 10 //
	if playerturn = 2
		if GetSpriteColorAlpha(128) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[128, 1] and squarey[i2] = position[128, 2]
					gosub tankblack2
				endif
			next i2 
		endif
	endif
		// Starts on Square 19 //
	if playerturn = 2
		if GetSpriteColorAlpha(129) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[129, 1] and squarey[i2] = position[129, 2]
					gosub tankblack2
				endif
			next i2 
		endif
	endif
return

cavalrymovedisplay2:
// Cavalry //
	// White //
		// Starts on Square 102 //
	if playerturn = 1
		if GetSpriteColorAlpha(142) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[142, 1] and squarey[i2] = position[142, 2]
					gosub cavalrywhite2
				endif
			next i2
		endif
	endif
		// Starts on Square 107 //
	if playerturn = 1
		if GetSpriteColorAlpha(143) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[143, 1] and squarey[i2] = position[143, 2]
					gosub cavalrywhite2
				endif
			next i2
		endif
	endif
	// Black //
		// Starts on Square 12 //
	if playerturn = 2
		if GetSpriteColorAlpha(122) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[122, 1] and squarey[i2] = position[122, 2]
					gosub cavalryblack2
				endif
			next i2
		endif
	endif
		// Starts on Square 17 //
	if playerturn = 2
		if GetSpriteColorAlpha(123) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[123, 1] and squarey[i2] = position[123, 2]
					gosub cavalryblack2
				endif
			next i2
		endif
	endif
return

chancellormovedisplay2:
// Chancellor //
	// White //
	if playerturn = 1
		if GetSpriteColorAlpha(144) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[144, 1] and squarey[i2] = position[144, 2]
					gosub cavalrywhite2
					gosub tankwhite2
				endif
			next i2
		endif
	endif
	// Black //
	if playerturn = 2
		if GetSpriteColorAlpha(124) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[124, 1] and squarey[i2] = position[124, 2]
					gosub cavalryblack2
					gosub tankblack2
				endif
			next i2
		endif
	endif
return

generalmovedisplay2:
// General //
	// White //
	if playerturn = 1
		if GetSpriteColorAlpha(145) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[145, 1] and squarey[i2] = position[145, 2]
					gosub cavalrywhite2
					gosub diagonalwhite2
				endif
			next i2
		endif
	endif
	// Black //
	if playerturn = 2
		if GetSpriteColorAlpha(125) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[125, 1] and squarey[i2] = position[125, 2]
					gosub cavalryblack2
					gosub diagonalblack2
				endif
			next i2
		endif
	endif
return

presidentmovedisplay2:
// President //
	// White //
	if playerturn = 1
		if GetSpriteColorAlpha(147) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[147, 1] and squarey[i2] = position[147, 2]
					gosub tankwhite2
					gosub diagonalwhite2
				endif
			next i2
		endif
	endif
	// Black //
	if playerturn = 2
		if GetSpriteColorAlpha(127) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[127, 1] and squarey[i2] = position[127, 2]
					gosub tankblack2
					gosub diagonalblack2
				endif
			next i2
		endif
	endif
return

artillerymovedisplay2:
// White //
	// Square 101 //
	if playerturn = 1
		if GetSpriteColorAlpha(140) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[140, 1] and squarey[i2] = position[140, 2]
					gosub artillerywhite2
				endif
			next i2
		endif
	endif
	// Square 108 //
	if playerturn = 1
		if GetSpriteColorAlpha(141) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[141, 1] and squarey[i2] = position[141, 2]
					gosub artillerywhite2
				endif
			next i2
		endif
	endif
// Black //
	// Square 11 //
	if playerturn = 2
		if GetSpriteColorAlpha(120) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[120, 1] and squarey[i2] = position[120, 2]
					gosub artilleryblack2
				endif
			next i2
		endif
	endif
	// Square 18 //
	if playerturn = 2
		if GetSpriteColorAlpha(121) = 255
			for i2 = 10 to 109
				if squarex[i2] = position[121, 1] and squarey[i2] = position[121, 2]
					gosub artilleryblack2
				endif
			next i2
		endif
	endif
return

// ************************************************************************************************************************************************************//

soldierwhite2:
	// West //
	gohere = 1
	if i2 - 1 >= 10
		if Mod(i2 - 1, 10) = Mod(i2, 10) - 1 
			for z = 130 to 149
				if position[z, 1] = squarex[i2 - 1] and position[z, 2] = squarey[i2 - 1] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 - 1, 6] = 1 
						legalmovechecklist[i2 - 1, 6] = 0
					endif
					gohere = 0
					exit		
				endif
			next z
			if gohere = 1
				move2 = i2 - 1
				gosub runthroughwhitechecklist2
			endif
		endif
	endif 
	// NorthWest //
	gohere = 1
	if i2 - 11 >= 10
		if Mod(i2 - 11, 10) = Mod(i2, 10) - 1
			for z = 130 to 149
				if position[z, 1] = squarex[i2 - 11] and position[z, 2] = squarey[i2 - 11] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 - 11, 6] = 1 
						legalmovechecklist[i2 - 11, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move2 = i2 - 11
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
	// North //
	gohere = 1
	if i2 - 10 >= 10
		for z = 130 to 149
			if position[z, 1] = squarex[i2 - 10] and position[z, 2] = squarey[i2 - 10] and GetSpriteColorAlpha(z) = 255
				if not legalmovechecklist[i2 - 10, 6] = 1
					legalmovechecklist[i2 - 10, 6] = 0
				endif
				gohere = 0
				exit
			endif
		next z
		if gohere = 1
			move2 = i2 - 10
			gosub runthroughwhitechecklist2
		endif
	endif
	// NorthEast //
	gohere = 1
	if i2 - 9 >= 10
		if Mod(i2 - 9, 10) = Mod(i2, 10) + 1
			for z = 130 to 149
				if position[z, 1] = squarex[i2 - 9] and position[z, 2] = squarey[i2 - 9] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 - 9, 6] = 1
						legalmovechecklist[i2 - 9, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move2 = i2 - 9
				gosub runthroughwhitechecklist2
			endif
		endif
	endif	
	// East //
	gohere = 1
	if i2 + 1 <= 109
		if Mod(i2 + 1, 10) = Mod(i2, 10) + 1
			for z = 130 to 149
				if position[z, 1] = squarex[i2 + 1] and position[z, 2] = squarey[i2 + 1] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 + 1, 6] = 1
						legalmovechecklist[i2 + 1, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move2 = i2 + 1
				gosub runthroughwhitechecklist2
			endif
		endif
	endif	
	// *North (2 units) //	
	if Floor(i2/10) = 9
		gohere = 1
		if i2 - 20 >= 10
			for z = 130 to 149
				if position[z, 1] = squarex[i2 - 20] and position[z, 2] = squarey[i2 - 20] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 - 20, 6] = 1
						legalmovechecklist[i2 - 20, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move2 = i2 -20
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
return

soldierblack2:
	// West //
	gohere = 1
	if i2 - 1 >= 10
		if Mod(i2 - 1, 10) = Mod(i2, 10) - 1
			for z = 110 to 129
				if position[z, 1] = squarex[i2 - 1] and position[z, 2] = squarey[i2 - 1] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 - 1, 3] = 1
						legalmovechecklist[i2 - 1, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move2 = i2 - 1
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// SouthWest //
	gohere = 1
	if i2 + 9 <= 109
		if Mod(i2 + 9, 10) = Mod(i2, 10) - 1
			for z = 110 to 129
				if position[z, 1] = squarex[i2 + 9] and position[z, 2] = squarey[i2 + 9] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 + 9, 3] = 1
						legalmovechecklist[i2 + 9, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move2 = i2 + 9
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// South //
	gohere = 1
	if i2 + 10 <= 109
		for z = 110 to 129
			if position[z, 1] = squarex[i2 + 10] and position[z, 2] = squarey[i2 + 10] and GetSpriteColorAlpha(z) = 255
				if not legalmovechecklist[i2 + 10, 3] = 1
					legalmovechecklist[i2 + 10, 3] = 0
				endif
				gohere = 0
				exit
			endif
		next z
		if gohere = 1
			move2 = i2 + 10
			gosub runthroughblackchecklist2
		endif
	endif
	// SouthEast //
	gohere = 1
	if i2 + 11 <= 109
		if Mod(i2 + 11, 10) = Mod(i2, 10) + 1
			for z = 110 to 129
				if position[z, 1] = squarex[i2 + 11] and position[z, 2] = squarey[i2 + 11] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 + 11, 3] = 1
						legalmovechecklist[i2 + 11, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move2 = i2 + 11
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// East //
	gohere = 1
	if i2 + 1 <= 109
		if Mod(i2 + 1, 10) = Mod(i2, 10) + 1
			for z = 110 to 129
				if position[z, 1] = squarex[i2 + 1] and position[z, 2] = squarey[i2 + 1] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 + 1, 3] = 1
						legalmovechecklist[i2 + 1, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move2 = i2 + 1
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// *South (2 units) //
	if Floor(i2/10) = 2
		gohere = 1
		if i2 + 20 <= 109
			for z = 110 to 129
				if position[z, 1] = squarex[i2 + 20] and position[z, 2] = squarey[i2 + 20] and GetSpriteColorAlpha(z) = 255
					if not legalmovechecklist[i2 + 20, 3] = 1
						legalmovechecklist[i2 + 20, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next z
			if gohere = 1
				move2 = i2 + 20
				gosub runthroughblackchecklist2
			endif
		endif
	endif
return

cavalrywhite2:
	// 2 Units Up, 1 Unit Left //
	gohere = 1
	if i2 - 21 >= 10
		if Mod(i2 - 21, 10) = Mod(i2, 10) - 1
			for x2 = 130 to 149
				if position[x2, 1] = squarex[i2 - 21] and position[x2, 2] = squarey[i2 - 21] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 21, 6] = 1
						legalmovechecklist[i2 - 21, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - 21
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
	// 2 Units Up, 1 Unit Right //
	gohere = 1
	if i2 - 19 >= 10
		if Mod(i2 - 19, 10) = Mod(i2, 10) + 1
			for x2 = 130 to 149
				if position[x2, 1] = squarex[i2 - 19] and position[x2, 2] = squarey[i2 - 19] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 19, 6] = 1
						legalmovechecklist[i2 - 19, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - 19
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Right //
	gohere = 1
	if i2 - 8 >= 10
		if Mod(i2 - 8, 10) = Mod(i2, 10) + 2
			for x2 = 130 to 149
				if position[x2, 1] = squarex[i2 - 8] and position[x2, 2] = squarey[i2 - 8] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 8, 6] = 1
						legalmovechecklist[i2 - 8, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - 8
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Right //
	gohere = 1
	if i2 + 12 <= 109
		if Mod(i2 + 12, 10) = Mod(i2, 10) + 2
			for x2 = 130 to 149
				if position[x2, 1] = squarex[i2 + 12] and position[x2, 2] = squarey[i2 + 12] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 12, 6] = 1
						legalmovechecklist[i2 + 12, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + 12
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Right //
	gohere = 1
	if i2 + 21 <= 109
		if Mod(i2 + 21, 10) = Mod(i2, 10) + 1
			for x2 = 130 to 149
				if position[x2, 1] = squarex[i2 + 21] and position[x2, 2] = squarey[i2 + 21] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 21, 6] = 1
						legalmovechecklist[i2 + 21, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + 21
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Left //
	gohere = 1
	if i2 + 19 <= 109
		if Mod(i2 + 19, 10) = Mod(i2, 10) - 1
			for x2 = 130 to 149
				if position[x2, 1] = squarex[i2 + 19] and position[x2, 2] = squarey[i2 + 19] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 19, 6] = 1
						legalmovechecklist[i2 + 19, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + 19
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Left //
	gohere = 1
	if i2 + 8 <= 109
		if Mod(i2 + 8, 10) = Mod(i2, 10) - 2
			for x2 = 130 to 149
				if position[x2, 1] = squarex[i2 + 8] and position[x2, 2] = squarey[i2 + 8] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 8, 6] = 1
						legalmovechecklist[i2 + 8, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + 8
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Left //
	gohere = 1
	if i2 - 12 >= 10
		if Mod(i2 - 12, 10) = Mod(i2, 10) - 2
			for x2 = 130 to 149
				if position[x2, 1] = squarex[i2 - 12] and position[x2, 2] = squarey[i2 - 12] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 12, 6] = 1
						legalmovechecklist[i2 - 12, 6] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - 12
				gosub runthroughwhitechecklist2
			endif
		endif
	endif
return

cavalryblack2:
	// 2 Units Up, 1 Unit Left //
	gohere = 1
	if i2 - 21 >= 10
		if Mod(i2 - 21, 10) = Mod(i2, 10) - 1
			for x2 = 110 to 129
				if position[x2, 1] = squarex[i2 - 21] and position[x2, 2] = squarey[i2 - 21] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 21, 3] = 1
						legalmovechecklist[i2 - 21, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - 21
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// 2 Units Up, 1 Unit Right //
	gohere = 1
	if i2 - 19 >= 10
		if Mod(i2 - 19, 10) = Mod(i2, 10) + 1
			for x2 = 110 to 129
				if position[x2, 1] = squarex[i2 - 19] and position[x2, 2] = squarey[i2 - 19] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 19, 3] = 1
						legalmovechecklist[i2 - 19, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - 19
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Right //
	gohere = 1
	if i2 - 8 >= 10
		if Mod(i2 - 8, 10) = Mod(i2, 10) + 2
			for x2 = 110 to 129
				if position[x2, 1] = squarex[i2 - 8] and position[x2, 2] = squarey[i2 - 8] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 8, 3] = 1
						legalmovechecklist[i2 - 8, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - 8
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Right //
	gohere = 1
	if i2 + 12 <= 109
		if Mod(i2 + 12, 10) = Mod(i2, 10) + 2
			for x2 = 110 to 129
				if position[x2, 1] = squarex[i2 + 12] and position[x2, 2] = squarey[i2 + 12] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 12, 3] = 1
						legalmovechecklist[i2 + 12, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + 12
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Right //
	gohere = 1
	if i2 + 21 <= 109
		if Mod(i2 + 21, 10) = Mod(i2, 10) + 1
			for x2 = 110 to 129
				if position[x2, 1] = squarex[i2 + 21] and position[x2, 2] = squarey[i2 + 21] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 21, 3] = 1
						legalmovechecklist[i2 + 21, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + 21
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Left //
	gohere = 1
	if i2 + 19 <= 109
		if Mod(i2 + 19, 10) = Mod(i2, 10) - 1
			for x2 = 110 to 129
				if position[x2, 1] = squarex[i2 + 19] and position[x2, 2] = squarey[i2 + 19] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 19, 3] = 1
						legalmovechecklist[i2 + 19, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + 19
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Left //
	gohere = 1
	if i2 + 8 <= 109
		if Mod(i2 + 8, 10) = Mod(i2, 10) - 2
			for x2 = 110 to 129
				if position[x2, 1] = squarex[i2 + 8] and position[x2, 2] = squarey[i2 + 8] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 8, 3] = 1
						legalmovechecklist[i2 + 8, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + 8
				gosub runthroughblackchecklist2
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Left //
	gohere = 1
	if i2 - 12 >= 10
		if Mod(i2 - 12, 10) = Mod(i2, 10) - 2
			for x2 = 110 to 129
				if position[x2, 1] = squarex[i2 - 12] and position[x2, 2] = squarey[i2 - 12] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 12, 3] = 1
						legalmovechecklist[i2 - 12, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - 12
				gosub runthroughblackchecklist2
			endif
		endif
	endif
return

tankwhite2:
	// North //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i2 >= 10 + factor*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x2 = 130 to 149 // Checks White Pieces //
				// Checks if square is occupied by an ally piece //
				if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - factor*10, 6] = 1
						legalmovechecklist[i2 - factor*10, 6] = 0
					endif
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - factor*10
				gosub runthroughwhitechecklist2
			endif
			// Check if spot is occupied by enemy piece //
			for x2 = 110 to 129
				if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					move2 = i2 - factor*10
					gosub runthroughwhitechecklist2
					exitprogram = 1
					exit
				endif
			next x2
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
		if i2 < 10*Floor(i2/10 + 1) - factor // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x2 = 130 to 149 // Checks White Pieces //
				// Checks if square is occupied by an ally piece //
				if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + factor, 6] = 1
						legalmovechecklist[i2 + factor, 6] = 0
					endif
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + factor
				gosub runthroughwhitechecklist2
			endif
			// Check if spot is occupied by enemy piece //
			for x2 = 110 to 129
				if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					move2 = i2 + factor
					gosub runthroughwhitechecklist2
					exitprogram = 1
					exit
				endif
			next x2
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
		if i2 <= 109 - factor*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x2 = 130 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + factor*10, 6] = 1
						legalmovechecklist[i2 + factor*10, 6] = 0
					endif
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + factor*10
				gosub runthroughwhitechecklist2
			endif
			// Check if spot is occupied by enemy piece //
			for x2 = 110 to 129
				if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					move2 = i2 + factor*10
					gosub runthroughwhitechecklist2
					exitprogram = 1
					exit
				endif
			next x2
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
		if i2 >= 10*Floor(i2/10) + factor // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x2 = 130 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - factor, 6] = 1
						legalmovechecklist[i2 - factor, 6] = 0
					endif
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - factor
				gosub runthroughwhitechecklist2
			endif
			// Check if spot is occupied by enemy piece //
			for x2 = 110 to 129
				if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					move2 = i2 - factor
					gosub runthroughwhitechecklist2
					exitprogram = 1
					exit
				endif
			next x2
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
return

tankblack2:
	// North //
	factor = 1
	exitprogram = 0
	repeat
		gohere = 1
		if i2 >= 10 + factor*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 129 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - factor*10, 3] = 1
						legalmovechecklist[i2 - factor*10, 3] = 0
					endif
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - factor*10
				gosub runthroughblackchecklist2
			endif
			// Check if spot is occupied by enemy piece //
			for x2 = 130 to 149
				if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					move2 = i2 - factor*10
					gosub runthroughblackchecklist2
					exitprogram = 1
					exit
				endif
			next x2
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
		if i2 < 10*Floor(i2/10 + 1) - factor // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 129 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + factor, 3] = 1
						legalmovechecklist[i2 + factor, 3] = 0
					endif
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + factor
				gosub runthroughblackchecklist2
			endif
			// Check if spot is occupied by enemy piece //
			for x2 = 130 to 149
				if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					move2 = i2 + factor
					gosub runthroughblackchecklist2
					exitprogram = 1
					exit
				endif
			next x2
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
		if i2 <= 109 - factor*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 129 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + factor*10, 3] = 1
						legalmovechecklist[i2 + factor*10, 3] = 0
					endif
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + factor*10
				gosub runthroughblackchecklist2
			endif
			// Check if spot is occupied by enemy piece //
			for x2 = 130 to 149
				if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					move2 = i2 + factor*10
					gosub runthroughblackchecklist2
					exitprogram = 1
					exit
				endif
			next x2
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
		if i2 >= 10*Floor(i2/10) + factor // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 129 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - factor, 3] = 1
						legalmovechecklist[i2 - factor, 3] = 0
					endif
					exitprogram = 1
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - factor
				gosub runthroughblackchecklist2
			endif
			// Check if spot is occupied by enemy piece //
			for x2 = 130 to 149
				if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					move2 = i2 - factor
					gosub runthroughblackchecklist2
					exitprogram = 1
					exit
				endif
			next x2
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
return

diagonalwhite2:
	// NorthWest //
	factor = 1
	exitprogram = 0
	repeat	
		if Mod(i2 - factor*11, 10) > 0 // Checks the ones digit other than 0 //
			gohere = 1
			if Mod(i2 - 11, 10) = Mod(i2, 10) - 1
				if i2 - factor*11 >= 10 // Checks if the move2 is valid //
					for x2 = 130 to 149
						if squarex[i2 - factor*11] = position[x2, 1] and squarey[i2 - factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							if not legalmovechecklist[i2 - factor*11, 6] = 1
								legalmovechecklist[i2 - factor*11, 6] = 0
							endif
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x2
					if gohere = 1
						move2 = i2 - factor*11
						gosub runthroughwhitechecklist2
					endif
					for x2 = 110 to 129
						if squarex[i2 - factor*11] = position[x2, 1] and squarey[i2 - factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							move2 = i2 - factor*11
							gosub runthroughwhitechecklist2
							exitprogram = 1
							exit
						endif
					next x2
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif
		endif
		if Mod(i2 - factor*11, 10) = 0 // When the ones digit is 0 
			gohere = 1
			// Checks if the move2 is valid //
			if i2 - factor*11 >= 10
				for x2 = 130 to 149
					if squarex[i2 - factor*11] = position[x2, 1] and squarey[i2 - factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						if not legalmovechecklist[i2 - factor*11, 6] = 1
							legalmovechecklist[i2 - factor*11, 6] = 0
						endif
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x2
				if gohere = 1
					move2 = i2 - factor*11
					gosub runthroughwhitechecklist2
				endif
				for x2 = 110 to 129
					if squarex[i2 - factor*11] = position[x2, 1] and squarey[i2 - factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						move2 = i2 - factor*11
						gosub runthroughwhitechecklist2
						exitprogram = 1
						exit
					endif
				next x2
				exitprogram = 1
			endif						
		endif
		factor = factor + 1
	until exitprogram = 1				
	// NorthEast //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i2 - factor*9, 10) < 9 // Checks the ones digit other than 9 //
			gohere = 1
			if Mod(i2 - 9, 10) = Mod(i2, 10) + 1
				if i2 - factor*9 >= 10 // Checks if the move2 is valid //
					for x2 = 130 to 149
						if squarex[i2 - factor*9] = position[x2, 1] and squarey[i2 - factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							if not legalmovechecklist[i2 - factor*9, 6] = 1						
								legalmovechecklist[i2 - factor*9, 6] = 0
							endif
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x2
					if gohere = 1
						move2 = i2 - factor*9
						gosub runthroughwhitechecklist2
					endif
					for x2 = 110 to 129
						if squarex[i2 - factor*9] = position[x2, 1] and squarey[i2 - factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							move2 = i2 - factor*9
							gosub runthroughwhitechecklist2
							exitprogram = 1
							exit
						endif
					next x2
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i2 - factor*9, 10) = 9 // When the ones digit is 9
			gohere = 1
			// Checks if the move2 is valid //
			if i2 - factor*9 >= 10
				for x2 = 130 to 149
					if squarex[i2 - factor*9] = position[x2, 1] and squarey[i2 - factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						if not legalmovechecklist[i2 - factor*9, 6] = 1
							legalmovechecklist[i2 - factor*9, 6] = 0
						endif
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x2
				if gohere = 1
					move2 = i2 - factor*9
					gosub runthroughwhitechecklist2
				endif
				for x2 = 110 to 129
					if squarex[i2 - factor*9] = position[x2, 1] and squarey[i2 - factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						move2 = i2 - factor*9
						gosub runthroughwhitechecklist2
						exit
					endif
				next x2
				exitprogram = 1
			endif						
		endif
		factor = factor + 1
	until exitprogram = 1				
	// SouthEast //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i2 + factor*11, 10) < 9 // Checks the ones digit other than 9 //
			gohere = 1
			if Mod(i2 + 11, 10) = Mod(i2, 10) + 1
				if i2 + factor*11 <= 109 // Checks if the move2 is valid //
					for x2 = 130 to 149
						if squarex[i2 + factor*11] = position[x2, 1] and squarey[i2 + factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							if not legalmovechecklist[i2 + factor*11, 6] = 1
								legalmovechecklist[i2 + factor*11, 6] = 0
							endif
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x2
					if gohere = 1
						move2 = i2 + factor*11
						gosub runthroughwhitechecklist2
					endif
					for x2 = 110 to 129
						if squarex[i2 + factor*11] = position[x2, 1] and squarey[i2 + factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							move2 = i2 + factor*11
							gosub runthroughwhitechecklist2
							exitprogram = 1
							exit
						endif
					next x2
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i2 + factor*11, 10) = 9 // When the ones digit is 9
			gohere = 1
			// Checks if the move2 is valid //
			if i2 + factor*11 <= 109
				for x2 = 130 to 149
					if squarex[i2 + factor*11] = position[x2, 1] and squarey[i2 + factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						if not legalmovechecklist[i2 + factor*11, 6] = 1
							legalmovechecklist[i2 + factor*11, 6] = 0
						endif
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x2
				if gohere = 1
					move2 = i2 + factor*11
					gosub runthroughwhitechecklist2
				endif
				for x2 = 110 to 129
					if squarex[i2 + factor*11] = position[x2, 1] and squarey[i2 + factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						move2 = i2 + factor*11
						gosub runthroughwhitechecklist2
						exitprogram = 1
						exit
					endif
				next x2
				exitprogram = 1
			endif
		endif
		factor = factor + 1
	until exitprogram = 1			
	// SouthWest //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i2 + factor*9, 10) > 0 // Checks the ones digit other than 0 //
			gohere = 1
			if Mod(i2 + 9, 10) = Mod(i2, 10) - 1
				if i2 + factor*9 <= 109 // Checks if the move2 is valid //
					for x2 = 130 to 149
						if squarex[i2 + factor*9] = position[x2, 1] and squarey[i2 + factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							if not legalmovechecklist[i2 + factor*9, 6] = 1
								legalmovechecklist[i2 + factor*9, 6] = 0
							endif
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x2
					if gohere = 1
						move2 = i2 + factor*9
						gosub runthroughwhitechecklist2
					endif
					for x2 = 110 to 129
						if squarex[i2 + factor*9] = position[x2, 1] and squarey[i2 + factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							move2 = i2 + factor*9
							gosub runthroughwhitechecklist2
							exitprogram = 1
							exit
						endif
					next x2
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i2 + factor*9, 10) = 0 // When the ones digit is 0 
			gohere = 1
			// Checks if the move2 is valid //
			if i2 + factor*9 <= 109
				for x2 = 130 to 149
					if squarex[i2 + factor*9] = position[x2, 1] and squarey[i2 + factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						if not legalmovechecklist[i2 + factor*9, 6] = 1
							legalmovechecklist[i2 + factor*9, 6] = 0
						endif
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x2
				if gohere = 1
					move2 = i2 + factor*9
					gosub runthroughwhitechecklist2
				endif
				for x2 = 110 to 129
					if squarex[i2 + factor*9] = position[x2, 1] and squarey[i2 + factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						move2 = i2 + factor*9
						gosub runthroughwhitechecklist2
						exitprogram = 1
						exit
					endif
				next x2
				exitprogram = 1
			endif
		endif
		factor = factor + 1
	until exitprogram = 1
return

diagonalblack2:
	// NorthWest //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i2 - factor*11, 10) > 0 // Checks the ones digit other than 0 //
			gohere = 1
			if Mod(i2 - 11, 10) = Mod(i2, 10) - 1
				if i2 - factor*11 >= 10 // Checks if the move2 is valid //
					for x2 = 110 to 129
						if squarex[i2 - factor*11] = position[x2, 1] and squarey[i2 - factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							if not legalmovechecklist[i2 - factor*11, 3] = 1
								legalmovechecklist[i2 - factor*11, 3] = 0
							endif
							exitprogram = 1
							gohere = 0 
							exit
						endif
					next x2
					if gohere = 1
						move2 = i2 - factor*11
						gosub runthroughblackchecklist2
					endif
					for x2 = 130 to 149
						if squarex[i2 - factor*11] = position[x2, 1] and squarey[i2 - factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							move2 = i2 - factor*11
							gosub runthroughblackchecklist2
							exitprogram = 1
							exit
						endif
					next x2
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif
		endif
		if Mod(i2 - factor*11, 10) = 0 // When the ones digit is 0 
			gohere = 1
			// Checks if the move2 is valid //
			if i2 - factor*11 >= 10
				for x2 = 110 to 129
					if squarex[i2 - factor*11] = position[x2, 1] and squarey[i2 - factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						if not legalmovechecklist[i2 - factor*11, 3] = 1
							legalmovechecklist[i2 - factor*11, 3] = 0
						endif
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x2
				if gohere = 1
					move2 = i2 - factor*11
					gosub runthroughblackchecklist2
				endif
				for x2 = 130 to 149
					if squarex[i2 - factor*11] = position[x2, 1] and squarey[i2 - factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						move2 = i2 - factor*11
						gosub runthroughblackchecklist2
						exitprogram = 1
						exit
					endif
				next x2
				exitprogram = 1
			endif						
		endif
		factor = factor + 1
	until exitprogram = 1
	
	// NorthEast //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i2 - factor*9, 10) < 9 // Checks the ones digit other than 9 //
			gohere = 1
			if Mod(i2 - 9, 10) = Mod(i2, 10) + 1
				if i2 - factor*9 >= 10 // Checks if the move2 is valid //
					for x2 = 110 to 129
						if squarex[i2 - factor*9] = position[x2, 1] and squarey[i2 - factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							if not legalmovechecklist[i2 - factor*9, 3] = 1
								legalmovechecklist[i2 - factor*9, 3] = 0
							endif
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x2
					if gohere = 1
						move2 = i2 - factor*9
						gosub runthroughblackchecklist2
					endif
					for x2 = 130 to 149
						if squarex[i2 - factor*9] = position[x2, 1] and squarey[i2 - factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							move2 = i2 - factor*9
							gosub runthroughblackchecklist2
							exitprogram = 1
							exit
						endif
					next x2
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i2 - factor*9, 10) = 9 // When the ones digit is 9
			gohere = 1
			// Checks if the move2 is valid //
			if i2 - factor*9 >= 10
				for x2 = 110 to 129
					if squarex[i2 - factor*9] = position[x2, 1] and squarey[i2 - factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						if not legalmovechecklist[i2 - factor*9, 3] = 1
							legalmovechecklist[i2 - factor*9, 3] = 0
						endif
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x2
				if gohere = 1
					move2 = i2 - factor*9
					gosub runthroughblackchecklist2
				endif
				for x2 = 130 to 149
					if squarex[i2 - factor*9] = position[x2, 1] and squarey[i2 - factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						move2 = i2 - factor*9
						gosub runthroughblackchecklist2
						exitprogram = 1
						exit
					endif
				next x2
				exitprogram = 1
			endif						
		endif
		factor = factor + 1
	until exitprogram = 1
	
	// SouthEast //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i2 + factor*11, 10) < 9 // Checks the ones digit other than 9 //
			gohere = 1
			if Mod(i2 + 11, 10) = Mod(i2, 10) + 1
				if i2 + factor*11 <= 109 // Checks if the move2 is valid //
					for x2 = 110 to 129
						if squarex[i2 + factor*11] = position[x2, 1] and squarey[i2 + factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							if not legalmovechecklist[i2 + factor*11, 3] = 1
								legalmovechecklist[i2 + factor*11, 3] = 0
							endif
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x2
					if gohere = 1
						move2 = i2 + factor*11
						gosub runthroughblackchecklist2
					endif
					for x2 = 130 to 149
						if squarex[i2 + factor*11] = position[x2, 1] and squarey[i2 + factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							move2 = i2 + factor*11
							gosub runthroughblackchecklist2
							exitprogram = 1
							exit
						endif
					next x2
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i2 + factor*11, 10) = 9 // When the ones digit is 9
			gohere = 1
			// Checks if the move2 is valid //
			if i2 + factor*11 <= 109
				for x2 = 110 to 129
					if squarex[i2 + factor*11] = position[x2, 1] and squarey[i2 + factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						if not legalmovechecklist[i2 + factor*11, 3] = 1
							legalmovechecklist[i2 + factor*11, 3] = 0
						endif
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x2
				if gohere = 1
					move2 = i2 + factor*11
					gosub runthroughblackchecklist2
				endif
				for x2 = 130 to 149
					if squarex[i2 + factor*11] = position[x2, 1] and squarey[i2 + factor*11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						move2 = i2 + factor*11
						gosub runthroughblackchecklist2
						exitprogram = 1
						exit
					endif
				next x2
				exitprogram = 1
			endif
		endif
		factor = factor + 1
	until exitprogram = 1
	
	// SouthWest //
	factor = 1
	exitprogram = 0
	repeat
		if Mod(i2 + factor*9, 10) > 0 // Checks the ones digit other than 0 //
			gohere = 1
			if Mod(i2 + 9, 10) = Mod(i2, 10) - 1
				if i2 + factor*9 <= 109 // Checks if the move2 is valid //
					for x2 = 110 to 129
						if squarex[i2 + factor*9] = position[x2, 1] and squarey[i2 + factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							if not legalmovechecklist[i2 + factor*9, 3] = 1
								legalmovechecklist[i2 + factor*9, 3] = 0
							endif
							exitprogram = 1
							gohere = 0
							exit
						endif
					next x2
					if gohere = 1
						move2 = i2 + factor*9
						gosub runthroughblackchecklist2
					endif
					for x2 = 130 to 149
						if squarex[i2 + factor*9] = position[x2, 1] and squarey[i2 + factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
							move2 = i2 + factor*9
							gosub runthroughblackchecklist2
							exitprogram = 1
							exit
						endif
					next x2
				else
					exitprogram = 1						
				endif
			else
				exitprogram = 1
			endif						
		endif
		if Mod(i2 + factor*9, 10) = 0 // When the ones digit is 0 
			gohere = 1
			// Checks if the move2 is valid //
			if i2 + factor*9 <= 109
				for x2 = 110 to 129
					if squarex[i2 + factor*9] = position[x2, 1] and squarey[i2 + factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						if not legalmovechecklist[i2 + factor*9, 3] = 1
							legalmovechecklist[i2 + factor*9, 3] = 0
						endif
						exitprogram = 1
						gohere = 0
						exit
					endif
				next x2
				if gohere = 1
					move2 = i2 + factor*9
					gosub runthroughblackchecklist2
				endif
				for x2 = 130 to 149
					if squarex[i2 + factor*9] = position[x2, 1] and squarey[i2 + factor*9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
						move2 = i2 + factor*9
						gosub runthroughblackchecklist2
						exitprogram = 1
						exit
					endif
				next x2
				exitprogram = 1
			endif
		endif
		factor = factor + 1
	until exitprogram = 1
return

artillerywhite2:
	// North //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i2 >= 10 + factor*10 // Checks if it is a valid square //
			gohere = 1
			for x2 = 110 to 149 // Check All Sprites //
				// Checks if square is occupied by a piece //
				if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - factor*10, 6] = 1
						legalmovechecklist[i2 - factor*10, 6] = 0
					endif
					exitprogram = 1	
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i2 >= 10 + factor*10
							// When an ally piece is found //
							for x2 = 130 to 149
								if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
									allyfound = 1
									exit
								endif
							next x2
							if allyfound = 0
								for x2 = 110 to 129
									// When an enemy piece is found //
									if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
										move2 = i2 - factor*10
										gosub runthroughwhitechecklist2
										enemyfound = 1
										exit
									endif
								next x2
							endif
						else
							exit
						endif
					until enemyfound = 1								
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - factor*10
				gosub runthroughwhitechecklist2
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
		if i2 < 10*Floor(i2/10 + 1) - factor // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 149 // Checks All Pieces //
				// Checks if square is occupied by a piece //
				if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + factor, 6] = 1
						legalmovechecklist[i2 + factor, 6] = 0
					endif
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i2 < 10*Floor(i2/10 + 1) - factor
							// When an ally piece is found //
							for x2 = 130 to 149
								if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
									allyfound = 1
									exit
								endif
							next x2
							if allyfound = 0
								for x2 = 110 to 129
									// When an enemy piece is found //
									if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
										move2 = i2 + factor
										gosub runthroughwhitechecklist2
										enemyfound = 1
										exit
									endif
								next x2
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + factor
				gosub runthroughwhitechecklist2
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
		if i2 <= 109 - factor*10 // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + factor*10, 6] = 1
						legalmovechecklist[i2 + factor*10, 6] = 0
					endif
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i2 <= 109 - factor*10
							// When an ally piece is found //
							for x2 = 130 to 149
								if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
									allyfound = 1
									exit
								endif
							next x2
							if allyfound = 0
								for x2 = 110 to 129
									// When an enemy piece is found //
									if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
										move2 = i2 + factor*10
										gosub runthroughwhitechecklist2
										enemyfound = 1
										exit
									endif
								next x2
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + factor*10
				gosub runthroughwhitechecklist2
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
		if i2 >= 10*Floor(i2/10) + factor // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - factor, 6] = 1
						legalmovechecklist[i2 - factor, 6] = 0
					endif
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i2 >= 10*Floor(i2/10) + factor
							// When an ally piece is found //
							for x2 = 130 to 149
								if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
									allyfound = 1
									exit
								endif
							next x2
							if allyfound = 0
								for x2 = 110 to 129
									// When an enemy piece is found //
									if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
										move2 = i2 - factor
										gosub runthroughwhitechecklist2
										enemyfound = 1
										exit
									endif
								next x2
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - factor
				gosub runthroughwhitechecklist2
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
return

artilleryblack2:
	// North //
	factor = 1
	exitprogram = 0
	enemyfound = 0
	allyfound = 0
	repeat
		if i2 >= 10 + factor*10 // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 149 // Checks All Pieces //
				// Checks if square is occupied by a color piece //
				if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - factor*10, 3] = 1
						legalmovechecklist[i2 - factor*10, 3] = 0
					endif
					exitprogram = 1	
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i2 >= 10 + factor*10
							// When an ally piece is found //
							for x2 = 110 to 129
								if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
									allyfound = 1
									exit
								endif
							next x2
							if allyfound = 0
								for x2 = 130 to 149
									// When an enemy piece is found //
									if squarex[i2 - factor*10] = position[x2, 1] and squarey[i2 - factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
										move2 = i2 - factor*10
										gosub runthroughblackchecklist2
										enemyfound = 1
										exit
									endif
								next x2
							endif
						else
							exit
						endif
					until enemyfound = 1								
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - factor*10
				gosub runthroughblackchecklist2
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
		if i2 < 10*Floor(i2/10 + 1) - factor // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + factor, 3] = 1
						legalmovechecklist[i2 + factor, 3] = 0
					endif
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i2 < 10*Floor(i2/10 + 1) - factor
							// When an ally piece is found //
							for x2 = 110 to 129
								if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
									allyfound = 1
									exit
								endif
							next x2
							if allyfound = 0
								for x2 = 130 to 149
									// When an enemy piece is found //
									if squarex[i2 + factor] = position[x2, 1] and squarey[i2 + factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
										move2 = i2 + factor
										gosub runthroughblackchecklist2
										enemyfound = 1
										exit
									endif
								next x2
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + factor
				gosub runthroughblackchecklist2
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
		if i2 <= 109 - factor*10 // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 149 // Checks All Pieces //
				// Checks if square is occupied by a a piece //
				if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + factor*10, 3] = 1
						legalmovechecklist[i2 + factor*10, 3] = 0
					endif
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i2 <= 109 - factor*10
							// When an ally piece is found //
							for x2 = 110 to 129
								if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
									allyfound = 1
									exit
								endif
							next x2
							if allyfound = 0
								for x2 = 130 to 149
									// When an enemy piece is found //
									if squarex[i2 + factor*10] = position[x2, 1] and squarey[i2 + factor*10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
										move2 = i2 + factor*10
										gosub runthroughblackchecklist2
										enemyfound = 1
										exit
									endif
								next x2
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 + factor*10
				gosub runthroughblackchecklist2
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
		if i2 >= 10*Floor(i2/10) + factor // Checks if it is a valid square //
			gohere = 1
			// Checks if that spot is already occupied by ally piece //
			for x2 = 110 to 149 // Checks White Pieces //
				// Checks if square is occupied by a same color piece //
				if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - factor, 3] = 1
						legalmovechecklist[i2 - factor, 3] = 0
					endif
					exitprogram = 1
					gohere = 0
					// Repeats until an enemy piece is found //
					repeat 
						factor = factor + 1
						if i2 >= 10*Floor(i2/10) + factor
							// When an ally piece is found //
							for x2 = 110 to 129
								if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
									allyfound = 1
									exit
								endif
							next x2
							if allyfound = 0
								for x2 = 130 to 149
									// When an enemy piece is found //
									if squarex[i2 - factor] = position[x2, 1] and squarey[i2 - factor] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
										move2 = i2 - factor
										gosub runthroughblackchecklist2
										enemyfound = 1
										exit
									endif
								next x2
							endif
						else
							exit
						endif
					until enemyfound = 1
					exit
				endif
			next x2
			if gohere = 1
				move2 = i2 - factor
				gosub runthroughblackchecklist2
			endif
			factor = factor + 1
		else
			exitprogram = 1
		endif
	until exitprogram = 1
return

kingwhite2:
	if i2 - 10 >= 10
		for x2 = 130 to 149
			gohere = 1
			if squarex[i2 - 10] = position[x2, 1] and squarey[i2 - 10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
				if not legalmovechecklist[i2 - 10, 6] = 1
					legalmovechecklist[i2 - 10, 6] = 0
				endif
				gohere = 0
				exit
			endif
			if gohere = 1
				kingmove = -10
				gosub runthroughwhitechecklistkingvariation2
			endif
		next x2
	endif
	if i2 - 9 >= 10
		if Mod(i2 - 9, 10) = Mod(i2, 10) + 1
			gohere = 1
			for x2 = 130 to 149
				if squarex[i2 - 9] = position[x2, 1] and squarey[i2 - 9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 9, 6] = 1
						legalmovechecklist[i2 - 9, 6] = 0
					endif
					gohere = 0
					exit
				endif
				if gohere = 1
					kingmove = -9
					gosub runthroughwhitechecklistkingvariation2
				endif
			next x2
		endif
	endif
	if i2 + 1 <= 109
		if Mod(i2 + 1, 10) = Mod(i2, 10) + 1
			gohere = 1
			for x2 = 130 to 149
				if squarex[i2 + 1] = position[x2, 1] and squarey[i2 + 1] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 1, 6] = 1
						legalmovechecklist[i2 + 1, 6] = 0
					endif
					gohere = 0
					exit
				endif
				if gohere = 1
					kingmove = 1
					gosub runthroughwhitechecklistkingvariation2
				endif
			next x2
		endif
	endif
	if i2 + 11 <= 109
		if Mod(i2 + 11, 10) = Mod(i2, 10) + 1
			gohere = 1
			for x2 = 130 to 149
				if squarex[i2 + 11] = position[x2, 1] and squarey[i2 + 11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 11, 6] = 1
						legalmovechecklist[i2 + 11, 6] = 0
					endif
					gohere = 0
					exit
				endif
				if gohere = 1
					kingmove = 11
					gosub runthroughwhitechecklistkingvariation2
				endif
			next x2
		endif
	endif
	if i2 + 10 <= 109
		gohere = 1
		for x2 = 130 to 149
			if squarex[i2 + 10] = position[x2, 1] and squarey[i2 + 10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
				if legalmovechecklist[i2 + 10, 6] = 1
					legalmovechecklist[i2 + 10, 6] = 0
				endif
				gohere = 0
				exit
			endif
			if gohere = 1
				kingmove = 10
				gosub runthroughwhitechecklistkingvariation2
			endif
		next x2
	endif
	if i2 + 9 <= 109
		if Mod(i2 + 9, 10) = Mod(i2, 10) - 1
			gohere = 1
			for x2 = 130 to 149
				if squarex[i2 + 9] = position[x2, 1] and squarey[i2 + 9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 9, 6] = 1
						legalmovechecklist[i2 + 9, 6] = 0
					endif
					gohere = 0
					exit
				endif
				if gohere = 1
					kingmove = 9
					gosub runthroughwhitechecklistkingvariation2
				endif
			next x2
		endif
	endif
	if i2 - 1 >= 10
		if Mod(i2 - 1, 10) = Mod(i2, 10) - 1
			gohere = 1
			for x2 = 130 to 149
				if squarex[i2 - 1] = position[x2, 1] and squarey[i2 - 1] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 1, 6] = 1
						legalmovechecklist[i2 - 1, 6] = 0
					endif
					gohere = 0
					exit
				endif
				if gohere = 1
					kingmove = -1
					gosub runthroughwhitechecklistkingvariation2
				endif
			next x2
		endif
	endif
	if i2 - 11 >= 10
		if Mod(i2 - 11, 10) = Mod(i2, 10) - 1
			gohere = 1
			for x2 = 130 to 149
				if squarex[i2 - 11] = position[x2, 1] and squarey[i2 - 11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 11, 6] = 1
						legalmovechecklist[i2 - 11, 6] = 0
					endif
					gohere = 0
					exit
				endif
				if gohere = 1
					kingmove = -11
					gosub runthroughwhitechecklistkingvariation2
				endif
			next x2
		endif
	endif
return

kingblack2:
	if i2 - 10 >= 10
		gohere = 1
		for x2 = 110 to 129
			if squarex[i2 - 10] = position[x2, 1] and squarey[i2 - 10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
				if not legalmovechecklist[i2 - 10, 3] = 1
					legalmovechecklist[i2 - 10, 3] = 0
				endif
				gohere = 0
				exit
			endif
		next x2
		if gohere = 1
			kingmove = -10
			gosub runthroughblackchecklistkingvariation2
		endif
	endif
	if i2 - 9 >= 10
		if Mod(i2 - 9, 10) = Mod(i2, 10) + 1
			gohere = 1
			for x2 = 110 to 129
				if squarex[i2 - 9] = position[x2, 1] and squarey[i2 - 9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 9, 3] = 1
						legalmovechecklist[i2 - 9, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				kingmove = -9
				gosub runthroughblackchecklistkingvariation2
			endif
		endif
	endif
	if i2 + 1 <= 109
		if Mod(i2 + 1, 10) = Mod(i2, 10) + 1
			gohere = 1
			for x2 = 110 to 129
				if squarex[i2 + 1] = position[x2, 1] and squarey[i2 + 1] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 1, 3] = 1
						legalmovechecklist[i2 + 1, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				kingmove = 1
				gosub runthroughblackchecklistkingvariation2
			endif
		endif
	endif
	if i2 + 11 <= 109
		if Mod(i2 + 11, 10) = Mod(i2, 10) + 1
			gohere = 1
			for x2 = 110 to 129
				if squarex[i2 + 11] = position[x2, 1] and squarey[i2 + 11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 11, 3] = 1
						legalmovechecklist[i2 + 11, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				kingmove = 11
				gosub runthroughblackchecklistkingvariation2
			endif
		endif
	endif
	if i2 + 10 <= 109
		gohere = 1
		for x2 = 110 to 129
			if squarex[i2 + 10] = position[x2, 1] and squarey[i2 + 10] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
				if not legalmovechecklist[i2 + 11, 3] = 1
					legalmovechecklist[i2 + 10, 3] = 0
				endif
				gohere = 0
				exit
			endif
		next x2
		if gohere = 1
			kingmove = 10
			gosub runthroughblackchecklistkingvariation2
		endif
	endif
	if i2 + 9 <= 109
		if Mod(i2 + 9, 10) = Mod(i2, 10) - 1
			gohere = 1
			for x2 = 110 to 129
				if squarex[i2 + 9] = position[x2, 1] and squarey[i2 + 9] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 + 9, 3] = 1
						legalmovechecklist[i2 + 9, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				kingmove = 9
				gosub runthroughblackchecklistkingvariation2
			endif
		endif
	endif
	if i2 - 1 >= 10
		if Mod(i2 - 1, 10) = Mod(i2, 10) - 1
			gohere = 1
			for x2 = 110 to 129
				if squarex[i2 - 1] = position[x2, 1] and squarey[i2 - 1] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 1, 3] = 1
						legalmovechecklist[i2 - 1, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				kingmove = -1
				gosub runthroughblackchecklistkingvariation2
			endif
		endif
	endif
	if i2 - 11 >= 10
		if Mod(i2 - 11, 10) = Mod(i2, 10) - 1
			gohere = 1
			for x2 = 110 to 129
				if squarex[i2 - 11] = position[x2, 1] and squarey[i2 - 11] = position[x2, 2] and GetSpriteColorAlpha(x2) = 255
					if not legalmovechecklist[i2 - 11, 3] = 1
						legalmovechecklist[i2 - 11, 3] = 0
					endif
					gohere = 0
					exit
				endif
			next x2
			if gohere = 1
				kingmove = -11
				gosub runthroughblackchecklistkingvariation2
			endif
		endif
	endif
return

runthroughwhitechecklist2:
	resetback = 0
	gosub resetblackpiecepositions
	gosub resetwhitepiecepositions
	legalmovechecklist[i2, 4] = 0
	legalmovechecklist[move2, 4] = 1
	if legalmovechecklist[move2, 4] = legalmovechecklist[move2, 1]
		legalmovechecklist[move2, 1] = 0
		resetback = 1 // True //
	endif
	gosub resetblackattacks
	gosub updateblackattacks
	for j2 = 10 to 109
		if position[146, 1] = squarex[j2] and position[146, 2] = squarey[j2]
			if legalmovechecklist[j2, 2] = 1
				if not legalmovechecklist[move2, 6] = 1
					legalmovechecklist[move2, 6] = 0
				endif
				exit
			else
				legalmovechecklist[move2, 6] = 1
				exit
			endif
		endif
	next j2
	//legalmovechecklist[j2, 2] = 0
	if resetback = 1
		legalmovechecklist[move2, 1] = 1
	endif
	legalmovechecklist[i2, 4] = 1
	legalmovechecklist[move2, 4] = 0
	gosub resetblackpiecepositions
	gosub resetblackattacks
	gosub updateblackattacks
return

runthroughblackchecklist2:
	resetback = 0
	gosub resetblackpiecepositions
	gosub resetwhitepiecepositions
	legalmovechecklist[i2, 1] = 0
	legalmovechecklist[move2, 1] = 1
	if legalmovechecklist[move2, 1] = legalmovechecklist[move2, 4] 
		legalmovechecklist[move2, 4] = 0
		resetback = 1
	endif
	gosub resetwhiteattacks
	gosub updatewhiteattacks
	for j2 = 10 to 109
		if position[126, 1] = squarex[j2] and position[126, 2] = squarey[j2]
			if legalmovechecklist[j2, 5] = 1
				if not legalmovechecklist[move2, 3] = 1
					legalmovechecklist[move2, 3] = 0
				endif
				exit
			else
				legalmovechecklist[move2, 3] = 1
				exit
			endif
		endif
	next j2
	legalmovechecklist[j2, 5] = 0
	if resetback = 1
		legalmovechecklist[move2, 4] = 1
	endif
	legalmovechecklist[i2, 1] = 1
	legalmovechecklist[move2, 1] = 0
	gosub resetwhitepiecepositions
	gosub resetwhiteattacks
	gosub updatewhiteattacks
return

runthroughwhitechecklistkingvariation2:
	resetback = 0
	gosub resetblackpiecepositions
	gosub resetwhitepiecepositions
	if legalmovechecklist[i2 + kingmove, 4] = 0
		legalmovechecklist[i2, 4] = 0
		legalmovechecklist[i2 + kingmove, 4] = 1
		if legalmovechecklist[i2 + kingmove, 4] = legalmovechecklist[i2 + kingmove, 1] 
			legalmovechecklist[i2 + kingmove, 1] = 0
			resetback = 1
		endif
		gosub resetblackattacks
		gosub updateblackattacks
		for j2 = 10 to 109
			if position[146, 1] = squarex[j2] and position[146, 2] = squarey[j2]
				if legalmovechecklist[j2 + kingmove, 2] = 1
					if not legalmovechecklist[i2 + kingmove, 6] = 1
						legalmovechecklist[i2 + kingmove, 6] = 0
					endif
					exit
				else
					legalmovechecklist[i2 + kingmove, 6] = 1
					exit
				endif
			endif
		next j2
		if resetback = 1
			legalmovechecklist[i2 + kingmove, 1] = 1
		endif
		legalmovechecklist[j2, 2] = 0
		legalmovechecklist[i2, 4] = 1
		legalmovechecklist[i2 + kingmove, 4] = 0
	endif
return

runthroughblackchecklistkingvariation2:	
	resetback = 0
	gosub resetblackpiecepositions
	gosub resetwhitepiecepositions
	if legalmovechecklist[i2 + kingmove, 1] = 0
		legalmovechecklist[i2, 1] = 0
		legalmovechecklist[i2 + kingmove, 1] = 1
		if legalmovechecklist[i2 + kingmove, 1] = legalmovechecklist[i2 + kingmove, 4] 
			legalmovechecklist[i2 + kingmove, 4] = 0
			resetback = 1
		endif
		gosub resetwhiteattacks
		gosub updatewhiteattacks
		for j2 = 10 to 109
			if position[126, 1] = squarex[j2] and position[126, 2] = squarey[j2]
				if legalmovechecklist[j2 + kingmove, 5] = 1
					if not legalmovechecklist[i2 + kingmove, 3] = 1
						legalmovechecklist[i2 + kingmove, 3] = 0
					endif
					exit
				else
					legalmovechecklist[i2 + kingmove, 3] = 1
					exit
				endif
			endif
		next j2
		if resetback = 1
			legalmovechecklist[i2 + kingmove, 4] = 1
		endif
		legalmovechecklist[j2, 5] = 0
		legalmovechecklist[i2, 1] = 1
		legalmovechecklist[i2 + kingmove, 1] = 0
	endif
return
