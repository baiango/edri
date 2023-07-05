package main

import "core:fmt"
import "core:math"
import "core:strings"
import "core:io"

// Fast Walsh-Hadamard transform
fwht :: proc(num_arr: [dynamic]i64) -> [dynamic]i64
{{	log_arr_size := math.log2(f32(len(num_arr)))
	if log_arr_size != math.floor(log_arr_size)
	{	fmt.println("Warn: fwht received non-power of 2 array. Returning empty array.")
		return [dynamic]i64{} }}

	ret := num_arr
	for h := 1; h < len(ret); h *= 2 do for i := 0; i < len(ret); i += h * 2
	{{	for j in i..<i+h
		{	x := ret[j]
			y := ret[j + h]
			ret[j] = x + y
			ret[j + h] = x - y }}}
	return ret }
rfwht :: proc(num_arr: [dynamic]i64) -> [dynamic]i64
{	ret := fwht(num_arr)
	for i in 0..<len(num_arr) { ret[i] /= i64(len(num_arr)) }
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
rgb8_chroma_subsampling_420 :: proc(input: [4]rgb8) -> [4]rgb8
rgb8_chroma_subsampling_422 :: proc(input: [4]rgb8) -> [4]rgb8

// For offsetting the string if the last string is not a full byte
add_string_terminator :: #force_inline proc(txt: string, offset: u8) -> string { return join("", {txt}, {get_number[offset]})}
get_bit_length :: proc(num: $t) -> u8
{	tmp := num
	bit_length: u8 = 0
	for tmp > 0
	{	bit_length += 1
		tmp >>= 1 }
	return bit_length }
gc_enc :: proc(num: u32) -> u64 // Gamma coding
{	num_padded := cast(u64)num + 1 // prevent interger 1 overflow, 45 + 1 = 101110
	bit_length := get_bit_length(num_padded)
	num_length: u64 = 1 << (bit_length - 1) - 2 // 11110, use 0 as the terminator
	value: u64 = num_padded - (1 << (bit_length - 1)) // 101110(46) - 100000(32) = 01110(14)
	return num_length << (bit_length - 1) | value } // 11110_01110(974), put the num_length and the value together
gc_dec :: proc(num: u64) -> u32
{	bit_length := get_bit_length(num)
	is_even := bit_length & 1 == 0
	if !is_even
	{	fmt.println("Warn: gc_dec found non-multiple of 2 bitwise number. Returning 0")
		return 0 }

	num_padded := cast(u32)num + 1
	num_length: u32 = num_padded >> (bit_length / 2)
	value: u32 = num_padded - (num_length << (bit_length / 2))
	return num_length + value }


rle8_ascii_enc :: proc(txt: string) -> string // Run-length encoding type a
{	txt_arr: [dynamic]string
	length := 1
	for i in 0..<len(txt) - 1
	{	is_equal_next := txt[i] == txt[i + 1]
		if is_equal_next
		{	length += 1
			continue }
		append(&txt_arr, get_ascii[txt[i]])
		if length > 1 do append(&txt_arr, get_number[cast(u8)length])
		length = 1 }

	append(&txt_arr, get_ascii[txt[len(txt) - 1]])
	if length > 1 do append(&txt_arr, get_number[cast(u8)length])
	return join("", txt_arr) }


// Work in progress
get_binary_string :: proc(num: u64) -> string
{	ret: [dynamic]string
{	swap: [dynamic]string
	for i in 0..<get_bit_length(num)
	{	if num >> i & 1 == 0 do append(&swap, "0")
		else do append(&swap, "1") }
	for i := len(swap) - 1; i >= 0; i -= 1 do append(&ret, swap[i]) }
	return strings.concatenate(ret[:])}
hc_enc :: proc(txt: string) -> string // Huffman coding
{	weights: [dynamic]u64
	resize(&weights, 256)
	// Count characters
{	swap: [dynamic]u64
	resize(&swap, 256)
	for i in 0..<len(txt) do swap[txt[i]] += 1
	weights = swap }
	// Clear zeros
	characters: [dynamic]rune
{	swap: [dynamic]u64
	for i in 0..<len(weights) do if weights[i] != 0
	{	append(&swap, weights[i])
		append(&characters, rune(i))}
	weights = swap }
	// Sort forward https://arxiv.org/pdf/2110.01111.pdf
{	for i in 0..<len(weights) do for j in 0..<len(weights)
	{{	if weights[i] < weights[j]
		{	weights[i], weights[j] = weights[j], weights[i]
			characters[i], characters[j] = characters[j], characters[i] }}}}
	fmt.println(weights)
	fmt.println(characters)
	// Reference
// {	binary_node :: struct { left, right: ^binary_node }
// 	tmp := binary_node{ nil, nil }
// 	bin := binary_node{ &tmp, nil }
// 	fmt.println(bin) }
	// Build binary tree nodes
	// binary_node :: struct { character: rune, is_left: bool }
	node :: struct {
		left, right: ^node
	}
	data :: struct {
		is_left_node, is_right_node: bool
		left_rune, right_rune: rune
		left_node, right_node: node
	}
	left :: true
	right :: false
	// tree: [dynamic]binary_node
{	value: u64 = 0
	for i in 0..<len(characters) - 1
	{	if characters[i] < characters[i + 1]
		{	}} }
	// fmt.println(tree)
	// Build tree path
	path: [dynamic]string


	fmt.println(path)

	// char := 
	return ""
}
ac_enc :: proc(txt: string) -> string // Arithmetic coding


lehmer :: #force_inline proc(num: $t) -> u64 { return u64(num) * 0xd1342543de82ef95 }
// It has a chance with hash collision. But it's good enough for comparing 2 arrays
get_default_hash: u64 = 1023
hash_array_i64 :: proc(arr: [dynamic]i64) -> u64
{	hash := get_default_hash
	for i in 0..<len(arr) do hash += lehmer(arr[i])
	return hash }
hash_array_str :: proc(arr: [dynamic]string) -> u64
{	hash := get_default_hash
	for i in 0..<len(arr) do for j in 0..<len(arr[i])
	{{	hash += lehmer(arr[i][j]) }}
	return hash }
hash_str :: proc(arr: string) -> u64
{	hash := get_default_hash
	for i in 0..<len(arr) do hash += lehmer(arr[i])
	return hash }
hash :: proc{ hash_array_i64, hash_array_str, hash_str }


join :: proc(separator: string, args: ..[dynamic]string) -> string
{	ret: [dynamic]string
{	length_sum := 0
	for arr in args do length_sum += len(arr)
	resize(&ret, length_sum * 2) }

	index := 0
	for i in args do for j in i
	{{	ret[index] = j
		ret[index + 1] = separator
		index += 2 }}
	return strings.concatenate(ret[:index - 1]) }
