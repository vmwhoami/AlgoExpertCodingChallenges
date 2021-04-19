class BinaryTree {
  constructor(value) {
    this.value = value
    this.left = null
    this.right = null
  }

  insert(value) {
    let current = this
    while (true) {
      if (value < current.value) {
        if (current.left === null) {
          current.left = new BinaryTree(value)
          break
        } else {
          current = current.left
        }
      } else {
        if (current.right === null) {
          current.right = new BinaryTree(value)
          break
        } else {
          current = current.right
        }
      }
    }
  }

  branchSumHelper(tree, initial, sumlist) {
    if (tree === null) {
      return
    }
    initial = initial + tree.value
    if (tree.left === null && tree.right === null) {
      sumlist.push(initial)
    }
    this.branchSumHelper(tree.left, initial, sumlist)
    this.branchSumHelper(tree.right, initial, sumlist)
  }

  branchSum() {
    const sumlist = []
    const tree = this
    this.branchSumHelper(tree, 0, sumlist)
    return sumlist
  }
}

const tree = new BinaryTree(10)
tree.insert(2)
tree.insert(3)
tree.insert(5)
tree.insert(11)
tree.insert(12)
const sum = tree.branchSum()
console.log(sum);
console.log(tree);