Rails.application.routes.draw do
  resources :users, only: %i[new create show]
  resources :events, only: %i[show index new create]
  resources :invitations, only: %i[new create]
  get '/login', to: 'users#login'
  post '/login', to: 'users#backlog'
  delete '/logout', to: "users#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#login'
end
