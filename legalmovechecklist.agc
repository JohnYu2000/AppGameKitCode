// This keeps track of all the squares with a black piece on it. This information is useful in assisting the "updateblackattacks" subroutine.
resetblackpiecepositions:
	// Reset Black Piece Positions //
	for square = 10 to 109 // Check All Squares //
		for piece = 110 to 129 // Check All Black Pieces //
			if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square] and GetSpriteColorAlpha(piece) = 255
				legalmovechecklist[square, 1] = 1
				exit
			else
				legalmovechecklist[square, 1] = 0
			endif
		next piece
	next square
return

resetblackattacks:
	for attack = 10 to 109
		legalmovechecklist[attack, 2] = 0
	next attack
return

// This gives the computer a list of all the squares that black attacks. This is not the same as "possible moves" as this information is used
// as an additional condition to check if the white player can go to a certain square. Basically this list changes whenever the white player 
// selects on a white piece.
updateblackattacks:
	// Update Black Attacks //
		// Soldiers //
	for piece = 110 to 119
		if GetSpriteColorAlpha(piece) = 255
			for square = 10 to 109
				if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square]
					if legalmovechecklist[square, 1] = 1
						gosub soldierblacklegalmovechecklist
					endif
				endif
			next square
		endif
	next piece	
		// Artilleries //
	for piece = 120 to 121
		if GetSpriteColorAlpha(piece) = 255
			for square = 10 to 109
				if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square]
					if legalmovechecklist[square, 1] = 1
						gosub artilleryblackattacklegalmovechecklist
					endif
				endif
			next square
		endif
	next piece
		// Cavalry //
	for piece = 122 to 123
		if GetSpriteColorAlpha(piece) = 255
			for square = 10 to 109
				if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square]
					if legalmovechecklist[square, 1] = 1
						gosub cavalryblacklegalmovechecklist
					endif
				endif
			next square
		endif
	next piece
		// Chancellor //
	if GetSpriteColorAlpha(124) = 255
		for square = 10 to 109
			if position[124, 1] = squarex[square] and position[124, 2] = squarey[square]
				if legalmovechecklist[square, 1] = 1
					gosub cavalryblacklegalmovechecklist
					gosub tankblacklegalmovechecklist
				endif
			endif
		next square
	endif
		// General //
	if GetSpriteColorAlpha(125) = 255
		for square = 10 to 109
			if position[125, 1] = squarex[square] and position[125, 2] = squarey[square]
				if legalmovechecklist[square, 1] = 1
					gosub cavalryblacklegalmovechecklist
					gosub diagonalblacklegalmovechecklist
				endif
			endif
		next square
	endif
		// King //
	if GetSpriteColorAlpha(126) = 255
		for square = 10 to 109
			if position[126, 1] = squarex[square] and position[126, 2] = squarey[square]
				if legalmovechecklist[square, 1] = 1
					gosub kingblacklegalmovechecklist
				endif
			endif
		next square
	endif
		// President //
	if GetSpriteColorAlpha(127) = 255
		for square = 10 to 109
			if position[127, 1] = squarex[square] and position[127, 2] = squarey[square]
				if legalmovechecklist[square, 1] = 1
					gosub tankblacklegalmovechecklist
					gosub diagonalblacklegalmovechecklist
				endif
			endif
		next square
	endif
		// Tank //
	for piece = 128 to 129
		if GetSpriteColorAlpha(piece) = 255
			for square = 10 to 109
				if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square]
					if legalmovechecklist[square, 1] = 1
						gosub tankblacklegalmovechecklist
					endif
				endif
			next square
		endif
	next piece
return

resetwhitepiecepositions:
	// Reset White Piece Positions //
	for square = 10 to 109 // Check All Squares //
		for piece = 130 to 149 // Check All White Pieces //
			if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square] and GetSpriteColorAlpha(piece) = 255
				legalmovechecklist[square, 4] = 1
				exit
			else
				legalmovechecklist[square, 4] = 0
			endif
		next piece
	next square
return

resetwhiteattacks:
	for attacks = 10 to 109
		legalmovechecklist[attacks, 5] = 0
	next attacks
return

updatewhiteattacks:
	// Update Black Attacks //
		// Soldiers //
	for piece = 130 to 139
		if GetSpriteColorAlpha(piece) = 255
			for square = 10 to 109
				if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square]
					if legalmovechecklist[square, 4] = 1
						gosub soldierwhiteattacklegalmovechecklist
					endif
				endif
			next square
		endif
	next piece	
		// Artilleries //
	for piece = 140 to 141
		if GetSpriteColorAlpha(piece) = 255
			for square = 10 to 109
				if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square]
					if legalmovechecklist[square, 4] = 1
						gosub artillerywhiteattacklegalmovechecklist
					endif
				endif
			next square
		endif
	next piece
		// Cavalry //
	for piece = 142 to 143
		if GetSpriteColorAlpha(piece) = 255
			for square = 10 to 109
				if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square]
					if legalmovechecklist[square, 4] = 1
						gosub cavalrywhitelegalmovechecklist
					endif
				endif
			next square
		endif
	next piece
		// Chancellor //
	if GetSpriteColorAlpha(144) = 255
		for square = 10 to 109
			if position[144, 1] = squarex[square] and position[144, 2] = squarey[square]
				if legalmovechecklist[square, 4] = 1
					gosub cavalrywhitelegalmovechecklist
					gosub tankwhitelegalmovechecklist
				endif
			endif
		next square
	endif
		// General //
	if GetSpriteColorAlpha(145) = 255
		for square = 10 to 109
			if position[145, 1] = squarex[square] and position[145, 2] = squarey[square]
				if legalmovechecklist[square, 4] = 1
					gosub cavalrywhitelegalmovechecklist
					gosub diagonalwhitelegalmovechecklist
				endif
			endif
		next square
	endif
		// King //
	if GetSpriteColorAlpha(146) = 255
		for square = 10 to 109
			if position[146, 1] = squarex[square] and position[146, 2] = squarey[square]
				if legalmovechecklist[square, 4] = 1
					gosub kingwhitelegalmovechecklist
				endif
			endif
		next square
	endif
		// President //
	if GetSpriteColorAlpha(147) = 255
		for square = 10 to 109
			if position[147, 1] = squarex[square] and position[147, 2] = squarey[square]
				if legalmovechecklist[square, 4] = 1
					gosub tankwhitelegalmovechecklist
					gosub diagonalwhitelegalmovechecklist
				endif
			endif
		next square
	endif
		// Tank //
	for piece = 148 to 149
		if GetSpriteColorAlpha(piece) = 255
			for square = 10 to 109
				if position[piece, 1] = squarex[square] and position[piece, 2] = squarey[square]
					if legalmovechecklist[square, 4] = 1
						gosub tankwhitelegalmovechecklist
					endif
				endif
			next square
		endif
	next piece
