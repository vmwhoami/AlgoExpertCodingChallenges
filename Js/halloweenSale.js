function howManyGames(p, d, m, s) {
  let counter = 0
  if (p > s) return counter;
  while (s >= 0) {
    if (p <= m) break;
    if (s - p < 0) return 1;
    s -= p
    p -= d
    counter += 1
  }

  while (s >= m) {
    s -= m
    counter += 1
  }

  return counter
}

const result1 = howManyGames(20, 3, 6, 85)
const result2 = howManyGames(100, 19, 1, 180)
console.log(result1);
console.log(result2);
