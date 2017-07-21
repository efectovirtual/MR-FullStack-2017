class ChangeDateTypeInDeparturesAndArrivals < ActiveRecord::Migration
  def change
    change_column :arrivals, :date, :datetime
    change_column :departures, :date, :datetime
  end
end
