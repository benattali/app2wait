class CreateEventLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :event_levels do |t|
      t.string :description
      t.integer :time
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
