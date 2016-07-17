class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :genre
      t.integer :year_of_birth
      t.integer :year_of_death

      t.timestamps
    end
  end
end
