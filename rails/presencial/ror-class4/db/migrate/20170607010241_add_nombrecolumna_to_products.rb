class AddNombrecolumnaToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :nombrecolumna, :string
  end
end
