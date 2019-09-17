# frozen_string_literal: true

require 'spec_helper'

describe Player do
  describe 'initialize' do
    let(:player) { Player.new(color: color) }

    context 'when color is white' do
      let(:color) { :white }

      it 'setup pieces for player1' do
        expect(player.pieces.size).to eq 16

        for i in 0..7
          expect(player.pieces[i].is_a?(Pawn))
          expect(player.pieces[i].row).to eq 1
        end

        expect(player.pieces[8].is_a?(Rook))
        expect(player.pieces[8].row).to eq 0
        expect(player.pieces[9].is_a?(Knight))
        expect(player.pieces[9].row).to eq 0
        expect(player.pieces[10].is_a?(Bishop))
        expect(player.pieces[10].row).to eq 0
        expect(player.pieces[11].is_a?(Queen))
        expect(player.pieces[11].row).to eq 0
        expect(player.pieces[12].is_a?(King))
        expect(player.pieces[12].row).to eq 0
        expect(player.pieces[13].is_a?(Bishop))
        expect(player.pieces[13].row).to eq 0
        expect(player.pieces[14].is_a?(Knight))
        expect(player.pieces[14].row).to eq 0
        expect(player.pieces[15].is_a?(Rook))
        expect(player.pieces[15].row).to eq 0
      end
    end

    context 'when color is black' do
      let(:color) { :black }

      it 'setup pieces for player2' do
        expect(player.pieces.size).to eq 16

        for i in 0..7
          expect(player.pieces[i].is_a?(Pawn))
          expect(player.pieces[i].row).to eq 6
        end

        expect(player.pieces[8].is_a?(Rook))
        expect(player.pieces[8].row).to eq 7
        expect(player.pieces[9].is_a?(Knight))
        expect(player.pieces[9].row).to eq 7
        expect(player.pieces[10].is_a?(Bishop))
        expect(player.pieces[10].row).to eq 7
        expect(player.pieces[11].is_a?(Queen))
        expect(player.pieces[11].row).to eq 7
        expect(player.pieces[12].is_a?(King))
        expect(player.pieces[12].row).to eq 7
        expect(player.pieces[13].is_a?(Bishop))
        expect(player.pieces[13].row).to eq 7
        expect(player.pieces[14].is_a?(Knight))
        expect(player.pieces[14].row).to eq 7
        expect(player.pieces[15].is_a?(Rook))
        expect(player.pieces[15].row).to eq 7
      end
    end
  end
end