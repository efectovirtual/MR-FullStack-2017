class AddDateToArrivals < ActiveRecord::Migration
  def change
    add_column :arrivals, :date, :date
  end
end
