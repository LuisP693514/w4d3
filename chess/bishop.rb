require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slidable

    def symbol
      '♗'
    end

    def move_dirs

      self.diagonal_dirs

    end
  
end