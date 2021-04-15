class BST
  attr_accessor :value, :left, :right
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
          current.left = BST.new(value)
          break
        else
          current = current.left
        end
      else
        if current.right.nil?
          current.right = BST.new(value)
          break
        else
          current = current.right
        end
      end
    end
  end

  def createFromArray(array)
    array.each do |el|
      self.insert(el)
    end
  end
# MY solution 
 def findCLosest(value)
   current = self
   arr = []
   while !current.nil?
    if value < current.value
      arr << current.value
      current = current.left 
    else
      arr << current.value
      current = current.right
    end
   end 
   arr.min_by{|x| (value-x).abs} 
 end
 

end

bst = BST.new(10)
bst.createFromArray([5,5,2,1,15,13,14,22,33,21,50])
closest = bst.findCLosest(12)
p closest
# => 13
