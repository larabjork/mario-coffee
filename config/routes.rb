Rails.application.routes.draw do
  resources :products do
    resources :reviews
  end
  get '/products.localness', to: 'products#localness', as: 'local'
  get '/products.three_most_recent', to: 'products#three_most_recent', as: 'recents'
  get '/products.most_reviews', to: 'products#most_reviews', as: 'most_rev'
  root to: 'products#index'
end
