require 'rails_helper'

RSpec.describe Puzzle, type: :model do
  it { is_expected.to validate_presence_of(:title) }
end
