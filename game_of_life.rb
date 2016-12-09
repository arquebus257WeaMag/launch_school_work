require 'pry-byebug'

class GoL

  def create_board
    board_array = []
    20.times do |a|
      board_array << Array.new(20, ' . ')
    end
    board_array
  end

  def display_board(board_array)
    display_array = []
    board_array.each{|a| display_array << a.join}
    display_string = display_array.join("\n")
    binding.pry # PRY HERE
  end

  def create_random_cells(brd) # redo using map
    result_array = []
    brd.each do |a|
      temp_arr = a.map do |b|
        if rand(10) > 7
          ' X '
        else
          ' . '
        end
      end
      result_array << temp_arr
    end
    result_array
  end

  def create_occupied_cell_array(brd)
    result_array = []
    brd.each_with_index do |a, x|
      a.each_with_index do |b, y|
        if b == ' X '
          result_array << [x,y]
        end
      end
    end
    result_array
  end

  # create surround array
  # count live cells in that array
  # kill or keep center cell
  # if keep find if birth new cell with other cells


  def remove_dead_cells(rand_brd, occupied_cell_arr)
    return_board = []
    occupied_cell_arr.each do |a|
      col = a[0]
      row = a[1]
      surr_cells = []
      if col > 0 && row > 0 then surr_cells << rand_brd[col-1][row-1] end
      if col > 0 then surr_cells << rand_brd[col-1][row] end
      if col > 0 && row < 19 then surr_cells << rand_brd[col-1][row+1] end
      if row > 0 then surr_cells << rand_brd[col][row-1] end
      if row < 19 then surr_cells << rand_brd[col][row+1] end
      if col < 19 && row > 0 then surr_cells << rand_brd[col+1][row-1] end
      if col < 19 then surr_cells << rand_brd[col+1][row] end
      if col < 19 && row < 19 then surr_cells << rand_brd[col+1][row+1] end

      cc = surr_cells.count(' . ') # cc is cell count
      if cc > 3 || cc < 2
        rand_brd[col][row] += ' . ' # finish?
      end
    end
    return_board
  end

  def reproduce_new_cells(rand_brd, occupied_cells_arr)
  end

  def run_game
    loop do
      global_board = create_random_cells(create_board)
      live_cell_array = create_occupied_cell_array(global_board)

      puts display_board(remove_dead_cells(global_board, live_cell_array))

      # puts display_board(create_random_cells(create_board))

      sleep(1)
    end
  end

end

gol = GoL.new
gol.run_game
