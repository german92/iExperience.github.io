def is_winner(board)
  # Check horizontally and vertically
  3.times do |i|
    # Check vertically
    return true if (board[i] + board[i+3] + board[i+6]).abs == 3
    # Check horizontally
    row = 3*i
    return true if (board[row] + board[row+1] + board[row+2]).abs == 3
  end
  # Check diagonally
  return true if (board[0] + board[4] + board[8]).abs == 3
  return true if (board[2] + board[4] + board[6]).abs == 3
  return false
end

def print_board(board)
  print "\t"
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
  else
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
      num_turns += 1
      if turn == 1 
        board[square] = 1 
      else
        board[square] = -1
      end
      print_board(board)
      if is_winner(board)
        puts "Congrats, player #{turn} won!"
        winner = true
      else
        if turn == 1 
          turn = 2 
        else 
          turn = 1
        end
      end
    else
      puts "Square already taken"
    end
  else
    puts "Invalid input"
  end
end

puts "Cats game!" if winner == 0
