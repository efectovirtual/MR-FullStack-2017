class IndexController < ApplicationController
  def holi
  end

  def crear
    redirect_to yepeto_path(name: 'alberto')
  end



  def actualizar
    redirect_to products_url
    puts "URL => #{products_url}" 
    puts "PATH => #{products_url}"
  end

  def ver
    @name = params[:name]
    
  end

  def product
    @product= [
      {name: 'telefono'},
      {name: 'nombre'}
    ]
  end
  
end
