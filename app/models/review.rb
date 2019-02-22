class Review < ApplicationRecord
  belongs_to :cocktail
  validates :user, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 0..5 }
end
