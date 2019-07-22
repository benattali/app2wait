class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :status
      t.string :name
      t.string :photo
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
