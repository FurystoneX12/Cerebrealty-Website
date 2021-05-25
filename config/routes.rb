Rails.application.routes.draw do
  resources :law_articles
  devise_for :users
  resources :real_estates
  #get 'home/index'
  #get "about"
  get "home/about_us"
  get "home/contact_us"
  get "home/terms_and_conditions"
  get "home/articles"
  get "home/law_section"
  get "home/engineering_section"
  #get "listings/index"
  root "home#index_public"

  #get "home/index_private"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
