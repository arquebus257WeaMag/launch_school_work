class TTT

  INITIAL_MARKER = ' '
  PLAYER_MARKER = 'X'
  COMPUTER_MARKER = 'O'

  def prompt(msg)
    puts "=> #{msg}"
  end

  def display_board(brd)
    system 'clear'
    puts ""
    puts "     |     |"
    puts "  #{brd[0]}  |  #{brd[1]}  |  #{brd[2]}"
    puts "     |     |"
    puts "-----|-----|-----"
    puts "     |     |"
    puts "  #{brd[3]}  |  #{brd[4]}  |  #{brd[5]}"
    puts "     |     |"
    puts "-----|-----|-----"
    puts "     |     |"
    puts "  #{brd[6]}  |  #{brd[7]}  |  #{brd[8]}"
    puts "     |     |"
    puts ""
  end

  def joinor (arr, a=', ', b='or')
    one_up = arr.map{|a|a+1}
    one_up[0..-2].join(a) + " #{b} #{one_up[-1]}"
  end

  def initialize_board
    new_board = Array.new(9, INITIAL_MARKER)
  end

  def empty_squares(brd)
    result = []
    brd.each_with_index do |v,i|
      if v == INITIAL_MARKER
        result << i
      end
    end
    result
  end

  def player_places_piece!(brd)
    square = ''
    loop do
      print "=> Choose a square (#{joinor(empty_squares(brd))}): "
      square = gets.chomp.to_i - 1
      break if empty_squares(brd).include?(square)
      prompt "Sorry, thats not a valid choice."
    end
    brd[square] = PLAYER_MARKER
  end

  def computer_places_piece!(brd)
    square = empty_squares(brd).sample

    if empty_squares(brd).include?(4)
      brd[4] = COMPUTER_MARKER
      return
    end

    if z = computer_ai(brd)
      p "hi there #{$z}"
      brd[z] = COMPUTER_MARKER
      return
    end

    brd[square] = COMPUTER_MARKER
  end

  def board_full?(brd)
    empty_squares(brd).empty?
  end

  def someone_won?(brd)
    !!detect_winner(brd)
  end

  def detect_winner(brd)
    winning_lines = [[0,1,2],[3,4,5],[6,7,8]] +
      [[0,3,6],[1,4,7],[2,5,8]] +
      [[0,4,8],[2,4,6]]

    winning_lines.each do |line|
      if brd[line[0]] == PLAYER_MARKER &&
          brd[line[1]] == PLAYER_MARKER &&
          brd[line[2]] == PLAYER_MARKER
        return 'Player'
      elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
        return 'Computer'
      end
    end
    nil
  end

  def computer_ai(brd)
    line_groups = [[0,1,2],[3,4,5],[6,7,8]] +
      [[0,3,6],[1,4,7],[2,5,8]] +
      [[0,4,8],[2,4,6]]

    line_groups.each do |line|
      $ha = [brd[line[0]], brd[line[1]], brd[line[2]]].index(INITIAL_MARKER)
      x = [brd[line[0]], brd[line[1]], brd[line[2]]]
      if (x.include?(INITIAL_MARKER) &&
        x.count(COMPUTER_MARKER) == 2)
        a[x.index(INITIAL_MARKER)]
        return
      end
    end
    false
  end


  def game_loop
    loop do
      board = initialize_board
      player_score = computer_score = 0

      loop do

        display_board(board)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end

      display_board(board)

      if someone_won?(board)
        prompt "#{detect_winner(board)} won!"
      else
        prompt "Its a tie!"
      end

      print "=> Play again? (y or n): "
      answer = gets.chomp
      break unless answer.downcase.start_with?('y')
    end

    prompt "Thanks for playing Tic Tac Toe!"
  end

end

ttt = TTT.new
ttt.game_loop
