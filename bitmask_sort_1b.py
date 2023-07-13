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
	ret = []
	swap = []

	# Swap 1, The first 8 bits
	# Count the number
	prefix_sum = [0] * 256
	for n in input: prefix_sum[n & EIGHT_BIT_MAX] += 1

	# Make the array into Prefix sum
	for i in range(len(prefix_sum) - 1): prefix_sum[i + 1] += prefix_sum[i]

	# Place the number in the array
	swap = [0] * len(input)
	for n in input:
		swap[prefix_sum[n & EIGHT_BIT_MAX] - 1] = n
	ret = swap

	# Swap 2
	# print(ret)
	# print(swap)
	# return
	prefix_sum = [0] * 256
	for n in input:
		prefix_sum[(n >> 8) & EIGHT_BIT_MAX] += 1

	for i in range(len(prefix_sum) - 1):
		prefix_sum[i + 1] += prefix_sum[i]

	print(prefix_sum)
	swap = [0] * len(input)
	for n in input[prefix_sum[0]:]:
		index = prefix_sum[n & EIGHT_BIT_MAX] - 1
		swap[index] = n
		print(swap)
	# ret = swap

	# swap 3
	print(ret)
	print(swap)

	print("----------------")
	aaa = [n & EIGHT_BIT_MAX for n in input]
	aaa.sort()
	print(aaa)

a = [0, 11, 12, 203, 301, 100, 253, 300]
lsd_radix_sort(a)
print(a)