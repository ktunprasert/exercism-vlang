module main

fn grains_on_square(square int) !u64 {
	if square < 1 || square > 64 {
		return error('square must be between 1 and 64')
	}
	return u64(1) << square - 1
}

fn total_grains_on_board() u64 {
	mut total := u64(0)
	for sq_n in 0 .. 64 + 1 {
		total += grains_on_square(sq_n) or { 0 }
	}
	return total
}
