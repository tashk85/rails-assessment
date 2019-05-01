Rails.application.routes.draw do
  get "/", to: "pages#index", as: "index"
  get "/login", to: "pages#login", as: "login"
  #display different signup page based on which link is clicked
  get "/signup", to: "pages#signup", as: "signup"
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


  





# Sign up page - designer
# Sign up page - printer
# Login page
# Dashboard - when logged in and signed up “/dashboard” - up the top display ‘Hi, {name}’
# Only accessible when logged in
# Listings (view all listings)
# Listing(id) - view a specific listing
# Edit listing form (id)
# Create new listing - view form for creating a listing (for designers)
# View Quotes
# Designer can see all quotes on their listings
# Printer can see all quotes they have given
# View specific quote (id)
# Create Quote form (for printer)
# Edit quote (for printer)
# View Jobs
# View specific job (id)

end
