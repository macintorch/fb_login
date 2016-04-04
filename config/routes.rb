Rails.application.routes.draw do

get '/auth/:provider', to: 'sessions#create'
root 'pages#index'

delete '/logout', to: 'sessions#destroy'
  
end
