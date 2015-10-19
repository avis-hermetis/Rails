class AddFullNameToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :full_name, :string
  end
end
