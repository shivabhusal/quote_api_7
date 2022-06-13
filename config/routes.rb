Rails.application.routes.draw do
  get '/quote', to: 'quotes#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "quotes#show"
end