return

soldierblacklegalmovechecklist:
	// West //
	if square - 1 >= 10 // Checks if the new square is a valid square
		if Mod(square - 1, 10) = Mod(square, 10) - 1 // Checks if square is valid
			if legalmovechecklist[square - 1, 1] = 1 // This is saying that there is a black piece on that square //
				legalmovechecklist[square - 1, 2] = 0 // The current Black Piece cannot attack that square //
			else
				legalmovechecklist[square - 1, 2] = 1 // The current Black Piece can attack that square //
			endif
		endif
	endif
	// SouthWest //
	if square + 9 <= 109
		if Mod(square + 9, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square + 9, 1] = 1
				legalmovechecklist[square + 9, 2] = 0
			else
				legalmovechecklist[square + 9, 2] = 1
			endif
		endif
	endif
	// South //
	if square + 10 <= 109
		if legalmovechecklist[square + 10, 1] = 1
			legalmovechecklist[square + 10, 2] = 0
		else
			legalmovechecklist[square + 10, 2] = 1
		endif
	endif
	// SouthEast //
	if square + 11 <= 109
		if Mod(square + 11, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square + 11, 1] = 1
				legalmovechecklist[square + 11, 2] = 0
			else
				legalmovechecklist[square + 11, 2] = 1
			endif
		endif
	endif
	// East //
	if square + 1 <= 109
		if Mod(square + 1, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square + 1, 1] = 1
				legalmovechecklist[square + 1, 2] = 0
			else
				legalmovechecklist[square + 1, 2] = 1
			endif
		endif
	endif
	// *South (2 units) //
	if Floor(square/10) = 2
		if square + 20 <= 109
			if legalmovechecklist[square + 20, 1] = 1
				legalmovechecklist[square + 20, 2] = 0
			else
				legalmovechecklist[square + 20, 2] = 1
			endif
		endif
	endif
return

artilleryblackattacklegalmovechecklist:
// North //
	factor2 = 1
	exitprogram2 = 0
	enemyfound = 0
	repeat
		if square >= 10 + factor2*10 // Checks if it is a valid square //
			// Checks if square is occupied by any piece //
			if legalmovechecklist[square - factor2*10, 1] = 1 or legalmovechecklist[square - factor2*10, 4] = 1
				legalmovechecklist[square - factor2*10, 2] = 0
				exitprogram2 = 1	
				// Repeats until an enemy piece is found //
				repeat 
					factor2 = factor2 + 1
					if square >= 10 + factor2*10
						// When an ally piece is found //
						if legalmovechecklist[square - factor2*10, 1] = 1
							legalmovechecklist[square - factor2*10, 2] = 0
							exit
						else
							// When an enemy piece is found //
							if legalmovechecklist[square - factor2*10, 4] = 1
								legalmovechecklist[square - factor2*10, 2] = 1
								exit
							endif
						endif						
					else
						exit
					endif
				until enemyfound = 1								
			else
				legalmovechecklist[square - factor2*10, 2] = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// East //
	factor2 = 1
	exitprogram2 = 0
	enemyfound = 0
	repeat
		if square < 10*Floor(square/10 + 1) - factor2 // Checks if it is a valid square //
			// Checks if square is occupied by a piece //
			if legalmovechecklist[square + factor2, 1] = 1 or legalmovechecklist[square + factor2, 4] = 1
				legalmovechecklist[square + factor2, 2] = 0
				exitprogram2 = 1
				// Repeats until an enemy piece is found //
				repeat 
					factor2 = factor2 + 1
					if square < 10*Floor(square/10 + 1) - factor2
						// When an ally piece is found //
						if legalmovechecklist[square + factor2, 1] = 1
							legalmovechecklist[square + factor2, 2] = 0
							exit
						else
							// When an enemy piece is found //
							if legalmovechecklist[square + factor2, 4] = 1
								legalmovechecklist[square + factor2, 2] = 1
								exit
							endif
						endif
						
					else
						exit
					endif
				until enemyfound = 1
			else
				legalmovechecklist[square + factor2, 2] = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// South //
	factor2 = 1
	exitprogram2 = 0
	enemyfound = 0
	repeat
		if square <= 109 - factor2*10 // Checks if it is a valid square //
			// Checks if square is occupied by a piece //
			if legalmovechecklist[square + factor2*10, 1] = 1 or legalmovechecklist[square + factor2*10, 4] = 1
				legalmovechecklist[square + factor2*10, 2] = 0
				exitprogram2 = 1
				// Repeats until a piece is found //
				repeat 
					factor2 = factor2 + 1
					if square <= 109 - factor2*10
						// When an ally piece is found //
						if legalmovechecklist[square + factor2*10, 1] = 1
							legalmovechecklist[square + factor2*10, 2] = 0
							exit
						endif
						// When an enemy piece is found //
						if legalmovechecklist[square + factor2*10, 4] = 1
							legalmovechecklist[square + factor2*10, 2] = 1 // 1
							exit
						endif				
					else
						exit
					endif
				until enemyfound = 1
			else
				legalmovechecklist[square + factor2*10, 2] = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// West //
	factor2 = 1
	exitprogram2 = 0
	enemyfound = 0
	repeat
		if square >= 10*Floor(square/10) + factor2 // Checks if it is a valid square //
			// Checks if square is occupied by a same color piece //
			if legalmovechecklist[square - factor2, 1] = 1 or legalmovechecklist[square - factor2, 4] = 1
				legalmovechecklist[square - factor2, 2] = 0
				exitprogram2 = 1
				// Repeats until an enemy piece is found //
				repeat 
					factor2 = factor2 + 1
					if square >= 10*Floor(square/10) + factor2
						// When an ally piece is found //
						if legalmovechecklist[square - factor2, 1] = 1
							legalmovechecklist[square - factor2, 2] = 0
							exit
						else
							// When an enemy piece is found //
							if legalmovechecklist[square - factor2, 4] = 1
								legalmovechecklist[square - factor2, 2] = 1
								exit
							endif
						endif
						
					else
						exit
					endif
				until enemyfound = 1
			else
				legalmovechecklist[square - factor2, 2] = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
