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

	path = []
	for i in range(0, weights.count(1) - 2, 2):
		path.append((characters[i] + characters[i + 1], weights[i] + weights[i + 1]))
	if weights.count(1) & 1: path.append(
		((characters[i + 2]), (characters[i] + characters[i + 1]),
				weights[i] + weights[i + 1] + weights[i + 2]))

	for i in range(0, weights.count(2) - 2, 2):
		path.append((characters[i] + characters[i + 1], weights[i] + weights[i + 1]))
	if weights.count(2) & 1: path.append(
		((characters[i + 2]), (characters[i] + characters[i + 1]),
				weights[i] + weights[i + 1] + weights[i + 2]))

	print(weights)
	print(characters)
	print(path)
	return ret


input = "ABCDDDEEEEEEEEFFFGHIJKK"
output = hc_enc(input)
target = '\x45\x9B\x6F\xFF\xFE\xDB\x04\x72\x002'
if output != target:
	print(f'Failed: {output} != {target}')
else:
	print('Succeed: {output} == {target}')
