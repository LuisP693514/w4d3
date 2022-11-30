require_relative 'piece'

class Pawn < Piece

  def symbol
    '♟'.colorize(color)
  end

  def moves
    all_moves = []

    all_moves.concat(forward_steps)
  
  end

  private


  def forward_dir
    return color == :white ? 1 : -1
  end

  def forward_steps
    row, col = @pos

    if self.at_start_row? 
      return [[row + self.forward_dir, col], [row + self.forward_dir * 2, col]]
    else
      return [[row + self.forward_dir, col]]
    end
  end

  def at_start_row?
    [1,6].include?(@pos[0])
  end
  
  # TODO: refactor it
  def side_attacks
    row, col = @pos
    if @board[[row + 1, col + 1]].color != self.color && color == :white
      
    end
  end

end