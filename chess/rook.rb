require_relative 'piece'
class Rook < Piece

  # NOTE: not implemented properly
  def symbol
    '♖'
  end

  def move_dirs
    [[-1,0],
      [0,1],
      [1,0],
      [0,-1]
    ]
  end

end