Rails.application.routes.draw do
    devise_for :users
   resources :messages
   resources :messages do
     resources :comments 
   end
    root 'messages#index'
  end