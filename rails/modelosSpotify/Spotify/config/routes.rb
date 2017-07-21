Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists
  # resources :artists, only: [:index, :show] #solamente mostrar index y show
end
