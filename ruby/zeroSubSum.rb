require 'set'
def zeroSubSum(arr)
  sumSet = Set.new()
  sum = 0
  arr.each do |el|
    sum+=el
    if sum == 0 || sumSet.include?(sum)
      return "yes"
    end
    sumSet.add(sum)
  end
 "no"
end

p zeroSubSum([2, 8, - 9, 1])
p zeroSubSum([2, 1, 3, 4, -9, 6, 8, 9, -100000, 123132131])
p zeroSubSum([-5, 8, 0, 4])