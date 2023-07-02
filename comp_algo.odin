package main

import "core:fmt"
import "core:math"
import "core:strings"
import "core:io"

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
	{	for i := 0; i < len(arr); i += h * 2
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

get_bit_length :: proc(num: $t) -> u8
{	tmp := num
	bit_length: u8 = 0
	for tmp > 0
	{	bit_length += 1
		tmp >>= 1 }
	return bit_length }
// Variable bit integer
vbi_enc :: proc(num: u32) -> u64
{	num_padded := cast(u64)num + 1 // prevent interger 1 overflow, 45 + 1 = 101110
	bit_length := get_bit_length(num_padded)
	num_length: u64 = 1 << (bit_length - 1) // 100000 = 32
	value: u64 = num_padded - num_length // 101110(46) - 100000(32) = 01110(14)
	num_length -= 2 // 11110, use 0 as the terminator
	return num_length << (bit_length - 1) | value } // 11110_01110(974), put the num_length and the value together
// Work in progress. This is really hard
rle16_enc_b :: proc(arr: string) -> string // Rle type b
{	str := ""
	str_arr: [dynamic]string
	length := 1
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

ac_enc :: proc() // arithmetic coding
{	}


lehmer :: #force_inline proc(num: $t) -> u64 { return u64(num) * 0xd1342543de82ef95}

// It has a chance with hash collision. But it's good enough for comparing 2 arrays
get_default_hash: u64 = 1023
hash_array_i64 :: proc(arr: [dynamic]i64) -> u64
{	hash := get_default_hash
	for i in 0..<len(arr) do hash += lehmer(arr[i])
	return hash }
hash_array_str :: proc(arr: [dynamic]string) -> u64
{	hash := get_default_hash
	for i in 0..<len(arr)
	{	for j in 0..<len(arr[i])
		{	hash += lehmer(arr[i][j]) }}
	return hash }
hash_str :: proc(arr: string) -> u64
{	hash := get_default_hash
	for i in 0..<len(arr) do hash += lehmer(arr[i])
	return hash }

hash :: proc{ hash_array_i64, hash_array_str, hash_str }


join :: proc(separator: string, args: ..[dynamic]string) -> string
{	ret: [dynamic]string
{	sum := 0
	for arr in args do sum += len(arr)
	resize(&ret, sum * 2) }
{	index := 0
	for i in args
	{	for j in i
		{	ret[index] = j
			ret[index + 1] = separator
			index += 2 }}
	return strings.concatenate(ret[:index - 1]) }}
