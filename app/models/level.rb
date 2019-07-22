class Level < ApplicationRecord
  belongs_to :challenge
  validates :time, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
end
