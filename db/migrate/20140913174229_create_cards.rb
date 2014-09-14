class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :english_field
      t.string :foreign_field
      t.string :pronunciation
      t.string :image

      t.timestamps
    end
  end
end
