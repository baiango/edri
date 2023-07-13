from icecream import ic
ic.configureOutput(includeContext=True) # It include the printing command and the line
# print = ic
'pip3 install icecream'

# https://youtu.be/ujb2CIWE8zY
def lsd_radix_sort(input):
	# Variation of LSD radix sort
	# It skips the number that are not in the range
	# So it read the memory less frequently than the normal radix sort
	EIGHT_BIT_MAX = 0b1111_1111
	SIXTEEN_BIT_MASK = 0xff00
	TWENTY_FOUR_BIT_MASK = 0xff0000
	ret = []

	# Swap 1, The first 8 bits
	# Filter out numbers that are not in range
	input_filtered = []
	input_queue = []
	for n in input:
		if n < EIGHT_BIT_MAX: input_filtered.append(n)
		else: input_queue.append(n)
	# Count the number
	prefix_sum = [0] * 256
	for n in input_filtered: prefix_sum[n & EIGHT_BIT_MAX] += 1

	# Make the prefix_sum into Prefix sum
	for i in range(len(prefix_sum) - 1): prefix_sum[i + 1] += prefix_sum[i]

	# Place the number in the array
	swap = [0] * len(input)
	for n in input_filtered: swap[prefix_sum[n & EIGHT_BIT_MAX] - 1] = n
	ret = swap
	print(ret)

	# Swap 2, The 16 bit mask. It only sort in every 256 steps
	# I am not going to developing this anymore
	# It won't even sort well
	# Filter out numbers that are not in range
	input_filtered = []
	input_queue_tmp = []
	for n in input_queue:
		if n & SIXTEEN_BIT_MASK: input_filtered.append(n)
		else: input_queue_tmp.append(n)
	input_queue = input_queue_tmp

	# Count the number
	prefix_sum_tmp = prefix_sum[-1] - 1
	prefix_sum = [0] * 256
	prefix_sum[0] = prefix_sum_tmp
	for n in input_filtered: prefix_sum[(n & SIXTEEN_BIT_MASK) >> 8] += 1

	# Make the prefix_sum into Prefix sum
	for i in range(len(prefix_sum) - 1): prefix_sum[i + 1] += prefix_sum[i]

	print(prefix_sum)
	print(input_filtered) # [301, 300, 513]
	# Place the number in the array
	for n in input_filtered:
		# [0, 11, 12, 203, 253, 301, 0, 0, 0]
		# [0, 11, 12, 203, 253, 300, 0, 0, 0]
		# [0, 11, 12, 203, 253, 300, 513, 0, 0]
		print(n)
		print((n & SIXTEEN_BIT_MASK) >> 8)
		swap[prefix_sum[(n & SIXTEEN_BIT_MASK) >> 8] - 1] = n
		print(swap)

	# print(input_filtered)
	# print(prefix_sum)
	print(input_queue)
	print(swap)

	print("----------------")
	aaa = input
	aaa.sort()
	print(aaa)

a = [0, 11, 12, 203, 301, 65536, 253, 300, 513]
lsd_radix_sort(a)
# print(a)