class Puzzle < ApplicationRecord
  validates :rows, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 3,
    less_than_or_equal_to: 21
  }
  validates :cols, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 3,
    less_than_or_equal_to: 21
  }
end
