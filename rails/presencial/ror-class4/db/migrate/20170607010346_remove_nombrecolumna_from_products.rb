class RemoveNombrecolumnaFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :nombrecolumna, :string
  end
end
