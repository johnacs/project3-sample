Rails.application.routes.draw do

  devise_for :users
  resources :ideas
  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'static#about', as: 'about' #or
  get 'about' => 'static#about'
  get 'tags/index' => 'tags#index'

  root "static#homepage"
end
