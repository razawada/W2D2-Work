require_relative "piece"
require "singleton"

class NullPiece < Piece
  include Singleton

  def initialize
    @value = value
  end

  def value
    @value
  end
end