return

cavalryblacklegalmovechecklist:
	// 2 Units Up, 1 Unit Left //
	if square - 21 >= 10
		if Mod(square - 21, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square - 21, 1] = 1
				legalmovechecklist[square - 21, 2] = 0
			else
				legalmovechecklist[square - 21, 2] = 1
			endif
		endif
	endif
	// 2 Units Up, 1 Unit Right //
	if square - 19 >= 10
		if Mod(square - 19, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square - 19, 1] = 1
				legalmovechecklist[square - 19, 2] = 0
			else
				legalmovechecklist[square - 19, 2] = 1
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Right //
	if square - 8 >= 10
		if Mod(square - 8, 10) = Mod(square, 10) + 2
			if legalmovechecklist[square - 8, 1] = 1
				legalmovechecklist[square - 8, 2] = 0
			else
				legalmovechecklist[square - 8, 2] = 1
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Right //
	if square + 12 <= 109
		if Mod(square + 12, 10) = Mod(square, 10) + 2
			if legalmovechecklist[square + 12, 1] = 1
				legalmovechecklist[square + 12, 2] = 0
			else
				legalmovechecklist[square + 12, 2] = 1
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Right //
	if square + 21 <= 109
		if Mod(square + 21, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square + 21, 1] = 1
				legalmovechecklist[square + 21, 2] = 0
			else
				legalmovechecklist[square + 21, 2] = 1
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Left //
	if square + 19 <= 109
		if Mod(square + 19, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square + 19, 1] = 1
				legalmovechecklist[square + 19, 2] = 0
			else
				legalmovechecklist[square + 19, 2] = 1
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Left //
	if square + 8 <= 109
		if Mod(square + 8, 10) = Mod(square, 10) - 2
			if legalmovechecklist[square + 8, 1] = 1
				legalmovechecklist[square + 8, 2] = 0
			else
				legalmovechecklist[square + 8, 2] = 1
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Left //
	if square - 12 >= 10
		if Mod(square - 12, 10) = Mod(square, 10) - 2
			if legalmovechecklist[square - 12, 1] = 1
				legalmovechecklist[square - 12, 2] = 0
			else
				legalmovechecklist[square - 12, 2] = 1
			endif
		endif
	endif
return

tankblacklegalmovechecklist:
	// North //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if square >= 10 + factor2*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			// Checks White Pieces //
			// Checks if square is occupied by an ally piece //
			if legalmovechecklist[square - factor2*10, 1] = 1
				legalmovechecklist[square - factor2*10, 2] = 0
				exit
			else
				legalmovechecklist[square - factor2*10, 2] = 1
			endif
			// Check if spot is occupied by enemy piece //
			if legalmovechecklist[square - factor2*10, 4] = 1
				legalmovechecklist[square - factor2*10, 2] = 1
				exit
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// East //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if square < 10*Floor(square/10 + 1) - factor2 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			// Checks White Pieces //
			// Checks if square is occupied by an ally piece //
			if legalmovechecklist[square + factor2, 1] = 1
				legalmovechecklist[square + factor2, 2] = 0
				exit
			else
				legalmovechecklist[square + factor2, 2] = 1
			endif
			// Check if spot is occupied by enemy piece //
			if legalmovechecklist[square + factor2, 4] = 1
				legalmovechecklist[square + factor2, 2] = 1
				exit
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// South //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if square <= 109 - factor2*10 // Checks if it is a valid square //
			if legalmovechecklist[square + factor2*10, 1] = 1 // If the new square is occupied by a black piece 1//
				legalmovechecklist[square + factor2*10, 2] = 0 // Black cannot attack that square 0//
				exit
			else
				legalmovechecklist[square + factor2*10, 2] = 1 // Black can attack that square //
			endif
			// Check if spot is occupied by enemy piece //
			if legalmovechecklist[square + factor2*10, 4] = 1 
				legalmovechecklist[square + factor2*10, 2] = 1 
				exit
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// West //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if square >= 10*Floor(square/10) + factor2 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			// Checks White Pieces //
			// Checks if square is occupied by an ally piece //
			if legalmovechecklist[square - factor2, 1] = 1
				legalmovechecklist[square - factor2, 2] = 0
				exitprogram2 = 1
			else
				legalmovechecklist[square - factor2, 2] = 1
			endif
			// Check if spot is occupied by enemy piece //
			if legalmovechecklist[square - factor2, 4] = 1
				legalmovechecklist[square - factor2, 2] = 1
				exit
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1	
return

