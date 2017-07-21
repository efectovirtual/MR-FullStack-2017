class UpdateAddress < ActiveRecord::Migration[5.1]

  # rollback

  def up
    change_column :addresses, :zip, :string, limit: 10, null: false
    change_column :addresses, :country, :string, limit: 2, null: false
    change_column :addresses, :city, :string, limit: 50, null: false
    change_column :addresses, :line1, :string, limit: 50, null: false
    change_column :addresses, :line2, :string, limit: 50
  end

  def down
    change_column :addresses, :zip, :string
    change_column :addresses, :country, :text
    change_column :addresses, :city, :text
    change_column :addresses, :line1, :string
    change_column :addresses, :line2, :string
  end

end