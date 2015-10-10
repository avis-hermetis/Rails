class Route < ActiveRecord::Base
 validates :title, presence: true

  has_many :trains, foreign_key: :current_route_id
  
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes 
end