class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.belongs_to :set
      t.belongs_to :section
      t.belongs_to :card
      t.belongs_to :student
      t.float :total_percent_correct
      t.float :seven_day_moving_avg_percent_correct
      t.float :english_prompt_percent_correct
      t.float :foreign_prompt_percent_correct
      t.float :audio_prompt_percent_correct
      t.float :avg_latency
      t.integer :largest_interval
      t.integer :number_forgotten
      t.integer :number_hard
      t.integer :number_good
      t.integer :number_easy

      t.timestamps
    end
  end
end
