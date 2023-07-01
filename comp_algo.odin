package main

import "core:fmt"
import "core:math"
import "core:strings"

// Fast Walsh-Hadamard transform
fwht :: proc(arr: [dynamic]i64) -> [dynamic]i64
{	ret := arr

	log_size := math.log2(f32(len(ret)))
	if log_size != math.floor(log_size)
	{	fmt.println("Warn: fwht received non-power of 2 array. Returning Empty array.")
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


gray8 :: struct { g: u8 }
red_green8 :: struct { r, g: u8 }
rgb8 :: struct { r, g, b: u8 }
rgba8 :: struct { r, g, b, a: u8 }
ycocg8 :: struct { y, co, cg: u8 }
// No YCbCr yet. Because YCbCr is a mess. There's so many variations.
rgb8_to_ycocg8 :: proc(input: rgb8) -> ycocg8
{	ret: ycocg8
	ret.y = input.r >> 2 + input.g >> 1 + input.b >> 2
	ret.co = input.r >> 1 - input.b >> 1
	ret.cg = -(input.r >> 2) + input.g >> 1 - input.b >> 2
	return ret }

ycocg8_to_rgb8 :: proc(input: ycocg8) -> rgb8
{	ret: rgb8
	ret.r = input.y + input.co - input.cg
	ret.g = input.y + input.cg
	ret.b = input.y - input.co - input.cg
	return ret }


// Work in progress
rle8_enc :: proc(arr: [dynamic]i64) -> string
{	arr := arr
	str := ""
	str_arr: [dynamic]string
	length := 1
	fmt.println(get_ascii(1))
	for i in 0..<len(arr) - 1
	{	is_equal_next := arr[i] == arr[i + 1]
		// fmt.println(is_equal_next)
		if is_equal_next
		{	length += 1
			continue } // You can't join the dynamic string
			append(&str_arr, get_ascii(u8(arr[i])))
		}
	fmt.println(str_arr)
	// str_arr
	return str }


// It has a chance with hash collision. But it's good enough for comparing 2 arrays
array_hash_i64 :: proc(arr: [dynamic]i64) -> u64
{	hash: u64 = 1023
	for i in 0..<len(arr) { hash *= u64(arr[i]) * 0xd1342543de82ef95 }
	return hash }

array_hash :: proc{ array_hash_i64 }

join :: proc(arr_str [dynamic][dynamic]string)
{
	
}