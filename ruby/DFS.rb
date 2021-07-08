class Node
  attr_accessor :value, :left, :right, :name
  def initialize(options={})
    @value = options[:value]
    @name = options[:name]
  end
end

 