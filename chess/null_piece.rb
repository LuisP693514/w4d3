require_relative 'piece'
require 'singleton'

class NullPiece < Piece

  include Singleton

  attr_reader :symbol

  def initialize
    @color = :yellow # TODO: change color
    @symbol = '🔲'

  end

  def inspect
    'Null'
  end
  
end