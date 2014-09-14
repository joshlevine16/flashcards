class CreateSectionsStudents < ActiveRecord::Migration
  def change
    create_table :sections_students, id: false do |t|
    	t.belongs_to :sections_students
    	t.belongs_to :part
    end
  end
end
