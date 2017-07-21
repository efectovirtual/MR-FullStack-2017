class AddGateToArrivals < ActiveRecord::Migration
  def change
    add_column :arrivals, :gate, :integer
  end
end
