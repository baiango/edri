#include <string>
#include <array>
#include <vector>
using std::string;
using std::vector;
using std::array;

#include <iostream>
using std::cout;
string hc_enc(string input)
{
	vector<uint64_t> weights(256, 0);
	for (auto c : input) weights[c] += 1;

	for (auto i : weights)
		cout << i << " ";
	cout << "\n";

	vector<uint8_t> charaters;
{	vector<uint64_t> swap;
	for (auto i = 0; i < weights.size(); i++)
	{	if (weights[i])
		{	swap.push_back(weights[i]);
			charaters.push_back(i); }}
	weights = swap; }

	class Node {
		Node *left;
		Node *right;
	};

	Node tree;
{	Node swap;
	vector<uint64_t> sums;
	for (auto i = 0; i < weights.size(); i++)
	{
		//swap.push_back();
		//characters.push_back();
	}
}


	return input;
}
