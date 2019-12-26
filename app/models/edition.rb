class Edition < ApplicationRecord
  belongs_to :book
  belongs_to :publishing
end
