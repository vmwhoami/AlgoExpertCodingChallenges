class Graph {
  constructor() {
    this.adjacency = {}
  }
  addVertex(v) {
    if (!this.adjacency[v]) this.adjacency[v] = []
  }

  addEdge(v1, v2) {
    if (!this.adjacency[v1]) {
      this.addVertex(v1)
      this.adjacency[v1].push(v2)
    } else {
      this.adjacency[v1].push(v2)
    }
    if (!this.adjacency[v2]) {
      this.addVertex(v2)
      this.adjacency[v2].push(v1)
    } else {
      this.adjacency[v2].push(v1)
    }
  }

}

const g = new Graph
g.addVertex("Tokyo")
g.addVertex("Vancouver")
g.addVertex("Tokyo")
g.addEdge("Tokyo", "Kairo")
g.addEdge("Brussells", "Chisinau")
g.addEdge("Madagascar", "Chisinau")

console.log(g);