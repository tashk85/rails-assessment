Rails.application.routes.draw do
  devise_for :users, path: "/", path_names: {sign_in: "login", sign_up: "signup"}
  # get "/", to: "pages#index", as: "root"
  root to: "pages#index"

  # get "/login", to: "pages#login", as: "login"
  #display different signup page based on which link is clicked
  # get "/signup", to: "pages#signup", as: "signup"
  # post "/signup", to: "pages#new_user"
  get "/dashboard", to: "pages#dashboard", as: "dashboard"

  ### Listings ###
  # todo - make this only accessible to designers

  get "/listings", to: "listings#index", as: "listings"
  get "/listings/new", to: "listings#new", as: "new_listing"

  get "/listings/:id", to: "listings#show", as: "listing"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"

  ### Quotes ###


  get "/quotes", to: "quotes#index", as: "quotes"
  get "/quotes/new", to: "quotes#new", as: "new_quote"
  get "/quotes/:id", to: "quotes#show", as: "quote"
  get "/quotes/:id/edit", to: "quotes#edit", as: "edit_quote"

  ### Jobs ###

  get "/jobs", to: "jobs#index", as: "jobs"
  get "/jobs/:id", to: "jobs#show", as: "job"

end
