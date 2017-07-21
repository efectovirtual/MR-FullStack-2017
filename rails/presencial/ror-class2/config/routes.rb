Rails.application.routes.draw do
  
  get 'product/ver'

  get 'holi/ver'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'product', to: 'product#ver'

  get 'holi', to: 'holi#holi'

  get 'holi/crear'

  get 'holi/actualizar'

  get 'holi/ver(/:name)', to: 'holi#ver', as: 'products/product' #alias

  get 'holi/products', as: 'products'

end
