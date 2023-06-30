package main

import "core:fmt"
import "core:math"
import "core:strings"

// Fast Walsh-Hadamard transform
fwht :: proc(arr: [dynamic]i64) -> [dynamic]i64
{	ret := arr

	log_size := math.log2_f32(f32(len(ret)))
	if log_size != math.floor(log_size)
	{	fmt.println("Warn: fwht received non-power of 2 array. Returning Empty size array.")
		return [dynamic]i64{} }

	x, y: i64 = 0, 0
	h := 1
	for h < len(arr)
	{	for i := 0; i < len(arr); i += h*2
		{	for j in i..<i+h
			{	x = ret[j]
				y = ret[j + h]
				ret[j] = x + y
				ret[j + h] = x - y }}
		h *= 2 }
	return ret }


rfwht :: proc(arr: [dynamic]i64) -> [dynamic]i64
{	ret := fwht(arr)
	for i in 0..<len(arr) { ret[i] /= i64(len(arr)) }
	return ret }


// Work in progress
rle8_enc :: proc(arr: [dynamic]i64) -> string
{	arr := arr
	str := ""
	str_arr : [dynamic]string
	length := 1
	string("1")
	for i in 0..<len(arr) - 1
	{	is_equal_next := arr[i] == arr[i + 1]
		fmt.println(is_equal_next)
		if is_equal_next
		{	length += 1
			continue }
		// str_arr. get_ascii(u8(arr[i]))
	}
	return str }
