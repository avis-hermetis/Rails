class Route < ActiveRecord::Base
 validates :start_station, :end_station, presence: true

  has_many :trains
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes 
end