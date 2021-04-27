def libraryFine(d1, m1, y1, d2, m2, y2)
  # Write your code here
  return 10000 if y1 > y2   
  return 0 if y1 < y2
  return 0 if m1 <  m2 
  return ((m2-m1)*500).abs if m1 >  m2 
  return 0 if d1 <  d2 
  return ((d2-d1)*15).abs  if d2 < d1 
  return 0
end

# p libraryFine(6, 6, 2015,9, 6, 2016)
# # #=> 0
# p libraryFine(2, 7, 2014,5, 7, 2014)
# # #=> 0
# p libraryFine(2, 7, 1014, 1, 1, 1015)
# # #=> 0
# p libraryFine(28, 2, 2015,15, 4, 2015)
# #=> 0
# # 1 return dates 2 due dates
# p libraryFine(15, 7, 2014,1, 7, 2015)

# p libraryFine(14, 7, 2018,5, 7, 2018)

p libraryFine(5, 5, 2014,23, 2, 2014)

p libraryFine(1, 1, 2000,1, 1, 2000)

#=>1500