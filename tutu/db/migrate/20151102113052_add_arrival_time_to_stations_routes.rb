class AddArrivalTimeToStationsRoutes < ActiveRecord::Migration
  def change
    add_column :railway_stations_routes, :start_time, :string
    add_column :railway_stations_routes, :end_time, :string
  end
end
