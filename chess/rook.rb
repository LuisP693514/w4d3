require_relative 'piece'
require_relative 'slidable'
class Rook < Piece
  include Slidable

  # NOTE: not implemented properly
  def symbol
    '♖'.colorize(color)
  end

  def move_dirs
    self.horizontal_dirs
  end

end