module Slidable
  

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs 
    DIAGONAL_DIRS
  end


  def moves
    all_moves = []


    self.move_dirs.each do |step_move|
      row, col = @pos

      until row < 0 || row > 7 || col < 0 || col > 7
        step_row, step_col = step_move
        row += step_row
        col += step_col

        all_moves << [row, col]
      end
    end

    all_moves.select { |move| @board[move].is_a?(NullPiece) }

    # if curr possible move from all moves is NullPiece or Opposite color

  end

  private

  HORIZONTAL_DIRS = []
  DIAGONAL_DIRS = []

end