#require_relative "nullpiece"
require_relative 'board'


class Piece

  attr_accessor :color, :board, :position_arr


  def initialize(color, board, position_arr)
    @color = color
    @board = board
    @position_arr = position_arr
  end

  def moves
  end
end
