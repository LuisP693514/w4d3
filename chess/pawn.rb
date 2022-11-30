require_relative 'piece'

class Pawn < Piece

  def symbol
    '♟'.colorize(color)
  end

  def moves
    all_moves = []
    row, col = @pos

    all_moves << [row + forward_steps, col]
  end

  private


  def forward_dir
    return color == :white ? 1 : -1
  end

  def forward_steps
    if self.at_start_row? 
      steps = 2
      return self.forward_dir * steps
    else
      steps = 1
      return self.forward_dir * steps
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