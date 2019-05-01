Rails.application.routes.draw do
  get "/", to: "pages#index", as: "index"
  get "/login", to: "pages#login", as: "login"
  #display different signup page based on which link is clicked
  get "/signup", to: "pages#signup", as: "signup"
  get "/dashboard", to: "pages#dashboard", as: "dashboard"
end
