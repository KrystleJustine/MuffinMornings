Rails.application.routes.draw do

    resources :users

        get '/login', to: 'login#new'
        post   '/login',   to: 'sessions#create'
        delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
