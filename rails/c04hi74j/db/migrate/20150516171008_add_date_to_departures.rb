class AddDateToDepartures < ActiveRecord::Migration
  def change
    add_column :departures, :date, :date
  end
end
