use core::fmt;
use std::any::Any;


pub fn hc_enc(input: &[u8]) -> Vec<u8>
{	let mut ret;
	// ret = b"ABCDEFGHIJKLMNOPQRSTUVWXYZ".to_vec();
	ret = b"ABCDDEDEEEEEEEFFFGHIJKK".to_vec();
	let mut weights : Vec<u64> = vec![0; 256];
	for c in input { weights[*c as usize] += 1; }

	let mut characters = vec![];
{	let mut swap = vec![];
	for i in 0..weights.len()
	{	if weights[i] != 0
		{	swap.push(weights[i]);
			characters.push(i as u8); }}
		weights = swap; }

	// https://dawchihliou.github.io/articles/binary-tree-insertion-in-rust
	#[derive(Debug)]
	struct BinaryTree<T> {
		pub data: T,
		pub left: Option<Box<BinaryTree<T>>>, pub right: Option<Box<BinaryTree<T>>>,
	}

	impl<T> BinaryTree<T> {
		pub fn new(data: T) -> Self { BinaryTree { data, left: None, right: None }}
		pub fn left(mut self, node: BinaryTree<T>) -> Self { self.left = Some(Box::new(node)); self }
		pub fn right(mut self, node: BinaryTree<T>) -> Self { self.right = Some(Box::new(node)); self }
	}

	let aaa = BinaryTree::new(1)
		.left(BinaryTree::new(2))
		.right(BinaryTree::new(3));

	println!("{:?}", aaa);


	// let mut tree: dyn Any;

{	let mut chars: Box<Vec<&dyn Any>> = Default::default();
	let mut sums = vec![];

	for i in 0..weights.len()
	{	chars.push(&characters[i]);
		sums.push(weights[i]); }

		while chars.len() > 1
		{	// println!("{:?}", chars);
			// tree = BinaryTree{ left: NodeData::Character(chars[0]), right: chars[1] };
			// chars[0] = &BinaryTree{ // Not working yet
			// 	left: NodeData::Character(chars[0]),
			// 	right: NodeData::Character(chars[1])
			// };
		}
}



	ret.shrink_to_fit();
	return ret }
