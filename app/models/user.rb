class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :videos
  has_many :groups_users
  has_many :groups, through: :groups_users
  has_many :owned_groups, foreign_key: "user_id", class_name: "Group"
  has_many :events, through: :groups

  mount_uploader :photo, PhotoUploader
  validates :username, presence: true
end
