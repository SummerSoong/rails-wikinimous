Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Create
  get '/articles/new', to: 'articles#new', as: :new_article
  post '/articles', to: 'articles#create', as: :articles

  # Read
  get '/articles', to: 'articles#index'
  get '/articles/:id', to: 'articles#show', as: :article

  # Update
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'

  # Destroy
  delete 'articles/:id', to: 'articles#destroy'
end
