class AddZipToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :zip, :string
  end
end


