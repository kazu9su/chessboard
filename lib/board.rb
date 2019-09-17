# frozen_string_literal: true

class Board
  attr_accessor :spots

  def initialize
    @spots = Array.new(8) { Array.new(8, nil) }
  end
end
