class EconomCarriage < Wagon
  validates :sort, :side_upper_places, :side_lower_places, presence: true
end