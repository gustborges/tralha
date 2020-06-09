Rails.application.routes.draw do
  require "sidekiq/web"

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root to: 'pages#home'
  resources :donations do
    resources :transfers, only:[ :show, :create ]
  end
  resources :users, only: [ :index ]

  # Sidekiq Web UI, only for admins.
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
