const bonAppetit = (bill, k, b) => {
  bill.splice(k, 1)
  const result = bill.reduce((a, b) => a + b, 0) / 2
  let a = result === b
  return a ? console.log("Bon Appetit") : console.log(b - result)
}

const r = bonAppetit([3, 10, 2, 9], 1, 12)

console.log(r);;