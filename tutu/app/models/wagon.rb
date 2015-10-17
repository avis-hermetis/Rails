class Wagon < ActiveRecord::Base
  validates :sort, presence: true

  belongs_to :train
end