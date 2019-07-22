class Challenge < ApplicationRecord
  validates :name, presence: true
  validates :photo, presence: true
  has_many :levels, dependent: :destroy
  has_many :videos
  mount_uploader :photo, PhotoUploader
end
