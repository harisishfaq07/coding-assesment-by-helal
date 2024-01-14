class UpdateMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies , :location
    rename_column :movies, :filming, :filming_location
  end
end
