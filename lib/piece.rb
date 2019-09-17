# frozen_string_literal: true

class Piece
  attr_accessor :color, :available, :row, :col

  def initialize(color:, available:, row:, col:)
    @color = color
    @available = available

    throw StandardError.new("#{row} or #{col} is invalid") if (beyond_board?(row) || beyond_board?(col))

    @row = row
    @col = col
  end

  def valid_to?(to_row, to_col)
    return false if row == to_row && col == to_col

    if beyond_board?(to_row) || beyond_board?(to_col)
      return false
    end

    true
  end

  private

  def beyond_board?(position)
    position < 0 || position > 8
  end
end
