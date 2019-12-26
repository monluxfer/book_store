class Admission < ApplicationRecord
  belongs_to :provider
  belongs_to :book
end
