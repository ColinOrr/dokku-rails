class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :synopsis
      t.date :released
      t.integer :rating

      t.timestamps null: false
    end
  end
end
