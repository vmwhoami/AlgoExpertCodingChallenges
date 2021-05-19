def howManyGames(p,d,m,s)
counter = 0
return counter if p > s 
while s >= 0 #180
  break if p <= m 
  return 1 if s-p <0
  s-=p #s 80
  p-=d #p 81
  counter+=1
end
 
while s >= m 
  s-=m
  counter +=1
end
counter
end
p howManyGames(20, 3, 6, 85)
# p howManyGames(100, 19, 1, 180)