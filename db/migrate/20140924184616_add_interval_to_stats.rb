class AddIntervalToStats < ActiveRecord::Migration
  def change
    add_column :stats, :interval, :integer, default: 0
  end
end
