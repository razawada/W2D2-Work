require_relative 'piece'
require_relative 'board'



class Pawn < Piece
  attr_accessor :color, :board, :position_arr

  def initialize(color, board, position_arr)
    @color = color
    @board = board
    @position_arr = position_arr
  end

end
