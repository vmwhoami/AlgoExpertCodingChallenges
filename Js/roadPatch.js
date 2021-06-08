function solution(S) {
  // write your code in JavaScript (Node.js 8.9.4)
  const array = [...S]
  const roadPatched = {}
  for (let i = 0; i < array.length; i++) {
    if (array[i] !== 'X') continue;
    if ((i - 1) in roadPatched || (i - 2) in roadPatched) continue;
    roadPatched[i] = 1
  }
  const result = Object.values(roadPatched)
    .reduce((a, b) => a + b, 0)
  return result
}



// let result = solution(".X...")

// let result = solution(".X...")
// // =>2
// console.log(result);
let result = solution("X.XXXXX.X.")
// // =>3
// let result = solution("XX.XXX")
// // =>2

// let result = solution("XXXX")
// =>2
console.log(result);