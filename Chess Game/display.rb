require_relative "board"
require_relative "cursor"
#output an 8x8 series, Xs for now, potentially
#take a board state and to
#output string "X" wherever there's a space at all
class Display

  attr_accessor :game, :board, :rows
  attr_reader :cursor, :sentinel

  def initialize(board)
    @board = board
    @cursor = cursor
  end

#can make simpler (below)
  def render
    render_arr = []

    @board.rows.each_with_index do |row, i|
      new_row_arr = []
      row.each_with_index do |tile, j|
        if i == 0 || i == 7
          new_row_arr.push("T")
        elsif i == 1 || i == 6
          new_row_arr.push("p")
        else
          new_row_arr.push("X")
        end
      end
      render_arr.push(new_row_arr)
    end
    puts render_arr
  end

  #   @board.rows.each_with_index do |row, i|
  #     if i == 0 || i == 7  #rows for the non-Pawn pieces
  #       row.each_with_index do |tile, j|
  #         self[i, j] = "T" #replace with piece instances, then non-Pawn pieces
  #       end
  #     elsif (i == 1 || i == 6)  #rows for pawns
  #       row.each_with_index do |tile, j|
  #         self[i, j] = "p" #replace with piece instances, then pawns.
  #       end
  #     else
  #       row.each_with_index do |tile, j|
  #         self[i, j] = "X"
  #       end
  #     end
  #   end
  #   puts self
  # end

  def [](x, y)
    @rows[x][y]
  end

  def []=(x, y, value)
    @rows[x][y] = value
  end
#if null, put "x"
end
