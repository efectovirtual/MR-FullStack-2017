class AddGateToDepartures < ActiveRecord::Migration
  def change
    add_column :departures, :gate, :integer
  end
end
