Rails.application.routes.draw do
  get 'portfolio', to: 'pages#portfolio'
  get 'blog', to: 'pages#blog'
  get 'about', to: 'pages#about'
  get '/contact', to: 'contact_submissions#new'
  post '/contact_submit', to: 'contact_submissions#create'
  get '/view_submissions', to: 'contact_submissions#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#welcome"
end
