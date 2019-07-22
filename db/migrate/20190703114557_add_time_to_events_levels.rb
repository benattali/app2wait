class AddTimeToEventsLevels < ActiveRecord::Migration[5.2]
  def change
    add_column :events_levels, :challenge_end_time, :datetime
  end
end
