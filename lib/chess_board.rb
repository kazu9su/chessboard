# frozen_string_literal: true

class ChessBoard
  attr_accessor :player1, :player2, :board

  def initialize
    @player1 = Player.new(color: :white)
    @player2 = Player.new(color: :black)
    @board = Board.new
    @player1.pieces.each do |piece|
      @board.spots[piece.row][piece.col] = piece
    end

    @player2.pieces.each do |piece|
      @board.spots[piece.row][piece.col] = piece
    end
  end
end
