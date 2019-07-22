class AddVideoToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :video, :string
  end
end
