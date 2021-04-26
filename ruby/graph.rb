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

  def dfs_helper(v,result,visited)
    return if !v
    result << v
    visited[v] = true

    @adjacency[v].each do |neigbour|
      if !visited[neigbour]
        dfs_helper(neigbour,result,visited)
      end
    end
  end
  
  def dfs_recursive(v)
    result = []
    visited = {}
    self.dfs_helper(v,result,visited)
  result
  end

  def dfs_iteratively(v)
    visited = {}
    stack  = [v]
    result = []
    while !stack.empty?
      vertex = stack.pop()
      if !visited[vertex]
        visited[vertex] = true
        result << vertex
        @adjacency[vertex].reverse.each do |el|
          stack << el
        end
      end
    end
    result
  end
  
 def bfs(v)
  result = []
  visited = {}
  qeue = [v]
   while !qeue.empty?
    vertex = qeue.shift()
    if !visited[vertex]
      visited[vertex] = true
      result << vertex
      @adjacency[vertex].reverse.each do |el|
        qeue << el
      end
    end  
   end
   result
 end
 

end

g = Graph.new
g.add_vertex("A")
g.add_vertex("B")
g.add_vertex("C")
g.add_vertex("D")
g.add_vertex("F")

g.add_edge("A", "B")
g.add_edge("A", "C")
g.add_edge("B", "D")
g.add_edge("C", "E")
g.add_edge("D", "E")
g.add_edge("D", "F")
g.add_edge("E", "F")
p g.dfs_recursive("A")
p g.dfs_iteratively("A")
p g.bfs("A")
# p g