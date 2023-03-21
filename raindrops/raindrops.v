module main

fn raindrops(number int) string {
	mut output := ''
	output += if number % 3 == 0 { 'Pling' } else { '' }
	output += if number % 5 == 0 { 'Plang' } else { '' }
	output += if number % 7 == 0 { 'Plong' } else { '' }
	return if output.len > 0 { output } else { '${number}' }
}
