module main

import regex
import datatypes { Set }

fn is_pangram(phrase string) bool {
    if phrase.len < 26 {
        return false
    }
    mut set := Set[string]{}

	mut re := regex.regex_opt(r'[a-z]') or { return false }
	res := re.find_all_str(phrase.to_lower())
    set.add_all(res)

	return set.size() == 26
}
