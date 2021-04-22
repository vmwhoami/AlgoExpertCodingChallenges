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

  deleteEdge(v1, v2) {
    let index1 = this.adjacency[v1].indexOf(v2)
    this.adjacency[v1].splice(index1, 1)
    let index2 = this.adjacency[v2].indexOf(v1)
    this.adjacency[v2].splice(index2, 1)
  }

  deleteVertex(v) {

  }
}

const g = new Graph
g.addVertex("Tokyo")
g.addVertex("Vancouver")
g.addVertex("Tokyo")
g.addEdge("Tokyo", "Kairo")
g.addEdge("Brussells", "Chisinau")
g.addEdge("Madagascar", "Chisinau")
let indx = g.deleteEdge("Chisinau", "Madagascar")
console.log(indx);
console.log(g);