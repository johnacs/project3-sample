class Author < ApplicationRecord
  has_many :books
  belongs_to :publisher
  validates_presence_of :name
end
