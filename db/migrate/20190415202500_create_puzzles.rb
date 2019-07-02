class CreatePuzzles < ActiveRecord::Migration[5.2]
  def change
    create_table :puzzles do |t|
      t.string :title
      t.string :author
      t.integer :rows, default: 15
      t.integer :cols, default: 15
      t.text :fill
      t.boolean :template, default: false

      t.timestamps
    end
  end
end
