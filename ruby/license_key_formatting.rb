 # My solution 
def license_key_formatting(s, k)
  arr =  s.split("").reject{|el| el == "-"}
  s = ""
  c  = arr.length % k
  if arr.size == 1
     s+=arr[0]
    return s.upcase
  end
  if c > 0 
  s+=arr[0...c].join()+'-' 
  end
  a = []
 for i in (c...arr.size) do
 a<< arr[i]
 if a.size == k
  if i != arr.size - 1
    s+=a.join()+"-"
  else 
    s+=a.join()
  end
  a = []
 end
 end
 s.upcase
end

#Other solution

# def license_key_formatting(s, k)
#  s.delete("-").upcase.chars.reverse.each_slice(k).map{|chunk| chunk.join("")}.join("-").reverse
# end


# s = "2"
# k = 2
#=>"5F3Z-2E9W"
s = "2-5g-3-J"
k = 2
#=>"2-5G-3J"
p license_key_formatting(s, k)