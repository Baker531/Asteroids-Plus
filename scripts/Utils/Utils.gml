function map(_value, _current_lower_bound, _current_upper_bound, _desired_lowered_bound, _desired_upper_bound) {
    return (((_value - _current_lower_bound) / (_current_upper_bound - _current_lower_bound)) * (_desired_upper_bound - _desired_lowered_bound)) + _desired_lowered_bound;
}

function chance(percent) { 
	return random(1) < percent/100
}

function offsetX(xoff, yoff, dir) {
	return lengthdir_x(xoff, dir-90) + lengthdir_x(yoff, dir)
}

function offsetY(xoff, yoff, dir) {
	return lengthdir_y(xoff, dir-90) + lengthdir_y(yoff, dir)
}

function offset(xoff, yoff, dir) {
	return [offsetX(xoff, yoff, dir), offsetY(xoff, yoff, dir)]
}

function array_choose(arr) {
	return arr[irandom_range(0, array_length(arr) - 1)]
}