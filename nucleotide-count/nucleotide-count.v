module main

fn count_nucleotides(strand string) !map[string]int {
	mut m := {
		'A': 0
		'C': 0
		'G': 0
		'T': 0
	}

	for c in strand.split('') {
		if c !in m {
			return error('${c} is not a valid nucleotide!')
		}
		m[c]++
	}

	return m
}
