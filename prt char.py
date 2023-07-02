def prt_ascii():
	prt = []
	[prt.append(str(bytes([i])).split("'")[1]) for i in range(256)]

	for y in range(16):
		for x in range(16):
			char = prt[x + y * 16]
			if x + y * 16 == 0x22: print(f'"\\\x22", ', end="")
			elif x + y * 16 == 0x27: print(f'"\x27", ', end="")
			else: print(f'"{char}"', end=", ")
		print()

def prt_256_numbers():
	print("string{", end='')
	for y in range(16):
		[print(f'"{x + y * 16}"', end=', ') for x in range(16)]
		print()
	print("}", end='')

# prt_ascii()
prt_256_numbers()
