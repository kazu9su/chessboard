# frozen_string_literal: true

require 'spec_helper'

describe Rook do
  let(:rook) { Rook.new(color: :white, available: true, row: 0, col: 0) }

  describe 'valid_to?' do
    context 'when move to a valid position' do
      context 'when row is fixed' do
        let(:row) { 0 }

        it do
          for i in 1..7
            expect(rook.valid_to?(row, i)).to be true
          end
        end
      end

      context 'when col is fixed' do
        let(:col) { 0 }

        it do
          for i in 1..7
            expect(rook.valid_to?(i, col)).to be true
          end
        end
      end
    end

    context 'when move to an invalid position' do
      context 'when both of to_row and to_col is different from current positions invalid' do
        let(:row) { 1 }
        let(:col) { 3 }

        it { expect(rook.valid_to?(row, col)).to be false }
      end
    end
  end
end