module main

// NOTE: there are multiple ways to accomplish this. To allow for automated
// testing, please fill out whatever type you choose for the type of roster.
// To make it easy to search, that has been replaced with map[int][]string. Good luck! :)

fn add_student(roster map[int][]string, name string, grade int) map[int][]string {
    if name in get_all_students(roster) {
        return roster
    }

	mut r := roster.clone()
	if grade in r {
		r[grade] << name
	} else {
		r[grade] = [name]
	}

    r[grade].sort()

	return r
}

fn get_students_in_grade(roster map[int][]string, grade int) []string {
	return roster[grade]
}

fn get_all_students(roster map[int][]string) []string {
    mut r := []string{}
    mut keys := roster.keys()
    keys.sort()

    for grade in keys {
        r << get_students_in_grade(roster, grade)
    }
    
	return r
}

// This is a helper function that should return an
// empty roster (type of your choosing)
fn create_new_roster() map[int][]string {
	return map[int][]string{}
}
