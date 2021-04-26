const license_key_formatting = (s, k) => {
  const raw = s.replace(/-/g, '').toUpperCase();
  let length = raw.length
  let chunks = [];
  while (length > 0) {
    chunks.push(raw.substring(length - k, length));
    length -= k;
  }
  return chunks.reverse().join('-');
}

s = "2-5g-3-J"
k = 2
//  "2-5G-3J"
const result = license_key_formatting(s, k)
console.log(result);