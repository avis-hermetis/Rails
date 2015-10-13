class Train < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :current_route, class_name: 'Route', foreign_key: :current_route_id 
  has_many :tickets

  has_many :wagons

  def c_wagon_amt
    compartment_count = 0 
    self.wagons.each do |wagon|
    compartment_count += 1 if wagon.sort == "купе" 
    end 
    compartment_count
  end

  def e_wagon_amt
    econom_count = 0
    self.wagons.each do |wagon| 
    econom_count += 1 if wagon.sort == "плацкарт" 
    end 
    econom_count
  end

  def c_up_places
    c_wagon_amt * C_UP_PLACES
  end

  def c_low_places
    c_wagon_amt * C_LOW_PLACES
  end

  def e_up_places
    e_wagon_amt * E_UP_PLACES
  end

  def e_low_places
    e_wagon_amt * E_LOW_PLACES
  end

  C_LOW_PLACES = 18
  E_LOW_PLACES = 28
  C_UP_PLACES = 18
  E_UP_PLACES = 28

end
