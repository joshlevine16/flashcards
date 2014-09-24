class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
      t.belongs_to :card, index: true
      t.string :prompt
      t.string :answer

      t.timestamps
    end
  end
end
