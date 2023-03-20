module main

fn is_triangle(a f64, b f64, c f64) bool {
	return a + b >= c && b + c >= a && a + c >= b
}

fn is_isosceles(a f64, b f64, c f64) bool {
	return (a == b || b == c || a == c) && is_triangle(a, b, c)
}

fn is_equilateral(a f64, b f64, c f64) bool {
	return a == b && b == c && a == c
}

fn is_scalene(a f64, b f64, c f64) bool {
	return a != b && b != c && a != c && is_triangle(a, b, c)
}
