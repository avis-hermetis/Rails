class Train < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :current_route, class_name: 'Route', foreign_key: :current_route_id 
  has_many :tickets
end
