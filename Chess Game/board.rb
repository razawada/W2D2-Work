require_relative "piece"
require_relative "nullpiece"
require_relative "display"
require_relative "pawn"
require_relative "rook"
require_relative "knight"
require_relative "bishop"
require_relative "king"
require_relative "queen"

class Board

  attr_accessor :game, :display, :rows, :render, :build
  attr_reader :cursor, :sentinel

  def initialize
    @sentinel = NullPiece.instance
    @rows = Array.new(8) {Array.new(8, @sentinel)} #el )}
#use an instance
    # build
  end

  def build
    @rows.each_with_index do |row, i|
      if i == 0 || i == 7  #rows for the non-Pawn pieces
        row.each_with_index do |tile, j|
          if ((i == 0 || i == 7) && (j == 0 || j == 7))
            self[i, j] = Rook.new#("black", self, [i, j])
          elsif ((i == 0 || i == 7) && (j == 1 || j == 6))
            self[i, j] = Knight.new
          elsif ((i == 0 || i == 7) && (j == 2 || j == 5))
            self[i, j] = Bishop.new
          elsif ((i == 0 && j == 3) || (i == 7 && j == 4)) #king spaces
            self[i, j] = King.new
          elsif ((i == 0 && j == 4) || (i == 7 && j == 3)) #queen spaces
            self[i, j] = Queen.new
          end
        end
      elsif (i == 1 || i == 6)  #rows for pawns
        row.each_with_index do |tile, j|
          self[i, j] = Pawn.new
        end
      end
    end
    self
  end

  def [](x, y)
    @rows[x][y]
  end

  def []=(x, y, value)
    @rows[x][y] = value
  end

  #Proper calling
  # board = Board.new
  #board.[](2, 0) # returns the bottom-left square
  #board.[]=(0, 1, "X") # sets the top-middle square to "X"

  def move_piece(start_pos, end_pos)
    raise ArgumentError "There is no piece here!" if self[start_pos] = @sentinel

  end

  def move_piece(start_pos, end_pos)
    if @rows[start_pos].class == NullPiece
      raise "There is no piece there, you fool!"
    elsif Piece.color
      # if the piece at the end position is the same color as your piece, this is not a valid move :(

    end
  end

  def valid_pos?(pos)
  end
end
