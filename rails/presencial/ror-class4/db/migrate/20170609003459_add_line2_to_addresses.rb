class AddLine2ToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :line2, :string
  end
end
