class ProductController < ApplicationController

  def ver
    @productos = [
      {id: '23233', nombre: 'Producto 001', precio: '$28.000'},
      {id: '84532', nombre: 'Producto 002', precio: '$58.000'},
      {id: '05322', nombre: 'Producto 003', precio: '$88.000'},
      {id: '96313', nombre: 'Producto 004', precio: '$45.000'},
      {id: '63588', nombre: 'Producto 005', precio: '$90.000'}
    ]

    #Devolver json
    # render json: @productos, status: :not_found
    # render html: @productos, status: :not_found
    # render xml: @productos
  end


end
