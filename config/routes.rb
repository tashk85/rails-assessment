Rails.application.routes.draw do
  #use custom registrations controller
  devise_for :users, path: "/", path_names: {sign_in: "login", sign_up: "signup"}, controllers: {:registrations => "registrations"}
  # get "/", to: "pages#index", as: "root"
  root to: "pages#index"
  get "/dashboard", to: "pages#dashboard", as: "dashboard"

  #extra information for printers to enter:
  get "/printer_info", to: "pages#printer_info", as: "printer_info"
  # get "/printers", to: "pages#printers", as: "printers"

  post "/printer_info", to: "pages#create"

  ### Listings ###
  # todo - make this only accessible to designers

  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"
  patch "/listings/:id", to: "listings#update"
  put "/listings/:id", to: "listings#update"
  post "/listings/new", to: "listings#create", as: "create_listing"

  ### Quotes ###
  
  #Show quotes (from a given listing)
  get "/quotes", to: "quotes#index", as: "quotes"

  #Show all quotes (from a given user)
  get "/my_quotes", to: "quotes#my_quotes", as: "my_quotes"

  #Make a new quote
  get "/quotes/new", to: "quotes#new", as: "new_quote"
  post "/quotes", to: "quotes#create"

  #View and edit a certain quote
  get "/quotes/:id", to: "quotes#show", as: "quote"
  patch "/quotes/:id", to: "quotes#update"
  put "/quotes/:id", to: "quotes#update"
  get "/quotes/:id/edit", to: "quotes#edit", as: "edit_quote"

  ### Jobs ###

  get "/jobs", to: "jobs#index", as: "jobs"
  get "/jobs/:id", to: "jobs#show", as: "job"
  put "/jobs/:id", to: "jobs#update"
  patch "/jobs/:id", to: "jobs#update"
  post "/jobs/:id", to: "jobs#update"

  ### Stripe payment ###
  post "/payments", to: "payments#stripe"
  get "payments/success", to: "payments#success"

end
