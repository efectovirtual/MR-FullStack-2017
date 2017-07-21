class AddUserIdToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_reference :expenses, :user, foreign_key: true, default: 1
  end
end