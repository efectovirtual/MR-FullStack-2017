Rails.application.routes.draw do
  
  devise_for :users
  
  resources :invoices

  resources :users, except: [:new, :create] do
    collection do
      get '/sign_up', to: 'users#sign_up'
    end
  end

  get '/search', to: 'users#search'


  get 'productev/index'

  post 'productev/crear'
  get  'productev/crear'

  get  'productev/listar'

  post 'productev/validar'
  get 'productev/validar'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'productev', to: 'productev#index'
  root 'productev#index'





end
