const binarySearch = (arr, val) => {
  let start = 0;
  let end = arr.length - 1
  let middle = Math.floor((start + end) / 2)
  while (arr[middle] !== val) {
    if (arr[middle] > val) {
      start = middle + 1
    } else {
      end = middle - 1
    }
    middle = Math.floor((start + end) / 2)
    if (start > end) return -1
  }
  return [arr[middle], middle]
}

const result = binarySearch([2, 3, 5, 7, 14, 20, 22], 7)
console.log(result);


// [2, 3, 5, 7, 14, 20, 22]

// S         M           E