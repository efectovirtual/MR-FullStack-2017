class InvoicesController < ApplicationController
  before_action :authenticate_user!

  def index
   @invoice = Invoice.all
  end

  def new
    @invoice = Invoice.new
  end

  def create
    invoice = params
      .require(:invoice)
      .permit(:total, :user_id, :status, :order_id)

    @invoice = Invoice.new invoice

    if @invoice.save
      redirect_to invoice_path(@invoice)
    else
      # @invoice.error[:total].full
      render :new
    end

  end

  def edit
    begin
      @invoice = Invoice.find params[:id]

    rescue ActiveRecordNotFound => e
      # render :not_found
      redirect_to invoice_path(@invoice)
    end
  end

  def show
    begin
      @invoice = Invoice.find params[:id]

    rescue ActiveRecordNotFound => e
      # render :not_found
      redirect_to invoice_path(@invoice)
    end
  end

  def update

    @invoice = Invoice.find params[:id]

    invoice = params
      .require(:invoice)
      .permit(:total, :user_id, :status, :order_id)

    @invoice.total = invoice[:total]

    if @invoice.save
      redirect_to invoice_path(@invoice)
    else
      # @invoice.error[:total].full
      render :edit
    end
    
  end

  def destroy
    @invoice = Invoice.destroy params[:id]    
  end

end












