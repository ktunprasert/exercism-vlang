module main

fn nth_prime(n int) !int {
	if n <= 0 {
		return match true {
			n < 0 { error('there is no zeroth prime') }
			else { error('n must be greater than 0') }
		}
	}

	mut primes := [2, 3, 5, 7, 11]
	mut value := primes.last() + 1

	for ; primes.len <= n; value++ {
		if primes.any(value % it == 0) {
			continue
		}
		primes << value
	}

	return primes[n - 1]
}
