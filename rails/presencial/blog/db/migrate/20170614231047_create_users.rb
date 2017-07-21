class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :user
      t.text :pass
      t.text :email
      t.text :nombre

      t.timestamps
    end
  end
end
