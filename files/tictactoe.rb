def is_winner(board)
  # Check horizontally and vertically
  3.times do |i|
    # Check vertically if absolute value of sum is 3
    return true if (board[i] + board[i+3] + board[i+6]).abs == 3
    # Check horizontally
    row = 3*i
    return true if (board[row] + board[row+1] + board[row+2]).abs == 3
  end
  # Check diagonally
  return true if (board[0] + board[4] + board[8]).abs == 3
  return true if (board[2] + board[4] + board[6]).abs == 3
  # If no winner found, return false
  return false
end

def print_board(board)
  print "\t"            # print is like puts, but doesn't add a new line
  print_row(board, 0)
  puts "\t———+———+———"
  print "\t"
  print_row(board, 1)
  puts "\t———+———+———"
  print "\t"
  print_row(board, 2)
end

def print_row(board, row_num)
  row_index = 3*row_num
  print_square(board[row_index])
  print "|"
  print_square(board[row_index+1])
  print "|"
  print_square(board[row_index+2])
  print "\n"
end

def print_square(square)
  if square == 0
    print "   "
  elsif square == 1
    print " X "
  else # Should only be -1 ever
    print " O "
  end
end

winner = false
turn = 1
board = [0,0,0,0,0,0,0,0,0]
num_turns = 0
while !winner and num_turns < 9
  puts "Player #{turn}:"
  square = gets.strip.to_i
  if square != "" && square >=0 && square <=8
    if board[square] == 0
      # To find out if it's a tie game, keep track of the number of turns.
      # If there's been nine turns and no winner, then it's a draw.
      num_turns += 1
      # X's are entered as 1 and O's are -1. That way, to check for a
      # winner, we can see if the sum of a row, column, or diagonal is 3
      # or -3 (or more simply, the absolute value of the sum is 3).
      # See check_winner method.
      if turn == 1 
        board[square] = 1 
      else
        board[square] = -1
      end
      print_board(board)
      if is_winner(board)
        # The winner is just the player whose turn it is now.
        puts "Congrats, player #{turn} won!"
        # Exit the loop
        winner = true
      else
        # Switch turns
        if turn == 1 
          turn = 2 
        else 
          turn = 1
        end
      end
    else
      puts "Error: Square already taken"
    end
  else
    puts "Error: Invalid input"
  end
end

# The program will only get here if there's a winner
# or there's been nine turns. If there's no winner,
# that means its a draw.
puts "Cats game!" if !winner
