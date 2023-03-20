module main

const planets = {
	'Mercury': 0.2408467
	'Venus':   0.61519726
	'Earth':   1.0
	'Mars':    1.8808158
	'Jupiter': 11.862615
	'Saturn':  29.447498
	'Uranus':  84.016846
	'Neptune': 164.79132
}

const earth_year = 3600 * 24 * 365.25

fn age(seconds f64, planet string) !f64 {
	if planet !in planets {
		return error('${planet} is not a valid planet')
	}
	return '${seconds / (earth_year * planets[planet]):.2}'.f64()
}
