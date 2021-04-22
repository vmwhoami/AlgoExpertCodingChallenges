 
def exist(board, word)
  size = word.length
  word = word.split('')
  l = word.shift
 i = 0
 indeces = []
  while i < board.length
    arr = board[i]
    arr.each_with_index do |letter,index|
      if l == letter
        last = indeces[-1]
        indeces << [index]
        l = word.shift
      end
    end
    i+=1
  end
  # return false if indeces.length != size
  l
end

board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
word = "ABCCED"
# => true
# board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
# word = "SEE"
# => true
# board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
#  word = "ABCB"
 # => false
p exist(board, word)