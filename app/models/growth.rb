class Growth < ApplicationRecord
  belongs_to :vegatable
  has_many :reviews, dependent: :destroy
  validates :growth_time, :numericality => { :message => " should be a number" }
  validates :inclusion, :growth_time, :season, presence: true
end
