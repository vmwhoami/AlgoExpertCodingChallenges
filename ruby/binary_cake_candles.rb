def birthdayCakeCandles(candles)
  # Write your code here
count = 0
tallest = candles.max()
candles.each do |el|
 count+=1 if el == tallest
end
count
end

p birthdayCakeCandles([18, 90, 90, 13, 90, 75, 90, 8, 90, 43])
#=>5
p birthdayCakeCandles([3,2,1,3])
p birthdayCakeCandles([4,4,1,3])
