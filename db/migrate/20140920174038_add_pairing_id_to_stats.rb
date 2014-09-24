class AddPairingIdToStats < ActiveRecord::Migration
  def change
    add_column :stats, :pairing_id, :integer
  end
end
