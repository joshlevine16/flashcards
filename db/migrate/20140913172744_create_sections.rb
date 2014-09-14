class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.belongs_to :teacher
      t.string :title

      t.timestamps
    end
  end
end
