def divisibleSumPairs(n, k, ar)
  a = 0
 for i in (0...n)
  for j in (i+1...n)
    a+=1 if (ar[i]+ar[j])%k == 0 
  end
 end
 a 
end


p divisibleSumPairs(6, 3,[1, 3, 2, 6, 1, 2])
#=> 5