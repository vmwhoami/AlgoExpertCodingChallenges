const nodeDepth = (root) => {
  let sumOfDepths = 0;
  const stack = [{ node: root, depth: 0 }];
  while (stack.length > 0) {
    let nodeInfo = stack.pop();
    let { node, depth } = nodeInfo;
    if (!node) continue;
    sumOfDepths += depth
    stack.push({ node: root.left, depth: depth += 1 })
    stack.push({ node: root.right, depth: depth += 1 })
  }
  return sumOfDepths;
}

//node Depth recursive

const nodeDepthRecursive = (root, depth = 0) => {
  if (!root) return 0;
  return depth + nodeDepthRecursive(root.left, depth + 1) + nodeDepthRecursive(root.right, depth + 1)
}
