class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :year, null: false
      t.string :poster, null: false 
      t.timestamps
    end
  end
end
