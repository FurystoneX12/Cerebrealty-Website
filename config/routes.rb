Rails.application.routes.draw do
  resources :listings
  #get 'home/index'
  get "home/about"
  get "home/contact_us"
  get "home/terms_and_conditions"
  get "home/articles"
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
