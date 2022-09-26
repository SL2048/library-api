class Genre < ApplicationRecord
  has_and_belongs_to_many :books

  validates_presence_of :name, :code
  validates_length_of :code, minimum: 4
end
