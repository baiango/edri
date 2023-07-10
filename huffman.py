from icecream import ic
ic.configureOutput(includeContext=True) # It include the printing command and the line
print = ic
'pip3 install icecream'

# https://favtutor.com/blogs/huffman-coding
def hc_enc(input):
	ret = ""
	weights = [0] * 256
	for i in input: weights[ord(i)] += 1

	characters = []
	for _ in [0]: # Limit the scope
		swap = []
		for i in range(len(weights)):
			if weights[i]:
				swap.append(weights[i])
				characters.append(chr(i))
		weights = swap

	class Node:
		def __init__(self, left, right):
			self.left = left
			self.right = right

		def __repr__(self): return f'({self.left}{self.right})'

	class Connector(Node):
		def __init__(self, sum):
			self.sum = sum

		def __repr__(self): return f'({self.left}{self.right}, {self.sum})'

	# Tree Constructor
	tree = None
	for _ in [0]:
		chars = []
		sums = []

		for i in range(2, len(weights)):
			chars.append(characters[i])
			sums.append(weights[i])

		while len(chars) > 1:
			chars[0] = Node(chars[0], chars[1])
			sums[0] = sums[0] + sums[1]
			chars.pop(1)
			sums.pop(1)

			for i in range(len(chars)):
				for j in range(len(chars)):
					if sums[i] < sums[j]:
						chars[i], chars[j] = chars[j], chars[i]
						sums[i], sums[j] = sums[j], sums[i]

		tree = chars[0]

	# Path generator (Breadth-first search)
	path = []
	for _ in [0]:
		queue, pos = [tree], ['']
		while queue:
			if type(queue[0]) is Node:
				queue.append(queue[0].left)
				queue.append(queue[0].right)
				pos.append(f'{pos[0]}0')
				pos.append(f'{pos[0]}1')
			else:
				path.append((queue[0], pos[0]))
			queue.pop(0)
			pos.pop(0)

	# Encoding


	print(tree)
	# print(len(tree))
	print(path)
	# print(len(path))
	# print(weights)
	# print(len(weights))
	# print(characters)
	return ret


input = "ABCDDEDEEEEEEEFFFGHIJKK" # Fail
# input = "CCBBBBBBEEEEEEE          DDDDDDDDDDAAAAAAAAAAA" # Fail
output = hc_enc(input)
target = '\x45\x9B\x6F\xFF\xFE\xDB\x04\x72\x002' # Need to update it
if output != target:
	print(f'Failed: {output} != {target}')
else:
	print('Succeed: {output} == {target}')
