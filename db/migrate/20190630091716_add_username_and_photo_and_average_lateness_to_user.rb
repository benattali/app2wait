class AddUsernameAndPhotoAndAverageLatenessToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :photo, :string
    add_column :users, :average_lateness, :float
  end
end
