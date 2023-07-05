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

	for i in range(len(weights)):
		for j in range(len(weights)):
			if weights[i] < weights[j]:
				weights[i], weights[j] = weights[j], weights[i]
				characters[i], characters[j] = characters[j], characters[i]

	characters = ['A', 'B', 'C', 'G', 'H', 'I', 'J', 'K', 'D', 'F', 'E']
	print(characters)
	print(weights)


	class Node:
		def __init__(self, left, right, sum):
			self.left = left
			self.right = right
			self.sum = sum

		def __repr__(self):
			return f'({self.left}{self.right}, {self.sum})'

	# Tree Constructor
	tree = None
	for _ in [0]:
		swap = []
		weights_deduped = list(dict.fromkeys(weights))
		for iter in weights_deduped:
			count = weights.count(iter)
			offset = weights.index(iter)
			# Merge double
			for i in range(offset, offset + count - 1, 2):
				swap.append(Node(characters[i], characters[i + 1], weights[i] + weights[i + 1]))
			# Merge 2 doubles
			for i in range(0, len(swap) - 1, 2):
				if swap[i].sum <= swap[i + 1].sum:
					swap[i] = Node(swap[i], swap[i + 1], swap[i].sum + swap[i + 1].sum)
					swap.pop(1)
			# Merge single
			if count & 1:
				swap[-1] = Node(characters[offset], swap[-1], weights[offset] + swap[-1].sum)
		tree = Node(swap[0], swap[1], swap[0].sum + swap[1].sum)

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

	print(tree)
	print(weights)
	print(path)
	print(characters)
	return ret


input = "ABCDDEDEEEEEEEFFFGHIJKK"
output = hc_enc(input)
target = '\x45\x9B\x6F\xFF\xFE\xDB\x04\x72\x002' # Need to update it
if output != target:
	print(f'Failed: {output} != {target}')
else:
	print('Succeed: {output} == {target}')
