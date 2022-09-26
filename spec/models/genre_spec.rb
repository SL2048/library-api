require 'rails_helper'

RSpec.describe Genre, type: :model do
  context 'associations' do
    it { is_expected.to have_and_belong_to_many(:books) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_length_of(:code).is_at_least(4) }
  end
end