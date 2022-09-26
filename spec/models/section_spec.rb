require 'rails_helper'

RSpec.describe Section, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:books) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:from_bookcase_code) }
    it { is_expected.to validate_presence_of(:to_bookcase_code) }
  end
end