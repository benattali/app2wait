class EventsLevel < ApplicationRecord
  belongs_to :event
  validates :description, presence: true
  validates :time, presence: true, numericality: { only_integer: true }
end
