def exist(board, word)
 for i in (0...board.length) do
   for j in (0...board[0].length) do
    if board[i][j] == word[0] && dfs(board,i,j,0,word)
      return true
    end
   end
 end
 false
end

def dfs(board,i,j,count,word)
  return true if count == word.length # Base case 
 return false if i < 0 || i >= board.length || 
  j < 0 || j >= board[i].length || 
  board[i][j] != word[count]
  temp = board[i][j] 
  board[i][j] = ''  #What does this thing do
  found = dfs(board,i+1,j,count+1,word)||
  dfs(board,i-1,j,count+1,word)||
  dfs(board,i,j+1,count+1,word)||
  dfs(board,i,j-1,count+1,word)
  board[i][j] = temp
  return found
end


# board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
# word = "ABCCED"
# => true
# board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
# word = "SEE"
# => true
board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]]
 word = "ABCB"
 # => false
p exist(board, word)