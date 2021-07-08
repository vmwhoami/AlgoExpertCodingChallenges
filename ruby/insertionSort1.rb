def insertionSort1(n, arr)
  lastcopy =arr[n - 1]
  sorted = false
  last = n-1
  prev = n-2
  until sorted 
    sorted = true
    if arr[prev] > arr[last] && last >=0 && prev >-1
      arr[last] = arr[prev] 
      puts arr.join(' ')
      arr[prev] = lastcopy 
      last -= 1
      prev -= 1
      sorted = false
    end
  end
  puts arr.join(' ')
end
insertionSort1(5,[2, 4, 6, 8, 3])
insertionSort1(10, [2, 3, 4, 5, 6, 7, 8, 9, 10, 1])
# =>
# 2 4 6 8 8
# 2 4 6 6 8
# 2 4 4 6 8
# 2 3 4 6 8

# if last < 0
#   p lastcopy
#  arr[0] = lastcopy
#   sorted = true
#   return
# end
# Keep the last element to compare it if smth

# Compare the last elemetn with previous 
# if greater set new last