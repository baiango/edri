package main

import "core:fmt"


main :: proc()
{	unit_test() }


unit_test :: proc()
{	fmt.println("Hellope! fwht test")
{	arr: [dynamic]i64 // i64 for reducing overflow bugs
	arr = { 1, 0, 1, 0, 0, 1, 1, 0 }
	arr = fwht(arr)
	// You can't compare dynamic array. So I made an array hash instead
	fmt.println(arr)
	if hash(arr) != hash([dynamic]i64{ 4, 2, 0, -2, 0, 2, 0, 2 }) do fmt.println("Info: fwht failed to covert the array.")
	arr = { 4, 2, 0, -2, 0, 2, 0, 2 }
	arr = rfwht(arr)
	fmt.println(arr)
	if hash(arr) != hash([dynamic]i64{ 1, 0, 1, 0, 0, 1, 1, 0 }) do fmt.println("Info: rfwht failed to reverse the array.")
	fmt.println("Non-power of two fwht test")
	arr = { 1, 0, 1, 0, 0, 1, 1 }
	arr = fwht(arr)
	if len(arr) != 0 do fmt.println("Info: fwht doesn't return empty array when error.")
	fmt.println(arr) }

	fmt.println("rle8 ascii test")
{	init := "aaaaaabbbccxzzmmx"
	str := rle8_ascii_enc(init)
	if str != "a6b3c2xz2m2x" do fmt.println(`Info: rle8_ascii_enc is not a6b3c2xz2m2x. It returned "`, str, `"`)
	fmt.println(str) }
{	init := "a6b3c2xz2m2x"
	// str := rle8_ascii_dec(init)
	// if str != "aaaaaabbbccxzzmmx" do fmt.println(`Info: rle8_ascii_dec is not aaaaaabbbccxzzmmx. It returned "`, str, `"`)
	fmt.println(init) }

	fmt.println("ycocg test")
{	color := rgb8{255, 255, 255}
	color_2 := rgb8_to_ycocg8(color)
	if color_2 != {253, 0, 1} do fmt.println("Info: rgb8_to_ycocg8 is", color_2 , "and it doesn't match {253, 0, 1}.")
	fmt.println(color_2)
	color_2 = {253, 0, 1}
	color = ycocg8_to_rgb8(color_2)
	if color != {252, 254, 252} do fmt.println("Info: ycocg8_to_rgb8 is", color , "and it doesn't match {252, 254, 252}.")
	fmt.println(color) }

	fmt.println("join test")
{	a := "1"
	b := [dynamic]string{"22", "333"}
	c := join(", ", {a}, b, {"4444", "55555"}, {})
	if hash(c) != hash("1, 22, 333, 4444, 55555") do fmt.println("Info: join is", c , `and it doesn't match "1, 22, 333, 4444, 55555".`)
	fmt.println(c) }

	fmt.println("get_bit_length test")
{	num := 45
	fmt.println(get_bit_length(num))
	fmt.println("gc test") }
{	num: u32 = 45
	gc := gc_enc(num)
	if gc != 0b1111001110 do fmt.println("Info: gc_enc is not 0b1111001110 or", 0b1111001110, ". It's", gc, ".")
	fmt.println(gc)
	gc = gc_enc(1)
	if gc != 0 do fmt.println("Info: gc_enc is not 0. It might be overflowing. It's", gc, ".")
	fmt.println(gc)
	fmt.println(get_bit_length(gc)) }
{	num := gc_dec(0b101)
	if num != 0 do fmt.println("Info: gc_dec failed to return 0 on error. It's", num, ".")
	num = gc_dec(0b1111001110)
	if num != 45 do fmt.println("Info: gc_dec is not 45. It's", num, ".")
	fmt.println(num) }

	fmt.println("string terminator test")
{	termi := add_string_terminator("100", 5)
	if termi != "1005" do fmt.println("Info: add_string_terminator is not 1005. It's", termi, ".")
	fmt.println(termi) }

	fmt.println("huffman coding test")
{	str := "AAAVCVVAVBBBBBCCCCCCC"
	str = "ABCDDDEEEEEEEE"
	str = hc_enc(str)
	fmt.println(str) }

	fmt.println("get_binary_string test")
{	bin_str := get_binary_string(0b1011)
	if hash(bin_str) != hash("1011") do fmt.println("Info: get_binary_string is not 1011. It's", bin_str, ".")
	fmt.println(bin_str) }
}
