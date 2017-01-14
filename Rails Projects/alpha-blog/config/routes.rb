Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :users, except: [:new]
  get 'signup', to: 'users#new'
  post 'admin/:id' => 'users#make_admin', as: "make_admin"
  # START sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # END sessions
  resources :articles
end
