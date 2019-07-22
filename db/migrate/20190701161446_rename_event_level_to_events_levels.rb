class RenameEventLevelToEventsLevels < ActiveRecord::Migration[5.2]
  def change
    rename_table :event_levels, :events_levels
  end
end
