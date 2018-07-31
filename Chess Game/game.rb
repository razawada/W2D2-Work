require_relative "board"
require_relative "display"

class Game

  attr_accessor :board
  attr_accessor :display
  attr_reader :cursor

  def initialize(board, display, players_hash, current_player)
    @board = board
    @display = display.board
    @player_hash = Hash.new {}
    @current_player = 
    # @player1 = player1
    # @player2 = player2
  end


end
