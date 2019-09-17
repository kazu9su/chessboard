# frozen_string_literal: true

require 'spec_helper'

describe Board do
  describe 'initialize' do
    let(:board) { Board.new }

    it 'setup 8×8 spots' do
      expect(board.spots.size).to eq 8
      expect(board.spots[0].size).to eq 8
    end
  end
end