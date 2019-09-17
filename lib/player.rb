# frozen_string_literal: true

class Player
  attr_accessor :color, :pieces

  PAWN_COUNT = 8

  def initialize(color:)
    @color = color
    @pieces = []

    color == :white ? set_pieces_for_player1 : set_pieces_for_player2
  end

  private

  def set_pieces_for_player1
    for i in 0..PAWN_COUNT-1
      pieces << Pawn.new(color: :white, available: true, row: 1, col: i)
    end

    pieces << Rook.new(color: :white, available: true, row: 0, col: 0)
    pieces << Knight.new(color: :white, available: true, row: 0, col: 1)
    pieces << Bishop.new(color: :white, available: true, row: 0, col: 2)
    pieces << Queen.new(color: :white, available: true, row: 0, col: 3)
    pieces << King.new(color: :white, available: true, row: 0, col: 4)
    pieces << Bishop.new(color: :white, available: true, row: 0, col: 5)
    pieces << Knight.new(color: :white, available: true, row: 0, col: 6)
    pieces << Rook.new(color: :white, available: true, row: 0, col: 7)
  end

  def set_pieces_for_player2
    for i in 0..PAWN_COUNT-1
      pieces << Pawn.new(color: :black, available: true, row: 6, col: i)
    end

    pieces << Rook.new(color: :black, available: true, row: 7, col: 0)
    pieces << Knight.new(color: :black, available: true, row: 7, col: 1)
    pieces << Bishop.new(color: :black, available: true, row: 7, col: 2)
    pieces << Queen.new(color: :black, available: true, row: 7, col: 3)
    pieces << King.new(color: :black, available: true, row: 7, col: 4)
    pieces << Bishop.new(color: :black, available: true, row: 7, col: 5)
    pieces << Knight.new(color: :black, available: true, row: 7, col: 6)
    pieces << Rook.new(color: :black, available: true, row: 7, col: 7)
  end
end
