# frozen_string_literal: true

require 'spec_helper'

describe ChessBoard do
  describe 'initialize' do
    let(:chess_board) { ChessBoard.new }

    it 'setup for the game' do
      expect(chess_board.player1.color).to be :white
      expect(chess_board.player2.color).to be :black
      for row in 0..1
        for col in 0..7
          expect(chess_board.board.spots[row][col].color).to eq :white
        end
      end

      for row in 6..7
        for col in 0..7
          expect(chess_board.board.spots[row][col].color).to eq :black
        end
      end
    end
  end
end