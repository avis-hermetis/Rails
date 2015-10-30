class AddOrderToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :formation, :boolean
  end
end
