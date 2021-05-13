const staircase = n => {
  let i = 1
  let v = n
  let h = '#'
  let space = ' '
  while (i <= n) {
    v -= 1
    console.log((space.repeat(v)) + h.repeat(i));
    i += 1
  }
}

staircase(10)