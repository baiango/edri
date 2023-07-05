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

	class Node:
		def __init__(self, left, right, sum):
			self.left = left
			self.right = right
			self.sum = sum

		def __repr__(self):
			return f'({self.left}{self.right}, {self.sum})'

	path = []
	# for i in range(0, weights.count(1) - 2, 2):
	# 	path.append(Node(characters[i], characters[i + 1], weights[i] + weights[i + 1]))

	# if weights.count(1) & 1:
	# 	path.append(Node(characters[i], characters[i + 1], weights[i] + weights[i + 1]))
	# 	path[-1] = Node(path[-1], characters[i + 2], path[-1].sum + weights[i + 2])



	for i in range(0, weights.count(1) - 1, 2):
		path.append(Node(characters[i], characters[i + 1], weights[i] + weights[i + 1]))
	for i in range(0, len(path) - 1, 2):
		path[i] = Node(path[i], path[i + 1], path[i].sum + path[i + 1].sum)
		path.pop(1)
	if weights.count(1) & 1:
		path[-1] = Node(characters[weights.count(1) - 1], path[-1], weights[weights.count(1) - 1])



	print(weights)
	print(characters)
	print(path)
	return ret


input = "ABCDDEDEEEEEEEFFFGHIJKK"
output = hc_enc(input)
target = '\x45\x9B\x6F\xFF\xFE\xDB\x04\x72\x002' # Need to update it
if output != target:
	print(f'Failed: {output} != {target}')
else:
	print('Succeed: {output} == {target}')
