Rails.application.routes.draw do
    
  devise_for :users
  get 'home/index'

    resources :images
    
    root to: "home#index"
    
end
