class Inventory < ApplicationRecord
  belongs_to :book

  validates_presence_of :code
  validates_length_of :code, is: 24

  enum status: { available: 0, borrowed: 1, stashed: 2 }
end
