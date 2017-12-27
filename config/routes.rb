Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get 'items/create'

  root 'users#show'

  resources :users do
    resources :items, only: [:new, :create]
  end


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
