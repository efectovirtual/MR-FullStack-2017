Rails.application.routes.draw do
  get 'holi/ver'

  get 'holi/actualizar'

  get 'holi/crear'

  # get 'index/holi'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'index', to: 'index#holi'
  root 'index#holi'

  get 'product', to: 'product#ver'

end
