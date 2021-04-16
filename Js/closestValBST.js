class BST {
  constructor(value) {
    this.value = value
    this.left = null
    this.right = null
  }

  insert(value) {
    let current = this
    while (true) {
      if (current.value > value) {
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

  bstfromArray(arr) {
    arr.forEach(num => {
      this.insert(num)
    });
  }

  closestVal(target) {
    let closest = this.value
    let current = this
    while (current !== null) {
      if (Math.abs(target - closest) > (Math.abs(target - current.value))) {
        closest = current.value
      }
      if (target < current.value) {
        current = current.left
      } else if (target > current.value) {
        current = current.right
      } else {
        break
      }
    }
    return closest

  }

}

const bst = new BST(10)
bst.bstfromArray([5, 5, 2, 1, 15, 13, 22])
let closest = bst.closestVal(20)
console.log(closest);
// console.log(bst);