class DropCards < ActiveRecord::Migration
  def change
  	drop_table :cards
  end
end
