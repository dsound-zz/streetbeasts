class ChangeLongiudeToLongitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :longiude, :longitude
  end
end
