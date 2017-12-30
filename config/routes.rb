Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'

  resources :users do
    resources :items, only: [:new, :create, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
