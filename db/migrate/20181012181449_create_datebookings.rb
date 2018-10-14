class CreateDatebookings < ActiveRecord::Migration[5.1]
  def change
    create_table :datebookings do |t|
      t.date :date   , unique: true
      t.boolean :etat
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :datebookings, :date,                unique: true
  end
end
