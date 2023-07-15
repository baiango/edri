#define ICECREAM_LONG_NAME
#include "icecream.hpp"
using std::cout;
#define prt ICECREAM

#include <string>
#include <array>
#include <vector>
#include <variant>
#include <algorithm>
using std::sort;
using std::string;
using std::vector;
using std::array;
using std::variant;

string hc_enc(string input)
{	vector<uint64_t> weights(256, 0);
	for (auto c : input) weights[c] += 1;

	for (auto i : weights)
		cout << i << " ";
	cout << "\n";
	//prt(weights); // it works

	vector<uint8_t> characters;
{	vector<uint64_t> swap;
	for (size_t i = 0; i < weights.size(); i++)
	{	if (weights[i])
		{	swap.push_back(weights[i]);
			characters.push_back(i); }}
	weights = swap; }

	struct Node {
		variant<uint8_t, Node *> *left, *right;
	};

	//Tree *tree;
{//	Tree *swap = new Tree;
	vector<variant<uint8_t, Node *>> chars;
	vector<uint64_t> sums;
	for (size_t i = 0; i < weights.size(); i++)
	{	chars.push_back(characters[i]);
		sums.push_back(weights[i]); }

	while (chars.size() > 1)
	{	prt(chars);
		prt(sums);
		Node tmp = Node{ &chars[0], &chars[1] };
		chars[0] = &tmp;
		sums[0] = sums[0] + sums[1];
		chars.erase(chars.begin() + 1);
		sums.erase(sums.begin() + 1);

		// Bubble sort
		for (size_t i = 0; i < sums.size(); i++)
		{	for (size_t j = 0; j < sums.size(); j++)
			{	if (sums[i] < sums[j])
				{	chars[i], chars[j] = chars[j], chars[i];
					sums[i], sums[j] = sums[j], sums[i]; }}}
	}

	prt(chars[0]);
	Node* nod = std::get<Node*>(chars[0]);
	prt(std::get<Node*>(chars[0])->left);
	prt(nod->left);
	prt(nod->right);
	Node* nod2 = std::get<Node*>(*nod->left);
	prt(nod2->left);
	prt(nod2->right);
	//cout << swap->left << "\n";
	//for (auto i : tree)
		//cout << i << " ";
	//cout << "\n";
}


	return input;
}
