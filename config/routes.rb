Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"

  # Resources
  resources "sessions"
  resources "users"
  
  # Login/logout
  get("/login", { :controller => "sessions", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

#   Rails.application.routes.draw do
#     root "places#index"
    
#     resources :entries
#     resources :places
#     resources :users
#     resources :sessions, only: [:new, :create, :destroy]
  
#     # Adding the posts resource
#     resources :posts
  
#     get '/login', to: 'sessions#new', as: 'login'
#     get '/logout', to: 'sessions#destroy', as: 'logout'
#   end
  

end

