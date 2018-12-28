class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :kingdom
      t.string :phylum
      t.string :cls
      t.string :order
      t.string :family
      t.string :genus
      t.string :species
      

    end
  end
end
