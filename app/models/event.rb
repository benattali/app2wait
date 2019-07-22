class Event < ApplicationRecord
  belongs_to :group
  has_many :events_levels, dependent: :destroy
  validates :name, presence: true

  accepts_nested_attributes_for :events_levels
end
