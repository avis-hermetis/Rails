class AddNewColumnsToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :start_station, :string
    add_column :routes, :end_station, :string
  end
end
