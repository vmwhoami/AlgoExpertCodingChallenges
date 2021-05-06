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
    if arr[left] > arr[pivot] && arr[right] < arr[pivot]
      swap(arr,left,right)
    end
    if arr[left]<=arr[pivot] 
      left+=1
    end
    if arr[right]>=arr[pivot] 
      right-=1
    end
  end
  swap(arr,pivot,right)#We swap the left indx with 
 
  quick_helper(arr,right+1,e)
  quick_helper(arr,s,right-1)


end

def swap(arr,l,r)
  arr[l],arr[r] = arr[r],arr[l]
end

 
p quicksort([8,5,2,9,5,6,3])