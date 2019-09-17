# frozen_string_literal: true

class Rook < Piece
  def valid_to?(to_row, to_col)
    return false unless super(to_row, to_col)

    return true if row == to_row || col == to_col

    false
  end
end