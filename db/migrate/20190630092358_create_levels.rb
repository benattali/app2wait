class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.integer :time
      t.string :description
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
