class AddInfoColumnToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :info, :text
  end
end
