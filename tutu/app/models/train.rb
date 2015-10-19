class Train < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :current_route, class_name: 'Route', foreign_key: :current_route_id 
  has_many :tickets

  has_many :wagons

  attr_accessor :e_up_places,  :e_low_places, :c_up_places, :c_low_places

  def e_wagon_amt
    econom_count = 0
    @e_up_places = 0
    @e_low_places = 0
    self.wagons.each do |wagon| 
     if wagon.sort == "плацкарт"
      econom_count += 1
      @e_up_places += wagon.upper_places
      @e_low_places += wagon.lower_places
     end
   end
   econom_count
  end

  def c_wagon_amt
    compartment_count = 0
    @c_up_places = 0
    @c_low_places = 0
    self.wagons.each do |wagon| 
      if wagon.sort == "купе"
      compartment_count += 1
      @c_up_places += wagon.upper_places
      @c_low_places += wagon.lower_places
      end
    end
    compartment_count
  end

end
