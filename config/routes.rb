Rails.application.routes.draw do

get '/auth/:provider/callback', to: 'sessions#create'
root 'pages#index'

delete '/logout', to: 'sessions#destroy'
  
end
