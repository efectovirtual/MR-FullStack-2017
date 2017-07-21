class AddLine1ToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :line1, :string
  end
end
