require_relative "board"
require_relative "cursor"
require "colorize"
require_relative "piece"
require_relative "nullpiece"
require_relative "display"
require_relative "pawn"
require_relative "rook"
require_relative "knight"
require_relative "bishop"
require_relative "king"
require_relative "queen"
#output an 8x8 series, Xs for now, potentially
#take a board state and to
#output string "X" wherever there's a space at all
class Display

  attr_accessor :game, :board, :rows, :piece, :pawn, :rook, :king, :queen, :bishop, :knight
  attr_reader :cursor, :sentinel

  def initialize(board)
    @board = board
    @cursor = cursor
  end

#can make simpler (below)
  def render
    @board.rows.each_with_index do |row, i|
      row.each_with_index do |tile, j|
        if i == 0 || i == 7
          if j == 0 || j == 7
            print " R "
          elsif j == 1 || j == 6
            print " Kn"
          elsif j == 2 || j == 5
            print " B "
          else
            print " T "
          end
        elsif i == 1 || i == 6
          print " p "
        else
          print " X ".colorize(:blue)
        end
      end
      puts
    end
    return nil
  end

    # @board.rows.each do |row|
    #   row.each do |piece|
    #     if piece.class == NullPiece
    #       print "X".colorize(:blue)
    #     else
    #       print "P"#piece.to_s #will need to define to_s
    #     end
    #   end
    #   puts
    # end
    # return nil
  # end


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
