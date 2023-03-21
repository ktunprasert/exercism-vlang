module main

import time.misc { random }
import math

struct Robot {
mut:
	name string
}

fn create_robot_storage() map[string]Robot {
	return {}
}

fn create_robot(mut robots map[string]Robot) Robot {
	r := Robot{randomise_name(robots)}
	robots[r.name] = r
	return r
}

fn (mut r Robot) reset(mut robots map[string]Robot) {
	r.name = randomise_name(robots)
}

fn randomise_name(robots map[string]Robot) string {
	mut name := gen_name()
	for (name in robots) {
		name = gen_name()
	}
	return name
}

fn gen_name() string {
	hashed := random().unix.str()

	i, j := hashed[..3], hashed#[-3..]
	fst, snd := i.int() % 26 + 65, j.int() % 26 + 65
	num := math.abs(i.int() - j.int())

	return '${rune(fst)}${rune(snd)}${num:03}'
}
