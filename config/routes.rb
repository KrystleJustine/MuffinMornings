Rails.application.routes.draw do

   resources :users, only: [:new, :edit, :show, :update, :create]
   resources :orders, only: [:index, :show, :new, :create, :edit, :update]
   resources :login, only: [:new, :create, :destroy]

    # root "users#index"
        #  get '/login', to: 'login#new'
        #  post   '/login',   to: 'login#create'
        # delete '/logout',  to: 'login#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
