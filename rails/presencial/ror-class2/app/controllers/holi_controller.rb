class HoliController < ApplicationController
# layout 'custom_products'
  def crear
    redirect_to products_path(name: 'alberto')
  end



  def actualizar
    redirect_to products_url
    # puts "URL => #{products_url}" 
    # puts "PATH => #{products_url}"
  end



  def ver
    @name = params[:nombre]
    @precio = params[:precio]
    @id = params[:id]
    @products = ['mac', 'imac', 'macbook']
    render layout:'custom_products'
  end



  def products
        @products = [
      {id: '23233', nombre: 'Producto 001', precio: '$28.000'},
      {id: '84532', nombre: 'Producto 002', precio: '$58.000'},
      {id: '05322', nombre: 'Producto 003', precio: '$88.000'},
      {id: '96313', nombre: 'Producto 004', precio: '$45.000'},
      {id: '63588', nombre: 'Producto 005', precio: '$90.000'}
    ]
  end





end
