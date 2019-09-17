# frozen_string_literal: true

require 'spec_helper'

describe Piece do
  describe 'valid_to?' do
    subject { Piece.new(color: :white, available: true, row: 0, col: 0).valid_to?(row, col) }
    let(:row) { 1 }
    let(:col) { 2 }

    context 'when move to a valid position' do
      it { is_expected.to be true }
    end

    context 'when move to an invalid position' do
      context 'when does not move from current position' do
        let(:row) { 0 }
        let(:col) { 0 }
        it { is_expected.to be false }
      end

      context 'when row is invalid' do
        let(:row) { -1 }

        it { is_expected.to be false }
      end

      context 'when col is invalid' do
        let(:col) { -1 }

        it { is_expected.to be false }
      end
    end
  end
end
