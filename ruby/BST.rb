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
          if !current.left.nil? && !current.right.nil?
            current.value = current.right.getMinValue()
            current.right.remove(current.value,current)
          elsif parent.nil?
            if !current.left.nil?
              current.value = current.left.value
              current.right = current.left.right
              current.left =current.left.right
            elsif !current.right.nil?
                 current.value = current.right.value
              current.left = current.right.right
              current.right =current.right.right
            end
          end
        elsif parrent.left == current
          if !current.left.nil
             parrent.left = current.left
          else
            parrent.left =current.right
          end
      
        elsif parrent.rigth == current
          if !current.left.nil
            parrent.left = current.left
         else
           parrent.left =current.right
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
 p bst.remove(2)
# p bst