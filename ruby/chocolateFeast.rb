def chocolateFeast(n,c,m)
  init = n/c
  wrappers = init
  while wrappers/m>0
     res = wrappers/m
     rest = wrappers%m
     init+=res
     wrappers=rest+res
  end
 init
end

p chocolateFeast(20373, 18211, 10188)
#=>1
p chocolateFeast(92512, 413, 33040)
# =>224
# p chocolateFeast(12, 4, 4)
# # =>3
# p chocolateFeast(6, 2, 2 )
# # =>5