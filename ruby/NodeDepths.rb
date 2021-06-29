# Iterative approach

def node_depth(root)
  sum_of_dephts = 0;
  stack = [{node:root,depth: 0}]
  while stack.length > 0
    nodeInfo = stack.pop()
   node,depth =  nodeInfo[:node], nodeInfo[:depth]
   continue if !node 
   sum_of_dephts+=depth
   stack.push({node:node.left,depth: depth+=1})
   stack.push({node:node.right,depth: depth+=1})
  end
  sum_of_dephts
end

# Recursive approach

def node_depth_recursive(root,depth = 0)
  return 0 if !root
  return node_depth_recursive(root.left,depth +1 )+node_depth_recursive(root.right,depth +1 )
end