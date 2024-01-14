class AddColumnToMoview < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :name, :movie
  end
end
