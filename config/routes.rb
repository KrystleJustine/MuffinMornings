Rails.application.routes.draw do

    resources :users
    resources :orders, only: [:index, :new, :create]
   resources :login, only: [:new, :create, :destroy]

        #  get '/login', to: 'login#new'
        #  post   '/login',   to: 'login#create'
        # delete '/logout',  to: 'login#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
