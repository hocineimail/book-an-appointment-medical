class CreateTimetebookings < ActiveRecord::Migration[5.1]
  def change
    create_table :timetebookings do |t|
      t.string :nome
      t.string :prenom
      t.integer :telephpne
      t.string :time        
      t.references :datebooking, foreign_key: true

      t.timestamps
    end

  end
end
