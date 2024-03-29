# My solution
# O(n^2) | O(n^2)
def validSubsequence(arr,subsequence)
  newarr = []
  final = []
  subsequence.each do |num|
   return false if arr.index(num).nil?
    if arr.index(num)
     newarr <<  arr.index(num)
    end
  end
  newarr.sort.each do |indx|
   final << arr[indx]
  end
  final == subsequence
end
# Time O(n) |Space: O(1)
def validSubsequence(arr,subsequence)
 subseq_pointer = 0
 arr_pointer = 0
  while subseq_pointer < subsequence.size && arr_pointer < arr.size 
    subseq_pointer+=1 if subsequence[subseq_pointer] == arr[arr_pointer]
    arr_pointer+=1
  end
  subseq_pointer == subsequence.length
end

# Time O(n) |Space: O(1)
def validSubsequence(arr,subsequence)
 subseq_pointer = 0
 for val in arr
  break if subseq_pointer == subsequence.size
  subseq_pointer +=1 if val == subsequence[subseq_pointer]
 end
 subseq_pointer == subsequence.size
end
p validSubsequence([5,1,22,25,6,-1,8,10],[1,6,-1,10])