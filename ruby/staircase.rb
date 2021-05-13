def staircase(n)
  i = 1
  v = n
  while i <= n
    v-=1
    puts (" "*v) + '#' * i
    i+=1
  end
end

staircase(6)