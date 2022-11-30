require_relative 'piece'

class Bishop < Piece

    def symbol
      '♗'
    end

    def move_dirs

      [[-1,-1],
        [-1,1],
        [1, 1],
        [1,-1]
      ]

    end
  
end