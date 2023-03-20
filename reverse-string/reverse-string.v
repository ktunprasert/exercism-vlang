module main

// reverse_string returns a given string in reverse order
fn reverse_string(str string) string {
	mut res := ''
	for s in str {
		res = "$s.ascii_str()$res"
	}
	return res
}
