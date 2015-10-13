class Wagon < ActiveRecord::Base
  validates :sort, presence: true

  belongs_to :train

  def places_amt
    if self.sort == "плацкарт"
    self.upper_places = E_UP_PLACES 
    self.lower_places = E_LOW_PLACES 
    self.save
    else 
    self.upper_places = C_UP_PLACES
    self.lower_places = C_LOW_PLACES 
    self.save 
    end 
  end 

  C_LOW_PLACES = 18
  E_LOW_PLACES = 28
  C_UP_PLACES = 18
  E_UP_PLACES = 28

end