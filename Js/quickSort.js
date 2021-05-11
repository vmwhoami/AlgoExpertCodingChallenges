const quicksort = (arr) => {
  quickHelper(arr, 0, arr.length - 1)
  return arr
}

const quickHelper = (arr, start, end) => {
  if (start >= end) return;
  let pivot = start
  let left = start + 1
  let right = end
  while (start <= end) {
    if (arr[left] > arr[pivot] && arr[right] < arr[pivot]) {
      swap(arr, left, right)
    }
    if (arr[left] <= arr[pivot]) {
      left += 1
    }
    if (arr[right] >= arr[pivot]) {
      right -= 1
    }
  }
  swap(arr, pivot, right)

  quickHelper(arr, right + 1, end)

  quickHelper(arr, start, right - 1)
}

const swap = (arr, i, j) => {
  [arr[i], arr[j]] = [arr[j], arr[i]]
}


let s = quicksort([2, 3, 1, 9, 6, 2, 8])
console.log(s);