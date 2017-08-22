class Card < ApplicationRecord
  validates :text, presence: true, uniqueness: true
end
