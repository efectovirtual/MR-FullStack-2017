class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :duration
      t.string :year
      t.string :rating
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
