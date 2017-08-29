class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.text :synopsis
      t.string :string

      t.timestamps
    end
  end
end