diagonalblacklegalmovechecklist:
// NorthWest //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if Mod(square - factor2*11, 10) > 0 // Checks the ones digit other than 0 //
			if Mod(square - 11, 10) = Mod(square, 10) - 1
				if square - factor2*11 >= 10 // Checks if the move is valid //
					// If there is a black piece on that square //
					if legalmovechecklist[square - factor2*11, 1] = 1
						legalmovechecklist[square - factor2*11, 2] = 0
						exitprogram2 = 1
					else
						// If there is no black piece //
						legalmovechecklist[square - factor2*11, 2] = 1
					endif
					// If there is a white piece on that square //
					if legalmovechecklist[square - factor2*11, 4] = 1
						legalmovechecklist[square - factor2*11, 2] = 1
						exitprogram2 = 1
					endif
				else
					exitprogram2 = 1				
				endif
			else
				exitprogram2 = 1
			endif
		endif
		if Mod(square - factor2*11, 10) = 0 // When the ones digit is 0 
			// Checks if the move is valid //
			if square - factor2*11 >= 10
				// If there is a black piece on that square //
				if legalmovechecklist[square - factor2*11, 1] = 1
					legalmovechecklist[square - factor2*11, 2] = 0
					exitprogram2 = 1
				else
					// If there is no black piece //
					legalmovechecklist[square - factor2*11, 2] = 1
				endif
				// If there is a white piece on that square //
				if legalmovechecklist[square - factor2*11, 4] = 1
					legalmovechecklist[square - factor2*11, 2] = 1
					exitprogram2 = 1
				endif
				exitprogram2 = 1
			else
				exitprogram2 = 1
			endif						
		endif
		factor2 = factor2 + 1
	until exitprogram2 = 1
	
	// NorthEast //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if Mod(square - factor2*9, 10) < 9 // Checks the ones digit other than 9 //
			if Mod(square - 9, 10) = Mod(square, 10) + 1
				if square - factor2*9 >= 10 // Checks if the move is valid //
					if legalmovechecklist[square - factor2*9, 1] = 1
						legalmovechecklist[square - factor2*9, 2] = 0
						exitprogram2 = 1
					else
						legalmovechecklist[square - factor2*9, 2] = 1
					endif
					if legalmovechecklist[square - factor2*9, 4] = 1
						legalmovechecklist[square - factor2*9, 2] = 1
						exitprogram2 = 1
					endif
				else
					exitprogram2 = 1						
				endif
			else
				exitprogram2 = 1
			endif						
		endif
		if Mod(square - factor2*9, 10) = 9 // When the ones digit is 9
			// Checks if the move is valid //
			if square - factor2*9 >= 10
				if legalmovechecklist[square - factor2*9, 1] = 1
					legalmovechecklist[square - factor2*9, 2] = 0
					exitprogram2 = 1
				else
					legalmovechecklist[square - factor2*9, 2] = 1
				endif
				if legalmovechecklist[square - factor2*9, 4] = 1
					legalmovechecklist[square - factor2*9, 2] = 1
					exitprogram2 = 1
				endif
				exitprogram2 = 1
			else
				exitprogram2 = 1
			endif						
		endif
		factor2 = factor2 + 1
	until exitprogram2 = 1
	
	// SouthEast //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if Mod(square + factor2*11, 10) < 9 // Checks the ones digit other than 9 //
			if Mod(square + 11, 10) = Mod(square, 10) + 1
				if square + factor2*11 <= 109 // Checks if the move is valid //
					if legalmovechecklist[square + factor2*11, 1] = 1
						legalmovechecklist[square + factor2*11, 2] = 0
						exitprogram2 = 1
					else
						legalmovechecklist[square + factor2*11, 2] = 1
					endif
					if legalmovechecklist[square + factor2*11, 4] = 1
						legalmovechecklist[square + factor2*11, 2] = 1
						exitprogram2 = 1
					endif
				else
					exitprogram2 = 1						
				endif
			else
				exitprogram2 = 1
			endif						
		endif
		if Mod(square + factor2*11, 10) = 9 // When the ones digit is 9
			// Checks if the move is valid //
			if square + factor2*11 <= 109
				if legalmovechecklist[square + factor2*11, 1] = 1
					legalmovechecklist[square + factor2*11, 2] = 0
					exitprogram2 = 1
				else
					legalmovechecklist[square + factor2*11, 2] = 1
				endif
				if legalmovechecklist[square + factor2*11, 4] = 1
					legalmovechecklist[square + factor2*11, 2] = 1
					exitprogram2 = 1
				endif
				exitprogram2 = 1
			else
				exitprogram2 = 1
			endif
		endif
		factor2 = factor2 + 1
	until exitprogram2 = 1
	
	// SouthWest //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if Mod(square + factor2*9, 10) > 0 // Checks the ones digit other than 0 //
			if Mod(square + 9, 10) = Mod(square, 10) - 1
				if square + factor2*9 <= 109 // Checks if the move is valid //
					if legalmovechecklist[square + factor2*9, 1] = 1
						legalmovechecklist[square + factor2*9, 2] = 0
						exitprogram2 = 1
					else
						legalmovechecklist[square + factor2*9, 2] = 1
					endif
					if legalmovechecklist[square + factor2*9, 4] = 1
						legalmovechecklist[square + factor2*9, 2] = 1
						exitprogram2 = 1
					endif
				else
					exitprogram2 = 1						
				endif
			else
				exitprogram2 = 1
			endif						
		endif
		if Mod(square + factor2*9, 10) = 0 // When the ones digit is 0 
			// Checks if the move is valid //
			if square + factor2*9 <= 109
				if legalmovechecklist[square + factor2*9, 1] = 1 // If there is a black piece in that square //
					legalmovechecklist[square + factor2*9, 2] = 0 // Black cannot attack that square //
					exitprogram2 = 1
				else
					legalmovechecklist[square + factor2*9, 2] = 1 // Black can attack that square //
				endif
				if legalmovechecklist[square + factor2*9, 4] = 1 // If there is a white piece in that square //
					legalmovechecklist[square + factor2*9, 2] = 1 // Black can attack that square //
					exitprogram2 = 1
				endif
				exitprogram2 = 1
			else
				exitprogram2 = 1
			endif
		endif
		factor2 = factor2 + 1
	until exitprogram2 = 1
