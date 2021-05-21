const zeroSubSum = (arr) => {
  let subSet = new Set()
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i]
    if (sum === 0 || subSet.has(sum)) {
      return "Yes"
    }
    subSet.add(sum)
  }
  return "No"
}

// const result = zeroSubSum([2, 8, - 9, 1])
// => yes

const result = zeroSubSum([2, 1, 3, 4, -9, 6, 8, 9, -100000, 123132131])
// // => no
// const result = zeroSubSum([-5, 8, 0, 4])
// => yes
console.log(result);
// 4
// 2 8 -9 1
// 10
// 2 1 3 4 -9 6 8 9 -100000 123132131
// 4
// -5 8 0 4
