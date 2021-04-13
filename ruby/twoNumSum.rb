###### O(n^2) | O(1) space #########

# def twoNumSum(arr,target)
#  for i in (0..arr.length-1)
#   first = arr[i]
#   for j in (i+1..arr.length-1)
#    second= arr[j]
#   return [first,second] if first+second == target
#   end
#  end
#  return []
# end
##### O(n) time | O(n) space ######
# def twoNumSum(arr,target)
# h = {}
# arr.each do |num|
#   if h.key?(target-num)
#     return [target-num,num]
#   else
#     h[num]=0
#   end
# end
#  return []
# end

def twoNumSum(arr,target)
 arr=arr.sort
  left = 0
  right = arr.length - 1
end
p twoNumSum([3,5,-4,8,11,1,-1,6],10)