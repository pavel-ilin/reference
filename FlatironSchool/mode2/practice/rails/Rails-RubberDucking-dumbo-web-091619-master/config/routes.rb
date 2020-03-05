Rails.application.routes.draw do
  resources :ducks, only: [:index, :new, :create, :edit, :show, :update, :destroy]
  resources :students, only: [:index, :new, :create, :edit, :show, :update, :destroy]
end
