class Piece 

  attr_reader :pos

  def initialize(board, symbol, pos)
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
    @color.to_s
  end

  def empty?
    @pos.empty?
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