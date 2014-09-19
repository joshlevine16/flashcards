class ChangeSetId < ActiveRecord::Migration
  def change
  	change_table :stats do |t|
  		t.rename :set_id, :card_set_id
  	end
  end
end
