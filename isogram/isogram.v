module main

const disallowed = [45, 32]

fn is_isogram(word string) bool {
	mut copy := word.to_lower().bytes()
	copy.sort(a > b)

	for i := 0; i < copy.len - 1; i++ {
		if copy[i] in disallowed {
			continue
		}

		if copy[i] == copy[i + 1] {
			return false
		}
	}

	return true
}
