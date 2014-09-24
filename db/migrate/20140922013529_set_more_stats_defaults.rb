class SetMoreStatsDefaults < ActiveRecord::Migration
  def change
  	change_column :stats, :avg_latency, :float, default: 1
  	change_column :stats, :largest_interval, :integer, default: 1
  	change_column :stats, :number_forgotten, :integer, default: 0
  	change_column :stats, :number_hard, :integer, default: 0
  	change_column :stats, :number_good, :integer, default: 0
  	change_column :stats, :number_easy, :integer, default: 0
  	change_column :stats, :pairing_id, :integer, after: :student_id
  end
end
