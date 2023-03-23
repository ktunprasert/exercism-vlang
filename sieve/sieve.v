module main

fn sieve(limit int) []int {
	if limit <= 2 {
		return if limit == 2 { [2] } else { []int{} }
	}

	mut primes := [2]

	for i := 3; i < limit + 1; i++ {
		if primes.any(i % it == 0) {
			continue
		}
		primes << i
	}

	return primes
}
