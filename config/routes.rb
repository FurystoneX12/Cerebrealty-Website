Rails.application.routes.draw do
  resources :listings
  #get 'home/index'
  get "home/about"
  get "home/contact_us"
  get "home/terms_and_conditions"
  get "home/articles"
  get "home/real_estate"
  get "home/law"
  get "home/engineering"
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
