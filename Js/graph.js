class Graph {
  constructor() {
    this.adjacency = {}
  }
  addVertex(v) {
    this.adjacency[v] = []
  }

  addEdge(v1, v2) {
    if (this.adjacency[v1] === undefined) {
      this.addVertex(v1)
    }
    if (this.adjacency[v2] === undefined) {
      this.addVertex(v2)
    }
    this.adjacency[v1].push(v2)
    this.adjacency[v2].push(v1)
  }
  DFSRecursive(start) {
    const result = []
    const visited = {}
    this.DFShelper(start, visited, result)
    return result
  }

  DFShelper(vertex, visited, result) {
    if (!vertex) return null;
    visited[vertex] = true;
    result.push(vertex)
    this.adjacency[vertex].forEach(el => {
      if (!visited[el]) {
        return this.DFShelper(el, visited, result)
      }
    });
  }

  DFSIterative(v) {
    const stack = []
    const visited = {}
    const result = []
    stack.push(v)
    while (stack.length > 0) {
      let vertex = stack.pop()
      if (!visited[vertex]) {
        visited[vertex] = true
        result.push(vertex)
        this.adjacency[vertex].reverse().forEach(el => {
          stack.push(el)
        })
      }
    }
    return result
  }
  BFSIterative(v) {
    const qeue = []
    const visited = {}
    const result = []

    let vertex
    qeue.push(v)
    while (qeue.length) {
      vertex = qeue.shift()
      if (!visited[vertex]) {
        visited[vertex] = true
        result.push(vertex)
        this.adjacency[vertex].reverse().forEach(el => {
          qeue.push(el)
        })
      }
    }
    return result
  }

}

const g = new Graph
g.addVertex("A")
g.addVertex("B")
g.addVertex("C")
g.addVertex("D")
g.addVertex("F")

g.addEdge("A", "B")
g.addEdge("A", "C")
g.addEdge("B", "D")
g.addEdge("C", "E")
g.addEdge("D", "E")
g.addEdge("D", "F")
g.addEdge("E", "F")

let a = g.DFSRecursive("A")
let b = g.DFSIterative("A")
let c = g.BFSIterative("A")
console.log(a);
console.log(b);
console.log(c);