return

kingblacklegalmovechecklist:
	if square - 10 >= 10
		if legalmovechecklist[square - 10, 1] = 1
			legalmovechecklist[square - 10, 2] = 0
		else
			legalmovechecklist[square - 10, 2] = 1
		endif
	endif
	if square - 9 >= 10
		if Mod(square - 9, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square - 9, 1] = 1
				legalmovechecklist[square - 9, 2] = 0
			else
				legalmovechecklist[square - 9, 2] = 1
			endif
		endif
	endif
	if square + 1 <= 109
		if Mod(square + 1, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square + 1, 1] = 1
				legalmovechecklist[square + 1, 2] = 0
			else
				legalmovechecklist[square + 1, 2] = 1
			endif
		endif
	endif
	if square + 11 <= 109
		if Mod(square + 11, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square + 11, 1] = 1
				legalmovechecklist[square + 11, 2] = 0
			else
				legalmovechecklist[square + 11, 2] = 1
			endif
		endif
	endif
	if square + 10 <= 109
		if legalmovechecklist[square + 10, 1] = 1 
			legalmovechecklist[square + 10, 2] = 0
		else
			legalmovechecklist[square + 10, 2] = 1
		endif
	endif
	if square + 9 <= 109
		if Mod(square + 9, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square + 9, 1] = 1
				legalmovechecklist[square + 9, 2] = 0
			else
				legalmovechecklist[square + 9, 2] = 1
			endif
		endif
	endif
	if square - 1 >= 10
		if Mod(square - 1, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square - 1, 1] = 1
				legalmovechecklist[square - 1, 2] = 0
			else
				legalmovechecklist[square - 1, 2] = 1
			endif
		endif
	endif
	if square - 11 >= 10
		if Mod(square - 11, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square - 11, 1] = 1
				legalmovechecklist[square - 11, 2] = 0
			else
				legalmovechecklist[square - 11, 2] = 1
			endif
		endif
	endif
return

// **** White **** //
soldierwhiteattacklegalmovechecklist:
	// West //
	if square - 1 >= 10 // Checks if the new square is a valid square
		if Mod(square - 1, 10) = Mod(square, 10) - 1 // Checks if square is valid
			if legalmovechecklist[square - 1, 4] = 1 // This is saying that there is a white piece on that square //
				legalmovechecklist[square - 1, 5] = 0 // The current White Piece cannot attack that square //
			else
				legalmovechecklist[square - 1, 5] = 1 // The current White Piece can attack that square //
			endif
		endif
	endif
	// NorthWest //
	if square - 11 >= 10
		if Mod(square - 11, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square - 11, 4] = 1
				legalmovechecklist[square - 11, 5] = 0
			else
				legalmovechecklist[square - 11, 5] = 1
			endif
		endif
	endif
	// North //
	if square - 10 >= 10
		if legalmovechecklist[square - 10, 4] = 1
			legalmovechecklist[square - 10, 5] = 0
		else
			legalmovechecklist[square - 10, 5] = 1
		endif
	endif
	// NorthEast //
	if square - 9 >= 10
		if Mod(square - 9, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square - 9, 4] = 1
				legalmovechecklist[square - 9, 5] = 0
			else
				legalmovechecklist[square - 9, 5] = 1
			endif
		endif
	endif
	// East //
	if square + 1 <= 109
		if Mod(square + 1, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square + 1, 4] = 1
				legalmovechecklist[square + 1, 5] = 0
			else
				legalmovechecklist[square + 1, 5] = 1
			endif
		endif
	endif
	// *North (2 units) //
	if Floor(square/10) = 9
		if square - 20 >= 10
			if legalmovechecklist[square - 20, 4] = 1
				legalmovechecklist[square - 20, 5] = 0
			else
				legalmovechecklist[square - 20, 5] = 1
			endif
		endif
	endif
return

