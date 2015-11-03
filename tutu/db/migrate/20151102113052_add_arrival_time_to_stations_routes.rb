class AddArrivalTimeToStationsRoutes < ActiveRecord::Migration
  def change
    add_column :railway_stations_routes, :start_time, :datetime
    add_column :railway_stations_routes, :end_time, :datetime
  end
end
