class RailwayStation < ActiveRecord::Base
  validates :title, presence: true

  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes 
  
  has_many :tickets, foreign_key: :start_station_id
  has_many :tickets, foreign_key: :end_station_id
end
