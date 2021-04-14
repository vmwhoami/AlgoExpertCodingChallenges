class BST
  attr_accessor :value,:left,:right
   def initialize(value)
    @value = value
    @left = nil
    @right =nil
  end
# O(log(n)):time | O(1) space
  def insert(value)
    current = self
    while true
       if current.value > value
        if current.left.nil?
         current.left = BST.new(value)
         break
        else
          current = current.left
        end
      else
        if current.right.nil?
          current.right= BST.new(value)
          break
        else
          current = current.right
        end
       end
    end
  end
# O(log(n)):time | O(1) space
  def contains(value)
    current = self
    while !current.nil?
      if current.value > value
        current = current.left
      elsif current.value < value
        current = current.right
      else
        return true
      end
    end
    return false
  end
  
  def getMinValue
    current = self
    until current.left.nil? 
      current = current.left
    end 
    current.value   
  end
  
  def remove(value,parent = nil)
    current = self
    if self.contains(value)
      while !current.nil?
        if value < current.value
          parent = current
          current = current.left
        elsif value > current.value
          parent = current
          current = current.right
        else
          unless current.left.nil? && current.right.nil?
            current.value = current.right.getMinValue()
          end
        end
      end
    else
      return "This node does not contain this value"
    end
  end
  
end

bst = BST.new(3)
 bst.insert(4)
 bst.insert(5)
 bst.insert(7)
 bst.insert(2)
 p bst.getMinValue
# p bst