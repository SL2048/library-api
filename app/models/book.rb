class Book < ApplicationRecord
  belongs_to :section
  has_many :inventories
  has_and_belongs_to_many :authors
  has_and_belongs_to_many :genres

  validates_presence_of :title, :description
end
