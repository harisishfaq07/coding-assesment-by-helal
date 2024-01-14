class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      # Movie	Description	Year	Director	Actor	Filming location	Country
      t.string :name
      t.string :description
      t.string :year 
      t.string :director 
      t.string :actor 
      t.string :filming 
      t.string :location 
      t.string :country 
      t.timestamps
    end
  end
end
