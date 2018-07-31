require_relative 'piece'



class King < Piece

  def initialize(color, board, position_arr)
    @color = color
    @board = board
    @position_arr = position_arr
  end
end
