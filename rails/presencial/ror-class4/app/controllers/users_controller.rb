class UsersController < ApplicationController

  def index
   @user = User.all
  end

  def new
    @user = User.new
  end

  def show
    begin
      @user = User.find params[:id]

    rescue ActiveRecordNotFound => e
      # render :not_found
      redirect_to invoice_path(@invoice)
    end
  end

  def search
    @usuario = User.find_by email: params[:email]
    render 'users/index'

    @user = User
      .includes(:orders)
      .includes(:orders :products)
      .find_by email: params[:email]
    render 'users/index'
  end

end