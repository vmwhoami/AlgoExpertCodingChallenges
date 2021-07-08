class Node {
  constructor(name) {
    this.children = [];
    this.name = name
  }
  addChild(node, name) {
    console.log(node);
    // node.children.push(new Node(name))
  }
}


let node = new Node("vitalie");
node.addChild(this, 'vasea')