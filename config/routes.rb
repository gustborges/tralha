Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  resources :donations, except: [ :edit ] do
    resources :transfers, only:[ :show, :create ]
=======
  resources :donations do
    resources :transfers, only:[ :show ]
>>>>>>> 224fd27255df5574aed2b92f7c66e52032c5b861
  end
  resources :users, only: [ :index ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
