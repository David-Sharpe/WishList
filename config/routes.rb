Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wishlist_items, except: [:index]
  resources :wishlists, only: [:index, :show]
  resource :user_profiles, only: [:show, :edit, :update]
  devise_for :users
  root 'home#index'
end
