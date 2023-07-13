#define ICECREAM_LONG_NAME
#include "icecream.hpp"
using std::cout;
#define prt ICECREAM

#include "lib.h"

using std::string;

struct Node {
	uint8_t l_char, r_char;
	struct Node* l_node, * r_node;

	void set(uint8_t left, uint8_t right) { l_char = left; r_char = right; };
	void set(Node* left, uint8_t right) { l_node = left; r_char = right; };
	void set(uint8_t left, Node* right) { l_char = left; r_node = right; };
	void set(Node* left, Node* right) { l_node = left; r_node = right; };
};
int main()
{	using std::cout;
	string str = "ABCDDEDEEEEEEEFFFGHIJKK";
	prt(hc_enc(str));

	Node aaa;
	Node bbb;
	bbb.l_char = 'B';
	aaa.r_node = &bbb;
	prt(aaa.l_char);
	prt(aaa.r_char);
	prt(aaa.l_node);
	prt(aaa.r_node);
	prt(aaa.r_node->l_char);
	//prt(aaa);
}
