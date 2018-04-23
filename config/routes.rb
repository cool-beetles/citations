Rails.application.routes.draw do
  get '/new' => 'citations#new'
  post '/new' => 'citations#create'
  resources :citations

  root "citations#index"
end
