Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ===========
  # index route
  # ===========
  get '/arangr', to: 'arangr#index'
  # ===========
  # show route
  # ===========
  get '/arangr/:id', to:'arangr#show'
  # ===========
  # create route
  # ===========
  post '/arangr/:id', to:'arangr#create'
  # ===========
  # delete route
  # ===========
  delete '/arangr/:id', to:'arangr#delete'
  # ===========
  # update route
  # ===========
  put '/arangr/:id', to:'arangr#update'
end
