def insertion_sort(arr)
  for i in (1...arr.size) do
    j = i
    while arr[j] < arr[j-1] && j > 0
      arr[j], arr[j-1] =  arr[j-1], arr[j]
      j-=1
    end
    puts arr.join(' ')
  end
end 



insertion_sort([1, 4, 3, 5, 6, 2])