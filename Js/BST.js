class BST {
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
          current.left = new BST(value)
          break
        } else {
          current = current.left
        }
      } else {
        if (current.right === null) {
          current.right = new BST(value)
          break
        } else {
          current = current.right
        }
      }
    }
  }
  contains(value) {
    let current = this
    while (current !== null) {
      if (value < current.value) {
        current = current.left
      } else if (value > current.value) {
        current = current.right
      } else {
        return true
      }
    }
    return false
  }

  getMin() {
    let current = this
    while (current.left !== null) {
      current = current.left
    }
    return current.value
  }

}
const bst = new BST(3)

bst.insert(2)
bst.insert(4)
bst.insert(6)
let res = bst.contains(20)
let min = bst.getMin()
console.log(min);
console.log(bst);