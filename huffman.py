from icecream import ic
ic.configureOutput(includeContext=True) # It include the printing command and the line
print = ic
'pip3 install icecream'

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

	'ABCDDEDEEEEEEEFFFGHIJKK'
	# print(characters)
	# characters = ['A', 'B', 'C', 'G', 'H', 'I', 'J', 'K', 'D', 'F', 'E']
	# print(weights)

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

		print(characters)
		swap.append(Node(characters[0], characters[1], weights[0] + weights[1]))
		i = 2
		while i < len(weights):
			print(len(swap))
			print(swap)
			for j in range(0, len(swap) - 1, 2):
				print()
				if swap[j].sum == swap[j + 1].sum:
					swap[j] = Node(swap[j], swap[j + 1], swap[j].sum + swap[j + 1].sum)
					swap.pop(1)
					i += 1
			if i + 1 < len(weights) and weights[i] == weights[i+1]:
				swap.insert(0, Node(characters[i], characters[i+1], weights[i] + weights[i+1]))
				i += 2
				continue
			elif weights[i] < swap[-1].sum:
				swap[-1] = Node(characters[i], swap[-1], weights[i] + swap[-1].sum)
				i += 1
				continue
			print('Hc Error!')
			break

		swap = Node(swap[0], swap[1], swap[0].sum + swap[1].sum)
		tree = swap

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
	print(path)
	print(len(path))
	print(weights)
	print(len(weights))
	print(characters)
	return ret


input = "ABCDDEDEEEEEEEFFFGHIJKK" # Fail
# input = "CCBBBBBBEEEEEEE          DDDDDDDDDDAAAAAAAAAAA" # Success
output = hc_enc(input)
target = '\x45\x9B\x6F\xFF\xFE\xDB\x04\x72\x002' # Need to update it
if output != target:
	print(f'Failed: {output} != {target}')
else:
	print('Succeed: {output} == {target}')
