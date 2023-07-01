package main

import "core:fmt"


main :: proc()
{	unit_test()}


unit_test :: proc()
{	fmt.println("Hellope! fwht test")
{	arr: [dynamic]i64 // i64 for reducing overflow bugs
	arr = { 1, 0, 1, 0, 0, 1, 1, 0 }
	arr = fwht(arr)
	// You can't compare dynamic array. So I made an array hash instead
	fmt.println(arr)
	if hash(arr) != hash([dynamic]i64{ 4, 2, 0, -2, 0, 2, 0, 2 }) { fmt.println("Info: fwht failed to covert the array.") }
	arr = { 4, 2, 0, -2, 0, 2, 0, 2 }
	arr = rfwht(arr)
	fmt.println(arr)
	if hash(arr) != hash([dynamic]i64{ 1, 0, 1, 0, 0, 1, 1, 0 }) { fmt.println("Info: rfwht failed to reverse the array.") }

	arr = { 1, 0, 1, 0, 0, 1, 1 }
	arr = fwht(arr)
	fmt.println(arr)
	if len(arr) != 0 { fmt.println("Info: fwht doesn't return empty array when error.") }}

	fmt.println("rle test")
{	arr := [dynamic]i64{ 1, 0, 1, 0, 0, 1, 1, 0 }
	str := rle8_enc(arr)
	fmt.println(str)
	if str != "110111021201" { fmt.println("Info: rle8_enc is not 110111021201. It returned \"", str, "\"") }}
	// it's not complete

	fmt.println("ycocg test")
{	color := rgb8{255, 255, 255}
	color_2 := rgb8_to_ycocg8(color)
	fmt.println(color_2)
	if color_2 != {253, 0, 1} { fmt.println("Info: rgb8_to_ycocg8 is", color_2 , "and it doesn't match {253, 0, 1}.") }
	color_2 = {253, 0, 1}
	color = ycocg8_to_rgb8(color_2)
	fmt.println(color)
	if color != {252, 254, 252} { fmt.println("Info: ycocg8_to_rgb8 is", color , "and it doesn't match {252, 254, 252}.") }}

	fmt.println("join test")
{	a := "111"
	b := [dynamic]string{"222", "333"}
	c := join("", {a}, b)
	// It's more like "111222333" than {"111", "222", "333"}
	if hash(c) != hash([dynamic]string{"111", "222", "333"}) { fmt.println("Info: ycocg8_to_rgb8 is", c , "and it doesn't match {\"111\", \"222\", \"333\"}.") }
	fmt.println(c) }}
