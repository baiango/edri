package main

import "core:fmt"

main :: proc()
{	fmt.println("Hellope! fwht")
{	arr: [dynamic]i64 // i64 for reducing overflow bugs
	arr = { 1, 0, 1, 0, 0, 1, 1, 0 }
	fmt.println(arr)
	arr = fwht(arr)
	fmt.println(arr)
	arr = rfwht(arr)
	fmt.println(arr)

	arr = { 1, 0, 1, 0, 0, 1, 1 }
	arr = fwht(arr)
	fmt.println(arr) }

	fmt.println("rle")
{	arr := [dynamic]i64{ 1, 0, 1, 0, 0, 1, 1, 0 }
	str := rle8_enc(arr)
	fmt.println(str) }}
