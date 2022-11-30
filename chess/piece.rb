class Piece 

  attr_reader :pos, :color

  def initialize(board, pos, symbol)
    @color = symbol
    @board = board
    @pos = pos
  end

  # NOTE: not required by instructions
  def inspect
    @pos
  end

  def moves
    []
  end

  def to_s
    # TODO: implement it
  end

  def empty?
    self.is_a?(NullPiece)
  end

  def valid_moves
    self.moves
  end

  def pos=(val)
    @pos = val
  end

  def symbol
    @color
  end

  protected

  # TODO: piece checks end point itself?
  def move_into_check?(end_pos)

  end

end