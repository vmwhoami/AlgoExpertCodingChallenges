const equalizeArray = (arr) => {
  const h = {}
  arr.forEach(el => {
    h[el] = (h[el] || 0) + 1
  });
  let a = Object.values(h)
  return arr.length - Math.max(...a)
}

const result = equalizeArray([1, 2, 3, 1, 2, 3, 3, 3])
console.log(result);