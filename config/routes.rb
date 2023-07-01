Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  resources :books
  resources :users
  root to:"homes#top"
  get 'top' => 'homes#top'
  get 'home/about' => 'homes#about'
  get "search" => "searches#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
