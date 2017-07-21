class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.text :country
      t.text :city

      t.timestamps
    end
  end
end


