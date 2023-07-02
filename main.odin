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

	// it's not complete
	fmt.println("rle16 b test")
{	arr := "aaaaaabbbccxzzmmx"
	str := rle16_enc_b(arr)
	if str != "a6b3c2xz2m2x" do fmt.println(`Info: rle16_enc is not a6b3c2xz2m2x. It returned "`, str, `"`)
	fmt.println(str) }

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
}
