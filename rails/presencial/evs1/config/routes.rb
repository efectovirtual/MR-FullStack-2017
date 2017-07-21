Rails.application.routes.draw do

  get 'index/holi'

  get 'holi'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'product', to: 'product#ver'

  get 'holi', to: 'holi#holi'

  get 'holi/crear'
  get 'holi/actualizar'

  get 'holi/ver(/:name)', to: 'holi#ver', as: 'yepeto'

  
end
