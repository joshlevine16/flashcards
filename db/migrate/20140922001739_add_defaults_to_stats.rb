class AddDefaultsToStats < ActiveRecord::Migration
  def change
  	change_column :stats, :total_percent_correct, :float, default: 0
  	change_column :stats, :seven_day_moving_avg_percent_correct, :float, default: 0
  end
end
