require 'pry'

class GoL

  # def create_empty_board(n)
  #   board_array = []
  #   n.times do |a|
  #     board_array << Array.new(n, ' . ')
  #   end
  #   board_array
  # end

  # def display_board(board_array)
  #   result_array=[]
  #   board_array.map{|a| result_array << a.join('')}
  #   result_array.join("\n")
  # end

  # def create_occupied_cell_array(brd)
  #   result_array = []
  #   brd.each_with_index do |a, x|
  #     a.each_with_index do |b, y|
  #       if b == ' X '
  #         result_array << [x,y]
  #       end
  #     end
  #   end
  #   result_array
  # end


  def create_random_board(n)
    result_array = temp_arr = []
    n.times do |a|
      temp_arr=[]
      n.times do |b|
        if rand(10) > 7
          temp_arr << ' X '
        else
          temp_arr << ' . '
        end
      end
      result_array << temp_arr.join('')
    end
    str = result_array.join("\n")
  end

  # create surround array
  # count live cells in that array
  # kill or keep center cell
  # if keep find if birth new cell with other cells

  # def remove_dead_cells(rand_brd, occupied_cell_arr)
  #   return_board = []
  #   occupied_cell_arr.each do |a|
  #     col = a[0]
  #     row = a[1]
  #     surr_cells = []
  #     if col > 0 && row > 0 then surr_cells << rand_brd[col-1][row-1] end
  #     if col > 0 then surr_cells << rand_brd[col-1][row] end
  #     if col > 0 && row < 19 then surr_cells << rand_brd[col-1][row+1] end
  #     if row > 0 then surr_cells << rand_brd[col][row-1] end
  #     if row < 19 then surr_cells << rand_brd[col][row+1] end
  #     if col < 19 && row > 0 then surr_cells << rand_brd[col+1][row-1] end
  #     if col < 19 then surr_cells << rand_brd[col+1][row] end
  #     if col < 19 && row < 19 then surr_cells << rand_brd[col+1][row+1] end

  #     cc = surr_cells.count(' . ') # cc is cell count
  #     if cc > 3 || cc < 2
  #       rand_brd[col][row] += ' . ' # finish?
  #     end
  #   end
  #   return_board
  # end

  def reproduce_new_cells(rand_brd, occupied_cells_arr)
  end

  def run_game
    loop do
      puts create_random_board(5)

      puts
      puts
      sleep(1)
    end
  end

end

gol = GoL.new
gol.run_game
