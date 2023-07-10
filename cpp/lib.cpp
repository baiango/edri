#include <string>
#include <array>
#include <vector>
using std::string;
using std::vector;
using std::array;

#define ICECREAM_LONG_NAME
#include "icecream.hpp"
using std::cout;
#define prt ICECREAM


string hc_enc(string input)
{	vector<uint64_t> weights(256, 0);
	for (auto c : input) weights[c] += 1;

	for (auto i : weights)
		cout << i << " ";
	cout << "\n";
	//prt(weights); // works

	vector<uint8_t> characters;
{	vector<uint64_t> swap;
	for (auto i = 0; i < weights.size(); i++)
	{	if (weights[i])
		{	swap.push_back(weights[i]);
			characters.push_back(i); }}
	weights = swap; }

	struct Node {
		uint8_t l_char, r_char;
		struct Node *l_node, *r_node;

		void set(uint8_t left, uint8_t right) { l_char = left; r_char = right; };
		void set(Node *left, uint8_t right) { l_node = left; r_char = right; };
		void set(uint8_t left, Node *right) { l_char = left; r_node = right; };
		void set(Node *left, Node *right) { l_node = left; r_node = right; };
	};

	struct Tree {
		struct Node;
		uint64_t sum;
	};

	Tree *tree;
{	Tree *swap = new Tree;
	vector<uint8_t> chars;
	vector<uint64_t> sums;
	for (auto i = 0; i < weights.size(); i++)
	{	chars.push_back(characters[i]);
		characters.push_back(weights[i]); }

	while (chars.size() > 1)
	{	Node tmp = { chars[-2] , chars[-1] };
		//swap->left = &tmp;
		swap->sum = sums[-2] + sums[-1];
		chars.pop_back();
		chars.pop_back();
		sums.pop_back();
		sums.pop_back();

		for (auto i = 0; i < chars.size(); i++)
		{	for (auto j = 0; j < chars.size(); j++)
			{	if (sums[i] < sums[j])
				{	chars[i], chars[j] = chars[j], chars[i];
					sums[i], sums[j] = sums[j], sums[i]; }}}
	}

	//cout << swap->left << "\n";
	//for (auto i : tree)
		//cout << i << " ";
	//cout << "\n";
}


	return input;
}
