pub fn hc_enc(input: &[u8]) -> Vec<u8>
{	let mut ret = b"".to_vec();
	let mut weights : Vec<u64> = vec![0; 256];
	for c in input { weights[*c as usize] += 1; }

	// Filter out 0
	let mut characters = vec![];
{	let mut swap = vec![];
	for i in 0..weights.len()
	{	if weights[i] != 0
		{	swap.push(weights[i]);
			characters.push(i as u8); }}
		weights = swap; }

	// https://github.com/jalexvig/comprustion/blob/master/src/huffman.rs
	// Building the tree
{	#[derive(Debug)]
	struct Node
	{	character: Option<u8>,
		left: Option<Box<Node>>,
		right: Option<Box<Node>> }

	impl Node
	{	fn new(character: u8) -> Box<Node>
		{	Box::new(Node{
				character: Some(character),
				left: None,
				right: None
			}) }

		fn combine(a: Box<Node>, b: Box<Node>) -> Box<Node>
		{	Box::new(Node{
				character: None,
				left: Some(a),
				right: Some(b)
			}) } }

	let mut chars = vec![];
	let mut sums = vec![];

	for i in 0..weights.len()
	{	chars.push(Node::new(characters[i]));
		sums.push(weights[i]); }

		while chars.len() > 1
		{	// println!("{:?}", chars);
			let t1= chars.pop().unwrap();
			let t2 = chars.pop().unwrap();

			let t_new = Node::combine(t1, t2);
			chars.push(t_new); };

	let depth1 = &chars[0];
	println!("{:?}", depth1);

	let depth2 = match &depth1.left {
		None => None,
		node => node.as_ref()
	};
	println!("{:?}", depth2);

	let depth3 = match depth2.left {
		None => None,
		node => node.as_ref()
	};
	println!("{:?}", depth3);

}
	// Generating path from the tree



	ret.shrink_to_fit();
	return ret }
