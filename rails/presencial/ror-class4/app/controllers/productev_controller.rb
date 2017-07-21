class ProductevController < ApplicationController
  def index
  end

  def crear

    @sku = params[:sku]
    @quantity = params[:quantity]
    @name = params[:name]
    @price = params[:price]

    # pro = Product.new sku: @sku, quantity: @quantity, name:@name, price:@price
    # pro.save

    secure = params.require(:product).permit(:sku, :quantity, :name, :price)

    product = secure[:product]
    @product = Product.new secure

    if @product.save
      redirect_to productev_path
    else
      render :new
    end
      
  end

  def listar

    # @product = Product.all
    @product = Product.where('quantity >= 50 and quantity <= 500')
    
  end

  def validar

    @user = params[:user]
    @pass = params[:pass]
    @email = params[:email]

    unew = User.new username: @user, password: @pass, email: @email

    # erroruser =     

    unless unew.valid?
      @errores_registro = unew.errors.messages
    end
    
  end

  def index

    # @product = Product.in_inventory
    
  end


end





















