class Book < ApplicationRecord
  has_many :book_genres
  has_many :editions
  has_many :authorships
  has_many :orders
  has_many :admissions
end
