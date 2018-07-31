require_relative "piece"
require_relative "nullpiece"
require_relative "display"

class Board

  attr_accessor :game, :display, :rows, :render
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
          self[i, j] = Piece.new #replace with piece instances, then non-Pawn pieces
        end
      elsif (i == 1 || i == 6)  #rows for pawns
        row.each_with_index do |tile, j|
          self[i, j] = Piece.new #replace with piece instances, then pawns.
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
    if self[end_pos] = @sentinel
    end 


  end

  def move_piece(start_pos, end_pos)
    if @rows[start_pos].class == NullPiece
      raise "There is no piece there, you fool!"
    elsif Piece.color
      # if the piece at the end position is the same color as your piece, this is not a valid move :(

    end

    if valid_pos?(end_pos)
      @rows[start_pos] = NullPiece.new
      @rows[end_pos] = nil #piece in question
      #execute the rest
    end
  end

  def valid_pos?(pos)
  end
end
