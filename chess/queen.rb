require_relative 'piece'

def Queen < Piece

  def symbol
    '♛'.colorize(color)
  end

end