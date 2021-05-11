def quicksort(arr)
  quick_helper(arr,0,arr.size-1)
  arr
end


def quick_helper(arr,s,e)
 return if s >= e
 pivot = s
 left = s+1
 right = e
  while left <= right
    swap(arr,left,right)  if arr[left] > arr[pivot] && arr[right] < arr[pivot]
    left+=1  if arr[left]<=arr[pivot]    
    right-=1 if arr[right]>=arr[pivot] 
  end
  swap(arr,pivot,right)#We swap the left most element with right
  is_small_rray = right-1-s > left+(right+1)
  quick_helper(arr,right+1,e)
  quick_helper(arr,s,right-1)
end

def swap(arr,l,r)
  arr[l],arr[r] = arr[r],arr[l]
end

 
p quicksort([8,12,14,5,2,9,5,6,3])