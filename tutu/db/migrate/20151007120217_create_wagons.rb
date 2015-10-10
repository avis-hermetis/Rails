class CreateWagons < ActiveRecord::Migration
  def change
    create_table :wagons do |t|
      t.string :sort
      t.integer :lower_places
      t.integer :upper_places
       t.timestamps
    end
  end
end
