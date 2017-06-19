Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants
  get 'pages/about'
  get 'pages/contact'

end