artillerywhiteattacklegalmovechecklist:
// North //
	factor2 = 1
	exitprogram2 = 0
	enemyfound = 0
	repeat
		if square >= 10 + factor2*10 // Checks if it is a valid square //
			// Checks if square is occupied by any piece //
			if legalmovechecklist[square - factor2*10, 1] = 1 or legalmovechecklist[square - factor2*10, 4] = 1
				legalmovechecklist[square - factor2*10, 5] = 0
				exitprogram2 = 1	
				// Repeats until a piece is found //
				repeat 
					factor2 = factor2 + 1
					if square >= 10 + factor2*10
						// When an ally piece is found //
						if legalmovechecklist[square - factor2*10, 4] = 1
							legalmovechecklist[square - factor2*10, 5] = 0
							exit
						else
							// When an enemy piece is found //
							if legalmovechecklist[square - factor2*10, 1] = 1
								legalmovechecklist[square - factor2*10, 5] = 1
								exit
							endif
						endif						
					else
						exit
					endif
				until enemyfound = 1								
			else
				legalmovechecklist[square - factor2*10, 5] = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// East //
	factor2 = 1
	exitprogram2 = 0
	enemyfound = 0
	repeat
		if square < 10*Floor(square/10 + 1) - factor2 // Checks if it is a valid square //
			// Checks if square is occupied by a piece //
			if legalmovechecklist[square + factor2, 1] = 1 or legalmovechecklist[square + factor2, 4] = 1
				legalmovechecklist[square + factor2, 5] = 0
				exitprogram2 = 1
				// Repeats until a piece is found //
				repeat 
					factor2 = factor2 + 1
					if square < 10*Floor(square/10 + 1) - factor2
						// When an ally piece is found //
						if legalmovechecklist[square + factor2, 4] = 1
							legalmovechecklist[square + factor2, 5] = 0
							exit
						else
							// When an enemy piece is found //
							if legalmovechecklist[square + factor2, 1] = 1
								legalmovechecklist[square + factor2, 5] = 1
								exit
							endif
						endif
						
					else
						exit
					endif
				until enemyfound = 1
			else
				legalmovechecklist[square + factor2, 5] = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// South //
	factor2 = 1
	exitprogram2 = 0
	enemyfound = 0
	repeat
		if square <= 109 - factor2*10 // Checks if it is a valid square //
			// Checks if square is occupied by a piece //
			if legalmovechecklist[square + factor2*10, 1] = 1 or legalmovechecklist[square + factor2*10, 4] = 1
				legalmovechecklist[square + factor2*10, 5] = 0
				exitprogram2 = 1
				// Repeats until a piece is found //
				repeat 
					factor2 = factor2 + 1
					if square <= 109 - factor2*10
						// When an ally piece is found //
						if legalmovechecklist[square + factor2*10, 4] = 1
							legalmovechecklist[square + factor2*10, 5] = 0
							exit
						endif
						// When an enemy piece is found //
						if legalmovechecklist[square + factor2*10, 1] = 1
							legalmovechecklist[square + factor2*10, 5] = 1 
							exit
						endif				
					else
						exit
					endif
				until enemyfound = 1
			else
				legalmovechecklist[square + factor2*10, 5] = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// West //
	factor2 = 1
	exitprogram2 = 0
	enemyfound = 0
	repeat
		if square >= 10*Floor(square/10) + factor2 // Checks if it is a valid square //
			// Checks if square is occupied by a same color piece //
			if legalmovechecklist[square - factor2, 1] = 1 or legalmovechecklist[square - factor2, 4] = 1
				legalmovechecklist[square - factor2, 5] = 0
				exitprogram2 = 1
				// Repeats until an enemy piece is found //
				repeat 
					factor2 = factor2 + 1
					if square >= 10*Floor(square/10) + factor2
						// When an ally piece is found //
						if legalmovechecklist[square - factor2, 4] = 1
							legalmovechecklist[square - factor2, 5] = 0
							exit
						else
							// When an enemy piece is found //
							if legalmovechecklist[square - factor2, 1] = 1
								legalmovechecklist[square - factor2, 5] = 1
								exit
							endif
						endif						
					else
						exit
					endif
				until enemyfound = 1
			else
				legalmovechecklist[square - factor2, 5] = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
return

cavalrywhitelegalmovechecklist:
	// 2 Units Up, 1 Unit Left //
	if square - 21 >= 10
		if Mod(square - 21, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square - 21, 4] = 1
				legalmovechecklist[square - 21, 5] = 0
			else
				legalmovechecklist[square - 21, 5] = 1
			endif
		endif
	endif
	// 2 Units Up, 1 Unit Right //
	if square - 19 >= 10
		if Mod(square - 19, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square - 19, 4] = 1
				legalmovechecklist[square - 19, 5] = 0
			else
				legalmovechecklist[square - 19, 5] = 1
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Right //
	if square - 8 >= 10
		if Mod(square - 8, 10) = Mod(square, 10) + 2
			if legalmovechecklist[square - 8, 4] = 1
				legalmovechecklist[square - 8, 5] = 0
			else
				legalmovechecklist[square - 8, 5] = 1
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Right //
	if square + 12 <= 109
		if Mod(square + 12, 10) = Mod(square, 10) + 2
			if legalmovechecklist[square + 12, 4] = 1
				legalmovechecklist[square + 12, 5] = 0
			else
				legalmovechecklist[square + 12, 5] = 1
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Right //
	if square + 21 <= 109
		if Mod(square + 21, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square + 21, 4] = 1
				legalmovechecklist[square + 21, 5] = 0
			else
				legalmovechecklist[square + 21, 5] = 1
			endif
		endif
	endif
	// 2 Units Down, 1 Unit Left //
	if square + 19 <= 109
		if Mod(square + 19, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square + 19, 4] = 1
				legalmovechecklist[square + 19, 5] = 0
			else
				legalmovechecklist[square + 19, 5] = 1
			endif
		endif
	endif
	// 1 Unit Down, 2 Units Left //
	if square + 8 <= 109
		if Mod(square + 8, 10) = Mod(square, 10) - 2
			if legalmovechecklist[square + 8, 4] = 1
				legalmovechecklist[square + 8, 5] = 0
			else
				legalmovechecklist[square + 8, 5] = 1
			endif
		endif
	endif
	// 1 Unit Up, 2 Units Left //
	if square - 12 >= 10
		if Mod(square - 12, 10) = Mod(square, 10) - 2
			if legalmovechecklist[square - 12, 4] = 1
				legalmovechecklist[square - 12, 5] = 0
			else
				legalmovechecklist[square - 12, 5] = 1
			endif
		endif
	endif
