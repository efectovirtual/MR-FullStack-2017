Rails.application.routes.draw do
  resources :airlines, only: [:index]
  resources :flights, only: [:create]
  resources :departures, only: [:index]
  resources :arrivals, only: [:index]
end
