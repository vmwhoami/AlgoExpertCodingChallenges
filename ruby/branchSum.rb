class BinaryTree
  attr_accessor :value,:left,:right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def insert(value)
    current = self
    while true
      if value < current.value
        if current.left.nil?
          current.left = BinaryTree.new(value)
          break
        end
        current = current.left
      else
        if current.right.nil?
          current.right = BinaryTree.new(value)
          break
        end
        current = current.right
      end
    end
  end

 
  def branchSum
    sums = []
    tree = self
    calculatBranchSum(tree, 0 ,sums)
    sums
  end
  
  def calculatBranchSum(tree, runningSum ,sums)
    return if tree.nil?
    runningSum += tree.value
    sums << runningSum if tree.left.nil? && tree.right.nil?   
    calculatBranchSum(tree.left, runningSum ,sums)
    calculatBranchSum(tree.right, runningSum ,sums)
  end
  
end
 


binaryTree = BinaryTree.new(1)
binaryTree.insert(2)
binaryTree.insert(3)
binaryTree.insert(5)
binaryTree.insert(11)
binaryTree.insert(12)
binaryTree.insert(13)
p binaryTree
sum = binaryTree.branchSum
p sum