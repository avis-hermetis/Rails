class Wagon < ActiveRecord::Base
  validates :sort, presence: true

  belongs_to :train

  before_validation :set_number

  scope :direct_formation, -> { Wagon.order(number: :asc) }
   scope :reverse_formation, -> { Wagon.order(number: :desc) }

 private

  def set_number # ? почему в конце не нужно сохранять изменения в базу (self.save)
    if Wagon.last
      self.number = Wagon.last.number + 1
    else
      self.number = 1
    end    
  end
  
end