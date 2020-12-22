class Vegatable < ApplicationRecord
  has_one :growth, dependent: :destroy
  has_many :reviews, through: :growth
  validates :name, :variety, presence: { message: "must be given please" }
  validates :variety, uniqueness: true
end
