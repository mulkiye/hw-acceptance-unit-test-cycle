class CreateMovies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :release_date
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
  def down
    drop_table :movies
  end
  #The director field should be a string containing the name of the movie’s director. 
  add_column :movies, :director, :string
  
end
