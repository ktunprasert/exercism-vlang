module main

fn can_queen_attack(white string, black string) !bool {
	w, b := decode(white)!, decode(black)!

	if white == black {
		return error('queens on same square')
	}

	return white[0] == black[0] || white[1] == black[1] || w % 9 == b % 9 || w % 7 == b % 7
}

fn decode(pos string) !int {
	p := pos.split('')
	if p.len == 0 || p.len > 2 || p[0] < 'a' || p[0] > 'h' || p[1] < '1' || p[1] > '8' {
		return error('${pos} is not a valid square')
	}

	return p[0][0] - 'a'[0] + (8 * (p[1][0] - '1'[0]))
}
