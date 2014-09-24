class DropSomeStatsColumns < ActiveRecord::Migration
  def change
  	remove_column :stats, :english_prompt_percent_correct, :float
  	remove_column :stats, :foreign_prompt_percent_correct, :float
  	remove_column :stats, :audio_prompt_percent_correct, :float
  end
end
