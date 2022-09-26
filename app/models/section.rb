class Section < ApplicationRecord
  has_many :books

  validates_presence_of :name, :from_bookcase_code, :to_bookcase_code
end
