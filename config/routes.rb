Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :donations, except: [ :edit ] do
    resources :transfers, only:[ :show ]
  end
  resources :receivers, only: [ :index ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
