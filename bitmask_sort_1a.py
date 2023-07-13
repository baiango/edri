def lsd_radix_sort(input):
	pass
	ret = []

	tmp = [0, 0]
	for n in input: tmp[n & 1] += 1

	for i in range(tmp[0]): ret.append(0)
	for i in range(tmp[1]): ret.append(1)
	print(tmp)
	print(ret)

	for bit in [1,2]:
		tmp = [0, 0]
		print(1 << bit)
		for n in input: tmp[(n & (1 << bit)) >> bit] += 1
		for i in range(tmp[0], tmp[0] + tmp[1]): ret[i] += 1 << bit
		print(tmp)
		print(ret)

	print("----------------")
	aaa = [n & 1 for n in input]
	aaa.sort()
	print(aaa)
	aaa = [n & 0b11 for n in input]
	aaa.sort()
	print(aaa)
	aaa = [n & 0b111 for n in input]
	# aaa = [n & 0b100 for n in input]
	aaa.sort()
	print(aaa)

	# for bit in [1,2]:
	# 	tmp = [0, 0]
	# 	for n in input: tmp[(n & (1 << bit)) >> bit] += 1
	# 	for i in range(tmp[0], tmp[0] + tmp[1]): ret[i] += 1 << bit
	# 	print(tmp)
	# 	print(ret)

	# for bit in [1,2,3,4,5,6,7]:
	# 	tmp = [0, 0]
	# 	for n in input:
	# 		print((n & (1 << bit)))
	# 		tmp[(n & (1 << bit)) >> bit] += 1

	# 	for i in range(tmp[0], tmp[0] + tmp[1]):
	# 		ret[i] |= 1 << bit
	# 	print(tmp)
	# 	print(ret)

	# [print(bin(n)) for n in input]
	# print(tmp)
	# print(ret)

a = [0, 11, 12, 203, 153, 100, 253, 247]
a = [0, 3, 4, 3, 1, 4, 5, 7]
lsd_radix_sort(a)
print(a)