#Bubble Sort
def bubble_sort(array)
 return array if array.length <= 1
 swap = true
 while swap
  swap = false
  (array.length-1).times do |i|
    if array[i] > array[i+1]
      array[i], array[i+1] = array[i+1],array[i]
      swap = true #If we arr[i]> arr[i+1] swap is true
    end
  end
 end
 array
end
 

def find_median(arr)
  #split array in half
  med = arr.size/2
 sorted = bubble_sort(arr)
 sorted[med]
end

# p find_median([0, 1, 2, 4, 6, 5, 3])

p bubble_sort([0, 1, 2, 4, 6, 5, 3])