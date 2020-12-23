Rails.application.routes.draw do
 devise_for :users
 root 'top#top'
 
   get'home/about' => 'top#about' ,as: 'top_about'

   get'users/:id/home' => 'users#home' ,as: 'users_home'


  

   resources :users, only: [:index, :edit, :show, :update]
   resources :books
   
   
 end
 