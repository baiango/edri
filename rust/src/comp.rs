use std::any::Any;

pub fn hc_enc(input: &[u8]) -> Vec<u8>
{	let mut ret = b"ABCDEFGHIJKLMNOPQRSTUVWXYZ".to_vec();
	let mut weights : Vec<u64> = vec![0; 256];
	for c in input { weights[*c as usize] += 1; }

	let mut characters = vec![];
{	let mut swap = vec![];
	for i in 0..weights.len()
	{	if weights[i] != 0
		{	swap.push(weights[i]);
			characters.push(i as u8); }}
		weights = swap; }

	struct BinaryTree {
		pub left: NodeData,
		pub right: NodeData,
	}

	enum NodeData {
		Character(u8),
		Node(Option<Box<BinaryTree>>)
		// Node(Option<Box<VariantTree>>)
	}

	// enum VariantTree {
	// 	Character(u8),
	// 	Node(BinaryTree),
	// }

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
