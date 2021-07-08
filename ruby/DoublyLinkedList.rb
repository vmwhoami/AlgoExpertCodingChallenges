class Node
  attr_accessor :val,:next_n,:prev
  def initialize(val)
    @val = val,
    @next_n=next_n,
    @prev=prev
  end
end

class DoubleLinkedList
  def initialize
    @head = nil,
    @tails = nil
  end

  def contains_node_with_value(value)
    node = @head
  end
  
end