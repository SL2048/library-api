require 'rails_helper'

RSpec.describe Inventory, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:book) }
  end

  context 'validatiions' do
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_length_of(:code).is_equal_to(24) }
    it { is_expected.to define_enum_for(:status) }
  end
end 