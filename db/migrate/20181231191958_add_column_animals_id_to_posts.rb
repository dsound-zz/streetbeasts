class AddColumnAnimalsIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :animal_id, :integer
  end
end