return

tankwhitelegalmovechecklist:
	// North //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if square >= 10 + factor2*10 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			// Checks White Pieces //
			// Checks if square is occupied by a ally piece //
			if legalmovechecklist[square - factor2*10, 4] = 1
				legalmovechecklist[square - factor2*10, 5] = 0
				exitprogram2 = 1
			else
				legalmovechecklist[square - factor2*10, 5] = 1
			endif
			// Check if spot is occupied by enemy piece //
			if legalmovechecklist[square - factor2*10, 1] = 1
				legalmovechecklist[square - factor2*10, 5] = 1
				exitprogram2 = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// East //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if square < 10*Floor(square/10 + 1) - factor2 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			// Checks White Pieces //
			// Checks if square is occupied by a same color piece //
			if legalmovechecklist[square + factor2, 4] = 1
				legalmovechecklist[square + factor2, 5] = 0
				exitprogram2 = 1
			else
				legalmovechecklist[square + factor2, 5] = 1
			endif
			// Check if spot is occupied by enemy piece //
			if legalmovechecklist[square + factor2, 1] = 1
				legalmovechecklist[square + factor2, 5] = 1
				exitprogram2 = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// South //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if square <= 109 - factor2*10 // Checks if it is a valid square //
			if legalmovechecklist[square + factor2*10, 4] = 1 // If the new square is occupied by a black piece 1//
				legalmovechecklist[square + factor2*10, 5] = 0 // Black cannot attack that square 0//
				exitprogram2 = 1
			else
				legalmovechecklist[square + factor2*10, 5] = 1 // Black can attack that square 1//
			endif
			// Check if spot is occupied by enemy piece //
			if legalmovechecklist[square + factor2*10, 1] = 1 // 1 //
				legalmovechecklist[square + factor2*10, 5] = 1 //1//
				exitprogram2 = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1
	// West //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if square >= 10*Floor(square/10) + factor2 // Checks if it is a valid square //
			// Checks if that spot is already occupied by ally piece //
			// Checks White Pieces //
			// Checks if square is occupied by a same color piece //
			if legalmovechecklist[square - factor2, 4] = 1
				legalmovechecklist[square - factor2, 5] = 0
				exitprogram2 = 1
			else
				legalmovechecklist[square - factor2, 5] = 1
			endif
			// Check if spot is occupied by enemy piece //
			if legalmovechecklist[square - factor2, 1] = 1
				legalmovechecklist[square - factor2, 5] = 1
				exitprogram2 = 1
			endif
			factor2 = factor2 + 1
		else
			exitprogram2 = 1
		endif
	until exitprogram2 = 1	
return

