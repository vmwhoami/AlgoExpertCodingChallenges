const validSubsequence = (arr, subseq) => {
  let newArr = []
  subseq.forEach(num => {
    if (!arr.indexOf(num)) return false;
    if (arr.indexOf(num)) {
      newArr.push(arr.indexOf(num))
    }
  });
  let a = newArr.sort((a, b) => a - b)
  let res = a.every((num, indx) => {
    return arr[num] === subseq[indx]
  })
  return res
}
const validSubsequence = (arr, subseq) => {
  let arrp = 0
  let subsp = 0
  while (arrp < arr.length && subsp < subseq.length) {
    if (arr[arrp] === subseq[subsp]) {
      subsp += 1
    }
    arrp += 1
  }
  return subsp === subseq.length
}

const validSubsequence = (arr, subseq) => {
  let subsp = 0
  for (let i = 0; i < arr.length; i++) {
    const num = arr[i];
    if (subsp === subseq.length) break;
    if (subseq[subsp] === num) {
      subsp += 1
    }
  }
  return subsp === subseq.length
}


let result = validSubsequence([5, 1, 22, 25, 6, -1, 8, 10], [1, 6, -1, 10])
console.log(result);