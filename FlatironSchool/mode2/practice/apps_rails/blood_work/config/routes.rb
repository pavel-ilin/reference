Rails.application.routes.draw do
  get 'welcome/index'
  resources :appointments, only: [:new, :create]
  resources :results, only: [:new, :create]
  resources :patients, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :doctors, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "welcome#index"
end
