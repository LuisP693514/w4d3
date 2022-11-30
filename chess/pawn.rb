require_relative 'piece'

class Pawn < Piece

  def symbol
    '♟'.colorize(color)
  end

  def moves
    row, col = @pos
    if @pos[0] == 1
       #move two spaces
       return [[row+1,col],[row+2,col]]
    elsif @pos[0] == 6
      return [[row-1,col],[row-2,col]]
    else
      return @color == :white ? [[row+1,col]] : [[row-1,col]]
    end
  end

  private
  
  def side_attacks
    
  end

end