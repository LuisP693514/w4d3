require 'debug'
module Slidable
  
  #TODO: Don't know what we need this for because it's implemented in each piece
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

      while true
        step_row, step_col = step_move
        row += step_row
        col += step_col
        break if legal(row, col) 
        all_moves << [row, col]
      end
    end

    # all_moves.select { |move| @board[move].is_a?(NullPiece) }
    all_moves
    # if curr possible move from all moves is NullPiece or Opposite color

  end



  private
  attr_reader :HORIZONTAL_DIRS, :DIAGONAL_DIRS

  def legal(row, col)
    (row < 0 || row > 7 || col < 0 || col > 7) || !@board[[row,col]].is_a?(NullPiece) 
  end
  HORIZONTAL_DIRS = [[-1,0],
      [0,1],
      [1,0],
      [0,-1]
    ]
  DIAGONAL_DIRS = [[-1,-1],
        [-1,1],
        [1, 1],
        [1,-1]
      ]

end