function twoNumSum(arr, target) {
  for (let i = 0; i < arr.length - 1; i++) {
    const x = arr[i];
    for (let j = i + 1; j < arr.length; j++) {
      const y = arr[j];
      if (x + y === target) {
        return [x, y]
      }
    }
  }
  return []
}

function twoNumSum(arr, target) {
  const h = {}
  for (let i = 0; i < arr.length; i++) {
    const x = arr[i];
    if ((target - x) in h) {
      return [target - x, x]
    } else {
      h[x] = true
    }
  }
  return []
}
function twoNumSum(arr, target) {
  arr = arr.sort((a, b) => a - b)
  let left = 0;
  let right = arr.length - 1
  while (left < right) {
    if (arr[left] + arr[right] === target) {
      return [arr[left], arr[right]]
    } else if (arr[left] + arr[right] < target) {
      left += 1
    }
    else if (arr[left] + arr[right] > target) {
      right -= 1
    }
  }
  return []
}


const result = twoNumSum([3, 5, -4, 8, 11, 1, -1, 6], 10)
console.log(result);