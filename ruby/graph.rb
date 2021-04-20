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
  

end

g = Graph.new
g.add_vertex("Tokyo")
g.add_edge("Tokyo","New York")
g.add_edge("Kairo","Chisinau")
p g