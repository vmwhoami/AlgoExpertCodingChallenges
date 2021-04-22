class Graph
  attr_accessor :adjacency
  def initialize
    @adjacency = {}
  end

  def add_vertex(v)
    @adjacency[v] = [] if !@adjacency[v]
  end
  
  def add_edge(vertex1,vertex2)
    if !@adjacency[vertex1] 
      self.add_vertex(vertex1) 
      @adjacency[vertex1] << vertex2
    else 
      @adjacency[vertex1] << vertex2
    end
 
    if !@adjacency[vertex2] 
      self.add_vertex(vertex2) 
      @adjacency[vertex2] << vertex1
    else
      @adjacency[vertex2] << vertex1
    end
  end
  
  def delete_edge(v1,v2)
    @adjacency[v1] = @adjacency[v1].filter{|v| v != v1 }
  end

  def delete_vertex(v)
    @adjacency.delete(v)
    @adjacency.each do |key,val| 
      val.delete_at(val.find_index(v))
    end
  end

end

g = Graph.new
g.add_vertex("Tokyo")
g.add_edge("Tokyo","New York")
g.add_edge("Tokyo","Kuala Lumpur")
# g.add_edge("Kuala Lumpur","Rio de Janeiro")
# g.add_edge("Brussells","Tokyo")
# g.add_edge("Tokyo","Brussells")
# g.add_edge("Brussells","New York")
# g.delete_edge("Tokyo","Kuala Lumpur")
g.delete_vertex("Tokyo")
p g