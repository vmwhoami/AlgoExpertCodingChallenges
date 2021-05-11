def equalizeArray(arr)
   h = {}

   arr.each do |el|
    h[el] = (h[el]||0)+1
   end
val =  h.max_by{|k,v| v}
arr.size - val[1] 
end

p equalizeArray([1, 2, 3, 1, 2, 3, 3, 3])
