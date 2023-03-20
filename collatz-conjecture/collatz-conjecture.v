module main

fn collatz(number int) !int {
	if number <= 0 {
		return error('Invalid collatz number')
	}
	mut n, mut cpy := 0, number

	for ; cpy != 1; n++ {
		cpy = if cpy & 1 == 0 { cpy / 2 } else { cpy * 3 + 1 }
	}

	return n
}
