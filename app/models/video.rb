class Video < ApplicationRecord
  include PgSearch
  pg_search_scope :search_video,
    associated_against: {
      challenge: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  belongs_to :challenge
  belongs_to :user
  validates :tag, presence: true

  mount_uploader :video, VideoUploader
end
