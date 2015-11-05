class RailwayStation < ActiveRecord::Base
  validates :title, presence: true

  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes 
  
  has_many :tickets, foreign_key: :start_station_id
  has_many :tickets, foreign_key: :end_station_id

  scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }

  def update_position_and_time(route, params)    
    station_route = station_route(route)
    station_route.update(position: params[:position], start_time: params[:start_time], 
     end_time: params[:end_time] ) if station_route
  
  end

  def position_in(route)  
    station_route(route).try(:position)
  end

  def start_time_in(route)  
    station_route(route).try(:start_time)
  end

  def end_time_in(route)  
    station_route(route).try(:end_time)
  end

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
  
end
