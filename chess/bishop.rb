require_relative 'piece'
require_relative 'slidable'

class Bishop < Piece

  include Slidable

    def symbol
      '♗'.colorize(color)
    end

    def move_dirs
      self.diagonal_dirs
    end
  
end