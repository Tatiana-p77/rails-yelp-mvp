Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # voir la liste de tous les restaurants.
  get 'restaurants', to: 'restaurants#index'

  # ajouter un nouveau restaurant et être redirigé vers la vue show de la page de ce nouveau restaurant
  get 'restaurants/new', to: 'restaurants#new'
  post 'restaurants', to: 'restaurants#create'

  # voir les détails d’un restaurant, avec tous les avis associés au restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Un visiteur peut ajouter un nouvel AVIS à un restaurant.
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

end
