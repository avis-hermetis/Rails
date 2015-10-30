class AddColumnsToWagons < ActiveRecord::Migration
  def change  
    add_column :wagons, :number, :integer 
    add_column :wagons, :side_lower_places, :integer
    add_column :wagons, :side_upper_places, :integer 
    add_column :wagons, :seats, :integer    
    add_column :wagons, :type, :string    
  end
end