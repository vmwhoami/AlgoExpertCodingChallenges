# Write a function that receives two 
# lists (A and B) and returns a list containing all elements in A that are not in B

def reducer(a,b)
  b.each do |el|
    a.delete(el)
  end
  a
end

# p reducer([1,3,4,5],[2])
p reducer([1,2,3,4,5,],[])
p reducer([1,2,3,4,2,5],[2,4])
#  # 1,3,5
 # 5

#  How would you define a Person model so that any Person can be assigned as the parent of another Person?

 