class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
      @expenses = Expense.where("concept LIKE ? AND category_id LIKE ? AND user_id = ?", "%#{params[:concept]}%", "%#{params[:category_id]}", current_user.id)
  end
end
