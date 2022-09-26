require 'rails_helper'

RSpec.describe Book, type: model do
  context 'associations' do
    it { is_expected.to belong_to(:section) }
    it { is_expected.to have_many(:inventories) } 
    it { is_expected.to have_and_belong_to_many(:authors) }
    it { is_expected.to have_and_belong_to_many(:genres) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
  end
end