diagonalwhitelegalmovechecklist:
// NorthWest //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if Mod(square - factor2*11, 10) > 0 // Checks the ones digit other than 0 //
			if Mod(square - 11, 10) = Mod(square, 10) - 1
				if square - factor2*11 >= 10 // Checks if the move is valid //
					// If there is a white piece on that square //
					if legalmovechecklist[square - factor2*11, 4] = 1
						legalmovechecklist[square - factor2*11, 5] = 0
						exitprogram2 = 1
					else
						// If there is no white piece //
						legalmovechecklist[square - factor2*11, 5] = 1
					endif
					// If there is a black piece on that square //
					if legalmovechecklist[square - factor2*11, 1] = 1
						legalmovechecklist[square - factor2*11, 5] = 1
						exitprogram2 = 1
					endif
				else
					exitprogram2 = 1				
				endif
			else
				exitprogram2 = 1
			endif
		endif
		if Mod(square - factor2*11, 10) = 0 // When the ones digit is 0 
			// Checks if the move is valid //
			if square - factor2*11 >= 10
				// If there is a white piece on that square //
				if legalmovechecklist[square - factor2*11, 4] = 1
					legalmovechecklist[square - factor2*11, 5] = 0
					exitprogram2 = 1
				else
					// If there is no white piece //
					legalmovechecklist[square - factor2*11, 5] = 1
				endif
				// If there is a black piece on that square //
				if legalmovechecklist[square - factor2*11, 1] = 1
					legalmovechecklist[square - factor2*11, 5] = 1
					exitprogram2 = 1
				endif
				exitprogram2 = 1
			else
				exitprogram2 = 1
			endif						
		endif
		factor2 = factor2 + 1
	until exitprogram2 = 1
	
	// NorthEast //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if Mod(square - factor2*9, 10) < 9 // Checks the ones digit other than 9 //
			if Mod(square - 9, 10) = Mod(square, 10) + 1
				if square - factor2*9 >= 10 // Checks if the move is valid //
					if legalmovechecklist[square - factor2*9, 4] = 1
						legalmovechecklist[square - factor2*9, 5] = 0
						exitprogram2 = 1
					else
						legalmovechecklist[square - factor2*9, 5] = 1
					endif
					if legalmovechecklist[square - factor2*9, 1] = 1
						legalmovechecklist[square - factor2*9, 5] = 1
						exitprogram2 = 1
					endif
				else
					exitprogram2 = 1						
				endif
			else
				exitprogram2 = 1
			endif						
		endif
		if Mod(square - factor2*9, 10) = 9 // When the ones digit is 9
			// Checks if the move is valid //
			if square - factor2*9 >= 10
				if legalmovechecklist[square - factor2*9, 4] = 1
					legalmovechecklist[square - factor2*9, 5] = 0
					exitprogram2 = 1
				else
					legalmovechecklist[square - factor2*9, 5] = 1
				endif
				if legalmovechecklist[square - factor2*9, 1] = 1
					legalmovechecklist[square - factor2*9, 5] = 1
					exitprogram2 = 1
				endif
				exitprogram2 = 1
			else
				exitprogram2 = 1
			endif						
		endif
		factor2 = factor2 + 1
	until exitprogram2 = 1
	
	// SouthEast //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if Mod(square + factor2*11, 10) < 9 // Checks the ones digit other than 9 //
			if Mod(square + 11, 10) = Mod(square, 10) + 1
				if square + factor2*11 <= 109 // Checks if the move is valid //
					if legalmovechecklist[square + factor2*11, 4] = 1
						legalmovechecklist[square + factor2*11, 5] = 0
						exitprogram2 = 1
					else
						legalmovechecklist[square + factor2*11, 5] = 1
					endif
					if legalmovechecklist[square + factor2*11, 1] = 1
						legalmovechecklist[square + factor2*11, 5] = 1
						exitprogram2 = 1
					endif
				else
					exitprogram2 = 1						
				endif
			else
				exitprogram2 = 1
			endif						
		endif
		if Mod(square + factor2*11, 10) = 9 // When the ones digit is 9
			// Checks if the move is valid //
			if square + factor2*11 <= 109
				if legalmovechecklist[square + factor2*11, 4] = 1
					legalmovechecklist[square + factor2*11, 5] = 0
					exitprogram2 = 1
				else
					legalmovechecklist[square + factor2*11, 5] = 1
				endif
				if legalmovechecklist[square + factor2*11, 1] = 1
					legalmovechecklist[square + factor2*11, 5] = 1
					exitprogram2 = 1
				endif
				exitprogram2 = 1
			else
				exitprogram2 = 1
			endif
		endif
		factor2 = factor2 + 1
	until exitprogram2 = 1
	
	// SouthWest //
	factor2 = 1
	exitprogram2 = 0
	repeat
		if Mod(square + factor2*9, 10) > 0 // Checks the ones digit other than 0 //
			if Mod(square + 9, 10) = Mod(square, 10) - 1
				if square + factor2*9 <= 109 // Checks if the move is valid //
					if legalmovechecklist[square + factor2*9, 4] = 1
						legalmovechecklist[square + factor2*9, 5] = 0
						exitprogram2 = 1
					else
						legalmovechecklist[square + factor2*9, 5] = 1
					endif
					if legalmovechecklist[square + factor2*9, 1] = 1
						legalmovechecklist[square + factor2*9, 5] = 1
						exitprogram2 = 1
					endif
				else
					exitprogram2 = 1						
				endif
			else
				exitprogram2 = 1
			endif						
		endif
		if Mod(square + factor2*9, 10) = 0 // When the ones digit is 0 
			// Checks if the move is valid //
			if square + factor2*9 <= 109
				if legalmovechecklist[square + factor2*9, 4] = 1 // If there is a black piece in that square //
					legalmovechecklist[square + factor2*9, 5] = 0 // Black cannot attack that square //
					exitprogram2 = 1
				else
					legalmovechecklist[square + factor2*9, 5] = 1 // Black can attack that square //
				endif
				if legalmovechecklist[square + factor2*9, 1] = 1 // If there is a white piece in that square //
					legalmovechecklist[square + factor2*9, 5] = 1 // Black can attack that square //
					exitprogram2 = 1
				endif
				exitprogram2 = 1
			else
				exitprogram2 = 1
			endif
		endif
		factor2 = factor2 + 1
	until exitprogram2 = 1
return

kingwhitelegalmovechecklist:
	if square - 10 >= 10
		if legalmovechecklist[square - 10, 4] = 1
			legalmovechecklist[square - 10, 5] = 0
		else
			legalmovechecklist[square - 10, 5] = 1
		endif
	endif
	if square - 9 >= 10
		if Mod(square - 9, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square - 9, 4] = 1
				legalmovechecklist[square - 9, 5] = 0
			else
				legalmovechecklist[square - 9, 5] = 1
			endif
		endif
	endif
	if square + 1 <= 109
		if Mod(square + 1, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square + 1, 4] = 1
				legalmovechecklist[square + 1, 5] = 0
			else
				legalmovechecklist[square + 1, 5] = 1
			endif
		endif
	endif
	if square + 11 <= 109
		if Mod(square + 11, 10) = Mod(square, 10) + 1
			if legalmovechecklist[square + 11, 4] = 1
				legalmovechecklist[square + 11, 5] = 0
			else
				legalmovechecklist[square + 11, 5] = 1
			endif
		endif
	endif
	if square + 10 <= 109
		if legalmovechecklist[square + 10, 4] = 1 
			legalmovechecklist[square + 10, 5] = 0
		else
			legalmovechecklist[square + 10, 5] = 1
		endif
	endif
	if square + 9 <= 109
		if Mod(square + 9, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square + 9, 4] = 1
				legalmovechecklist[square + 9, 5] = 0
			else
				legalmovechecklist[square + 9, 5] = 1
			endif
		endif
	endif
	if square - 1 >= 10
		if Mod(square - 1, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square - 1, 4] = 1
				legalmovechecklist[square - 1, 5] = 0
			else
				legalmovechecklist[square - 1, 5] = 1
			endif
		endif
	endif
	if square - 11 >= 10
		if Mod(square - 11, 10) = Mod(square, 10) - 1
			if legalmovechecklist[square - 11, 4] = 1
				legalmovechecklist[square - 11, 5] = 0
			else
				legalmovechecklist[square - 11, 5] = 1
			endif
		endif
	endif
return
