module main

fn prime_factors(n i64) []i64 {
	if n < 2 {
		return []
	}
	mut factors := []i64{}
	mut cpy := n

	if cpy & 1 == 0 {
		factors << 2
        cpy /= 2
	}

	for cpy != 1 {
		mut x := 3
		for x <= cpy {
			if cpy % x == 0 {
				factors << x
				cpy /= x
				break
			}
			x++
		}
	}

	return factors
}
