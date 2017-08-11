Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants
  get 'pages/about'
  get 'pages/contact'

  namespace :api do
    # mount_devise_token_auth_for 'User', at: '/v1/auth', skip: [:registrations, :passwords]
    namespace :v1, default: { format: :json } do
      resources :restaurants, only: [:index]

      # resources :domain_groups, only: [:index]
      # resources :clients, only: [:index] do
      #   resources :assessments, only: [:create]
      #   resources :tasks, only: [:create, :update]
      #   resources :case_notes, only: [:create]
      # end
    end
  end
end
