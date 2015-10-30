class Route < ActiveRecord::Base 

  has_many :trains, foreign_key: :current_route_id
  
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  validates :title, presence: true

  before_validation :set_title

  def set_title
    self.title = "#{railway_stations.first.title} - #{railway_stations.second.title}"
  end
end