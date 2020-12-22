class Review < ApplicationRecord
  belongs_to :growth
  validates :feedback, length: { maximum: 500 }
  validates :rating, :numericality => { :message => " should be a number" }
  validates :rating, :inclusion => { :in => 0..5, :message => " Rating should be between 0 to 5" }
  validates :rating, :feedback, :soil_type, presence: true
end
